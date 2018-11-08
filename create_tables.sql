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

CREATE TABLE Visit (
  visitId INT NOT NULL,
  patientId INT NOT NULL,
  vDate DATE NOT NULL,
  motive VARCHAR(50) NOT NULL,
  resumen VARCHAR(500),

  PRIMARY KEY(visitId),
  FOREIGN KEY(patientId) REFERENCES Patient(patientId)
)

CREATE TABLE Medicament (
  medId INT NOT NULL,
  medName VARCHAR(50) NOT NULL,
  ingredientName VARCHAR(50) NOT NULL,
  quantity VARCHAR(10)  NOT NULL,
  typeOfDosis VARCHAR(50) NOT NULL,
  laboratory VARCHAR(50) not NULL,

  PRIMARY KEY(medId)
)

CREATE TABLE Prescription (
  prescriptionId INT NOT NULL,
  visitId INT NOT NULL,

  PRIMARY KEY(prescriptionId),
  FOREIGN KEY(visitId) REFERENCES Visit(visitId)
)


CREATE TABLE Diagnosis_details (
  visitId INT NOT NULL,
  dCode INT NOT NULL,

  PRIMARY KEY(visitId, dCode),
  FOREIGN KEY(visitId) REFERENCES Visit(visitId),
  FOREIGN KEY(dCode) REFERENCES Diagnosis(dCode)
)

CREATE TABLE Prescription_details (
  prescriptionId INT NOT NULL,
  medId INT NOT NULL,
  instructions VARCHAR(500),

  PRIMARY KEY(prescriptionId, medId),
  FOREIGN KEY(prescriptionId) REFERENCES Prescription(prescriptionId),
  FOREIGN KEY(medId) REFERENCES Medicament(medId)
)

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

CREATE TABLE Doctor (
  doctorId INT NOT NULL,
  visitId INT NOT NULL,
  doctorName VARCHAR(50) NOT NULL,
  doctorAddress VARCHAR(500),
  specialization VARCHAR(50),

  PRIMARY KEY(doctorId),
  FOREIGN KEY(visitId) REFERENCES Visit(visitId)
)

CREATE TABLE Test_scale (
  lowLimit INT NOT NULL,
  highLimit INT,
  testId INT NOT NULL,
  descriptor VARCHAR(30),

  PRIMARY KEY(limitLow),
  FOREIGN KEY(testId) REFERENCES Test(testId)
)