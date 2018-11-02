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
VALUES ('Insomnio tardio')

INSERT INTO HD_Question ( description ) 
VALUES ('Trabajo y actividades')

INSERT INTO HD_Question ( description ) 
VALUES ('Inhibicion psicomotora (lentitud de pensamiento y lenguaje, facultad de
concentracion disminuida, disminucion de la actividad motora)')

INSERT INTO HD_Question ( description ) 
VALUES ('Ansiedad psiquica')

INSERT INTO HD_Question ( description ) 
VALUES ('Ansiedad somatica (signos fisicos de ansiedad: gastrointestinales: sequedad de
boca, diarrea, eructos, indigestion, etc; cardiovasculares: palpitaciones, cefaleas;
respiratorios: hiperventilacion, suspiros; frecuencia de miccion incrementada;
transpiracion)')

----------------------------------------------------------------------

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Estado de animo ansioso.
Preocupaciones, anticipacion de lo peor, aprensi�n
(anticipacion temerosa), irritabilidad')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Tension.
Sensacipn de tension, imposibilidad de relajarse,
reacciones con sobresalto, llanto facil, temblores,
sensacion de inquietud.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Temores.
A la oscuridad, a los desconocidos, a quedarse solo, a los
animales grandes, al trafico, a las multitudes.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Insomnio.
Dificultad para dormirse, sueño interrumpido, sueño
insatisfactorio y cansancio al despertar.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Intelectual (cognitivo)
Dificultad para concentrarse, mala memoria.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Estado de animo deprimido.
Perdida de interes, insatisfaccion en las diversiones,
depresion, despertar prematuro, cambios de humor
durante el dia.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Sintomas somaticos generales (musculares)
Dolores y molestias musculares, rigidez muscular,
contracciones musculares, sacudidas clonicas, crujir de
dientes, voz temblorosa.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Sintomas somaticos generales (sensoriales)
Zumbidos de oidos, vision borrosa, sofocos y escalofr�os,
sensacion de debilidad, sensacion de hormigueo.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Sintomas cardiovasculares.
Taquicardia, palpitaciones, dolor en el pecho, latidos
vasculares, sensacion de desmayo, extrasistole.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Sintomas respiratorios.
Opresion o constriccion en el pecho, sensacion de ahogo,
suspiros, disnea.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Sintomas gastrointestinales.
Dificultad para tragar, gases, dispepsia: dolor antes y
despues de comer, sensacion de ardor, sensacion de
estomago lleno, vomitos acuosos, vomitos, sensacion de
estomago vacio, digestion lenta, borborigmos (ruido
intestinal), diarrea, perdida de peso, estreñimiento.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Sintomas genitourinarios.
Miccion frecuente, miccion urgente, amenorrea,
menorragia, aparicion de la frigidez, eyaculacion precoz,
ausencia de ereccion, impotencia.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Sintomas autonomos.
Boca seca, rubor, palidez, tendencia a sudar, vertigos,
cefaleas de tension, piloereccion (pelos de punta)')

----------------------------------------------------------------------

INSERT INTO Medicament (medName) VALUES ('Celexa')
INSERT INTO Medicament (medName) VALUES ('Lexapro')
INSERT INTO Medicament (medName) VALUES ('Paxil')
INSERT INTO Medicament (medName) VALUES ('Pexeva')
INSERT INTO Medicament (medName) VALUES ('Prozac')
INSERT INTO Medicament (medName) VALUES ('Adapin')

----------------------------------------------------------------------

INSERT INTO Diagnosis ( isPrimary, sicknessDegree )VALUES (1,5)
INSERT INTO Diagnosis ( isPrimary, sicknessDegree )VALUES (0,3)
INSERT INTO Diagnosis ( isPrimary, sicknessDegree )VALUES (1,6)
INSERT INTO Diagnosis ( isPrimary, sicknessDegree )VALUES (1,1)
INSERT INTO Diagnosis ( isPrimary, sicknessDegree )VALUES (1,2)
