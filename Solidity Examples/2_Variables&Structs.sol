// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    // State Variables
    int256 public myInt256 = -1; // -1,-2,-3..
    uint256 public myUint256 = 1; // 1,2,3..
    uint8 public myUint8 = 1; //8, 16, 32, 64, 128, 256

    string public myString = "Hello!!";
    bytes32 public myBytes32 = "Hello!!";

    address public myAddress = 0x868142EB95f9D3533857A1f7178F675851B275fB;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello!!");

    // Local Variables
    function getValue() public pure returns(uint256) {
        uint256 value = 1;
        return value;
    }

}
