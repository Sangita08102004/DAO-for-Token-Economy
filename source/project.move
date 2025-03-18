module MyModule::TokenDAO {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct representing the DAO.
    struct DAO has store, key {
        total_supply: u64,
    }

    /// Initializes the DAO with a given total token supply.
    public fun initialize_dao(owner: &signer, initial_supply: u64) {
        let dao = DAO {
            total_supply: initial_supply,
        };
        move_to(owner, dao);
    }

    /// Distributes tokens from the DAO to a recipient.
    public fun distribute_tokens(owner: &signer, recipient: address, amount: u64) acquires DAO {
        let dao = borrow_global_mut<DAO>(signer::address_of(owner));
        assert!(dao.total_supply >= amount, 1);

        // Transfer tokens from the DAO to the recipient
        let tokens = coin::withdraw<AptosCoin>(owner, amount);
        coin::deposit<AptosCoin>(recipient, tokens);

        // Update the total supply
        dao.total_supply = dao.total_supply - amount;
    }
}
