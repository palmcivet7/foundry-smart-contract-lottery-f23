# Verifiably Random Lottery Contract

## About

This project was made following along with a Cyfrin Foundry lesson and is a proveably random smart contract lottery.

[Deployed on Sepolia testnet](https://sepolia.etherscan.io/address/0x49150c2feba5367289c71c0ea7710de7d98d66fd#code)

## What do we want it to do?

1. Users can enter by paying for a ticket
   1. The ticket fees are going to go to the winner during the draw
2. After X period of time, the lottery will automatically draw a winner
   1. This will be done programmatically
3. Using Chainlink VRF and Chainlink Automation
   1. Chainlink VRF -> Randomness
   2. Chainlink Automation -> Time based trigger

## Tests

1. Write some deploy scripts
2. Write our tests
   1. Work on a local chain
   2. Forked testnet
   3. Forked mainnet
