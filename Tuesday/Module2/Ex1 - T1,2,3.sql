SELECT VendorName, PhoneNumber
FROM Vendor

SELECT TrainerName, PhoneNumber
FROM Trainer

SELECT 'Vendor' AS ContractType, VendorName, PhoneNumber
FROM Vendor
UNION
SELECT 'Trainer' AS ContractType, TrainerName, PhoneNumber
FROM Trainer

