CREATE TABLE Patient (
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

----------------------------------------------------------------------

CREATE TABLE Visit (
  visitId INT NOT NULL IDENTITY(1,1),
  vDate DATETIME,
  motive VARCHAR(50),
  referral VARCHAR(50),

  PRIMARY KEY(visitId)
)

CREATE TABLE Medicament (
  medId INT NOT NULL IDENTITY(1,1),
  medName VARCHAR(50)

  PRIMARY KEY(medId)
)

CREATE TABLE Diagnosis (
  dCode INT NOT NULL IDENTITY(1,1),
  isPrimary BIT NOT NULL,
  sicknessDegree INT NOT NULL

  PRIMARY KEY(dCode)
)

CREATE TABLE Diagnosis_visit (
  visitId INT NOT NULL,
  dCode INT NOT NULL,

  PRIMARY KEY(visitId, dCode)
  FOREIGN KEY(visitId) REFERENCES Visit(visitId)
  FOREIGN KEY(dCode) REFERENCES Diagnosis(dCode)
)

CREATE TABLE Medicament_visit (
  visitId INT NOT NULL,
  medId INT NOT NULL,
  dateBegin DATETIME,
  instructions VARCHAR(50),
  dateEnd DATETIME

  PRIMARY KEY(visitId, medId)
  FOREIGN KEY(visitId) REFERENCES Visit(visitId)
  FOREIGN KEY(medId) REFERENCES Medicament(medId)
)

----------------------------------------------------------------------

CREATE TABLE HD_Test_Res (
  entryId INT NOT NULL IDENTITY(1,1)
  patientId INT NOT NULL,

  PRIMARY KEY(entryId, patientId),
  FOREIGN KEY(patientId) REFERENCES Patient(patientId)
)

CREATE TABLE HD_Question (
  qId INT NOT NULL IDENTITY(1,1),
  entryId INT NOT NULL,
  description VARCHAR(500)

  PRIMARY KEY(qId)
  FOREIGN KEY(entryId) REFERENCES HD_Test_Res(entryId)
)

CREATE TABLE HD_Answer (
  entryId INT NOT NULL,
  qId INT NOT NULL,
  value INT NOT NULL,

  PRIMARY KEY(entryId, qId)
  FOREIGN KEY(entryId) REFERENCES HD_Test_Res(entryId)
  FOREIGN KEY(qId) REFERENCES HD_Question(qId)
)

----------------------------------------------------------------------

CREATE TABLE HA_Test_Res (
  entryId INT NOT NULL IDENTITY(1,1)
  patientId INT NOT NULL,

  PRIMARY KEY(entryId, patientId),
  FOREIGN KEY(patientId) REFERENCES Patient(patientId)
)

CREATE TABLE HA_Question (
  qId INT NOT NULL IDENTITY(1,1),
  entryId INT NOT NULL,
  anxType CHAR(1) NOT NULL,
  description VARCHAR(500)

  PRIMARY KEY(qId)
  FOREIGN KEY(entryId) REFERENCES HA_Test_Res(entryId)
)

CREATE TABLE HA_Answer (
  entryId INT NOT NULL,
  qId INT NOT NULL,
  value INT NOT NULL,

  PRIMARY KEY(entryId, qId)
  FOREIGN KEY(entryId) REFERENCES HA_Test_Res(entryId)
  FOREIGN KEY(qId) REFERENCES HA_Question(qId)
)

----------------------------------------------------------------------