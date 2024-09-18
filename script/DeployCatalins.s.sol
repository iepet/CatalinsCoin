// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {Catalins} from "../src/Catalins.sol";

contract DeployCatalins is Script{
    uint256 public constant INITIAL_SUPPLY = 1000000000000000000000; // 1000 tokens with 18 decimals

    function run() external {
        vm.startBroadcast();
        Catalins catalins = new Catalins(INITIAL_SUPPLY);
        console.log("Deployed Catalins token address:", address(catalins));
        vm.stopBroadcast();
    }
}
