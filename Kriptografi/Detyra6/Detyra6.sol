// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Shuma {
    uint256[5] public numbers;

    function setValues(
        uint256 a,
        uint256 b,
        uint256 c,
        uint256 d,
        uint256 e
    ) public {
        numbers[0] = a;
        numbers[1] = b;
        numbers[2] = c;
        numbers[3] = d;
        numbers[4] = e;
    }

    function sum() public view returns (uint256 total) {
        for (uint i = 0; i < numbers.length; i++) {
            total += numbers[i];
        }
    }
}
