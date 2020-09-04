/*
Create Header Ledger Table
*/

/*Load Ranch*/

/*Load Account*/

/*Load Vendor*/

INSERT INTO Accounting.Vendor
(
Name
)

SELECT 
Vendor
FROM [CDM Stage].raw.ledger


/*Load Transactions*/

INSERT INTO Accounting.Transaction
(

)

SELECT 

FROM [CDM Stage].raw.ledger

--LOAD SENSITIVE VALUES INTO INGESTFIELD TABLE

--REMOVE DUPLICATES

INSERT INTO Accounting.Detail
(
	BatchID
,	RanchID
,	AcctCd
,	VendorID
,	Description
,	Total
,	TotalPerAcre
)

SELECT l.Batch
,	r.RanchId
,	l.AcctCd
,	v.VendorID
, l.Total
, l.Total/Ac
FROM [CDM Stage].raw.ledger l
JOIN [CDM Stage].raw.ranch r ON l.RanchCd = r.RanchCdOrig
JOIN [CDM Stage].raw.vendor v on l.Vendor = v.

--CLEANSE SENSITIVE VALUES



SELECT *

FROM [CDM Stage].raw.ranch