// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {NewToken} from "../src/NewToken.sol";

contract NewTokenScript is Script {
    NewToken public newToken;

    function run() public returns (NewToken){
        vm.startBroadcast();

        newToken = new NewToken();

        vm.stopBroadcast();
        return newToken;
    }
}
