/*
Joint Savings Account
---------------------
*/

pragma solidity ^0.5.0;

contract JointSavings {
    // Authorized recipients
    address payable accountOne;
    address payable accountTwo;
    // Account of last withdrawal
    address public lastToWithdraw;
    // Amount of last withdrawal
    uint public lastWithdrawAmount;
    // Balance of contract
    uint public contractBalance;

    function withdraw(uint amount, address payable recipient) public {
        // Authorize recipients
        require(recipient == accountOne || recipient == accountTwo, "You don't own this account!");
        // Validate withdrawal amount
        require(amount <= contractBalance, "Insufficient funds!");

        // Update last withdrawal account
        if (lastToWithdraw != recipient)
        {
            lastToWithdraw = recipient;
        }

        // Transfer amount of recipient
        recipient.transfer(amount);
        // Update last withdrawal amount
        lastWithdrawAmount = amount;
        // Update contract balance
        contractBalance = address(this).balance;
    }

    function deposit() public payable {
        // Update contract balance
        contractBalance = address(this).balance;
    }

    function setAccounts(address payable account1, address payable account2) public {
        accountOne = account1;
        accountTwo = account2;
    }

    function() external payable {
        // Update contract balance
        contractBalance = address(this).balance;
    }
}
