// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EvenOddChecker {
    
    // Funksioni që kontrollon nëse numri është çift
    function isEven(uint256 number) public pure returns (bool) {
        return number % 2 == 0;
    }

    // Funksioni që kontrollon nëse numri është tek
    function isOdd(uint256 number) public pure returns (bool) {
        return number % 2 != 0;
    }
}
