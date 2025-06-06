// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Numerithjeshte {

    uint private number;

    function setNumber(uint _number) public {
        number = _number;
    }
    function checkPrime() public view returns (string memory) {
        if (number < 2) {
            return "Numri nuk eshte i thjeshte.";
        }
        for (uint i = 2; i <= number / 2; i++) {
            if (number % i == 0) {
                return "Numri nuk eshte i thjeshte.";
            }
        }
        return "Numri eshte i thjeshte.";
    }

    function getNumber() public view returns (uint) {
        return number;
    }
}
