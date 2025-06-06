// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Derguesi {
    function sendViaTransfer(address payable receiver) public payable {
        receiver.transfer(msg.value);
    }

    function sendViaCallWithData(address payable receiver) public payable {
        (bool success, ) = receiver.call{value: msg.value}(abi.encodeWithSignature("doesNotExist()"));
        require(success, "Call failed");
    }
}
