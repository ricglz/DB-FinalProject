--1. INPUT : Id
SELECT * FROM Patient
WHERE patientId = Id

--2. INPUT: Id
SELECT visitId, vDate, motive AS 'P.E.E.A.', resumen FROM Visit
WHERE patientId = Id 

--3. 

