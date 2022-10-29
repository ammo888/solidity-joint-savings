# Solidity Joint Savings

`joint_savings.sol` shows a simple joint savings contract that allows two addresses to withdraw ether from the contract balance. Ether can be deposited to the contract by anyone. The two owner accounts can currently be set any address, and is a future point of improvement.

## Example flow
The following interactions were performed via the Remix VM.

1. setAccounts
![Set accounts](Images/set-accounts.png)
2. Deposit 1, 10, 5 Ether, and contract balance
![Deposit 1](Images/deposit-1.png)
![Deposit 2](Images/deposit-2.png)
![Deposit 3](Images/deposit-3.png)
![Contract balance](Images/deposits-contract-balance.png)
3. Withdraw to account 1
![Withdraw to account 1](Images/withdraw-account-one.png)
![Contract balance](Images/withdraw-account-one-contract-balance.png)
![Last account](Images/withdraw-account-one-last-account.png)
![Last amount](Images/withdraw-account-one-last-amount.png)
4. Withdraw to account 2
![Withdraw to account 2](Images/withdraw-account-two.png)
![Contract balance](Images/withdraw-account-two-contract-balance.png)
![Last account](Images/withdraw-account-two-last-account.png)
![Last amount](Images/withdraw-account-two-last-amount.png)
