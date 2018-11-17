--1. INPUT : Id
--Mostrar los pacientes
SELECT * FROM Patient
WHERE patientId = Id

--2. INPUT: Id
--Mostrar las visitas
SELECT visitId, vDate, motive AS 'PEEA.', resumen FROM Visit
WHERE patientId = Id

--3. INPUT: Id
--Mostrar los diagnosticos
SELECT v.visitId, vDate, ICD9CM, ICD10CM, DSM5 AS Diagnostico
FROM Visit v JOIN Diagnosis_details dd ON v.visitId = dd.visitId
JOIN Diagnosis d ON dd.dCode = d.dCode
WHERE v.patientId = Id

--4. INPUT: Id
--Mostrar medicinas recetadas
SELECT v.visitId, vDate, medName, ingredientName, quantity, typeOfDosis, laboratory, instructions
FROM Visit v JOIN Prescription p ON v.visitId = p.visitId
JOIN Prescription_details pd ON p.prescriptionId = pd.prescriptionId
JOIN Medicament m ON pd.medId = m.medId
WHERE v.patientId = Id

--5. INPUT: Id
--Mostrar examenes
SELECT t.*, descriptor
FROM (
	SELECT i.instanceId, i.testId, vDate, SUM(value) AS puntuacion
	FROM Response r JOIN Instance i ON r.instanceId = i.instanceId
	JOIN Visit v ON i.visitId = v.visitId
	WHERE v.patientId = Id
	GROUP BY instanceId
) t
LEFT JOIN Test_scale ts ON ts.testId = t.testId AND puntuacion BETWEEN ts.lowLimit AND ts.highLimit

--5.5 INPUT: Id
--Mostrar examenes (con info de paciente)
SELECT t.*, descriptor
FROM (
    SELECT p.patientId, fName, lName, sex, telephone, vDate, SUM(value) AS puntuacion, i.testId FROM Patient p
    JOIN Visit v ON p.patientId = v.patientId
    JOIN Instance i ON i.visitId = v.visitId
    JOIN Response r ON r.instanceId = i.instanceId
    WHERE i.instanceId = Id
    GROUP BY i.instanceId
) t
LEFT JOIN Test_scale ts ON ts.testId = t.testId AND puntuacion BETWEEN ts.lowLimit AND ts.highLimit

--6. INPUT: Id
--Mostrar instancia de examen
SELECT questionTitle, questionInstructions, value FROM Question q
JOIN Response r ON q.questionId = r.questionId
WHERE instanceId = Id

--7. Input: patientScore
--Mostrar examenes con puntuacion minima k
SELECT t.*, descriptor
FROM (
    SELECT i.instanceId, i.testId, vDate, SUM(value) AS puntuacion
    FROM Response r JOIN Instance i ON r.instanceId = i.instanceId
    JOIN Visit v ON i.visitId = v.visitId
    GROUP BY instanceId
    HAVING puntuacion >= patientScore
) t
LEFT JOIN Test_scale ts ON ts.testId = t.testId AND puntuacion BETWEEN ts.lowLimit AND ts.highLimit

--8. Input: patientName
--Mostrar datos con nombre patientName
SELECT * FROM Patient
WHERE fName = patientName OR lName = patientName
    OR fname + lName = patientName

--9. Input: Id
--Delete Patient EHR
DELETE FROM Prescription_details WHERE prescriptionId IN (
    SELECT prescriptionId FROM Visit
    JOIN Prescription ON Visit.visitId = Prescription.visitId
    WHERE Visit.patientId = Id);

DELETE FROM Prescription WHERE visitId IN (
    SELECT visitId FROM Visit
    WHERE Visit.patientId = Id);

DELETE FROM Diagnosis_details WHERE visitId IN (
    SELECT visitId FROM Visit
    WHERE Visit.patientId = Id);

DELETE FROM Response WHERE instanceId IN (
    SELECT instanceId FROM Visit
    JOIN Instance ON Visit.visitId = Instance.visitId
    WHERE Visit.patientId = Id);

DELETE FROM Instance WHERE visitId IN (
    SELECT visitId FROM Visit
    WHERE Visit.patientId = Id);

DELETE FROM Visit WHERE patientId = Id;

DELETE FROM Patient WHERE patientId = Id;

--10. Mostrar las N medicinas mas recetadas y los laboratorios que las producen
--Input: N
SELECT m.medName, m.laboratory, COUNT(prescriptionId)
FROM Medicament m
JOIN Prescription_details pd ON m.medId = pd.medId
GROUP BY m.medName, m.laboratory
ORDER BY COUNT(prescriptionId) DESC
LIMIT N;

--11. Mostrar todos los pacientes que han recibido cierto diagnostico y cuando lo recibieron.
--Input: dSearch (diagnostico a buscar)
SELECT p.patientId, p.fName, p.lName, v.vDate AS Date
FROM Visit v
JOIN Diagnosis_details dd ON v.visitId = dd.visitId
JOIN Patient p ON v.patientId = p.patientId
WHERE dCode = dSearch
ORDER BY vDate DESC


--12. Examenes arriba de la media
--Input: tId
SELECT p.patientId, fName, lName, SUM(value) AS puntuacion FROM Patient p
    JOIN Visit v ON p.patientId = v.patientId
    JOIN Instance i ON i.visitId = v.visitId
    JOIN Response r ON r.instanceId = i.instanceId
    WHERE i.testId = tId
    GROUP BY i.instanceId
    HAVING puntuacion >= ALL

    (SELECT AVG(puntuacion) FROM (
     SELECT SUM(value) AS puntuacion FROM Response r
     JOIN Instance i ON r.instanceId = i.instanceId
     WHERE i.testId = tId
     GROUP BY i.instanceId) t)

--13. Progreso de examen
--Input:  Id
SELECT t1.testId, t2.puntuacion - t1.puntuacion AS Diferencia FROM

(SELECT i.instanceId, i.testId, SUM(value) AS puntuacion
FROM Response r JOIN Instance i ON r.instanceId = i.instanceId
JOIN Visit v ON i.visitId = v.visitId
WHERE v.patientId = Id
GROUP BY instanceId
ORDER BY vDate ASC
LIMIT 2) t1

JOIN

(SELECT i.instanceId, i.testId, SUM(value) AS puntuacion
FROM Response r JOIN Instance i ON r.instanceId = i.instanceId
JOIN Visit v ON i.visitId = v.visitId
WHERE v.patientId = Id
GROUP BY instanceId
ORDER BY vDate DESC
LIMIT 2) t2

ON t1.instanceId <> t2.instanceId AND t1.testId = t2.testId

--14. Medicina más recetada por diagnóstico
--Input: dC, N
SELECT m.medName, m.laboratory,  COUNT(M.medId) as medicamentCount
FROM Diagnosis D
JOIN Diagnosis_details DD ON D.dCode = DD.dCode
JOIN Visit V ON DD.visitId = V.visitId
JOIN Prescription P ON P.visitId = V.visitId
JOIN Prescription_details PD ON P.prescriptionId = PD.prescriptionId
JOIN Medicament M ON PD.medId = M.medId
WHERE D.dCode = dC
GROUP BY m.medId
ORDER BY medicamentCount DESC
LIMIT N

--15. Doctores ordenados por numero de visitas
SELECT Doctor.doctorId, Doctor.doctorName, COUNT(*) AS NumeroDeConsultas
FROM Doctor
LEFT JOIN Visit ON Visit.doctorId = Doctor.doctorId
GROUP BY Doctor.doctorId
ORDER BY NumeroDeConsultas  DESC

--16 Busqueda de doctores por nombre
--Input: nameSearch
SELECT *
FROM Doctor
WHERE doctorName LIKE CONCAT('%',nameSearch,'%')

--17 Busqueda de pacientes por nombre
--Input: nameSearch
SELECT *
FROM Patient
WHERE CONCAT(fName,lName) LIKE CONCAT('%', nameSearch, '%')

--19. Mostrar las N medicinas mas recetadas de hoy
--Input: N
SELECT m.medName, COUNT(pd.prescriptionId)
FROM Medicament m
JOIN Prescription_details pd ON m.medId = pd.medId
JOIN Prescription p ON pd.prescriptionId = p.prescriptionId
JOIN Visit v ON p.visitId = v.visitId
WHERE DATE(vDate) = DATE(NOW())
GROUP BY m.medName, m.laboratory
ORDER BY COUNT(pd.prescriptionId) DESC
LIMIT N;

--20. Mostrar cantidad de veces que se hizo un diagnostico entre 2 fechas
--Input: dateMIN, dateMAX
SELECT d.ICD9CM, d.ICD10CM, d.DSM5, COUNT(*)
FROM Diagnosis d
WHERE d.dCode IN
(SELECT dd.dCode
FROM Diagnosis_details dd
WHERE dd.visitId IN
(SELECT v.visitId
FROM Visit v
WHERE v.vDate BETWEEN dateMIN AND dateMAX))
GROUP BY d.dCode, d.ICD9CM, d.ICD10CM, d.DSM5
ORDER BY COUNT(*) DESC

--21. Mostrar cantidad de veces que se receto una medicina entre 2 fechas
--Input: dateMIN, dateMAX
SELECT m.medName, m.laboratory, COUNT(*)
FROM Medicament m
WHERE medId IN
(SELECT pd.medId
FROM Prescription_details pd
WHERE pd.prescriptionId IN 
(SELECT p.prescriptionId
FROM Prescription p
WHERE p.visitId IN 
(SELECT v.visitId
FROM Visit v
WHERE v.vDate BETWEEN dateMIN AND dateMAX)))
GROUP BY m.medName, m.laboratory
ORDER BY COUNT(*) DESC

--22. Mostrar cantidad de visitas por paciente entre 2 fechas
--Input: dateMIN, dateMAX
SELECT p.fName, p.lName, COUNT(*)
FROM Patient p
WHERE p.patientId IN
(SELECT v.patientId
FROM Visit v
WHERE v.vDate BETWEEN dateMIN AND dateMAX)
GROUP BY p.fName, p.lName
ORDER BY COUNT(*) DESC