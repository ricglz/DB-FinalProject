CREATE TABLE patient (
  sex CHAR(1),
  telephone VARCHAR(14),
  street VARCHAR(50),
  zip VARCHAR(8),
  state VARCHAR(8),
  city VARCHAR(8),
  birthDate DATETIME,
  fName VARCHAR(50),
  lName VARCHAR(50),
  religion VARCHAR(8),
  civilStatus VARCHAR(8),
  patientId INT
)

ALTER TABLE patient
  ADD CONSTRAINT patientId_kprim PRIMARY KEY(patientId)
GO

CREATE TABLE visit (
  vDate DATETIME,
  motive VARCHAR(50),
  referral VARCHAR(50),
  visitId INT
)

ALTER TABLE visit
  ADD CONSTRAINT visitId_kprim PRIMARY KEY(visitId)
GO

CREATE TABLE diagnosis_visit (
  id INT,
  visitId INT,
  dCode INT 
)

ALTER TABLE diagnosis_visit
  ADD CONSTRAINT id_kprim PRIMARY KEY(id)
GO

CREATE TABLE medicament_visit (
  id INT,
  visitId INT,
  medId INT,
  dateBegin DATETIME,
  instructions VARCHAR(50),
  dateEnd DATETIME
)

ALTER TABLE medicament_visit
  ADD CONSTRAINT id_kprim PRIMARY KEY(id)
GO
