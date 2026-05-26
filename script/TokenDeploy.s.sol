// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

import {Script, console} from "forge-std/Script.sol";
import {MockEther} from "../src/MockEther.sol";
import {MockDong} from "../src/MockDong.sol";

contract TokenDeploy is Script {

    address initialOwner = 0xe3d25540BA6CED36a0ED5ce899b99B5963f43d3F;
    
    function run() external returns (MockEther mockEther, MockDong mockDong) {
        vm.startBroadcast();

        mockEther = new MockEther(initialOwner);
        mockDong = new MockDong(initialOwner);

        vm.stopBroadcast();

        console.log("MockEther deployed at:", address(mockEther));
        console.log("MockDong deployed at:", address(mockDong));
        console.log("Initial owner:", initialOwner);
    }
}
