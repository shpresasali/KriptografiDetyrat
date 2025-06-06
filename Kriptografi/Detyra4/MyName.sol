// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyName {
    string public name;

    // Konstruktor që ruan emrin
    constructor(string memory _name) {
        name = _name;
    }

    // Funksion për të përditësuar emrin
    function updateName(string memory _newName) public {
        name = _newName;
    }
}
