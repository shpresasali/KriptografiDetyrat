// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Pranuesi {
    event ReceivedViaReceive(address sender, uint amount);
    event ReceivedViaFallback(address sender, uint amount);

    receive() external payable {
        emit ReceivedViaReceive(msg.sender, msg.value);
    }

    fallback() external payable {
        emit ReceivedViaFallback(msg.sender, msg.value);
    }

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
