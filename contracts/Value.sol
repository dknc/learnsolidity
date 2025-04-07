// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Value {
    uint256 public tokenBalance;

    constructor() {
        tokenBalance = 0;
    }

    function addValue() payable public {
        tokenBalance += msg.value / 10;
    }

    function getTokenBalance() public view returns (uint256) {
        return tokenBalance;
    }
}