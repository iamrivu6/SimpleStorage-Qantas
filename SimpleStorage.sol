// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
uint256 private storedNumber;
event NumberChanged(uint256 oldNumber, uint256 newNumber);
function store(uint256 _number) public {
uint256 oldNumber = storedNumber;
storedNumber = _number;
emit NumberChanged(oldNumber, _number);
}
function retrieve() public view returns (uint256) {
return storedNumber;
}
}