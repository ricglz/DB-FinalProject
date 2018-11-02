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

  PRIMARY KEY(qId),
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

INSERT INTO Patient ( fName, lName, sex, telephone, street, zip, state, city, birthDate )
VALUES ('John', 'Smith', 'M', '8112345678', 'Main Street', '64800', 'NL', 'Monterrey', '1986-04-05')

INSERT INTO Patient ( fName, lName, sex, telephone, street, zip, state, city, birthDate )
VALUES ('Margaret', 'Smith', 'F', '8187654321', 'Main Street', '64800', 'NL', 'Monterrey', '1986-08-10')

INSERT INTO Patient ( fName, lName, sex, telephone, street, zip, state, city, birthDate ) 
VALUES ('Hugh', 'Jackman', 'M', '5412345678', '2nd Street', '72100', 'NL', 'San Pedro', '1987-12-04')

INSERT INTO Patient ( fName, lName, sex, telephone, street, zip, state, city, birthDate ) 
VALUES ('Jason', 'Boise', 'M', '8100000000', 'Third Street', '60100', 'NL', 'San Nicolas', '1970-10-25')

----------------------------------------------------------------------

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Estado de ánimo ansioso.
Preocupaciones, anticipación de lo peor, aprensión
(anticipación temerosa), irritabilidad')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Tensión.
Sensación de tensión, imposibilidad de relajarse,
reacciones con sobresalto, llanto fácil, temblores,
sensación de inquietud.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Temores.
A la oscuridad, a los desconocidos, a quedarse solo, a los
animales grandes, al tráfico, a las multitudes.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Insomnio.
Dificultad para dormirse, sueño interrumpido, sueño
insatisfactorio y cansancio al despertar.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Intelectual (cognitivo)
Dificultad para concentrarse, mala memoria.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('P', 'Estado de ánimo deprimido.
Pérdida de interés, insatisfacción en las diversiones,
depresión, despertar prematuro, cambios de humor
durante el día.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Síntomas somáticos generales (musculares)
Dolores y molestias musculares, rigidez muscular,
contracciones musculares, sacudidas clónicas, crujir de
dientes, voz temblorosa.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Síntomas somáticos generales (sensoriales)
Zumbidos de oídos, visión borrosa, sofocos y escalofríos,
sensación de debilidad, sensación de hormigueo.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Síntomas cardiovasculares.
Taquicardia, palpitaciones, dolor en el pecho, latidos
vasculares, sensación de desmayo, extrasístole.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Síntomas respiratorios.
Opresión o constricción en el pecho, sensación de ahogo,
suspiros, disnea.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Síntomas gastrointestinales.
Dificultad para tragar, gases, dispepsia: dolor antes y
después de comer, sensación de ardor, sensación de
estómago lleno, vómitos acuosos, vómitos, sensación de
estómago vacío, digestión lenta, borborigmos (ruido
intestinal), diarrea, pérdida de peso, estreñimiento.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Síntomas genitourinarios.
Micción frecuente, micción urgente, amenorrea,
menorragia, aparición de la frigidez, eyaculación precoz,
ausencia de erección, impotencia.')

INSERT INTO HA_Question ( anxType, description )
VALUES ('S', 'Síntomas autónomos.
Boca seca, rubor, palidez, tendencia a sudar, vértigos,
cefaleas de tensión, piloerección (pelos de punta)')