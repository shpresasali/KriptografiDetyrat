// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Min_Max {

    uint[] public numbers;

    // Shton një listë me numra në kontratë
    function setNumbers(uint[] memory _numbers) public {
        delete numbers; // pastron listën ekzistuese
        for (uint i = 0; i < _numbers.length; i++) {
            numbers.push(_numbers[i]);
        }
    }

    // Kthen numrin maksimal nga vargu
    function findMax() public view returns (uint) {
        require(numbers.length > 0, "Lista eshte bosh");
        uint max = numbers[0];
        for (uint i = 1; i < numbers.length; i++) {
            if (numbers[i] > max) {
                max = numbers[i];
            }
        }
        return max;
    }

    // Kthen numrin minimal nga vargu
    function findMin() public view returns (uint) {
        require(numbers.length > 0, "Lista eshte bosh");
        uint min = numbers[0];
        for (uint i = 1; i < numbers.length; i++) {
            if (numbers[i] < min) {
                min = numbers[i];
            }
        }
        return min;
    }
}
