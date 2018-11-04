--1. INPUT : Id
SELECT * FROM Patient
WHERE patientId = Id

--2. INPUT: Id
SELECT visitId, vDate, motive AS 'P.E.E.A.', resumen FROM Visit
WHERE patientId = Id 

--3. INPUT: Id
SELECT visitId, vDate, DSM5 AS Diagnostico
FROM Visit v JOIN Diagnostic_detials dd ON v.visitId = dd.dCode
JOIN Diagnostic d ON dd.dCode = d.dCode
WHERE v.patientId = Id

--4. INPUT: Id
SELECT visitId, vDate, medName, ingredientName, quantity, typeOfDosis, laboratory, instructions
FROM Visit v JOIN Prescription p ON v.visitId = p.visitId
JOIN Prescription_details pd ON p.prescriptionId = pd.prescriptionId
JOIN Medicament m ON pd.medId = m.medId
WHERE v.patientId = Id

--5. INPUT: Id
-- SELECT testId, vDate, SUM() AS puntuacion, 

