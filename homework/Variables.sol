// SPDX-License-Identifier: MIT
pragma solidity ~0.8.24;

contract Variables{ 

    string public text = "Hello";
    uint256 public number = 1;
    
    function changeValue() external { 
        number += 3;
    }

    function doSomething() public view {
        // Local variables are not saved to the blockchain.
        uint256 i = 456;

        // Here are some global variables
        uint256 timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}