// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BasicOperands {

    // Funksion për të llogaritur shumën
    function add(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }

    // Funksion për të llogaritur shumëzimin
    function multiply(uint256 x, uint256 y) public pure returns (uint256) {
        return x * y;
    }

    // Funksion për të llogaritur pjesëtimin
    function divide(uint256 x, uint256 y) public pure returns (uint256) {
        require(y != 0, "Nuk mund te pjestosh me zero");
        return x / y;
    }
}
