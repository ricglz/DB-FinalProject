CREATE TABLE Patient (
  patientId INT NOT NULL IDENTITY(1,1),
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
  visitId INT NOT NULL IDENTITY(1,1),
  patientId INT NOT NULL,
  vDate DATETIME NOT NULL,
  motive VARCHAR(50) NOT NULL,
  referral VARCHAR(50),

  PRIMARY KEY(visitId),
  FOREIGN KEY(patientId) REFERENCES Patient(patientId)
)

CREATE TABLE Medicament (
  medId INT NOT NULL IDENTITY(1,1),
  medName VARCHAR(50) NOT NULL,

  PRIMARY KEY(medId)
)

CREATE TABLE Diagnosis (
  dCode INT NOT NULL IDENTITY(1,1),
  isPrimary BIT NOT NULL,
  sicknessDegree INT NOT NULL,

  PRIMARY KEY(dCode)
)

CREATE TABLE Diagnosis_visit (
  visitId INT NOT NULL,
  dCode INT NOT NULL,

  PRIMARY KEY(visitId, dCode),
  FOREIGN KEY(visitId) REFERENCES Visit(visitId),
  FOREIGN KEY(dCode) REFERENCES Diagnosis(dCode),
)

CREATE TABLE Medicament_visit (
  visitId INT NOT NULL,
  medId INT NOT NULL,
  dateBegin DATETIME,
  instructions VARCHAR(50),
  dateEnd DATETIME,

  PRIMARY KEY(visitId, medId),
  FOREIGN KEY(visitId) REFERENCES Visit(visitId),
  FOREIGN KEY(medId) REFERENCES Medicament(medId),
)

----------------------------------------------------------------------

CREATE TABLE HD_Test_Res (
  entryId INT NOT NULL IDENTITY(1,1),
  visitId INT NOT NULL,

  PRIMARY KEY(entryId),
  FOREIGN KEY(visitId) REFERENCES Visit(visitId)
)

CREATE TABLE HD_Question (
  qId INT NOT NULL IDENTITY(1,1),
  description VARCHAR(500),

  PRIMARY KEY(qId)
)

CREATE TABLE HD_Answer (
  entryId INT NOT NULL,
  qId INT NOT NULL,
  value INT NOT NULL,

  PRIMARY KEY(entryId, qId),
  FOREIGN KEY(entryId) REFERENCES HD_Test_Res(entryId),
  FOREIGN KEY(qId) REFERENCES HD_Question(qId)
)

----------------------------------------------------------------------

CREATE TABLE HA_Test_Res (
  entryId INT NOT NULL IDENTITY(1,1),
  visitId INT NOT NULL,

  PRIMARY KEY(entryId),
  FOREIGN KEY(visitId) REFERENCES Visit(visitId)
)

CREATE TABLE HA_Question (
  qId INT NOT NULL IDENTITY(1,1),
  anxType CHAR(1) NOT NULL,
  description VARCHAR(500),

  PRIMARY KEY(qId)
)

CREATE TABLE HA_Answer (
  entryId INT NOT NULL,
  qId INT NOT NULL,
  value INT NOT NULL,

  PRIMARY KEY(entryId, qId),
  FOREIGN KEY(entryId) REFERENCES HA_Test_Res(entryId),
  FOREIGN KEY(qId) REFERENCES HA_Question(qId)
)

----------------------------------------------------------------------

INSERT INTO Patient (fName, lName, sex, telephone, street, zip, state, city, birthDate)
VALUES ('John', 'Smith', 'M', '8112345678', 'Main Street', '64800', 'NL', 'Monterrey', '1986-04-05')

INSERT INTO Patient (fName, lName, sex, telephone, street, zip, state, city, birthDate)
VALUES ('Margaret', 'Smith', 'F', '8187654321', 'Main Street', '64800', 'NL', 'Monterrey', '1986-08-10')

INSERT INTO Patient (fName, lName, sex, telephone, street, zip, state, city, birthDate) 
VALUES ('Hugh', 'Jackman', 'M', '5412345678', '2nd Street', '72100', 'NL', 'San Pedro', '1987-12-04')

INSERT INTO Patient (fName, lName, sex, telephone, street, zip, state, city, birthDate) 
VALUES ('Jason', 'Boise', 'M', '8100000000', 'Third Street', '60100', 'NL', 'San Nicolas', '1970-10-25')

----------------------------------------------------------------------

INSERT INTO HD_Question ( description ) 
VALUES ('Humor depresivo (tristeza, desesperanza, desamparo, sentimiento de inutilidad)')

INSERT INTO HD_Question ( description ) 
VALUES ('Sentimientos de culpa')

INSERT INTO HD_Question ( description ) 
VALUES ('Suicidio')

INSERT INTO HD_Question ( description ) 
VALUES ('Insomnio precoz')

INSERT INTO HD_Question ( description ) 
VALUES ('Insomnio intermedio')

INSERT INTO HD_Question ( description ) 
VALUES ('Insomnio tardío')

INSERT INTO HD_Question ( description ) 
VALUES ('Trabajo y actividades')

INSERT INTO HD_Question ( description ) 
VALUES ('Inhibición psicomotora (lentitud de pensamiento y lenguaje, facultad de
concentración disminuida, disminución de la actividad motora)')

INSERT INTO HD_Question ( description ) 
VALUES ('Ansiedad psíquica')

INSERT INTO HD_Question ( description ) 
VALUES ('Ansiedad somática (signos físicos de ansiedad: gastrointestinales: sequedad de
boca, diarrea, eructos, indigestión, etc; cardiovasculares: palpitaciones, cefaleas;
respiratorios: hiperventilación, suspiros; frecuencia de micción incrementada;
transpiración)')

----------------------------------------------------------------------

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Estado de �nimo ansioso.
Preocupaciones, anticipaci�n de lo peor, aprensi�n
(anticipaci�n temerosa), irritabilidad')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Tensi�n.
Sensaci�n de tensi�n, imposibilidad de relajarse,
reacciones con sobresalto, llanto f�cil, temblores,
sensaci�n de inquietud.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Temores.
A la oscuridad, a los desconocidos, a quedarse solo, a los
animales grandes, al tr�fico, a las multitudes.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Insomnio.
Dificultad para dormirse, sue�o interrumpido, sue�o
insatisfactorio y cansancio al despertar.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Intelectual (cognitivo)
Dificultad para concentrarse, mala memoria.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Estado de �nimo deprimido.
P�rdida de inter�s, insatisfacci�n en las diversiones,
depresi�n, despertar prematuro, cambios de humor
durante el d�a.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'S�ntomas som�ticos generales (musculares)
Dolores y molestias musculares, rigidez muscular,
contracciones musculares, sacudidas cl�nicas, crujir de
dientes, voz temblorosa.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'S�ntomas som�ticos generales (sensoriales)
Zumbidos de o�dos, visi�n borrosa, sofocos y escalofr�os,
sensaci�n de debilidad, sensaci�n de hormigueo.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'S�ntomas cardiovasculares.
Taquicardia, palpitaciones, dolor en el pecho, latidos
vasculares, sensaci�n de desmayo, extras�stole.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'S�ntomas respiratorios.
Opresi�n o constricci�n en el pecho, sensaci�n de ahogo,
suspiros, disnea.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'S�ntomas gastrointestinales.
Dificultad para tragar, gases, dispepsia: dolor antes y
despu�s de comer, sensaci�n de ardor, sensaci�n de
est�mago lleno, v�mitos acuosos, v�mitos, sensaci�n de
est�mago vac�o, digesti�n lenta, borborigmos (ruido
intestinal), diarrea, p�rdida de peso, estre�imiento.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'S�ntomas genitourinarios.
Micci�n frecuente, micci�n urgente, amenorrea,
menorragia, aparici�n de la frigidez, eyaculaci�n precoz,
ausencia de erecci�n, impotencia.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'S�ntomas aut�nomos.
Boca seca, rubor, palidez, tendencia a sudar, v�rtigos,
cefaleas de tensi�n, piloerecci�n (pelos de punta)')

----------------------------------------------------------------------

INSERT INTO Medicament (medName) VALUES ('Celexa')
INSERT INTO Medicament (medName) VALUES ('Lexapro')
INSERT INTO Medicament (medName) VALUES ('Paxil')
INSERT INTO Medicament (medName) VALUES ('Pexeva')
INSERT INTO Medicament (medName) VALUES ('Prozac')
INSERT INTO Medicament (medName) VALUES ('Adapin')

----------------------------------------------------------------------

INSERT INTO Diagnosis ( isPrimary, sicknessDegree )VALUES (1,  5)
INSERT INTO Diagnosis ( isPrimary, sicknessDegree )VALUES (0,  3)
INSERT INTO Diagnosis ( isPrimary, sicknessDegree )VALUES (1,  6)
INSERT INTO Diagnosis ( isPrimary, sicknessDegree )VALUES (1,  1)
INSERT INTO Diagnosis ( isPrimary, sicknessDegree )VALUES (1,  2)
