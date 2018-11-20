INSERT INTO Doctor VALUES (1, 'Dr. Alfonso Medina Garza', NULL, 'Doctor General');
INSERT INTO Doctor VALUES (2, 'Dr. Roberto Lopez Garcia', NULL, 'Dermatologia');
INSERT INTO Doctor VALUES (3, 'Dra. Laura Medina Garza', NULL, 'Neurologia');
INSERT INTO Doctor VALUES (4, 'Dra. Sofia Rodriguez Garza', NULL, 'Dermatologia');
INSERT INTO Doctor VALUES (5, 'Dra. Sandra Marina Ortiz', NULL, 'Neurologia');

INSERT INTO Patient VALUES (1, 'John', 'Smith', 'M', '8112345678', 'Main Street', '64800', 'NL', 'Monterrey', '1986-04-05', 'Dr. Alfonso');
INSERT INTO Visit VALUES (1, 1, 1, '2018-10-10', 'Suspects mild depression', 'Recommended check-up in a week');
INSERT INTO Prescription VALUES (1, 1);


INSERT INTO Patient VALUES (2, 'Margaret', 'Smith', 'F', '8187654321', 'Main Street', '64800', 'NL', 'Monterrey', '1986-08-10', 'Dr. Martinez');
INSERT INTO Visit VALUES (2, 2, 1, '2018-10-11', 'Had panic attack', 'Patient needs more help');
INSERT INTO Prescription VALUES (2, 2);

INSERT INTO Patient VALUES (3, 'Hugh', 'Jackman', 'M', '5412345678', '2nd Street', '72100', 'NL', 'San Pedro', '1987-12-04', 'Dr. Fernandez');
INSERT INTO Visit VALUES (3, 3, 1, '2018-10-12', 'Attempted suicide', NULL);
INSERT INTO Prescription VALUES (3, 3);

INSERT INTO Patient VALUES (4, 'Jason', 'Boise', 'M', '8100000000', 'Third Street', '60100', 'NL', 'San Nicolas', '1970-10-25', 'Dr. Alvarez');
INSERT INTO Visit VALUES (4, 4, 1, '2018-10-13', 'Displays abnormal social interactions', NULL);
INSERT INTO Prescription VALUES (4, 4);

INSERT INTO Test VALUES (1, 'Depression');
INSERT INTO Test VALUES (2, 'Anxiety');

INSERT INTO Question VALUES (101, 'Humor depresivo (tristeza, desesperanza, desamparo, sentimiento de inutilidad) ',
 '0. Ausente 
 1. Estas sensaciones las expresa solamente si le preguntan como se siente 
 2. Estas sensaciones las relata espontáneamente 
 3. Sensaciones no comunicadas verbalmente (expresión facial, postura, voz, tendencia al
llanto) 
4. Manifiesta estas sensaciones en su comunicación verbal y no verbal en forma
espontánea a ', 1);

INSERT INTO Question VALUES (102, 'Sentimientos de culpa', '0. Ausente 
  1. Se culpa a si mismo, cree haber decepcionado a la gente 
  2. Tiene ideas de culpabilidad o medita sobre errores pasados o malas acciones 
  3. Siente que la enfermedad actual es un castigo 
  4. Oye voces acusatorias o de denuncia y/o experimenta alucinaciones visuales de amenaza ', 1);

INSERT INTO Question VALUES (103, 'Suicidio','0. Ausente 
  1. Le parece que la vida no vale la pena ser vivida 
  2. Desearía estar muerto o tiene pensamientos sobre la posibilidad de morirse 
  3. Ideas de suicidio o amenazas 
  4. Intentos de suicidio (cualquier intento serio)', 1);

INSERT INTO Question VALUES (104, 'Insomnio precoz','0. No tiene dificultad 
  1. Dificultad ocasional para dormir, por ej. más de media hora el conciliar el sueño 
  2. Dificultad para dormir cada noche ', 1);

INSERT INTO Question VALUES (105, 'Insomnio intermedio','0. No hay dificultad 
  1. Esta desvelado e inquieto o se despierta varias veces durante la noche 
  2. Esta despierto durante la noche, cualquier ocasión de levantarse de la cama se clasifica
en 2 (excepto por motivos de evacuar)', 1);

INSERT INTO Question VALUES (201, 'Estado de ánimo ansioso','0. Ausente 
  1. Leve 
  2. Moderado 
  3. Grave 
  4. Muy grave/Incapacitante', 2);

INSERT INTO Question VALUES (202, 'Tensión','0. Ausente 
  1. Leve 
  2. Moderado 
  3. Grave 
  4. Muy grave/Incapacitante', 2);

INSERT INTO Question VALUES (203, 'Temores','0. Ausente 
  1. Leve 
  2. Moderado 
  3. Grave 
  4. Muy grave/Incapacitante', 2);

INSERT INTO Question VALUES (204, 'Insomnio','0. Ausente 
  1. Leve 
  2. Moderado 
  3. Grave 
  4. Muy grave/Incapacitante', 2);

INSERT INTO Question VALUES (205, 'Intelectual','0. Ausente 
  1. Leve 
  2. Moderado 
  3. Grave 
  4. Muy grave/Incapacitante', 2);

INSERT INTO Instance VALUES (1024, 1, 1);
INSERT INTO Instance VALUES (1025, 2, 1);
INSERT INTO Instance VALUES (1026, 1, 2);
INSERT INTO Instance VALUES (1027, 2, 2);
INSERT INTO Instance VALUES (1028, 1, 3);
INSERT INTO Instance VALUES (1029, 2, 3);
INSERT INTO Instance VALUES (1030, 1, 4);
INSERT INTO Instance VALUES (1031, 2, 4);

INSERT INTO Response VALUES (6010, 101, 1024, 3);
INSERT INTO Response VALUES (6011, 102, 1024, 3);
INSERT INTO Response VALUES (6012, 103, 1024, 4);
INSERT INTO Response VALUES (6013, 104, 1024, 2);
INSERT INTO Response VALUES (6014, 105, 1024, 1);
INSERT INTO Response VALUES (6015, 201, 1025, 4);
INSERT INTO Response VALUES (6016, 202, 1025, 3);
INSERT INTO Response VALUES (6017, 203, 1025, 3);
INSERT INTO Response VALUES (6018, 204, 1025, 3);
INSERT INTO Response VALUES (6019, 205, 1025, 2);
INSERT INTO Response VALUES (6020, 101, 1026, 1);
INSERT INTO Response VALUES (6021, 102, 1026, 2);
INSERT INTO Response VALUES (6022, 103, 1026, 0);
INSERT INTO Response VALUES (6023, 104, 1026, 1);
INSERT INTO Response VALUES (6024, 105, 1026, 1);
INSERT INTO Response VALUES (6025, 201, 1027, 2);
INSERT INTO Response VALUES (6026, 202, 1027, 2);
INSERT INTO Response VALUES (6027, 203, 1027, 0);
INSERT INTO Response VALUES (6028, 204, 1027, 1);
INSERT INTO Response VALUES (6029, 205, 1027, 1);
INSERT INTO Response VALUES (6030, 101, 1028, 3);
INSERT INTO Response VALUES (6031, 102, 1028, 3);
INSERT INTO Response VALUES (6032, 103, 1028, 4);
INSERT INTO Response VALUES (6033, 104, 1028, 2);
INSERT INTO Response VALUES (6034, 105, 1028, 1);
INSERT INTO Response VALUES (6035, 201, 1029, 4);
INSERT INTO Response VALUES (6036, 202, 1029, 3);
INSERT INTO Response VALUES (6037, 203, 1029, 3);
INSERT INTO Response VALUES (6038, 204, 1029, 3);
INSERT INTO Response VALUES (6039, 205, 1029, 2);
INSERT INTO Response VALUES (6040, 101, 1030, 1);
INSERT INTO Response VALUES (6041, 102, 1030, 2);
INSERT INTO Response VALUES (6042, 103, 1030, 0);
INSERT INTO Response VALUES (6043, 104, 1030, 1);
INSERT INTO Response VALUES (6044, 105, 1030, 1);
INSERT INTO Response VALUES (6045, 201, 1031, 2);
INSERT INTO Response VALUES (6046, 202, 1031, 2);
INSERT INTO Response VALUES (6047, 203, 1031, 0);
INSERT INTO Response VALUES (6048, 204, 1031, 1);
INSERT INTO Response VALUES (6049, 205, 1031, 1);

INSERT INTO Medicament VALUES (1, 'Farmaxetina', 'Fluoxetina', '20 mg', 'Capsulas', 'ifa CELTICS');
INSERT INTO Medicament VALUES (2, 'Tressvin', 'Sertalina', '50 mg', 'Tabletas', 'ifa CELTICS');
INSERT INTO Medicament VALUES (3, 'Tim Asf', 'Quetiapina', '100 mg', 'Tabletas', 'ASOFARMA');
INSERT INTO Medicament VALUES (4, 'Fluxacord', 'Ciprofloxacino', '500 mg', 'Tabletas', 'accord farma');
INSERT INTO Medicament VALUES (5, 'Toradol', 'Ketorolaco', '10 mg', 'Tabletas', 'Pharma life');
INSERT INTO Medicament VALUES (6, 'Buscapina', 'Hioscina', '10 mg', 'Tabletas', 'Pharma life');


INSERT INTO Prescription_details VALUES (1, 1, 'Tomar 20mg cada 7 horas');
INSERT INTO Prescription_details VALUES (2, 2, 'Tomar 20mg cada 7 horas');
INSERT INTO Prescription_details VALUES (3, 3, 'Tomar 20mg cada 7 horas');
INSERT INTO Prescription_details VALUES (4, 4, 'Tomar 20mg cada 7 horas');

INSERT INTO Diagnosis_details VALUES (1, 424);
INSERT INTO Diagnosis_details VALUES (2, 907);
INSERT INTO Diagnosis_details VALUES (3, 418);
INSERT INTO Diagnosis_details VALUES (4, 11);

INSERT INTO Visit VALUES (5, 1, 1, '2018-10-17', '1 week check-up', 'Patient has improved');
INSERT INTO Visit VALUES (6, 1, 1, '2018-10-24', 'Had panic attack', 'Patient needs more help');
INSERT INTO Visit VALUES (7, 1, 1, '2018-10-31', 'Suspects extreme depression', 'Needs specialist aid');
INSERT INTO Prescription VALUES (5, 6);
INSERT INTO Prescription VALUES (6, 7);

INSERT INTO Prescription_details VALUES (1, 2, 'Tomar 3 tabletas cada 4 horas');
INSERT INTO Prescription_details VALUES (1, 5, 'Tomar 2 tabletas cada 12 horas');
INSERT INTO Prescription_details VALUES (5, 3, 'Tomar 10 mg cada 10 horas');
INSERT INTO Prescription_details VALUES (6, 4, 'Tomar 5 mg cada 5 horas');

INSERT INTO Diagnosis_details VALUES (5, 417);
INSERT INTO Diagnosis_details VALUES (6, 696);
INSERT INTO Diagnosis_details VALUES (7, 418);

INSERT INTO Test_scale VALUES (0, 7, 1, 'No deprimido');
INSERT INTO Test_scale VALUES (8, 13, 1, 'Depresion ligera/menor');
INSERT INTO Test_scale VALUES (14, 18, 1, 'Depresion moderada');
INSERT INTO Test_scale VALUES (19, 22, 1, 'Depresion severa');
INSERT INTO Test_scale VALUES (23, 54, 1, 'Depresion muy severa');

INSERT INTO Test_scale VALUES (0, 17, 2, 'Ansiedad leve');
INSERT INTO Test_scale VALUES (18, 24, 2, 'Ansiedad moderada');
INSERT INTO Test_scale VALUES (25, 30, 2, 'Ansiedad severa');
INSERT INTO Test_scale VALUES (30, 56, 2, 'Ansiedad muy severa');

INSERT INTO Instance VALUES (1032, 1, 5);
INSERT INTO Instance VALUES (1033, 2, 5);

INSERT INTO Response VALUES (6050, 101, 1032, 2);
INSERT INTO Response VALUES (6051, 102, 1032, 2);
INSERT INTO Response VALUES (6052, 103, 1032, 3);
INSERT INTO Response VALUES (6053, 104, 1032, 1);
INSERT INTO Response VALUES (6054, 105, 1032, 0);
INSERT INTO Response VALUES (6055, 201, 1033, 3);
INSERT INTO Response VALUES (6056, 202, 1033, 2);
INSERT INTO Response VALUES (6057, 203, 1033, 2);
INSERT INTO Response VALUES (6058, 204, 1033, 2);
INSERT INTO Response VALUES (6059, 205, 1033, 1);



--Probar borrar paciente
INSERT INTO Patient VALUES (100, 'Julio', 'Ramirez', 'M', '8145454545', 'Calle', '64800', 'NL', 'Monterrey', '1998-08-10', 'Dr. Martinez');
INSERT INTO Visit VALUES (100, 100, 2, '2018-10-10', 'Sospecha algo', 'Recomienda venir mañana');
INSERT INTO Prescription VALUES (100, 100);
INSERT INTO Prescription_details VALUES (100, 1, 'Tomar 20mg cada 7 horas');
INSERT INTO Diagnosis_details VALUES (100, 500);
INSERT INTO Instance VALUES (1100, 1, 100);
INSERT INTO Instance VALUES (1101, 2, 100);

INSERT INTO Response VALUES (6150, 101, 1100, 2);
INSERT INTO Response VALUES (6151, 102, 1100, 2);
INSERT INTO Response VALUES (6152, 103, 1100, 3);
INSERT INTO Response VALUES (6153, 104, 1100, 1);
INSERT INTO Response VALUES (6154, 105, 1100, 0);
INSERT INTO Response VALUES (6155, 201, 1101, 3);
INSERT INTO Response VALUES (6156, 202, 1101, 2);
INSERT INTO Response VALUES (6157, 203, 1101, 2);
INSERT INTO Response VALUES (6158, 204, 1101, 2);
INSERT INTO Response VALUES (6159, 205, 1101, 1);


INSERT INTO Visit VALUES (101, 100, 2, '2018-10-11', 'Sospecha otra cosa', 'Vino');
INSERT INTO Prescription VALUES (101, 101);
INSERT INTO Prescription_details VALUES (101, 2, 'Tomar 30mg cada 7 horas');
INSERT INTO Diagnosis_details VALUES (101, 501);
INSERT INTO Instance VALUES (1102, 1, 101);
INSERT INTO Instance VALUES (1103, 2, 101);

INSERT INTO Response VALUES (6250, 101, 1102, 2);
INSERT INTO Response VALUES (6251, 102, 1102, 2);
INSERT INTO Response VALUES (6252, 103, 1102, 3);
INSERT INTO Response VALUES (6253, 104, 1102, 1);
INSERT INTO Response VALUES (6254, 105, 1102, 0);
INSERT INTO Response VALUES (6255, 201, 1103, 3);
INSERT INTO Response VALUES (6256, 202, 1103, 2);
INSERT INTO Response VALUES (6257, 203, 1103, 2);
INSERT INTO Response VALUES (6258, 204, 1103, 2);
INSERT INTO Response VALUES (6259, 205, 1103, 1);

