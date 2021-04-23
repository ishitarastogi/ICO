pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";

contract Token is  ERC20Detailed {
    constructor()
        ERC20Detailed("Token", "TKN", 18)
        public
    {

    }
}
