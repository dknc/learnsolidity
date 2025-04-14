// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract DataLocations {
    uint256[] public arr;
    mapping(uint256 => address) map;

    struct MyStruct {
        uint256 foo;
    }

    mapping(uint256 => MyStruct) myStructs;

    function f() public {
        _f(arr,map, myStructs[1]);

        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        myStruct.foo = 3;
        // create a struct in memory
        MyStruct memory myMemStruct = MyStruct(0);
        myMemStruct.foo = 3;

    }

    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something with storage variables
        _myStruct.foo = 234;
        arr.push(4);
        map[1] = address(this);
    }

    function g(uint256[] memory _arr) public returns (uint256[] memory) {
        // do something with memory array
    }

    function h(uint256[] calldata _arr) external {
        require(_arr.length > 0, "input must hold values");
        uint256 k = _arr[0];
    }
}