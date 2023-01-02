// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// Define solidity version and license information

contract Transactions {
    //Similar to an OOP class
    uint256 transactionCount; //integer count to store number of transac

    //create a function which we can emit later
    event Transfer(address from, address reciever, uint amount, string message, uint256 timestamp, string keyword);

    struct TransferStruct{ //object: specifying it's properties and their types
        address sender;
        address reciever;
        uint amount; 
        string message; 
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable reciever, uint amount, string memory message, string memory keyword) public {
        transactionCount+=1;
        // adding transac to the list of transacs
        transactions.push(TransferStruct(msg.sender, reciever, amount, message, block.timestamp,  keyword));
        // to actually make the transac, emit the transfer event
        emit Transfer(msg.sender, reciever, amount, message, block.timestamp,  keyword);
    }
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}
