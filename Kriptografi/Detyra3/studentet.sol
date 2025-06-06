// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Student {
    string public name;
    string public surname;
    string public major;

    uint256 private id;

    // Konstruktor: inicializon të dhënat e studentit
    constructor(uint256 _id, string memory _name, string memory _surname, string memory _major) {
        id = _id;
        name = _name;
        surname = _surname;
        major = _major;
    }

    // Funksion për të marrë ID-në (nëse duam kontroll të kufizuar në të ardhmen)
    function getId() public view returns (uint256) {
        return id;
    }
}
