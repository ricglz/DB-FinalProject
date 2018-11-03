CREATE TABLE Patient (
  patientId INT NOT NULL,
  fName VARCHAR(50) NOT NULL,
  lName VARCHAR(50) NOT NULL,
  sex CHAR(1) NOT NULL,
  telephone CHAR(10) NOT NULL,
  street VARCHAR(50),
  zip VARCHAR(8),
  state VARCHAR(8),
  city VARCHAR(20),
  birthDate DATE NOT NULL,

  PRIMARY KEY(patientId)
)

----------------------------------------------------------------------

CREATE TABLE Visit (
  visitId INT NOT NULL,
  patientId INT NOT NULL,
  vDate DATE NOT NULL,
  motive VARCHAR(50) NOT NULL,
  referral VARCHAR(50),

  PRIMARY KEY(visitId),
  FOREIGN KEY(patientId) REFERENCES Patient(patientId)
)

CREATE TABLE Medicament (
  medId INT NOT NULL,
  medName VARCHAR(50) NOT NULL,

  PRIMARY KEY(medId)
)

CREATE TABLE Diagnosis (
  dCode INT NOT NULL,
  dFrequent BIT,
  ICD9CM VARCHAR(40),
  ICD10CM VARCHAR(40),
  DSM5 VARCHAR(300),

  PRIMARY KEY(dCode)
)

CREATE TABLE Prescription (
  prescriptionId INT NOT NULL,
  visitId INT NOT NULL,
  dateOfPrescription DATE NOT NULL,
  isPrimary BIT NOT NULL,
  sicknessDegree INT NOT NULL,

  PRIMARY KEY(prescriptionId),
  FOREIGN KEY(visitId) REFERENCES Visit(visitId)
)


CREATE TABLE Diagnosis_details (
  visitId INT NOT NULL,
  dCode INT NOT NULL,

  PRIMARY KEY(visitId, dCode),
  FOREIGN KEY(visitId) REFERENCES Visit(visitId),
  FOREIGN KEY(dCode) REFERENCES Diagnosis(dCode),
)

CREATE TABLE Prescription_details (
  prescriptionId INT NOT NULL,
  medId INT NOT NULL,
  instructions VARCHAR(500),

  PRIMARY KEY(prescriptionId, medId),
  FOREIGN KEY(prescriptionId) REFERENCES Prescription(prescriptionId),
  FOREIGN KEY(medId) REFERENCES Medicament(medId),
)

----------------------------------------------------------------------

CREATE TABLE Test (
  testId INT NOT NULL,
  testName VARCHAR(20),

  PRIMARY KEY(testId)
)

CREATE TABLE Instance (
  instanceId INT NOT NULL,
  testId INT NOT NULL,
  visitId INT NOT NULL,

  PRIMARY KEY(instanceId),
  FOREIGN KEY(testId) REFERENCES Test(testId),
  FOREIGN KEY(visitId) REFERENCES Visit(visitId)
)

CREATE TABLE Question (
  questionId INT NOT NULL,
  questionDesc VARCHAR(550),
  testId INT NOT NULL,

  PRIMARY KEY(questionId),
  FOREIGN KEY(testId) REFERENCES Test(testId)
)

CREATE TABLE Response (
  responseId INT NOT NULL,
  questionId INT NOT NULL,
  instanceId INT NOT NULL,
  value INT NOT NULL,

  PRIMARY KEY(responseId),
  FOREIGN KEY(questionId) REFERENCES Question(questionId),
  FOREIGN KEY(instanceId) REFERENCES Instance(instanceId)
)

----------------------------------------------------------------------


INSERT INTO Patient VALUES (1, 'John', 'Smith', 'M', '8112345678', 'Main Street', '64800', 'NL', 'Monterrey', '1986-04-05')

INSERT INTO Patient VALUES (2, 'Margaret', 'Smith', 'F', '8187654321', 'Main Street', '64800', 'NL', 'Monterrey', '1986-08-10')

INSERT INTO Patient VALUES (3, 'Hugh', 'Jackman', 'M', '5412345678', '2nd Street', '72100', 'NL', 'San Pedro', '1987-12-04')

INSERT INTO Patient VALUES (4, 'Jason', 'Boise', 'M', '8100000000', 'Third Street', '60100', 'NL', 'San Nicolas', '1970-10-25')

----------------------------------------------------------------------

INSERT INTO Test VALUES (1, 'Depression')
INSERT INTO Test VALUES (2, 'Anxiety')

INSERT INTO Question VALUES (101, 'Depressed mood', 1)
INSERT INTO Question VALUES (102, 'Depressed mood', 1)
INSERT INTO Question VALUES (103, 'Depressed mood', 1)
INSERT INTO Question VALUES (104, 'Depressed mood', 1)
INSERT INTO Question VALUES (105, 'Depressed mood', 1)
INSERT INTO Question VALUES (201, 'Depressed mood', 2)
INSERT INTO Question VALUES (202, 'Depressed mood', 2)
INSERT INTO Question VALUES (203, 'Depressed mood', 2)
INSERT INTO Question VALUES (204, 'Depressed mood', 2)
INSERT INTO Question VALUES (205, 'Depressed mood', 2)

INSERT INTO Instance VALUES (1024, 1)
INSERT INTO Instance VALUES (1025, 2)
INSERT INTO Instance VALUES (1026, 1)
INSERT INTO Instance VALUES (1027, 2)
INSERT INTO Instance VALUES (1028, 1)
INSERT INTO Instance VALUES (1029, 2)
INSERT INTO Instance VALUES (1030, 1)
INSERT INTO Instance VALUES (1031, 2)

INSERT INTO Resonse VALUES (6010, 3, 101, 1024)
INSERT INTO Resonse VALUES (6011, 3, 102, 1024)
INSERT INTO Resonse VALUES (6012, 3, 103, 1024)
INSERT INTO Resonse VALUES (6013, 3, 104, 1024)
INSERT INTO Resonse VALUES (6014, 3, 105, 1024)
INSERT INTO Resonse VALUES (6015, 3, 201, 1025)
INSERT INTO Resonse VALUES (6016, 3, 202, 1025)
INSERT INTO Resonse VALUES (6017, 3, 203, 1025)
INSERT INTO Resonse VALUES (6018, 3, 204, 1025)
INSERT INTO Resonse VALUES (6019, 3, 205, 1025)
INSERT INTO Resonse VALUES (6020, 3, 101, 1026)
INSERT INTO Resonse VALUES (6021, 3, 102, 1026)
INSERT INTO Resonse VALUES (6022, 3, 103, 1026)
INSERT INTO Resonse VALUES (6023, 3, 104, 1026)
INSERT INTO Resonse VALUES (6024, 3, 105, 1026)
INSERT INTO Resonse VALUES (6025, 3, 201, 1027)
INSERT INTO Resonse VALUES (6026, 3, 202, 1027)
INSERT INTO Resonse VALUES (6027, 3, 203, 1027)
INSERT INTO Resonse VALUES (6028, 3, 204, 1027)
INSERT INTO Resonse VALUES (6029, 3, 205, 1027)
INSERT INTO Resonse VALUES (6030, 3, 101, 1028)
INSERT INTO Resonse VALUES (6031, 3, 102, 1028)
INSERT INTO Resonse VALUES (6032, 3, 103, 1028)
INSERT INTO Resonse VALUES (6033, 3, 104, 1028)
INSERT INTO Resonse VALUES (6034, 3, 105, 1028)
INSERT INTO Resonse VALUES (6035, 3, 201, 1029)
INSERT INTO Resonse VALUES (6036, 3, 202, 1029)
INSERT INTO Resonse VALUES (6037, 3, 203, 1029)
INSERT INTO Resonse VALUES (6038, 3, 204, 1029)
INSERT INTO Resonse VALUES (6039, 3, 205, 1029)
INSERT INTO Resonse VALUES (6040, 3, 101, 1030)
INSERT INTO Resonse VALUES (6041, 3, 102, 1030)
INSERT INTO Resonse VALUES (6042, 3, 103, 1030)
INSERT INTO Resonse VALUES (6043, 3, 104, 1030)
INSERT INTO Resonse VALUES (6044, 3, 105, 1030)
INSERT INTO Resonse VALUES (6045, 3, 201, 1031)
INSERT INTO Resonse VALUES (6046, 3, 202, 1031)
INSERT INTO Resonse VALUES (6047, 3, 203, 1031)
INSERT INTO Resonse VALUES (6048, 3, 204, 1031)
INSERT INTO Resonse VALUES (6049, 3, 205, 1031)

----------------------------------------------------------------------

INSERT INTO Medicament VALUES (1, 'Celexa')
INSERT INTO Medicament VALUES (2, 'Lexapro')
INSERT INTO Medicament VALUES (3, 'Paxil')
INSERT INTO Medicament VALUES (4, 'Pexeva')
INSERT INTO Medicament VALUES (5, 'Prozac')
INSERT INTO Medicament VALUES (6, 'Adapin')

----------------------------------------------------------------------