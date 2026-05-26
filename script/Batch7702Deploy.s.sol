// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {Script, console} from "forge-std/Script.sol";
import {BasicEOABatchExecutor} from "../src/BasicEOABatchExecutor.sol";

contract Batch7702Deploy is Script {
    function run() external returns (BasicEOABatchExecutor executor) {
        vm.startBroadcast();

        executor = new BasicEOABatchExecutor();

        vm.stopBroadcast();

        console.log("BasicEOABatchExecutor deployed at:", address(executor));
    }
}
