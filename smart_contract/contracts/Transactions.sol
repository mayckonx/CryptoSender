//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Transactions {
    struct TransferStruct {
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }
    event Transfer(
        address from,
        address to,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    uint256 transactionCounter;
    TransferStruct[] transactions;

    function send(
        address payable to,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        transactionCounter += 1;
        transactions.push(
            TransferStruct(
                msg.sender,
                to,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );

        emit Transfer(
            msg.sender,
            to,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions()
        public
        view
        returns (TransferStruct[] memory)
    {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCounter;
    }
}
