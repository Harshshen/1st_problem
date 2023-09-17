// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherValueConverter {
    // Mapping to keep track of user balances
    mapping(address => uint256) public balances;

    // Function to receive Ether and update the user's balance
    receive() external payable {
        balances[msg.sender] += msg.value;
    }

    // Function to get the user's balance in wei
    function getValueInWei() public view returns (uint256) {
        return balances[msg.sender];
    }

    // Function to get the user's balance in ether
    function getValueInEther() public view returns (uint256) {
        return balances[msg.sender] / 1 ether;
    }

    // Function to get the user's balance in gwei
    function getValueInGwei() public view returns (uint256) {
        return balances[msg.sender] / 1 gwei;
    }
}
