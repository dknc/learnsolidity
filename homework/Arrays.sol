// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Arrays {
    address[] private addresses;

    function addToArray(address _addr) external {
        addresses.push(_addr);
    }

    function sum(int256[] memory data) external pure returns (int256) {
        int256 result = 0;
        for (uint256 i = 0; i < data.length; ++i) {
            result += data[i];
        }
        return result;
    }

    function removeElement(address _addr) external {
        uint256 len = addresses.length;
        for (uint256 i = 0; i < len; i++) {
            if (addresses[i] == _addr) {
                addresses[i] = addresses[len - 1];
                addresses.pop();
                return;
            }
        }
    }
}
