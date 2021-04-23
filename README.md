# quillhash-ICO


# Token smart contract

$ npm install -E openzeppelin-solidity

Build ERC20 Smart contract using openzeppelin library in Token.sol file.

<------------------------------------------------------------------------------------------->

# crowdsale

we can receive ether and mint new tokens for the ether sender. we will pass rate, addres and token in constructor.
_token: The ERC20 token that is to be minted and sent to the investors
_wallet: The wallet address where the ether will be forwarded
_rate: The rate at which the tokens should be minted


<------------------------------------------------------------------------------------------->

# mintable tokens

When anyone purchased the token we will mint the token. For that we will inherit MintedCrowdsale contract from openzeppelin.

<------------------------------------------------------------------------------------------->
# ETH/USD conversion

Installation

# via Yarn
$ yarn add @chainlink/contracts

# via npm
$ npm install @chainlink/contracts --save

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

Chainlink oracle is used to convert ETH to USD. This smart contract reference AggregatorV3Interface, which defines the external functions implemented by Price Feeds.


     * Network: Kovan
     * Aggregator: ETH/USD
     * Address: 0x9326BFA02ADD2366b30bacB125260Af641031331

<------------------------------------------------------------------------------------------->


