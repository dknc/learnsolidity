// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Fabnacii {
    
    function fib(uint256 num) public pure returns (uint256) {
        if (num == 0) return 0;
        if (num == 1) return 1;
        uint256 a = 0;
        uint256 b = 1;
        for (uint256 i = 2; i <= n; i++) {
            uint256 c = a + b;
            a = b;
            b = c;
        }
        return b;
    }
}
