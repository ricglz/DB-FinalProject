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
  referral VARCHAR(50),

  PRIMARY KEY(patientId)
)

----------------------------------------------------------------------

CREATE TABLE Visit (
  visitId INT NOT NULL,
  patientId INT NOT NULL,
  vDate DATE NOT NULL,
  motive VARCHAR(50) NOT NULL,

  PRIMARY KEY(visitId),
  FOREIGN KEY(patientId) REFERENCES Patient(patientId)
)

CREATE TABLE Medicament (
  medId INT NOT NULL,
  medName VARCHAR(50) NOT NULL,
  ingredientName VARCHAR(50) NOT NULL,
  quantity VARCHAR(10)  NOT NULL,
  typeOfDosis VARCHAR(50) NOT NULL,
  laboratory VARCHAR(50) not NULL

  PRIMARY KEY(medId)
)

/*
CREATE TABLE Diagnosis (
  dCode INT NOT NULL,
  dFrequent BIT,
  ICD9CM VARCHAR(40),
  ICD10CM VARCHAR(40),
  DSM5 VARCHAR(300),

  PRIMARY KEY(dCode)
)
*/

CREATE TABLE Prescription (
  prescriptionId INT NOT NULL,
  visitId INT NOT NULL,
  --dateOfPrescription DATE NOT NULL

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
  questionTitle VARCHAR(550),
  questionInstructions VARCHAR(550),
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

INSERT INTO Patient VALUES (1, 'John', 'Smith', 'M', '8112345678', 'Main Street', '64800', 'NL', 'Monterrey', '1986-04-05', 'Dr. Alfonso')
INSERT INTO Visit VALUES (1, 1, '2018-10-10', 'Suspects mild depression')
INSERT INTO Prescription VALUES (1, 1, 1, 4)

INSERT INTO Patient VALUES (2, 'Margaret', 'Smith', 'F', '8187654321', 'Main Street', '64800', 'NL', 'Monterrey', '1986-08-10', 'Dr. Martinez')
INSERT INTO Visit VALUES (2, 2, '2018-10-11', 'Had panic attack')
INSERT INTO Prescription VALUES (2, 2, 1, 3)

INSERT INTO Patient VALUES (3, 'Hugh', 'Jackman', 'M', '5412345678', '2nd Street', '72100', 'NL', 'San Pedro', '1987-12-04', 'Dr. Fernandez')
INSERT INTO Visit VALUES (3, 3, '2018-10-12', 'Attempted suicide')
INSERT INTO Prescription VALUES (3, 3, 1, 7)

INSERT INTO Patient VALUES (4, 'Jason', 'Boise', 'M', '8100000000', 'Third Street', '60100', 'NL', 'San Nicolas', '1970-10-25', 'Dr. Alvarez')
INSERT INTO Visit VALUES (4, 4, '2018-10-13', 'Displays abnormal social interactions')
INSERT INTO Prescription VALUES (4, 4, 1, 2)

----------------------------------------------------------------------

INSERT INTO Test VALUES (1, 'Depression')
INSERT INTO Test VALUES (2, 'Anxiety')

INSERT INTO Question VALUES (101, 'Humor depresivo', 1)
INSERT INTO Question VALUES (102, 'Sentimientos de culpa', 1)
INSERT INTO Question VALUES (103, 'Suicidio', 1)
INSERT INTO Question VALUES (104, 'Insomnio precoz', 1)
INSERT INTO Question VALUES (105, 'Insomnio intermedio', 1)
INSERT INTO Question VALUES (201, 'Estado de ánimo ansioso', 2)
INSERT INTO Question VALUES (202, 'Tensión', 2)
INSERT INTO Question VALUES (203, 'Temores', 2)
INSERT INTO Question VALUES (204, 'Insomnio', 2)
INSERT INTO Question VALUES (205, 'Intelectual', 2)

INSERT INTO Instance VALUES (1024, 1, 1)
INSERT INTO Instance VALUES (1025, 2, 1)
INSERT INTO Instance VALUES (1026, 1, 2)
INSERT INTO Instance VALUES (1027, 2, 2)
INSERT INTO Instance VALUES (1028, 1, 3)
INSERT INTO Instance VALUES (1029, 2, 3)
INSERT INTO Instance VALUES (1030, 1, 4)
INSERT INTO Instance VALUES (1031, 2, 4)

INSERT INTO Response VALUES (6010, 101, 1024, 3)
INSERT INTO Response VALUES (6011, 102, 1024, 3)
INSERT INTO Response VALUES (6012, 103, 1024, 4)
INSERT INTO Response VALUES (6013, 104, 1024, 2)
INSERT INTO Response VALUES (6014, 105, 1024, 1)
INSERT INTO Response VALUES (6015, 201, 1025, 4)
INSERT INTO Response VALUES (6016, 202, 1025, 3)
INSERT INTO Response VALUES (6017, 203, 1025, 3)
INSERT INTO Response VALUES (6018, 204, 1025, 3)
INSERT INTO Response VALUES (6019, 205, 1025, 2)
INSERT INTO Response VALUES (6020, 101, 1026, 1)
INSERT INTO Response VALUES (6021, 102, 1026, 2)
INSERT INTO Response VALUES (6022, 103, 1026, 0)
INSERT INTO Response VALUES (6023, 104, 1026, 1)
INSERT INTO Response VALUES (6024, 105, 1026, 1)
INSERT INTO Response VALUES (6025, 201, 1027, 2)
INSERT INTO Response VALUES (6026, 202, 1027, 2)
INSERT INTO Response VALUES (6027, 203, 1027, 0)
INSERT INTO Response VALUES (6028, 204, 1027, 1)
INSERT INTO Response VALUES (6029, 205, 1027, 1)
INSERT INTO Response VALUES (6030, 101, 1028, 3)
INSERT INTO Response VALUES (6031, 102, 1028, 3)
INSERT INTO Response VALUES (6032, 103, 1028, 4)
INSERT INTO Response VALUES (6033, 104, 1028, 2)
INSERT INTO Response VALUES (6034, 105, 1028, 1)
INSERT INTO Response VALUES (6035, 201, 1029, 4)
INSERT INTO Response VALUES (6036, 202, 1029, 3)
INSERT INTO Response VALUES (6037, 203, 1029, 3)
INSERT INTO Response VALUES (6038, 204, 1029, 3)
INSERT INTO Response VALUES (6039, 205, 1029, 2)
INSERT INTO Response VALUES (6040, 101, 1030, 1)
INSERT INTO Response VALUES (6041, 102, 1030, 2)
INSERT INTO Response VALUES (6042, 103, 1030, 0)
INSERT INTO Response VALUES (6043, 104, 1030, 1)
INSERT INTO Response VALUES (6044, 105, 1030, 1)
INSERT INTO Response VALUES (6045, 201, 1031, 2)
INSERT INTO Response VALUES (6046, 202, 1031, 2)
INSERT INTO Response VALUES (6047, 203, 1031, 0)
INSERT INTO Response VALUES (6048, 204, 1031, 1)
INSERT INTO Response VALUES (6049, 205, 1031, 1)

----------------------------------------------------------------------

INSERT INTO Medicament VALUES (1, 'Celexa')
INSERT INTO Medicament VALUES (2, 'Lexapro')
INSERT INTO Medicament VALUES (3, 'Paxil')
INSERT INTO Medicament VALUES (4, 'Pexeva')
INSERT INTO Medicament VALUES (5, 'Prozac')
INSERT INTO Medicament VALUES (6, 'Adapin')
INSERT INTO Medicament VALUES (7, 'Farmaxetina', 'Fluoxetina', '20 mg', 'capsulas', 'ifa CELTICS')
INSERT INTO Medicament VALUES (7, 'Farmaxetina')

----------------------------------------------------------------------

INSERT INTO Prescription_details VALUES (1, 1, 'Take 20mg every 7 hours')
INSERT INTO Prescription_details VALUES (2, 6, 'Take 20mg every 7 hours')
INSERT INTO Prescription_details VALUES (3, 4, 'Take 20mg every 7 hours')
INSERT INTO Prescription_details VALUES (3, 5, 'Take 20mg every 7 hours')
INSERT INTO Prescription_details VALUES (4, 2, 'Take 20mg every 7 hours')

----------------------------------------------------------------------

INSERT INTO Diagnosis_details VALUES (1, 424)
INSERT INTO Diagnosis_details VALUES (2, 907)
INSERT INTO Diagnosis_details VALUES (3, 418)
INSERT INTO Diagnosis_details VALUES (4, 11)
