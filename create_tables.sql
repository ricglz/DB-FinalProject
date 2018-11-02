CREATE TABLE patient (
  patientId INT NOT NULL IDENTITY(1,1),
  sex CHAR(1),
  telephone CHAR(10),
  street VARCHAR(50),
  zip VARCHAR(8),
  state VARCHAR(8),
  city VARCHAR(8),
  birthDate DATETIME,
  fName VARCHAR(50),
  lName VARCHAR(50),
  religion VARCHAR(8),
  civilStatus VARCHAR(8),

  PRIMARY KEY(patientId)
)

CREATE TABLE visit (
  visitId INT NOT NULL IDENTITY(1,1),
  vDate DATETIME,
  motive VARCHAR(50),
  referral VARCHAR(50),

  PRIMARY KEY(visitId)
)

CREATE TABLE medicament (
  medId INT NOT NULL IDENTITY(1,1),
  medName VARCHAR(50)

  PRIMARY KEY(medId)
)

CREATE TABLE diagnosis (
  dCode INT NOT NULL IDENTITY(1,1),
  isPrimary BIT NOT NULL,
  sicknessDegree INT NOT NULL

  PRIMARY KEY(dCode)
)

CREATE TABLE diagnosis_visit (
  visitId INT NOT NULL,
  dCode INT NOT NULL,

  PRIMARY KEY(visitId, dCode)
)

CREATE TABLE medicament_visit (
  visitId INT NOT NULL,
  medId INT NOT NULL,
  dateBegin DATETIME,
  instructions VARCHAR(50),
  dateEnd DATETIME

  PRIMARY KEY(visitId, medId)
)