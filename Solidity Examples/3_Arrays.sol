// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    // Arrays
    // index = [0, 1, 2]
    // element = [11, 23, 55]
    // therefore= [0 = 11, 1 = 23, 2 = 55]
    uint256[] public uint256Array = [1, 2, 3];
    string[] public stringArray = ["a", "b", "c"];
    string[] public values;
    uint256[][] public array2D = [[1, 2, 3], [4, 5, 6]];

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function valueCount() public view returns(uint256) {
        return values.length;
    }
    
}
