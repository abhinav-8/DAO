// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Own is Ownable {
  uint256 private val;

  // Emitted when the stored value changes
  event valUpdated(uint256 newVal);

  // Stores a new value in the contract
  function store(uint256 newVal) public onlyOwner {
    val = newVal;
    emit valUpdated(newVal);
  }

  // Reads the last stored value
  function retrieve() public view returns (uint256) {
    return val;
  }
}