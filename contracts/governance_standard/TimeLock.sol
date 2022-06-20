//SPDX-License-Identifier: MIT
//TimeLock would be the owner of Own.sol
//It give time to users to leave if they don't like a governance
//So once proposal passes , it won't affect right away,it'll give some time
//to users to exit

//Everything needs to flow through TimeLock.sol in order to governance should happen
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    //minDelay : How long you have to wait before executing
    //proposers : list of addresses that can propose
    //executors : Who can execute when a proposal passes
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors
    ) TimelockController(minDelay , proposers, executors) {}
}
