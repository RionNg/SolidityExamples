// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    // Conditionals
    // IF (some condition)
    // THEN (do some action)
    // ELSE (do some other action)
    // Loops

    uint256[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function countEvenNumbers() public view returns (uint256) {
        uint256 count = 0;

        for (uint256 i = 0; i < numbers.length; i++) {
            if (isEvenNumber(numbers[i])) {
                count++;
            }
        }
        return count;
    }

    function isEvenNumber(uint _number) public pure returns (bool) {
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function isOwnder() public view returns (bool) {
        return (msg.sender == owner);
    }

}