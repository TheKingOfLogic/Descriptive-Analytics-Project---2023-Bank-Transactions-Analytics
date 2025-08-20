--Creating Database
CREATE DATABASE BankTransactionsDB
GO
USE BankTransactionsDB

--After Importing Table
SELECT * FROM Transactions

--Remove Uneeded Columns
ALTER TABLE Transactions
DROP COLUMN CustomerAge, CustomerOccupation, DeviceID, IP_Address, LoginAttempts, TransactionDuration, AccountBalance, MerchantID, PreviousTransactionDate

--Improve date readability
ALTER TABLE Transactions
ALTER COLUMN TransactionDate date;

--Check Null Values
SELECT COUNT (*) FROM Transactions
WHERE AccountID IS NULL
OR TransactionAmount IS NULL
OR TransactionDate IS NULL
OR TransactionType IS NULL
OR Location IS NULL
OR Channel IS NULL



