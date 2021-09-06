# Udacity Blockchain Capstone

The capstone will build upon the knowledge you have gained in the course in order to build a decentralized housing product. 

## Install

To install, download or clone the repo, then:

`npm install`

Move to contracts directory, install dependencies and compile contracts:

```
cd eth-contracts
npm install
truffle compile
``` 

## Tests

Start ganache and run tests:
```
npm run start-ganache
npm run test
```

To run individual tests:
```
truffle test ./test/TestERC721Mintable.js
truffle test ./test/TestSquareVerifier.js
truffle test ./test/TestSolnSquareVerifier.js
```

## Contracts Deployment on Rinkeby

Contract deployment information on Rinkeby netwrok:
```

Deploying 'SquareVerifier'
   --------------------------
   > transaction hash:    0x16c7c0e65eb96f5940234e48a32e996bfedc2aec05030f648d0e0489e7ffb01a
   > contract address:    0x42E30f7c802B616d22CDc226ADefc6D0cE675D1e
   > account:             0xEEB5f5372B4169A9754872B046Ec17387A6d198b

Deploying 'SolnSquareVerifier'
   ------------------------------
   > transaction hash:    0x38e6e73b36191052ecf93732232e49f8f30b4f97c7ad496efbb052db9051e477
   > contract address:    0x5bBf72CcA39c7CEADe0b4eB5498965D452282C3d
   > account:             0xEEB5f5372B4169A9754872B046Ec17387A6d198b

```

## Mint Tokens
1. Use [MyEtherWallet](https://www.myetherwallet.com/access-my-wallet) to mint 10 tokens to list in Opensea. Use the  ABI and the deployed SolnSquareVerifier's contract address.

## Opensea Storefront
OpenSea Link : [https://testnets.opensea.io/collection/breeserc](https://testnets.opensea.io/collection/breeserc)

## Accounts
- Listed 5 Tokens for Sale with this account  - `0xEEB5f5372B4169A9754872B046Ec17387A6d198b`
- Purchased 5 Tokens with this account - `0x696Ffa8C7bE9F5B7ec573e654979e06f205db05b`


## Notes
- A `.infura` and a `.secret` file was added in the eth-contracts folder during development. They contained an Infura API Key and a Metamask wallet recovery phrase to assist with deployment.

# Project Resources

* [Remix - Solidity IDE](https://remix.ethereum.org/)
* [Visual Studio Code](https://code.visualstudio.com/)
* [Truffle Framework](https://truffleframework.com/)
* [Ganache - One Click Blockchain](https://truffleframework.com/ganache)
* [Open Zeppelin ](https://openzeppelin.org/)
* [Interactive zero knowledge 3-colorability demonstration](http://web.mit.edu/~ezyang/Public/graph/svg.html)
* [Docker](https://docs.docker.com/install/)
* [ZoKrates](https://github.com/Zokrates/ZoKrates)