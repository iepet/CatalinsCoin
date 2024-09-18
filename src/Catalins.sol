// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Catalins is ERC20 {
    //following https://github.com/OpenZeppelin/openzeppelin-contracts
    //constructor goes here

    constructor(uint256 initialSupply) ERC20("Catalins", "OT")  {
        _mint(msg.sender, initialSupply);
    }

    function mint(address account, uint256 amount) external {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) external {
        _burn(account, amount);
    }

}