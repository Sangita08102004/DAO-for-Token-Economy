# DAO Token Economy on Aptos

This project implements a simple DAO (Decentralized Autonomous Organization) for managing the issuance and distribution of a project's tokens on the Aptos blockchain. It consists of two core functions for initializing the DAO and distributing tokens.

## Features
- **Initialize DAO**: Set up the DAO with an initial token supply.
- **Distribute Tokens**: Send tokens from the DAO to specified recipients while managing the total supply.

## Prerequisites
- Aptos CLI
- Move language knowledge
- Aptos testnet account

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/aptos-dao-token-economy.git
   cd aptos-dao-token-economy
   ```
2. Ensure Aptos CLI is installed:
   ```sh
   aptos --version
   ```
3. Compile the contract:
   ```sh
   aptos move compile
   ```

## Usage

### Initialize DAO
```move
MyModule::TokenDAO::initialize_dao(&signer, initial_supply);
```
- `signer`: Account that deploys the DAO.
- `initial_supply`: Total supply of tokens managed by the DAO.

### Distribute Tokens
```move
MyModule::TokenDAO::distribute_tokens(&signer, recipient, amount);
```
- `signer`: DAO owner.
- `recipient`: Address receiving the tokens.
- `amount`: Number of tokens to distribute.

## License
MIT License

## Author
Sangita

## Acknowledgements
- Aptos documentation
- Move programming community

---
Happy Buidling! 🚀
