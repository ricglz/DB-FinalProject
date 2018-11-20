-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2018 at 02:50 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BDFinal`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_info`
--

CREATE TABLE `app_info` (
  `id` int(6) UNSIGNED NOT NULL,
  `app_nombre` varchar(250) NOT NULL,
  `color1` varchar(250) DEFAULT NULL,
  `color2` varchar(50) DEFAULT NULL,
  `home_name` varchar(100) DEFAULT NULL,
  `home_icon` varchar(50) DEFAULT NULL,
  `button1_name` varchar(100) DEFAULT NULL,
  `button1_icon` varchar(50) DEFAULT NULL,
  `button1_show` int(11) DEFAULT NULL,
  `button2_name` varchar(100) DEFAULT NULL,
  `button2_icon` varchar(50) DEFAULT NULL,
  `button2_show` int(11) DEFAULT NULL,
  `button3_name` varchar(100) DEFAULT NULL,
  `button3_icon` varchar(50) DEFAULT NULL,
  `button3_show` int(11) DEFAULT NULL,
  `button4_name` varchar(100) DEFAULT NULL,
  `button4_icon` varchar(50) DEFAULT NULL,
  `button4_show` int(11) DEFAULT NULL,
  `button5_name` varchar(100) DEFAULT NULL,
  `button5_icon` varchar(50) DEFAULT NULL,
  `button5_show` int(11) DEFAULT NULL,
  `button6_name` varchar(100) DEFAULT NULL,
  `button6_icon` varchar(50) DEFAULT NULL,
  `button6_show` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_info`
--

INSERT INTO `app_info` (`id`, `app_nombre`, `color1`, `color2`, `home_name`, `home_icon`, `button1_name`, `button1_icon`, `button1_show`, `button2_name`, `button2_icon`, `button2_show`, `button3_name`, `button3_icon`, `button3_show`, `button4_name`, `button4_icon`, `button4_show`, `button5_name`, `button5_icon`, `button5_show`, `button6_name`, `button6_icon`, `button6_show`) VALUES
(0, 'App Salud Mental', '#d0021b', '#9b9b9b', 'Home', 'home', 'Historial', 'history', 1, 'Reportes', 'chart line', 1, 'Por fecha', 'calendar', 1, 'Agregar', 'plus', 1, 'Eliminar', 'x', 1, 'Button 6', 'none', 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_reporte`
--

CREATE TABLE `app_reporte` (
  `id` int(6) UNSIGNED NOT NULL,
  `nombre_reporte` varchar(250) NOT NULL,
  `show_on_app` int(11) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `content` text,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_reporte`
--

INSERT INTO `app_reporte` (`id`, `nombre_reporte`, `show_on_app`, `location`, `content`, `icon`) VALUES
(4, ' ', 1, 0, '[{\"identifier\":\" \",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":0,\"node\":\"child\",\"type\":\"header\",\"text\":\"Bienvenido a la App de Salud Mental \",\"size\":\"h1\",\"position\":\"center\",\"icon_button\":\"\",\"upper_icon\":true,\"subtext\":\"Presione alguno de los reportes en la esquina superior derecha para desglosar más información\",\"color\":\"red\",\"identifier\":\"header1\",\"expanded\":false,\"icon_header\":\"briefcase medical\"}],\"max\":1,\"icon\":\"home\"}]', 'home'),
(5, 'EHR Paciente', 1, 1, '[{\"identifier\":\"EHR Paciente\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":1,\"node\":\"child\",\"type\":\"input\",\"label\":\"Numero de paciente: \",\"default\":\"\",\"identifier\":\"numPaciente\",\"inputType\":\"number\",\"expanded\":false},{\"idp\":0,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"buscarPaciente\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":4,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space\",\"expanded\":false},{\"idp\":2,\"node\":\"child\",\"type\":\"header\",\"text\":\"Datos generales del Paciente\",\"size\":\"h1\",\"position\":\"left\",\"icon_button\":\"\",\"upper_icon\":false,\"subtext\":\"\",\"color\":\"black\",\"identifier\":\"datosGenerales\",\"expanded\":false},{\"idp\":5,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"mostrarPacientes\",\"trigger\":\"buscarPaciente\",\"params\":[\"numPaciente\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"datosGeneralesT\",\"expanded\":false},{\"idp\":6,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space2\",\"expanded\":false},{\"idp\":7,\"node\":\"child\",\"type\":\"header\",\"text\":\"Visitas al Doctor\",\"size\":\"h1\",\"position\":\"left\",\"icon_button\":\"\",\"upper_icon\":false,\"subtext\":\"\",\"color\":\"black\",\"identifier\":\"visitasDoctor\",\"expanded\":false},{\"idp\":8,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"mostrarVisitas\",\"trigger\":\"buscarPaciente\",\"params\":[\"numPaciente\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"visitasDoctorT\",\"expanded\":false},{\"idp\":9,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space3\",\"expanded\":false},{\"idp\":10,\"node\":\"child\",\"type\":\"header\",\"text\":\"Diagnostico\",\"size\":\"h1\",\"position\":\"left\",\"icon_button\":\"\",\"upper_icon\":false,\"subtext\":\"\",\"color\":\"black\",\"identifier\":\"diagnostico\",\"expanded\":false},{\"idp\":11,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"mostrarDiagnosticos\",\"trigger\":\"buscarPaciente\",\"params\":[\"numPaciente\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"diagnosticoT\",\"expanded\":false},{\"idp\":15,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space5\",\"expanded\":false},{\"idp\":16,\"node\":\"child\",\"type\":\"header\",\"text\":\"Medicinas Recetadas\",\"size\":\"h1\",\"position\":\"left\",\"icon_button\":\"\",\"upper_icon\":false,\"subtext\":\"\",\"color\":\"black\",\"identifier\":\"medicinasRecetadas\",\"expanded\":false},{\"idp\":17,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"mostrarMedicinas\",\"trigger\":\"buscarPaciente\",\"params\":[\"numPaciente\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"medicinasRecetadasT\",\"expanded\":false},{\"idp\":18,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space6\",\"expanded\":false},{\"idp\":19,\"node\":\"child\",\"type\":\"header\",\"text\":\"Test Aplicadas\",\"size\":\"h1\",\"position\":\"left\",\"icon_button\":\"\",\"upper_icon\":false,\"subtext\":\"\",\"color\":\"black\",\"identifier\":\"testAplicados\",\"expanded\":false},{\"idp\":20,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"mostrarTests\",\"trigger\":\"buscarPaciente\",\"params\":[\"numPaciente\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"testAplicadasT\",\"expanded\":false}],\"max\":21}]', 'user'),
(6, 'Ver Tests', 1, 1, '[{\"identifier\":\"Ver Tests\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Numero de test: \",\"default\":\"\",\"identifier\":\"numTest\",\"inputType\":\"number\",\"expanded\":false},{\"idp\":1,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"buscarTest\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":2,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space3\",\"expanded\":false},{\"idp\":3,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"mostrarTestsPaciente\",\"trigger\":\"buscarTest\",\"params\":[\"numTest\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"infoTest\",\"expanded\":false},{\"idp\":4,\"node\":\"child\",\"type\":\"space\",\"pixels\":10,\"identifier\":\"space5\",\"expanded\":false},{\"idp\":5,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"mostrarInstancia\",\"trigger\":\"buscarTest\",\"params\":[\"numTest\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"instanceTest\",\"expanded\":false}],\"max\":6}]', 'file'),
(7, 'Examenes Criticos', 1, 2, '[{\"identifier\":\"Examenes Criticos\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Puntaje mínimo: \",\"default\":\"\",\"identifier\":\"input1\",\"inputType\":\"text\",\"expanded\":false},{\"idp\":1,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button2\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":2,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space3\",\"expanded\":false},{\"idp\":3,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"examenesCriticos\",\"trigger\":\"button2\",\"params\":[\"input1\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"table4\",\"expanded\":false}],\"max\":4,\"icon\":\"copy\"}]', 'copy'),
(8, 'Medicinas Más Recetadas', 1, 2, '[{\"identifier\":\"Medicinas Más Recetadas\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Medicinas a mostrar:   \",\"default\":\"\",\"identifier\":\"input1\",\"inputType\":\"number\",\"expanded\":false},{\"idp\":5,\"node\":\"child\",\"type\":\"space\",\"pixels\":10,\"identifier\":\"space6\",\"expanded\":false},{\"idp\":4,\"node\":\"child\",\"type\":\"input\",\"label\":\"Diagnostico a buscar: \",\"default\":\"\",\"identifier\":\"input5\",\"inputType\":\"text\",\"expanded\":false},{\"idp\":1,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button2\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":2,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space3\",\"expanded\":false},{\"idp\":3,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"medicinasPopulares\",\"trigger\":\"button2\",\"params\":[\"input1\",\"input5\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"table4\",\"expanded\":false}],\"max\":6,\"icon\":\"pills\"}]', 'pills'),
(9, 'Buscar Por Diagnostico', 1, 2, '[{\"identifier\":\"Buscar por diagnostico\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Código de diagnostico: \",\"default\":\"\",\"identifier\":\"input1\",\"inputType\":\"number\",\"expanded\":false},{\"idp\":1,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button2\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":2,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space3\",\"expanded\":false},{\"idp\":3,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"buscarDiagnostico\",\"trigger\":\"button2\",\"params\":[\"input1\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"table4\",\"expanded\":false}],\"max\":4}]', 'user md'),
(10, 'Exámenes Arriba de Promedio', 1, 2, '[{\"identifier\":\"Exámenes Arriba de Promedio\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Tipo de examen: \",\"default\":\"\",\"identifier\":\"input1\",\"inputType\":\"number\",\"expanded\":false},{\"idp\":1,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button2\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":2,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space3\",\"expanded\":false},{\"idp\":3,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"examenesPromedio\",\"trigger\":\"button2\",\"params\":[\"input1\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"table4\",\"expanded\":false}],\"max\":4}]', 'copy'),
(12, 'Progreso Examen', 1, 2, '[{\"identifier\":\"Progreso Examen\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Número de paciente: \",\"default\":\"\",\"identifier\":\"input1\",\"inputType\":\"number\",\"expanded\":false},{\"idp\":1,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button2\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":2,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space3\",\"expanded\":false},{\"idp\":3,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"examenProgreso\",\"trigger\":\"button2\",\"params\":[\"input1\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"table4\",\"expanded\":false}],\"max\":4,\"icon\":\"chart line\"}]', 'chart line'),
(13, 'Doctores Por Consultas', 1, 2, '[{\"identifier\":\"Doctores Por Consultas\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":0,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"doctoresPorConsultas\",\"trigger\":\"\",\"params\":[],\"onLoad\":true,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"table1\",\"expanded\":false}],\"max\":1,\"icon\":\"user md\"}]', 'user md'),
(14, 'Medicinas Recetadas Hoy', 1, 2, '[{\"identifier\":\"Medicinas Recetadas Hoy\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Medicinas a mostrar: \",\"default\":\"\",\"identifier\":\"input1\",\"inputType\":\"text\",\"expanded\":false},{\"idp\":1,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button2\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":2,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space3\",\"expanded\":false},{\"idp\":3,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"medicinasHoy\",\"trigger\":\"button2\",\"params\":[\"input1\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"table4\",\"expanded\":false}],\"max\":4,\"icon\":\"pills\"}]', 'pills'),
(15, 'Diagnosis', 1, 3, '[{\"identifier\":\"Diagnosis\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"identifier\":\"grid6\",\"expanded\":true,\"idp\":5,\"node\":\"parent\",\"centered\":false,\"cols\":\"equal\",\"divided\":false,\"type\":\"grid\",\"grid\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Fecha inicial: \",\"default\":\"\",\"identifier\":\"input1\",\"inputType\":\"date\",\"expanded\":false},{\"idp\":4,\"node\":\"child\",\"type\":\"input\",\"label\":\"Fecha final:\",\"default\":\"\",\"identifier\":\"input5\",\"inputType\":\"date\",\"expanded\":true}]},{\"idp\":6,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button7\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":8,\"node\":\"child\",\"type\":\"space\",\"pixels\":10,\"identifier\":\"space9\",\"expanded\":false},{\"idp\":7,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"diagnosisPorFecha\",\"trigger\":\"button7\",\"params\":[\"input1\",\"input5\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"table8\",\"expanded\":false}],\"max\":9}]', 'user md'),
(18, 'Medicamentos', 1, 3, '[{\"identifier\":\"Medicamentos\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"identifier\":\"grid6\",\"expanded\":true,\"idp\":5,\"node\":\"parent\",\"centered\":false,\"cols\":\"equal\",\"divided\":false,\"type\":\"grid\",\"grid\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Fecha inicial: \",\"default\":\"\",\"identifier\":\"input1\",\"inputType\":\"date\",\"expanded\":false,\"placeholder\":\"\"},{\"idp\":4,\"node\":\"child\",\"type\":\"input\",\"label\":\"Fecha final:\",\"default\":\"\",\"identifier\":\"input5\",\"inputType\":\"date\",\"expanded\":true}]},{\"idp\":6,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button7\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":8,\"node\":\"child\",\"type\":\"space\",\"pixels\":10,\"identifier\":\"space9\",\"expanded\":false},{\"idp\":7,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"medicamentosPorFecha\",\"trigger\":\"button7\",\"params\":[\"input1\",\"input5\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"table8\",\"expanded\":false}],\"max\":9,\"icon\":\"pills\"}]', 'pills'),
(19, 'Visitas', 1, 3, '[{\"identifier\":\"Visitas\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"identifier\":\"grid6\",\"expanded\":true,\"idp\":5,\"node\":\"parent\",\"centered\":false,\"cols\":\"equal\",\"divided\":false,\"type\":\"grid\",\"grid\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Fecha inicial: \",\"default\":\"\",\"identifier\":\"input1\",\"inputType\":\"date\",\"expanded\":false},{\"idp\":4,\"node\":\"child\",\"type\":\"input\",\"label\":\"Fecha final:\",\"default\":\"\",\"identifier\":\"input5\",\"inputType\":\"date\",\"expanded\":true}]},{\"idp\":6,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button7\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":8,\"node\":\"child\",\"type\":\"space\",\"pixels\":10,\"identifier\":\"space9\",\"expanded\":false},{\"idp\":7,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"visitasPorFecha\",\"trigger\":\"button7\",\"params\":[\"input1\",\"input5\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"table8\",\"expanded\":false}],\"max\":9}]', 'user md'),
(20, 'Buscar Prescripcion', 1, 1, '[{\"identifier\":\"Buscar Prescripcion\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Id de prescripción: \",\"default\":\"\",\"identifier\":\"input1\",\"inputType\":\"text\",\"expanded\":false},{\"idp\":1,\"node\":\"child\",\"type\":\"button\",\"text\":\"Buscar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button2\",\"expanded\":false,\"icon_button\":\"search\"},{\"idp\":2,\"node\":\"child\",\"type\":\"space\",\"pixels\":10,\"identifier\":\"space3\",\"expanded\":false},{\"idp\":3,\"node\":\"child\",\"type\":\"table\",\"id\":\"\",\"src\":\"buscarPrescription\",\"trigger\":\"button2\",\"params\":[\"input1\"],\"onLoad\":false,\"xlsName\":\"data\",\"order\":\"\",\"identifier\":\"table4\",\"expanded\":false}],\"max\":4,\"icon\":\"user md\"}]', 'user md'),
(21, 'Ingresar Visita', 1, 4, '[{\"identifier\":\"Ingresar Visita\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"identifier\":\"container1\",\"expanded\":false,\"idp\":0,\"node\":\"parent\",\"stacked\":false,\"raised\":false,\"basic\":false,\"type\":\"container\",\"container\":[{\"identifier\":\"grid7\",\"expanded\":false,\"idp\":6,\"node\":\"parent\",\"centered\":false,\"cols\":\"equal\",\"divided\":false,\"type\":\"grid\",\"grid\":[{\"idp\":1,\"node\":\"child\",\"type\":\"input\",\"label\":\"Visit ID: \",\"default\":\"\",\"identifier\":\"input2\",\"inputType\":\"text\",\"expanded\":false},{\"idp\":2,\"node\":\"child\",\"type\":\"input\",\"label\":\"Patient ID: \",\"default\":\"\",\"identifier\":\"input3\",\"inputType\":\"text\",\"expanded\":false},{\"idp\":3,\"node\":\"child\",\"type\":\"input\",\"label\":\"Doctor ID: \",\"default\":\"\",\"identifier\":\"input4\",\"inputType\":\"text\",\"expanded\":false}]},{\"idp\":10,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"30\",\"identifier\":\"space11\",\"expanded\":false},{\"identifier\":\"grid8\",\"expanded\":true,\"idp\":7,\"node\":\"parent\",\"centered\":false,\"cols\":\"equal\",\"divided\":false,\"type\":\"grid\",\"grid\":[{\"idp\":4,\"node\":\"child\",\"type\":\"input\",\"label\":\"Motive: \",\"default\":\"\",\"identifier\":\"input5\",\"inputType\":\"text\",\"expanded\":false},{\"idp\":5,\"node\":\"child\",\"type\":\"input\",\"label\":\"Resumen: \",\"default\":\"\",\"identifier\":\"input6\",\"inputType\":\"text\",\"expanded\":false}]},{\"idp\":9,\"node\":\"child\",\"type\":\"space\",\"pixels\":\"10\",\"identifier\":\"space10\",\"expanded\":false},{\"idp\":8,\"node\":\"child\",\"type\":\"button\",\"text\":\"Agregar\",\"sps\":[],\"fluid\":true,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button9\",\"expanded\":false,\"icon_button\":\"plus\"}]},{\"idp\":17,\"node\":\"child\",\"type\":\"space\",\"pixels\":10,\"identifier\":\"space18\",\"expanded\":false},{\"identifier\":\"container17\",\"expanded\":true,\"idp\":16,\"node\":\"parent\",\"stacked\":false,\"raised\":false,\"basic\":false,\"type\":\"container\",\"container\":[{\"idp\":15,\"node\":\"child\",\"type\":\"input\",\"label\":\"Diagnosis Code: \",\"default\":\"\",\"identifier\":\"input16\",\"inputType\":\"text\",\"expanded\":true},{\"idp\":14,\"node\":\"child\",\"type\":\"button\",\"text\":\"Agregar\",\"sps\":[],\"fluid\":true,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button15\",\"expanded\":true,\"icon_button\":\"plus\"}]},{\"idp\":11,\"node\":\"child\",\"type\":\"execution_single\",\"id\":\"\",\"src\":\"ingresarVisita\",\"trigger\":\"button9\",\"params\":[\"input2\",\"input3\",\"input4\",\"input5\",\"input6\"],\"targets\":[],\"onLoad\":false,\"showSuccess\":true,\"message\":\"crear visita\",\"order\":\"1\",\"identifier\":\"createVisit\",\"expanded\":false},{\"idp\":13,\"node\":\"child\",\"type\":\"execution_single\",\"id\":\"\",\"src\":\"ingresarVisita2\",\"trigger\":\"button15\",\"params\":[\"input2\",\"input16\"],\"targets\":[],\"onLoad\":false,\"showSuccess\":true,\"message\":\"dd creado\",\"order\":\"1\",\"identifier\":\"createDD\",\"expanded\":false}],\"max\":18}]', 'hospital'),
(22, 'Borrar EHR de Paciente', 1, 5, '[{\"identifier\":\"Borrar Paciente\",\"expanded\":true,\"idp\":-1,\"node\":\"parent\",\"type\":\"report\",\"report\":[{\"idp\":0,\"node\":\"child\",\"type\":\"input\",\"label\":\"Número de paciente: \",\"default\":\"\",\"identifier\":\"input1\",\"inputType\":\"text\",\"expanded\":false},{\"idp\":1,\"node\":\"child\",\"type\":\"button\",\"text\":\"Eliminar\",\"sps\":[],\"fluid\":false,\"color\":\"red\",\"position\":\"left\",\"identifier\":\"button2\",\"expanded\":false,\"icon_button\":\"x\"},{\"idp\":8,\"node\":\"child\",\"type\":\"execution_single\",\"id\":\"\",\"src\":\"deleteFinal\",\"trigger\":\"button2\",\"params\":[\"input1\"],\"targets\":[],\"onLoad\":false,\"showSuccess\":false,\"message\":\"\",\"order\":\"\",\"identifier\":\"execution_single9\",\"expanded\":false}],\"max\":12,\"icon\":\"user\"}]', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `Diagnosis`
--

CREATE TABLE `Diagnosis` (
  `dCode` int(3) NOT NULL,
  `dFrequent` varchar(1) DEFAULT NULL,
  `ICD9CM` varchar(23) DEFAULT NULL,
  `ICD10CM` varchar(23) DEFAULT NULL,
  `DSM5` varchar(269) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Diagnosis`
--

INSERT INTO `Diagnosis` (`dCode`, `dFrequent`, `ICD9CM`, `ICD10CM`, `DSM5`) VALUES
(1, '', 'V62.3', 'Z55.9', 'Academic or educational problem'),
(2, '', 'V62.4', 'Z60.3', 'Acculturation difficulty'),
(3, '', '308.3', 'F43.0', 'Acute stress disorder'),
(4, '', '', '', 'Adjustment disorder'),
(5, '', '309.9', 'F43.20', 'Adjustment disorder, Unspecified'),
(6, '', '309.24', 'F43.22', 'Adjustment disorder, With anxiety'),
(7, '', '309', 'F43.21', 'Adjustment disorder, With depressed mood'),
(8, '', '309.3', 'F43.24', 'Adjustment disorder, With disturbance of conduct'),
(9, '', '309.28', 'F43.23', 'Adjustment disorder, With mixed anxiety and depressed mood'),
(10, '', '309.4', 'F43.25', 'Adjustment disorder, With mixed disturbance of emotions and conduct'),
(11, '', 'V71.01', 'Z72.811', 'Adult antisocial behavior'),
(12, '', '', '', 'Adult physical abuse by nonspouse or nonpartner, Confirmed'),
(13, '', '995.81', 'T74.11XA', 'Adult physical abuse by nonspouse or nonpartner, Confirmed, Initial encounter'),
(14, '', '995.81', 'T74.11XD', 'Adult physical abuse by nonspouse or nonpartner, Confirmed, Subsequent encounter'),
(15, '', '', '', 'Adult physical abuse by nonspouse or nonpartner, Suspected'),
(16, '', '995.81', 'T76.11XA', 'Adult physical abuse by nonspouse or nonpartner, Suspected, Initial encounter'),
(17, '', '995.81', 'T76.11XD', 'Adult physical abuse by nonspouse or nonpartner, Suspected, Subsequent encounter'),
(18, '', '', '', 'Adult psychological abuse by nonspouse or nonpartner, Confirmed'),
(19, '', '995.82', 'T74.31XA', 'Adult psychological abuse by nonspouse or nonpartner, Confirmed, Initial encounter'),
(20, '', '995.82', 'T74.31XD', 'Adult psychological abuse by nonspouse or nonpartner, Confirmed, Subsequent encounter'),
(21, '', '', '', 'Adult psychological abuse by nonspouse or nonpartner, Suspected'),
(22, '', '995.82', 'T76.31XA', 'Adult psychological abuse by nonspouse or nonpartner, Suspected, Initial encounter'),
(23, '', '995.82', 'T76.31XD', 'Adult psychological abuse by nonspouse or nonpartner, Suspected, Subsequent encounter'),
(24, '', '', '', 'Adult sexual abuse by nonspouse or nonpartner, Confirmed'),
(25, '', '995.83', 'T74.21XA', 'Adult sexual abuse by nonspouse or nonpartner, Confirmed, Initial encounter'),
(26, '', '995.83', 'T74.21XD', 'Adult sexual abuse by nonspouse or nonpartner, Confirmed, Subsequent encounter'),
(27, '', '', '', 'Adult sexual abuse by nonspouse or nonpartner, Suspected'),
(28, '', '995.83', 'T76.21XA', 'Adult sexual abuse by nonspouse or nonpartner, Suspected, Initial encounter'),
(29, '', '995.83', 'T76.21XD', 'Adult sexual abuse by nonspouse or nonpartner, Suspected, Subsequent encounter'),
(30, '', '307', 'F98.5', 'Adult-onset fluency disorder'),
(31, '', '300.22', 'F40.00', 'Agoraphobia'),
(32, '', '303', '', 'Alcohol intoxication'),
(33, '', '291', '', 'Alcohol intoxication delirium'),
(34, '', '', 'F10.121', 'Alcohol intoxication delirium, With mild use disorder'),
(35, '', '', 'F10.221', 'Alcohol intoxication delirium, With moderate or severe use disorder'),
(36, '', '', 'F10.921', 'Alcohol intoxication delirium, Without use disorder'),
(37, '', '', 'F10.129', 'Alcohol intoxication, With mild use disorder'),
(38, '', '', 'F10.229', 'Alcohol intoxication, With moderate or severe use disorder'),
(39, '', '', 'F10.929', 'Alcohol intoxication, Without use disorder'),
(40, '', '', '', 'Alcohol use disorder'),
(41, '', '305', 'F10.10', 'Alcohol use disorder, Mild'),
(42, '', '303.9', 'F10.20', 'Alcohol use disorder, Moderate'),
(43, '', '303.9', 'F10.20', 'Alcohol use disorder, Severe'),
(44, '', '291.81', '', 'Alcohol withdrawal'),
(45, '', '291', 'F10.231', 'Alcohol withdrawal delirium'),
(46, '', '', 'F10.232', 'Alcohol withdrawal, With perceptual disturbances'),
(47, '', '', 'F10.239', 'Alcohol withdrawal, Without perceptual disturbances'),
(48, '', '291.89', '', 'Alcohol-induced anxiety disorder'),
(49, '', '', 'F10.180', 'Alcohol-induced anxiety disorder, With mild use disorder'),
(50, '', '', 'F10.280', 'Alcohol-induced anxiety disorder, With moderate or severe use disorder'),
(51, '', '', 'F10.980', 'Alcohol-induced anxiety disorder, Without use disorder'),
(52, '', '291.89', '', 'Alcohol-induced bipolar and related disorder'),
(53, '', '', 'F10.14', 'Alcohol-induced bipolar and related disorder, With mild use disorder'),
(54, '', '', 'F10.24', 'Alcohol-induced bipolar and related disorder, With moderate or severe use disorder'),
(55, '', '', 'F10.94', 'Alcohol-induced bipolar and related disorder, Without use disorder'),
(56, '', '291.89', '', 'Alcohol-induced depressive disorder'),
(57, '', '', 'F10.14', 'Alcohol-induced depressive disorder, With mild use disorder'),
(58, '', '', 'F10.24', 'Alcohol-induced depressive disorder, With moderate or severe use disorder'),
(59, '', '', 'F10.94', 'Alcohol-induced depressive disorder, Without use disorder'),
(60, '', '291.1', '', 'Alcohol-induced major neurocognitive disorder, Amnestic confabulatory type'),
(61, '', '', 'F10.26', 'Alcohol-induced major neurocognitive disorder, Amnestic confabulatory type, With moderate or severe use disorder'),
(62, '', '', 'F10.96', 'Alcohol-induced major neurocognitive disorder, Amnestic confabulatory type, Without use disorder'),
(63, '', '291.2', '', 'Alcohol-induced major neurocognitive disorder, Nonamnestic confabulatory type'),
(64, '', '', 'F10.27', 'Alcohol-induced major neurocognitive disorder, Nonamnestic confabulatory type, With moderate or severe use disorder'),
(65, '', '', 'F10.97', 'Alcohol-induced major neurocognitive disorder, Nonamnestic confabulatory type, Without use disorder'),
(66, '', '291.89', '', 'Alcohol-induced mild neurocognitive disorder'),
(67, '', '', 'F10.288', 'Alcohol-induced mild neurocognitive disorder, With moderate or severe use disorder'),
(68, '', '', 'F10.988', 'Alcohol-induced mild neurocognitive disorder, Without use disorder'),
(69, '', '291.9', '', 'Alcohol-induced psychotic disorder'),
(70, '', '', 'F10.159', 'Alcohol-induced psychotic disorder, With mild use disorder'),
(71, '', '', 'F10.259', 'Alcohol-induced psychotic disorder, With moderate or severe use disorder'),
(72, '', '', 'F10.959', 'Alcohol-induced psychotic disorder, Without use disorder'),
(73, '', '291.89', '', 'Alcohol-induced sexual dysfunction'),
(74, '', '', 'F10.181', 'Alcohol-induced sexual dysfunction, With mild use disorder'),
(75, '', '', 'F10.281', 'Alcohol-induced sexual dysfunction, With moderate or severe use disorder'),
(76, '', '', 'F10.981', 'Alcohol-induced sexual dysfunction, Without use disorder'),
(77, '', '291.82', '', 'Alcohol-induced sleep disorder'),
(78, '', '', 'F10.182', 'Alcohol-induced sleep disorder, With mild use disorder'),
(79, '', '', 'F10.282', 'Alcohol-induced sleep disorder, With moderate or severe use disorder'),
(80, '', '', 'F10.982', 'Alcohol-induced sleep disorder, Without use disorder'),
(81, '', '292.81', '', 'Amphetamine (or other stimulant) intoxication delirium'),
(82, '', '', 'F15.121', 'Amphetamine (or other stimulant) intoxication delirium, With mild use disorder'),
(83, '', '', 'F15.221', 'Amphetamine (or other stimulant) intoxication delirium, With moderate or severe use disorder'),
(84, '', '', 'F15.921', 'Amphetamine (or other stimulant) intoxication delirium, Without use disorder'),
(85, '', '292.89', '', 'Amphetamine (or other stimulant)-induced anxiety disorder'),
(86, '', '', 'F15.180', 'Amphetamine (or other stimulant)-induced anxiety disorder, With mild use disorder'),
(87, '', '', 'F15.280', 'Amphetamine (or other stimulant)-induced anxiety disorder, With moderate or severe use disorder'),
(88, '', '', 'F15.980', 'Amphetamine (or other stimulant)-induced anxiety disorder, Without use disorder'),
(89, '', '292.84', '', 'Amphetamine (or other stimulant)-induced bipolar and related disorder'),
(90, '', '', 'F15.14', 'Amphetamine (or other stimulant)-induced bipolar and related disorder, With mild use disorder'),
(91, '', '', 'F15.24', 'Amphetamine (or other stimulant)-induced bipolar and related disorder, With moderate or severe use disorder'),
(92, '', '', 'F15.94', 'Amphetamine (or other stimulant)-induced bipolar and related disorder, Without use disorder'),
(93, '', '', 'F15.921', 'Amphetamine (or other stimulant)-induced delirium'),
(94, '', '292.84', '', 'Amphetamine (or other stimulant)-induced depressive disorder'),
(95, '', '', 'F15.14', 'Amphetamine (or other stimulant)-induced depressive disorder, With mild use disorder'),
(96, '', '', 'F15.24', 'Amphetamine (or other stimulant)-induced depressive disorder, With moderate or severe use disorder'),
(97, '', '', 'F15.94', 'Amphetamine (or other stimulant)-induced depressive disorder, Without use disorder'),
(98, '', '292.89', '', 'Amphetamine (or other stimulant)-induced obsessive-compulsive and related disorder'),
(99, '', '', 'F15.188', 'Amphetamine (or other stimulant)-induced obsessive-compulsive and related disorder, With mild use disorder'),
(100, '', '', 'F15.288', 'Amphetamine (or other stimulant)-induced obsessive-compulsive and related disorder, With moderate or severe use disorder'),
(101, '', '', 'F15.988', 'Amphetamine (or other stimulant)-induced obsessive-compulsive and related disorder, Without use disorder'),
(102, '', '292.9', '', 'Amphetamine (or other stimulant)-induced psychotic disorder'),
(103, '', '', 'F15.159', 'Amphetamine (or other stimulant)-induced psychotic disorder, With mild use disorder'),
(104, '', '', 'F15.259', 'Amphetamine (or other stimulant)-induced psychotic disorder, With moderate or severe use disorder'),
(105, '', '', 'F15.959', 'Amphetamine (or other stimulant)-induced psychotic disorder, Without use disorder'),
(106, '', '292.89', '', 'Amphetamine (or other stimulant)-induced sexual dysfunction'),
(107, '', '', 'F15.181', 'Amphetamine (or other stimulant)-induced sexual dysfunction, With mild use disorder'),
(108, '', '', 'F15.281', 'Amphetamine (or other stimulant)-induced sexual dysfunction, With moderate or severe use disorder'),
(109, '', '', 'F15.981', 'Amphetamine (or other stimulant)-induced sexual dysfunction, Without use disorder'),
(110, '', '292.85', '', 'Amphetamine (or other stimulant)-induced sleep disorder'),
(111, '', '', 'F15.182', 'Amphetamine (or other stimulant)-induced sleep disorder, With mild use disorder'),
(112, '', '', 'F15.282', 'Amphetamine (or other stimulant)-induced sleep disorder, With moderate or severe use disorder'),
(113, '', '', 'F15.982', 'Amphetamine (or other stimulant)-induced sleep disorder, Without use disorder'),
(114, '', '292.89', '', 'Amphetamine or other stimulant intoxication'),
(115, '', '', '', 'Amphetamine or other stimulant intoxication, With perceptual disturbances'),
(116, '', '', 'F15.122', 'Amphetamine or other stimulant intoxication, With perceptual disturbances, With mild use disorder'),
(117, '', '', 'F15.222', 'Amphetamine or other stimulant intoxication, With perceptual disturbances, With moderate or severe use disorder'),
(118, '', '', 'F15.922', 'Amphetamine or other stimulant intoxication, With perceptual disturbances, Without use disorder'),
(119, '', '', '', 'Amphetamine or other stimulant intoxication, Without perceptual disturbances'),
(120, '', '', 'F15.129', 'Amphetamine or other stimulant intoxication, Without perceptual disturbances, With mild use disorder'),
(121, '', '', 'F15.229', 'Amphetamine or other stimulant intoxication, Without perceptual disturbances, With moderate or severe use disorder'),
(122, '', '', 'F15.929', 'Amphetamine or other stimulant intoxication, Without perceptual disturbances, Without use disorder'),
(123, '', '292', 'F15.23', 'Amphetamine or other stimulant withdrawal'),
(124, '', '', '', 'Amphetamine-type substance use disorder'),
(125, '', '305.7', 'F15.10', 'Amphetamine-type substance use disorder, Mild'),
(126, '', '304.4', 'F15.20', 'Amphetamine-type substance use disorder, Moderate'),
(127, '', '304.4', 'F15.20', 'Amphetamine-type substance use disorder, Severe'),
(128, '', '307.1', '', 'Anorexia nervosa'),
(129, '', '', 'F50.02', 'Anorexia nervosa, Binge-eating/purging type'),
(130, '', '', 'F50.01', 'Anorexia nervosa, Restricting type'),
(131, '', '', '', 'Antidepressant discontinuation syndrome'),
(132, '', '995.29', 'T43.205A', 'Antidepressant discontinuation syndrome, Initial encounter'),
(133, '', '995.29', 'T43.205S', 'Antidepressant discontinuation syndrome, Sequelae'),
(134, '', '995.29', 'T43.205D', 'Antidepressant discontinuation syndrome, Subsequent encounter'),
(135, '', '301.7', 'F60.2', 'Antisocial personality disorder'),
(136, '', '293.84', 'F06.4', 'Anxiety disorder due to another medical condition'),
(137, '', '', '', 'Attention-deficit/hyperactivity disorder'),
(138, '', '314.01', 'F90.2', 'Attention-deficit/hyperactivity disorder, Combined presentation'),
(139, '', '314.01', 'F90.1', 'Attention-deficit/hyperactivity disorder, Predominantly hyperactive/impulsive presentation'),
(140, '', '314', 'F90.0', 'Attention-deficit/hyperactivity disorder, Predominantly inattentive presentation'),
(141, '', '299', 'F84.0', 'Autism spectrum disorder'),
(142, '', '347', 'G47.419', 'Autosomal dominant cerebellar ataxia, deafness, and narcolepsy'),
(143, '', '347', 'G47.419', 'Autosomal dominant narcolepsy, obesity, and type 2 diabetes'),
(144, '', '301.82', 'F60.6', 'Avoidant personality disorder'),
(145, '', '307.59', 'F50.8', 'Avoidant/restrictive food intake disorder'),
(146, '', '307.51', 'F50.8', 'Binge-eating disorder'),
(147, '', '293.83', '', 'Bipolar and related disorder due to another medical condition'),
(148, '', '', 'F06.33', 'Bipolar and related disorder due to another medical condition, With manic features'),
(149, '', '', 'F06.33', 'Bipolar and related disorder due to another medical condition, With manic- or hypomanic-like episodes'),
(150, '', '', 'F06.34', 'Bipolar and related disorder due to another medical condition, With mixed features'),
(151, '', '', '', 'Bipolar I disorder, Current or most recent episode depressed'),
(152, '', '296.56', 'F31.76', 'Bipolar I disorder, Current or most recent episode depressed, In full remission'),
(153, '', '296.55', 'F31.75', 'Bipolar I disorder, Current or most recent episode depressed, In partial remission'),
(154, '', '296.51', 'F31.31', 'Bipolar I disorder, Current or most recent episode depressed, Mild'),
(155, '', '296.52', 'F31.32', 'Bipolar I disorder, Current or most recent episode depressed, Moderate'),
(156, '', '296.53', 'F31.4', 'Bipolar I disorder, Current or most recent episode depressed, Severe'),
(157, '', '296.5', 'F31.9', 'Bipolar I disorder, Current or most recent episode depressed, Unspecified'),
(158, '', '296.54', 'F31.5', 'Bipolar I disorder, Current or most recent episode depressed, With psychotic features'),
(159, '', '296.4', 'F31.0', 'Bipolar I disorder, Current or most recent episode hypomanic'),
(160, '', '296.46', 'F31.74', 'Bipolar I disorder, Current or most recent episode hypomanic, In full remission'),
(161, '', '296.45', 'F31.73', 'Bipolar I disorder, Current or most recent episode hypomanic, In partial remission'),
(162, '', '296.4', 'F31.9', 'Bipolar I disorder, Current or most recent episode hypomanic, Unspecified'),
(163, '', '', '', 'Bipolar I disorder, Current or most recent episode manic'),
(164, '', '296.46', 'F31.74', 'Bipolar I disorder, Current or most recent episode manic, In full remission'),
(165, '', '296.45', 'F31.73', 'Bipolar I disorder, Current or most recent episode manic, In partial remission'),
(166, '', '296.41', 'F31.11', 'Bipolar I disorder, Current or most recent episode manic, Mild'),
(167, '', '296.42', 'F31.12', 'Bipolar I disorder, Current or most recent episode manic, Moderate'),
(168, '', '296.43', 'F31.13', 'Bipolar I disorder, Current or most recent episode manic, Severe'),
(169, '', '296.4', 'F31.9', 'Bipolar I disorder, Current or most recent episode manic, Unspecified'),
(170, '', '296.44', 'F31.2', 'Bipolar I disorder, Current or most recent episode manic, With psychotic features'),
(171, '', '296.7', 'F31.9', 'Bipolar I disorder, Current or most recent episode unspecified'),
(172, '', '296.89', 'F31.81', 'Bipolar II disorder'),
(173, '', '300.7', 'F45.22', 'Body dysmorphic disorder'),
(174, '', 'V62.89', 'R41.83', 'Borderline intellectual functioning'),
(175, '', '301.83', 'F60.3', 'Borderline personality disorder'),
(176, '', '298.8', 'F23', 'Brief psychotic disorder'),
(177, '', '307.51', 'F50.2', 'Bulimia nervosa'),
(178, '', '305.9', 'F15.929', 'Caffeine intoxication'),
(179, '', '292', 'F15.93', 'Caffeine withdrawal'),
(180, '', '292.89', '', 'Caffeine-induced anxiety disorder'),
(181, '', '', 'F15.180', 'Caffeine-induced anxiety disorder, With mild use disorder'),
(182, '', '', 'F15.280', 'Caffeine-induced anxiety disorder, With moderate or severe use disorder'),
(183, '', '', 'F15.980', 'Caffeine-induced anxiety disorder, Without use disorder'),
(184, '', '292.85', '', 'Caffeine-induced sleep disorder'),
(185, '', '', 'F15.182', 'Caffeine-induced sleep disorder, With mild use disorder'),
(186, '', '', 'F15.282', 'Caffeine-induced sleep disorder, With moderate or severe use disorder'),
(187, '', '', 'F15.982', 'Caffeine-induced sleep disorder, Without use disorder'),
(188, '', '292.89', '', 'Cannabis intoxication'),
(189, '', '292.81', '', 'Cannabis intoxication delirium'),
(190, '', '', 'F12.121', 'Cannabis intoxication delirium, With mild use disorder'),
(191, '', '', 'F12.221', 'Cannabis intoxication delirium, With moderate or severe use disorder'),
(192, '', '', 'F12.921', 'Cannabis intoxication delirium, Without use disorder'),
(193, '', '', '', 'Cannabis intoxication, With perceptual disturbances'),
(194, '', '', 'F12.122', 'Cannabis intoxication, With perceptual disturbances, With mild use disorder'),
(195, '', '', 'F12.222', 'Cannabis intoxication, With perceptual disturbances, With moderate or severe use disorder'),
(196, '', '', 'F12.922', 'Cannabis intoxication, With perceptual disturbances, Without use disorder'),
(197, '', '', '', 'Cannabis intoxication, Without perceptual disturbances'),
(198, '', '', 'F12.129', 'Cannabis intoxication, Without perceptual disturbances, With mild use disorder'),
(199, '', '', 'F12.229', 'Cannabis intoxication, Without perceptual disturbances, With moderate or severe use disorder'),
(200, '', '', 'F12.929', 'Cannabis intoxication, Without perceptual disturbances, Without use disorder'),
(201, '', '', '', 'Cannabis use disorder'),
(202, '', '305.2', 'F12.10', 'Cannabis use disorder, Mild'),
(203, '', '304.3', 'F12.20', 'Cannabis use disorder, Moderate'),
(204, '', '304.3', 'F12.20', 'Cannabis use disorder, Severe'),
(205, '', '292', 'F12.288', 'Cannabis withdrawal'),
(206, '', '292.89', '', 'Cannabis-induced anxiety disorder'),
(207, '', '', 'F12.180', 'Cannabis-induced anxiety disorder, With mild use disorder'),
(208, '', '', 'F12.280', 'Cannabis-induced anxiety disorder, With moderate or severe use disorder'),
(209, '', '', 'F12.980', 'Cannabis-induced anxiety disorder, Without use disorder'),
(210, '', '292.9', '', 'Cannabis-induced psychotic disorder'),
(211, '', '', 'F12.159', 'Cannabis-induced psychotic disorder, With mild use disorder'),
(212, '', '', 'F12.259', 'Cannabis-induced psychotic disorder, With moderate or severe use disorder'),
(213, '', '', 'F12.959', 'Cannabis-induced psychotic disorder, Without use disorder'),
(214, '', '292.85', '', 'Cannabis-induced sleep disorder'),
(215, '', '', 'F12.188', 'Cannabis-induced sleep disorder, With mild use disorder'),
(216, '', '', 'F12.288', 'Cannabis-induced sleep disorder, With moderate or severe use disorder'),
(217, '', '', 'F12.988', 'Cannabis-induced sleep disorder, Without use disorder'),
(218, '', '293.89', 'F06.1', 'Catatonia associated with another mental disorder (catatonia specifier)'),
(219, '', '293.89', 'F06.1', 'Catatonic disorder due to another medical condition'),
(220, '', '', '', 'Central sleep apnea'),
(221, '', '780.57', 'G47.37', 'Central sleep apnea comorbid with opioid use'),
(222, '', '786.04', 'R06.3', 'Cheyne-Stokes breathing'),
(223, '', 'V61.29', 'Z62.898', 'Child affected by parental relationship distress'),
(224, '', '', '', 'Child neglect, Confirmed'),
(225, '', '995.52', 'T74.02XA', 'Child neglect, Confirmed, Initial encounter'),
(226, '', '995.52', 'T74.02XD', 'Child neglect, Confirmed, Subsequent encounter'),
(227, '', '', '', 'Child neglect, Suspected'),
(228, '', '995.52', 'T76.02XA', 'Child neglect, Suspected, Initial encounter'),
(229, '', '995.52', 'T76.02XD', 'Child neglect, Suspected, Subsequent encounter'),
(230, '', 'V71.02', 'Z72.810', 'Child or adolescent antisocial behavior'),
(231, '', '', '', 'Child physical abuse, Confirmed'),
(232, '', '995.54', 'T74.12XA', 'Child physical abuse, Confirmed, Initial encounter'),
(233, '', '995.54', 'T74.12XD', 'Child physical abuse, Confirmed, Subsequent encounter'),
(234, '', '', '', 'Child physical abuse, Suspected'),
(235, '', '995.54', 'T76.12XA', 'Child physical abuse, Suspected, Initial encounter'),
(236, '', '995.54', 'T76.12XD', 'Child physical abuse, Suspected, Subsequent encounter'),
(237, '', '', '', 'Child psychological abuse, Confirmed'),
(238, '', '995.51', 'T74.32XA', 'Child psychological abuse, Confirmed, Initial encounter'),
(239, '', '995.51', 'T74.32XD', 'Child psychological abuse, Confirmed, Subsequent encounter'),
(240, '', '', '', 'Child psychological abuse, Suspected'),
(241, '', '995.51', 'T76.32XA', 'Child psychological abuse, Suspected, Initial encounter'),
(242, '', '995.51', 'T76.32XD', 'Child psychological abuse, Suspected, Subsequent encounter'),
(243, '', '', '', 'Child sexual abuse, Confirmed'),
(244, '', '995.53', 'T74.22XA', 'Child sexual abuse, Confirmed, Initial encounter'),
(245, '', '995.53', 'T74.22XD', 'Child sexual abuse, Confirmed, Subsequent encounter'),
(246, '', '', '', 'Child sexual abuse, Suspected'),
(247, '', '995.53', 'T76.22XA', 'Child sexual abuse, Suspected, Initial encounter'),
(248, '', '995.53', 'T76.22XD', 'Child sexual abuse, Suspected, Subsequent encounter'),
(249, '', '315.35', 'F80.81', 'Childhood-onset fluency disorder (stuttering)'),
(250, '', '', '', 'Circadian rhythm sleep-wake disorders'),
(251, '', '307.45', 'G47.22', 'Circadian rhythm sleep-wake disorders, Advanced sleep phase type'),
(252, '', '307.45', 'G47.21', 'Circadian rhythm sleep-wake disorders, Delayed sleep phase type'),
(253, '', '307.45', 'G47.23', 'Circadian rhythm sleep-wake disorders, Irregular sleep-wake type'),
(254, '', '307.45', 'G47.24', 'Circadian rhythm sleep-wake disorders, Non-24-hour sleep-wake type'),
(255, '', '307.45', 'G47.26', 'Circadian rhythm sleep-wake disorders, Shift work type'),
(256, '', '307.45', 'G47.20', 'Circadian rhythm sleep-wake disorders, Unspecified type'),
(257, '', '292.89', '', 'Cocaine intoxication'),
(258, '', '292.81', '', 'Cocaine intoxication delirium'),
(259, '', '', 'F14.121', 'Cocaine intoxication delirium, With mild use disorder'),
(260, '', '', 'F14.221', 'Cocaine intoxication delirium, With moderate or severe use disorder'),
(261, '', '', 'F14.921', 'Cocaine intoxication delirium, Without use disorder'),
(262, '', '', '', 'Cocaine intoxication, With perceptual disturbances'),
(263, '', '', 'F14.122', 'Cocaine intoxication, With perceptual disturbances, With mild use disorder'),
(264, '', '', 'F14.222', 'Cocaine intoxication, With perceptual disturbances, With moderate or severe use disorder'),
(265, '', '', 'F14.922', 'Cocaine intoxication, With perceptual disturbances, Without use disorder'),
(266, '', '', '', 'Cocaine intoxication, Without perceptual disturbances'),
(267, '', '', 'F14.129', 'Cocaine intoxication, Without perceptual disturbances, With mild use disorder'),
(268, '', '', 'F14.229', 'Cocaine intoxication, Without perceptual disturbances, With moderate or severe use disorder'),
(269, '', '', 'F14.929', 'Cocaine intoxication, Without perceptual disturbances, Without use disorder'),
(270, '', '', '', 'Cocaine use disorder'),
(271, '', '305.6', 'F14.10', 'Cocaine use disorder, Mild'),
(272, '', '304.2', 'F14.20', 'Cocaine use disorder, Moderate'),
(273, '', '304.2', 'F14.20', 'Cocaine use disorder, Severe'),
(274, '', '292', 'F14.23', 'Cocaine withdrawal'),
(275, '', '292.89', '', 'Cocaine-induced anxiety disorder'),
(276, '', '', 'F14.180', 'Cocaine-induced anxiety disorder, With mild use disorder'),
(277, '', '', 'F14.280', 'Cocaine-induced anxiety disorder, With moderate or severe use disorder'),
(278, '', '', 'F14.980', 'Cocaine-induced anxiety disorder, Without use disorder'),
(279, '', '292.84', '', 'Cocaine-induced bipolar and related disorder'),
(280, '', '', 'F14.14', 'Cocaine-induced bipolar and related disorder, With mild use disorder'),
(281, '', '', 'F14.24', 'Cocaine-induced bipolar and related disorder, With moderate or severe use disorder'),
(282, '', '', 'F14.94', 'Cocaine-induced bipolar and related disorder, Without use disorder'),
(283, '', '292.84', '', 'Cocaine-induced depressive disorder'),
(284, '', '', 'F14.14', 'Cocaine-induced depressive disorder, With mild use disorder'),
(285, '', '', 'F14.24', 'Cocaine-induced depressive disorder, With moderate or severe use disorder'),
(286, '', '', 'F14.94', 'Cocaine-induced depressive disorder, Without use disorder'),
(287, '', '292.89', '', 'Cocaine-induced obsessive-compulsive and related disorder'),
(288, '', '', 'F14.188', 'Cocaine-induced obsessive-compulsive and related disorder, With mild use disorder'),
(289, '', '', 'F14.288', 'Cocaine-induced obsessive-compulsive and related disorder, With moderate or severe use disorder'),
(290, '', '', 'F14.988', 'Cocaine-induced obsessive-compulsive and related disorder, Without use disorder'),
(291, '', '292.9', '', 'Cocaine-induced psychotic disorder'),
(292, '', '', 'F14.159', 'Cocaine-induced psychotic disorder, With mild use disorder'),
(293, '', '', 'F14.259', 'Cocaine-induced psychotic disorder, With moderate or severe use disorder'),
(294, '', '', 'F14.959', 'Cocaine-induced psychotic disorder, Without use disorder'),
(295, '', '292.89', '', 'Cocaine-induced sexual dysfunction'),
(296, '', '', 'F14.181', 'Cocaine-induced sexual dysfunction, With mild use disorder'),
(297, '', '', 'F14.281', 'Cocaine-induced sexual dysfunction, With moderate or severe use disorder'),
(298, '', '', 'F14.981', 'Cocaine-induced sexual dysfunction, Without use disorder'),
(299, '', '292.85', '', 'Cocaine-induced sleep disorder'),
(300, '', '', 'F14.182', 'Cocaine-induced sleep disorder, With mild use disorder'),
(301, '', '', 'F14.282', 'Cocaine-induced sleep disorder, With moderate or severe use disorder'),
(302, '', '', 'F14.982', 'Cocaine-induced sleep disorder, Without use disorder'),
(303, '', '327.26', 'G47.36', 'Comorbid sleep-related hypoventilation'),
(304, '', '', '', 'Conduct disorder'),
(305, '', '312.82', 'F91.2', 'Conduct disorder, Adolescent-onset type'),
(306, '', '312.81', 'F91.1', 'Conduct disorder, Childhood-onset type'),
(307, '', '312.89', 'F91.9', 'Conduct disorder, Unspecified onset'),
(308, '', '327.25', 'G47.35', 'Congenital central alveolar hypoventilation'),
(309, '', '300.11', '', 'Conversion disorder (functional neurological symptom disorder)'),
(310, '', '', 'F44.4', 'Conversion disorder (functional neurological symptom disorder), With abnormal movement'),
(311, '', '', 'F44.6', 'Conversion disorder (functional neurological symptom disorder), With anesthesia or sensory loss'),
(312, '', '', 'F44.5', 'Conversion disorder (functional neurological symptom disorder), With attacks or seizures'),
(313, '', '', 'F44.7', 'Conversion disorder (functional neurological symptom disorder), With mixed symptoms'),
(314, '', '', 'F44.6', 'Conversion disorder (functional neurological symptom disorder), With special sensory symptoms'),
(315, '', '', 'F44.4', 'Conversion disorder (functional neurological symptom disorder), With speech symptoms'),
(316, '', '', 'F44.4', 'Conversion disorder (functional neurological symptom disorder), With swallowing symptoms'),
(317, '', '', 'F44.4', 'Conversion disorder (functional neurological symptom disorder), With weakness/paralysis'),
(318, '', 'V62.5', 'Z65.0', 'Conviction in civil or criminal proceedings without imprisonment'),
(319, '', '301.13', 'F34.0', 'Cyclothymic disorder'),
(320, '', '302.74', 'F52.32', 'Delayed ejaculation'),
(321, '', '', '', 'Delirium'),
(322, '', '293', 'F05', 'Delirium due to another medical condition'),
(323, '', '293', 'F05', 'Delirium due to multiple etiologies'),
(324, '', '297.1', 'F22', 'Delusional disorder'),
(325, '', '301.6', 'F60.7', 'Dependent personality disorder'),
(326, '', '300.6', 'F48.1', 'Depersonalization/derealization disorder'),
(327, '', '293.83', '', 'Depressive disorder due to another medical condition'),
(328, '', '', 'F06.31', 'Depressive disorder due to another medical condition, With depressive features'),
(329, '', '', 'F06.32', 'Depressive disorder due to another medical condition, With major depressive-like episode'),
(330, '', '', 'F06.34', 'Depressive disorder due to another medical condition, With mixed features'),
(331, '', '315.4', 'F82', 'Developmental coordination disorder'),
(332, '', 'V60.89', 'Z59.2', 'Discord with neighbor, lodger, or landlord'),
(333, '', 'V62.89', 'Z64.4', 'Discord with social service provider, including probation officer, case manager, or social services worker'),
(334, '', '313.89', 'F94.2', 'Disinhibited social engagement disorder'),
(335, '', 'V61.03', 'Z63.5', 'Disruption of family by separation or divorce'),
(336, '', '296.99', 'F34.8', 'Disruptive mood dysregulation disorder'),
(337, '', '300.12', 'F44.0', 'Dissociative amnesia'),
(338, '', '300.13', 'F44.1', 'Dissociative amnesia, with dissociative fugue'),
(339, '', '300.14', 'F44.81', 'Dissociative identity disorder'),
(340, '', '307.7', 'F98.1', 'Encopresis'),
(341, '', '307.6', 'F98.0', 'Enuresis'),
(342, '', '302.72', 'F52.21', 'Erectile disorder'),
(343, '', '698.4', 'L98.1', 'Excoriation (skin-picking) disorder'),
(344, '', '302.4', 'F65.2', 'Exhibitionistic disorder'),
(345, '', 'V62.22', 'Z65.5', 'Exposure to disaster, war, or other hostilities'),
(346, '', 'V60.2', 'Z59.5', 'Extreme poverty'),
(347, '', '300.19', 'F68.10', 'Factitious disorder'),
(348, '', '302.73', 'F52.31', 'Female orgasmic disorder'),
(349, '', '302.72', 'F52.22', 'Female sexual interest/arousal disorder'),
(350, '', '302.81', 'F65.0', 'Fetishistic disorder'),
(351, '', '302.89', 'F65.81', 'Frotteuristic disorder'),
(352, '1', '312.31', 'F63.0', 'Gambling disorder'),
(353, '', '302.85', 'F64.1', 'Gender dysphoria in adolescents and adults'),
(354, '', '302.6', 'F64.2', 'Gender dysphoria in children'),
(355, '', '300.02', 'F41.1', 'Generalized anxiety disorder'),
(356, '', '302.76', 'F52.6', 'Genito-pelvic pain/penetration disorder'),
(357, '', '315.8', 'F88', 'Global developmental delay'),
(358, '', '292.89', 'F16.983', 'Hallucinogen persisting perception disorder'),
(359, '', 'V61.8', 'Z63.8', 'High expressed emotion level within family'),
(360, '', '301.5', 'F60.4', 'Histrionic personality disorder'),
(361, '', '300.3', 'F42', 'Hoarding disorder'),
(362, '', 'V60.0', 'Z59.0', 'Homelessness'),
(363, '', '780.54', 'G47.10', 'Hypersomnolence disorder'),
(364, '', '327.21', 'G47.31', 'Idiopathic central sleep apnea'),
(365, '', '327.24', 'G47.34', 'Idiopathic hypoventilation'),
(366, '', '300.7', 'F45.21', 'Illness anxiety disorder'),
(367, '', 'V62.5', 'Z65.1', 'Imprisonment or other incarceration'),
(368, '', 'V60.1', 'Z59.1', 'Inadequate housing'),
(369, '', '292.89', '', 'Inhalant intoxication'),
(370, '', '292.81', '', 'Inhalant intoxication delirium'),
(371, '', '', 'F18.121', 'Inhalant intoxication delirium, With mild use disorder'),
(372, '', '', 'F18.221', 'Inhalant intoxication delirium, With moderate or severe use disorder'),
(373, '', '', 'F18.921', 'Inhalant intoxication delirium, Without use disorder'),
(374, '', '', 'F18.129', 'Inhalant intoxication, With mild use disorder'),
(375, '', '', 'F18.229', 'Inhalant intoxication, With moderate or severe use disorder'),
(376, '', '', 'F18.929', 'Inhalant intoxication, Without use disorder'),
(377, '', '', '', 'Inhalant use disorder'),
(378, '', '305.9', 'F18.10', 'Inhalant use disorder, Mild'),
(379, '', '304.6', 'F18.20', 'Inhalant use disorder, Moderate'),
(380, '', '304.6', 'F18.20', 'Inhalant use disorder, Severe'),
(381, '', '292.89', '', 'Inhalant-induced anxiety disorder'),
(382, '', '', 'F18.180', 'Inhalant-induced anxiety disorder, With mild use disorder'),
(383, '', '', 'F18.280', 'Inhalant-induced anxiety disorder, With moderate or severe use disorder'),
(384, '', '', 'F18.980', 'Inhalant-induced anxiety disorder, Without use disorder'),
(385, '', '292.84', '', 'Inhalant-induced depressive disorder'),
(386, '', '', 'F18.14', 'Inhalant-induced depressive disorder, With mild use disorder'),
(387, '', '', 'F18.24', 'Inhalant-induced depressive disorder, With moderate or severe use disorder'),
(388, '', '', 'F18.94', 'Inhalant-induced depressive disorder, Without use disorder'),
(389, '', '292.82', '', 'Inhalant-induced major neurocognitive disorder'),
(390, '', '', 'F18.17', 'Inhalant-induced major neurocognitive disorder, With mild use disorder'),
(391, '', '', 'F18.27', 'Inhalant-induced major neurocognitive disorder, With moderate or severe use disorder'),
(392, '', '', 'F18.97', 'Inhalant-induced major neurocognitive disorder, Without use disorder'),
(393, '', '292.89', '', 'Inhalant-induced mild neurocognitive disorder'),
(394, '', '', 'F18.188', 'Inhalant-induced mild neurocognitive disorder, With mild use disorder'),
(395, '', '', 'F18.288', 'Inhalant-induced mild neurocognitive disorder, With moderate or severe use disorder'),
(396, '', '', 'F18.988', 'Inhalant-induced mild neurocognitive disorder, Without use disorder'),
(397, '', '292.9', '', 'Inhalant-induced psychotic disorder'),
(398, '', '', 'F18.159', 'Inhalant-induced psychotic disorder, With mild use disorder'),
(399, '', '', 'F18.259', 'Inhalant-induced psychotic disorder, With moderate or severe use disorder'),
(400, '', '', 'F18.959', 'Inhalant-induced psychotic disorder, Without use disorder'),
(401, '', '780.52', 'G47.00', 'Insomnia disorder'),
(402, '', 'V60.2', 'Z59.7', 'Insufficient social insurance or welfare support'),
(403, '', '319', '', 'Intellectual disability (intellectual developmental disorder)'),
(404, '', '317', 'F70', 'Intellectual disability (intellectual developmental disorder), Mild'),
(405, '', '318', 'F71', 'Intellectual disability (intellectual developmental disorder), Moderate'),
(406, '', '318.2', 'F73', 'Intellectual disability (intellectual developmental disorder), Profound'),
(407, '', '318.1', 'F72', 'Intellectual disability (intellectual developmental disorder), Severe'),
(408, '', '312.34', 'F63.81', 'Intermittent explosive disorder'),
(409, '', '312.32', 'F63.2', 'Kleptomania'),
(410, '', 'V60.2', 'Z59.4', 'Lack of adequate food or safe drinking water'),
(411, '', '315.39', 'F80.9', 'Language disorder'),
(412, '', 'V60.2', 'Z59.6', 'Low income'),
(413, '', '', '', 'Major depressive disorder, Recurrent episode'),
(414, '', '296.36', 'F33.42', 'Major depressive disorder, Recurrent episode, In full remission'),
(415, '', '296.35', 'F33.41', 'Major depressive disorder, Recurrent episode, In partial remission'),
(416, '', '296.31', 'F33.0', 'Major depressive disorder, Recurrent episode, Mild'),
(417, '', '296.32', 'F33.1', 'Major depressive disorder, Recurrent episode, Moderate'),
(418, '', '296.33', 'F33.2', 'Major depressive disorder, Recurrent episode, Severe'),
(419, '', '296.3', 'F33.9', 'Major depressive disorder, Recurrent episode, Unspecified'),
(420, '', '296.34', 'F33.3', 'Major depressive disorder, Recurrent episode, With psychotic features'),
(421, '', '', '', 'Major depressive disorder, Single episode'),
(422, '', '296.26', 'F32.5', 'Major depressive disorder, Single episode, In full remission'),
(423, '', '296.25', 'F32.4', 'Major depressive disorder, Single episode, In partial remission'),
(424, '', '296.21', 'F32.0', 'Major depressive disorder, Single episode, Mild'),
(425, '', '296.22', 'F32.1', 'Major depressive disorder, Single episode, Moderate'),
(426, '', '296.23', 'F32.2', 'Major depressive disorder, Single episode, Severe'),
(427, '', '296.2', 'F32.9', 'Major depressive disorder, Single episode, Unspecified'),
(428, '', '296.24', 'F32.3', 'Major depressive disorder, Single episode, With psychotic features'),
(429, '', '331.9', 'G31.9', 'Major frontotemporal neurocognitive disorder, Possible'),
(430, '', '', '', '[Frontotemporal disease +] Major frontotemporal neurocognitive disorder, Probable'),
(431, '', '[331.19 +] 294.11', '[G31.09 +] F02.81', '[Frontotemporal disease +] Major frontotemporal neurocognitive disorder, Probable, With behavioral disturbance'),
(432, '', '[331.19 +] 294.10', '[G31.09 +] F02.80', '[Frontotemporal disease +] Major frontotemporal neurocognitive disorder, Probable, Without behavioral disturbance'),
(433, '', '[331.19 +] 331.9', '[G31.09 +] G31.9', 'Major neurocognitive disorder due to Alzheimer\'s disease, Possible'),
(434, '', '', '', '[Alzheimer\'s disease +] Major neurocognitive disorder due to Alzheimer\'s disease, Probable'),
(435, '', '[331.0 +] 294.11', '[G30.9 +] F02.81', '[Alzheimer\'s disease +] Major neurocognitive disorder due to Alzheimer\'s disease, Probable, With behavioral disturbance'),
(436, '', '[331.0 +] 294.10', '[G30.9 +] F02.80', '[Alzheimer\'s disease +] Major neurocognitive disorder due to Alzheimer\'s disease, Probable, Without behavioral disturbance'),
(437, '', '', '', 'Major neurocognitive disorder due to another medical condition'),
(438, '', '294.11', 'F02.81', 'Major neurocognitive disorder due to another medical condition, With behavioral disturbance'),
(439, '', '294.1', 'F02.80', 'Major neurocognitive disorder due to another medical condition, Without behavioral disturbance'),
(440, '', '', '', '[HIV infection +] Major neurocognitive disorder due to HIV infection'),
(441, '', '[042 +] 294.11', '[B20 +] F02.81', '[HIV infection +] Major neurocognitive disorder due to HIV infection, With behavioral disturbance'),
(442, '', '[042 +] 294.10', '[B20 +] F02.80', '[HIV infection +] Major neurocognitive disorder due to HIV infection, Without behavioral disturbance'),
(443, '', '', '', '[Huntington\'s disease +] Major neurocognitive disorder due to Huntington\'s disease'),
(444, '', '[333.4 +] 294.11', '[G10 +] F02.81', '[Huntington\'s disease +] Major neurocognitive disorder due to Huntington\'s disease, With behavioral disturbance'),
(445, '', '[333.4 +] 294.10', '[G10 +] F02.80', '[Huntington\'s disease +] Major neurocognitive disorder due to Huntington\'s disease, Without behavioral disturbance'),
(446, '', '', '', 'Major neurocognitive disorder due to multiple etiologies'),
(447, '', '294.11', 'F02.81', 'Major neurocognitive disorder due to multiple etiologies, With behavioral disturbance'),
(448, '', '294.1', 'F02.80', 'Major neurocognitive disorder due to multiple etiologies, Without behavioral disturbance'),
(449, '', '331.9', 'G31.9', 'Major neurocognitive disorder due to Parkinson\'s disease, Possible'),
(450, '', '', '', '[Parkinson\'s disease +] Major neurocognitive disorder due to Parkinson\'s disease, Probable'),
(451, '', '[332.0 +] 294.11', '[G20 +] F02.81', '[Parkinson\'s disease +] Major neurocognitive disorder due to Parkinson\'s disease, Probable, With behavioral disturbance'),
(452, '', '[332.0 +] 294.10', '[G20 +] F02.80', '[Parkinson\'s disease +] Major neurocognitive disorder due to Parkinson\'s disease, Probable, Without behavioral disturbance'),
(453, '', '', '', '[Prion disease +] Major neurocognitive disorder due to prion disease'),
(454, '', '[046.79 +] 294.11', '[A81.9 +] F02.81', '[Prion disease +] Major neurocognitive disorder due to prion disease, With behavioral disturbance'),
(455, '', '[046.79 +] 294.10', '[A81.9 +] F02.80', '[Prion disease +] Major neurocognitive disorder due to prion disease, Without behavioral disturbance'),
(456, '', '', '', '[Late effect of intracranial injury without skull fracture (ICD-9-CM) / Diffuse traumatic brain injury with loss of consciousness of unspecified duration, sequela (ICD-10-CM) +] Major neurocognitive disorder due to traumatic brain injury'),
(457, '', '[907.0 +] 294.11', '[S06.2X9S +] F02.81', '[Late effect of intracranial injury without skull fracture (ICD-9-CM) / Diffuse traumatic brain injury with loss of consciousness of unspecified duration, sequela (ICD-10-CM) +] Major neurocognitive disorder due to traumatic brain injury, With behavioral disturbance'),
(458, '', '[907.0 +] 294.10', '[S06.2X9S +] F02.80', '[Late effect of intracranial injury without skull fracture (ICD-9-CM) / Diffuse traumatic brain injury with loss of consciousness of unspecified duration, sequela (ICD-10-CM) +] Major neurocognitive disorder due to traumatic brain injury, Without behavioral disturbance'),
(459, '', '331.9', 'G31.9', 'Major neurocognitive disorder with Lewy bodies, Possible'),
(460, '', '', '', '[Lewy body disease +] Major neurocognitive disorder with Lewy bodies, Probable'),
(461, '', '[331.82 +] 294.11', '[G31.83 +] F02.81', '[Lewy body disease +] Major neurocognitive disorder with Lewy bodies, Probable, With behavioral disturbance'),
(462, '', '[331.82 +] 294.10', '[G31.83 +] F02.80', '[Lewy body disease +] Major neurocognitive disorder with Lewy bodies, Probable, Without behavioral disturbance'),
(463, '', '331.9', 'G31.9', 'Major vascular neurocognitive disorder, Possible'),
(464, '', '', '', 'Major vascular neurocognitive disorder, Probable'),
(465, '', '290.4', 'F01.51', 'Major vascular neurocognitive disorder, Probable, With behavioral disturbance'),
(466, '', '290.4', 'F01.50', 'Major vascular neurocognitive disorder, Probable, Without behavioral disturbance'),
(467, '', '302.71', 'F52.0', 'Male hypoactive sexual desire disorder'),
(468, '', 'V65.2', 'Z76.5', 'Malingering'),
(469, '', '333.99', 'G25.71', 'Medication-induced acute akathisia'),
(470, '', '333.72', 'G24.02', 'Medication-induced acute dystonia'),
(471, '', '292.81', 'see specific substances', 'Medication-induced delirium'),
(472, '', '292.81', 'see specific substances', 'Medication-induced delirium'),
(473, '', '333.1', 'G25.1', 'Medication-induced postural tremor'),
(474, '', '331.83', 'G31.84', 'Mild frontotemporal neurocognitive disorder'),
(475, '', '331.83', 'G31.84', 'Mild neurocognitive disorder due to Alzheimer\'s disease'),
(476, '', '331.83', 'G31.84', 'Mild neurocognitive disorder due to another medical condition'),
(477, '', '331.83', 'G31.84', 'Mild neurocognitive disorder due to HIV infection'),
(478, '', '331.83', 'G31.84', 'Mild neurocognitive disorder due to Huntington\'s disease'),
(479, '', '331.83', 'G31.84', 'Mild neurocognitive disorder due to multiple etiologies'),
(480, '', '331.83', 'G31.84', 'Mild neurocognitive disorder due to Parkinson\'s disease'),
(481, '', '331.83', 'G31.84', 'Mild neurocognitive disorder due to prion disease'),
(482, '', '331.83', 'G31.84', 'Mild neurocognitive disorder due to traumatic brain injury'),
(483, '', '331.83', 'G31.84', 'Mild neurocognitive disorder with Lewy bodies'),
(484, '', '331.83', 'G31.84', 'Mild vascular neurocognitive disorder'),
(485, '', '301.81', 'F60.81', 'Narcissistic personality disorder'),
(486, '', '', '', 'Narcolepsy'),
(487, '', '347.1', 'G47.429', 'Narcolepsy secondary to another medical condition'),
(488, '', '347.01', 'G47.411', 'Narcolepsy with cataplexy but without hypocretin deficiency'),
(489, '', '347', 'G47.419', 'Narcolepsy without cataplexy but with hypocretin deficiency'),
(490, '', '333.92', 'G21.0', 'Neuroleptic malignant syndrome'),
(491, '', '332.1', 'G21.11', 'Neuroleptic-induced parkinsonism'),
(492, '', '307.47', 'F51.5', 'Nightmare disorder'),
(493, '', 'V71.09', 'Z03.89', 'No Diagnosis or Condition on Axis I / No Diagnosis on Axis II [DSM-IV]'),
(494, '', 'V15.81', 'Z91.19', 'Nonadherence to medical treatment'),
(495, '', '', '', 'Non-rapid eye movement sleep arousal disorders'),
(496, '', '307.46', 'F51.4', 'Non-rapid eye movement sleep arousal disorders, Sleep terror type'),
(497, '', '307.46', 'F51.3', 'Non-rapid eye movement sleep arousal disorders, Sleepwalking type'),
(498, '', '294.8', 'F06.8', 'Obsessive-compulsive and related disorder due to another medical condition'),
(499, '1', '300.3', 'F42', 'Obsessive-compulsive disorder'),
(500, '', '301.4', 'F60.5', 'Obsessive-compulsive personality disorder'),
(501, '', '327.23', 'G47.33', 'Obstructive sleep apnea hypopnea'),
(502, '', '292.89', '', 'Opioid intoxication'),
(503, '', '292.81', '', 'Opioid intoxication delirium'),
(504, '', '', 'F11.121', 'Opioid intoxication delirium, With mild use disorder'),
(505, '', '', 'F11.221', 'Opioid intoxication delirium, With moderate or severe use disorder'),
(506, '', '', 'F11.921', 'Opioid intoxication delirium, Without use disorder'),
(507, '', '', '', 'Opioid intoxication, With perceptual disturbances'),
(508, '', '', 'F11.122', 'Opioid intoxication, With perceptual disturbances, With mild use disorder'),
(509, '', '', 'F11.222', 'Opioid intoxication, With perceptual disturbances, With moderate or severe use disorder'),
(510, '', '', 'F11.922', 'Opioid intoxication, With perceptual disturbances, Without use disorder'),
(511, '', '', '', 'Opioid intoxication, Without perceptual disturbances'),
(512, '', '', 'F11.129', 'Opioid intoxication, Without perceptual disturbances, With mild use disorder'),
(513, '', '', 'F11.229', 'Opioid intoxication, Without perceptual disturbances, With moderate or severe use disorder'),
(514, '', '', 'F11.929', 'Opioid intoxication, Without perceptual disturbances, Without use disorder'),
(515, '', '', '', 'Opioid use disorder'),
(516, '', '305.5', 'F11.10', 'Opioid use disorder, Mild'),
(517, '', '304', 'F11.20', 'Opioid use disorder, Moderate'),
(518, '', '304', 'F11.20', 'Opioid use disorder, Severe'),
(519, '', '292', 'F11.23', 'Opioid withdrawal'),
(520, '', '292', 'F11.23', 'Opioid withdrawal delirium'),
(521, '', '292.89', '', 'Opioid-induced anxiety disorder'),
(522, '', '', 'F11.188', 'Opioid-induced anxiety disorder, With mild use disorder'),
(523, '', '', 'F11.288', 'Opioid-induced anxiety disorder, With moderate or severe use disorder'),
(524, '', '', 'F11.988', 'Opioid-induced anxiety disorder, Without use disorder'),
(525, '', '', 'F11.921', 'Opioid-induced delirium'),
(526, '', '292.84', '', 'Opioid-induced depressive disorder'),
(527, '', '', 'F11.14', 'Opioid-induced depressive disorder, With mild use disorder'),
(528, '', '', 'F11.24', 'Opioid-induced depressive disorder, With moderate or severe use disorder'),
(529, '', '', 'F11.94', 'Opioid-induced depressive disorder, Without use disorder'),
(530, '', '292.89', '', 'Opioid-induced sexual dysfunction'),
(531, '', '', 'F11.181', 'Opioid-induced sexual dysfunction, With mild use disorder'),
(532, '', '', 'F11.281', 'Opioid-induced sexual dysfunction, With moderate or severe use disorder'),
(533, '', '', 'F11.981', 'Opioid-induced sexual dysfunction, Without use disorder'),
(534, '', '292.85', '', 'Opioid-induced sleep disorder'),
(535, '', '', 'F11.182', 'Opioid-induced sleep disorder, With mild use disorder'),
(536, '', '', 'F11.282', 'Opioid-induced sleep disorder, With moderate or severe use disorder'),
(537, '', '', 'F11.982', 'Opioid-induced sleep disorder, Without use disorder'),
(538, '', '313.81', 'F91.3', 'Oppositional defiant disorder'),
(539, '', '292.89', '', 'Other (or unknown) substance intoxication'),
(540, '', '292.81', '', 'Other (or unknown) substance intoxication delirium'),
(541, '', '', 'F19.121', 'Other (or unknown) substance intoxication delirium, With mild use disorder'),
(542, '', '', 'F19.221', 'Other (or unknown) substance intoxication delirium, With moderate or severe use disorder'),
(543, '', '', 'F19.921', 'Other (or unknown) substance intoxication delirium, Without use disorder'),
(544, '', '', 'F19.129', 'Other (or unknown) substance intoxication, With mild use disorder'),
(545, '', '', 'F19.229', 'Other (or unknown) substance intoxication, With moderate or severe use disorder'),
(546, '', '', 'F19.929', 'Other (or unknown) substance intoxication, Without use disorder'),
(547, '', '', '', 'Other (or unknown) substance use disorder'),
(548, '', '305.9', 'F19.10', 'Other (or unknown) substance use disorder, Mild'),
(549, '', '304.9', 'F19.20', 'Other (or unknown) substance use disorder, Moderate'),
(550, '', '304.9', 'F19.20', 'Other (or unknown) substance use disorder, Severe'),
(551, '', '292', 'F19.239', 'Other (or unknown) substance withdrawal'),
(552, '', '292', 'F19.231', 'Other (or unknown) substance withdrawal delirium'),
(553, '', '292.89', '', 'Other (or unknown) substance-induced anxiety disorder'),
(554, '', '', 'F19.180', 'Other (or unknown) substance-induced anxiety disorder, With mild use disorder'),
(555, '', '', 'F19.280', 'Other (or unknown) substance-induced anxiety disorder, With moderate or severe use disorder'),
(556, '', '', 'F19.980', 'Other (or unknown) substance-induced anxiety disorder, Without use disorder'),
(557, '1', '292.84', '', 'Other (or unknown) substance-induced bipolar and related disorder'),
(558, '', '', 'F19.14', 'Other (or unknown) substance-induced bipolar and related disorder, With mild use disorder'),
(559, '', '', 'F19.24', 'Other (or unknown) substance-induced bipolar and related disorder, With moderate or severe use disorder'),
(560, '', '', 'F19.94', 'Other (or unknown) substance-induced bipolar and related disorder, Without use disorder'),
(561, '', '', 'F19.921', 'Other (or unknown) substance-induced delirium'),
(562, '1', '292.84', '', 'Other (or unknown) substance-induced depressive disorder'),
(563, '', '', 'F19.14', 'Other (or unknown) substance-induced depressive disorder, With mild use disorder'),
(564, '', '', 'F19.24', 'Other (or unknown) substance-induced depressive disorder, With moderate or severe use disorder'),
(565, '', '', 'F19.94', 'Other (or unknown) substance-induced depressive disorder, Without use disorder'),
(566, '', '292.82', '', 'Other (or unknown) substance-induced major neurocognitive disorder'),
(567, '', '', 'F19.17', 'Other (or unknown) substance-induced major neurocognitive disorder, With mild use disorder'),
(568, '', '', 'F19.27', 'Other (or unknown) substance-induced major neurocognitive disorder, With moderate or severe use disorder'),
(569, '', '', 'F19.97', 'Other (or unknown) substance-induced major neurocognitive disorder, Without use disorder'),
(570, '', '292.89', '', 'Other (or unknown) substance-induced mild neurocognitive disorder'),
(571, '', '', 'F19.188', 'Other (or unknown) substance-induced mild neurocognitive disorder, With mild use disorder'),
(572, '', '', 'F19.288', 'Other (or unknown) substance-induced mild neurocognitive disorder, With moderate or severe use disorder'),
(573, '', '', 'F19.988', 'Other (or unknown) substance-induced mild neurocognitive disorder, Without use disorder');
INSERT INTO `Diagnosis` (`dCode`, `dFrequent`, `ICD9CM`, `ICD10CM`, `DSM5`) VALUES
(574, '', '292.89', '', 'Other (or unknown) substance-induced obsessive-compulsive and related disorder'),
(575, '', '', 'F19.188', 'Other (or unknown) substance-induced obsessive-compulsive and related disorder, With mild use disorder'),
(576, '', '', 'F19.288', 'Other (or unknown) substance-induced obsessive-compulsive and related disorder, With moderate or severe use disorder'),
(577, '', '', 'F19.988', 'Other (or unknown) substance-induced obsessive-compulsive and related disorder, Without use disorder'),
(578, '', '292.9', '', 'Other (or unknown) substance-induced psychotic disorder'),
(579, '', '', 'F19.159', 'Other (or unknown) substance-induced psychotic disorder, With mild use disorder'),
(580, '', '', 'F19.259', 'Other (or unknown) substance-induced psychotic disorder, With moderate or severe use disorder'),
(581, '', '', 'F19.959', 'Other (or unknown) substance-induced psychotic disorder, Without use disorder'),
(582, '', '292.89', '', 'Other (or unknown) substance-induced sexual dysfunction'),
(583, '', '', 'F19.181', 'Other (or unknown) substance-induced sexual dysfunction, With mild use disorder'),
(584, '', '', 'F19.281', 'Other (or unknown) substance-induced sexual dysfunction, With moderate or severe use disorder'),
(585, '', '', 'F19.981', 'Other (or unknown) substance-induced sexual dysfunction, Without use disorder'),
(586, '', '292.85', '', 'Other (or unknown) substance-induced sleep disorder'),
(587, '', '', 'F19.182', 'Other (or unknown) substance-induced sleep disorder, With mild use disorder'),
(588, '', '', 'F19.282', 'Other (or unknown) substance-induced sleep disorder, With moderate or severe use disorder'),
(589, '', '', 'F19.982', 'Other (or unknown) substance-induced sleep disorder, Without use disorder'),
(590, '', '', '', 'Other adverse effect of medication'),
(591, '', '995.2', 'T50.905A', 'Other adverse effect of medication, Initial encounter'),
(592, '', '995.2', 'T50.905S', 'Other adverse effect of medication, Sequelae'),
(593, '', '995.2', 'T50.905D', 'Other adverse effect of medication, Subsequent encounter'),
(594, '', '', '', 'Other circumstances related to adult abuse by nonspouse or nonpartner'),
(595, '', 'V62.83', 'Z69.82', 'Other circumstances related to adult abuse by nonspouse or nonpartner, Encounter for mental health services for perpetrator of nonspousal adult abuse'),
(596, '', 'V65.49', 'Z69.81', 'Other circumstances related to adult abuse by nonspouse or nonpartner, Encounter for mental health services for victim of nonspousal adult abuse'),
(597, '', '', '', 'Other circumstances related to child neglect'),
(598, '', 'V62.83', 'Z69.021', 'Other circumstances related to child neglect, Encounter for mental health services for perpetrator of nonparental child neglect'),
(599, '', 'V61.22', 'Z69.011', 'Other circumstances related to child neglect, Encounter for mental health services for perpetrator of parental child neglect'),
(600, '', 'V61.21', 'Z69.010', 'Other circumstances related to child neglect, Encounter for mental health services for victim of child neglect by parent'),
(601, '', 'V61.21', 'Z69.020', 'Other circumstances related to child neglect, Encounter for mental health services for victim of nonparental child neglect'),
(602, '', '', '', 'Other circumstances related to child physical abuse'),
(603, '', 'V62.83', 'Z69.021', 'Other circumstances related to child physical abuse, Encounter for mental health services for perpetrator of nonparental child abuse'),
(604, '', 'V61.22', 'Z69.011', 'Other circumstances related to child physical abuse, Encounter for mental health services for perpetrator of parental child abuse'),
(605, '', 'V61.21', 'Z69.010', 'Other circumstances related to child physical abuse, Encounter for mental health services for victim of child abuse by parent'),
(606, '', 'V61.21', 'Z69.020', 'Other circumstances related to child physical abuse, Encounter for mental health services for victim of nonparental child abuse'),
(607, '', '', '', 'Other circumstances related to child psychological abuse'),
(608, '', 'V62.83', 'Z69.021', 'Other circumstances related to child psychological abuse, Encounter for mental health services for perpetrator of nonparental child psychological abuse'),
(609, '', 'V61.22', 'Z69.011', 'Other circumstances related to child psychological abuse, Encounter for mental health services for perpetrator of parental child psychological abuse'),
(610, '', 'V61.21', 'Z69.010', 'Other circumstances related to child psychological abuse, Encounter for mental health services for victim of child psychological abuse by parent'),
(611, '', 'V61.21', 'Z69.020', 'Other circumstances related to child psychological abuse, Encounter for mental health services for victim of nonparental child psychological abuse'),
(612, '', '', '', 'Other circumstances related to child sexual abuse'),
(613, '', 'V62.83', 'Z69.021', 'Other circumstances related to child sexual abuse, Encounter for mental health services for perpetrator of nonparental child sexual abuse'),
(614, '', 'V61.22', 'Z69.011', 'Other circumstances related to child sexual abuse, Encounter for mental health services for perpetrator of parental child sexual abuse'),
(615, '', 'V61.21', 'Z69.010', 'Other circumstances related to child sexual abuse, Encounter for mental health services for victim of child sexual abuse by parent'),
(616, '', 'V61.21', 'Z69.020', 'Other circumstances related to child sexual abuse, Encounter for mental health services for victim of nonparental child sexual abuse'),
(617, '', '', '', 'Other circumstances related to spouse or partner abuse, Psychological'),
(618, '', 'V61.12', 'Z69.12', 'Other circumstances related to spouse or partner abuse, Psychological, Encounter for mental health services for perpetrator of spouse or partner psychological abuse'),
(619, '', 'V61.11', 'Z69.11', 'Other circumstances related to spouse or partner abuse, Psychological, Encounter for mental health services for victim of spouse or partner psychological abuse'),
(620, '', '', '', 'Other circumstances related to spouse or partner neglect'),
(621, '', 'V61.12', 'Z69.12', 'Other circumstances related to spouse or partner neglect, Encounter for mental health services for perpetrator of spouse or partner neglect'),
(622, '', 'V61.11', 'Z69.11', 'Other circumstances related to spouse or partner neglect, Encounter for mental health services for victim of spouse or partner neglect'),
(623, '', '', '', 'Other circumstances related to spouse or partner violence, Physical'),
(624, '', 'V61.12', 'Z69.12', 'Other circumstances related to spouse or partner violence, Physical, Encounter for mental health services for perpetrator of spouse or partner violence'),
(625, '', 'V61.11', 'Z69.11', 'Other circumstances related to spouse or partner violence, Physical, Encounter for mental health services for victim of spouse or partner violence'),
(626, '', '', '', 'Other circumstances related to spouse or partner violence, Sexual'),
(627, '', 'V61.12', 'Z69.12', 'Other circumstances related to spouse or partner violence, Sexual, Encounter for mental health services for perpetrator of spouse or partner violence'),
(628, '', 'V61.11', 'Z69.81', 'Other circumstances related to spouse or partner violence, Sexual, Encounter for mental health services for victim of spouse or partner violence'),
(629, '', 'V65.40', 'Z71.9', 'Other counseling or consultation'),
(630, '', '292.89', '', 'Other hallucinogen intoxication'),
(631, '', '292.81', '', 'Other hallucinogen intoxication delirium'),
(632, '', '', 'F16.121', 'Other hallucinogen intoxication delirium, With mild use disorder'),
(633, '', '', 'F16.221', 'Other hallucinogen intoxication delirium, With moderate or severe use disorder'),
(634, '', '', 'F16.921', 'Other hallucinogen intoxication delirium, Without use disorder'),
(635, '', '', 'F16.129', 'Other hallucinogen intoxication, With mild use disorder'),
(636, '', '', 'F16.229', 'Other hallucinogen intoxication, With moderate or severe use disorder'),
(637, '', '', 'F16.929', 'Other hallucinogen intoxication, Without use disorder'),
(638, '', '', '', 'Other hallucinogen use disorder'),
(639, '', '305.3', 'F16.10', 'Other hallucinogen use disorder, Mild'),
(640, '', '304.5', 'F16.20', 'Other hallucinogen use disorder, Moderate'),
(641, '', '304.5', 'F16.20', 'Other hallucinogen use disorder, Severe'),
(642, '', '292.89', '', 'Other hallucinogen-induced anxiety disorder'),
(643, '', '', 'F16.180', 'Other hallucinogen-induced anxiety disorder, With mild use disorder'),
(644, '', '', 'F16.280', 'Other hallucinogen-induced anxiety disorder, With moderate or severe use disorder'),
(645, '', '', 'F16.980', 'Other hallucinogen-induced anxiety disorder, Without use disorder'),
(646, '', '292.84', '', 'Other hallucinogen-induced bipolar and related disorder'),
(647, '', '', 'F16.14', 'Other hallucinogen-induced bipolar and related disorder, With mild use disorder'),
(648, '', '', 'F16.24', 'Other hallucinogen-induced bipolar and related disorder, With moderate or severe use disorder'),
(649, '', '', 'F16.94', 'Other hallucinogen-induced bipolar and related disorder, Without use disorder'),
(650, '', '292.84', '', 'Other hallucinogen-induced depressive disorder'),
(651, '', '', 'F16.14', 'Other hallucinogen-induced depressive disorder, With mild use disorder'),
(652, '', '', 'F16.24', 'Other hallucinogen-induced depressive disorder, With moderate or severe use disorder'),
(653, '', '', 'F16.94', 'Other hallucinogen-induced depressive disorder, Without use disorder'),
(654, '', '292.9', '', 'Other hallucinogen-induced psychotic disorder'),
(655, '', '', 'F16.159', 'Other hallucinogen-induced psychotic disorder, With mild use disorder'),
(656, '', '', 'F16.259', 'Other hallucinogen-induced psychotic disorder, With moderate or severe use disorder'),
(657, '', '', 'F16.959', 'Other hallucinogen-induced psychotic disorder, Without use disorder'),
(658, '', '333.99', 'G25.79', 'Other medication-induced movement disorder'),
(659, '', '332.1', 'G21.19', 'Other medication-induced parkinsonism'),
(660, '', '', '', 'Other or unspecified stimulant use disorder'),
(661, '', '305.7', 'F15.10', 'Other or unspecified stimulant use disorder, Mild'),
(662, '', '304.4', 'F15.20', 'Other or unspecified stimulant use disorder, Moderate'),
(663, '', '304.4', 'F15.20', 'Other or unspecified stimulant use disorder, Severe'),
(664, '', 'V15.49', 'Z91.49', 'Other personal history of psychological trauma'),
(665, '', 'V15.89', 'Z91.89', 'Other personal risk factors'),
(666, '', 'V62.29', 'Z56.9', 'Other problem related to employment'),
(667, '', 'V62.89', 'Z65.8', 'Other problem related to psychosocial circumstances'),
(668, '', '300.09', 'F41.8', 'Other specified anxiety disorder'),
(669, '', '314.01', 'F90.8', 'Other specified attention-deficit/hyperactivity disorder'),
(670, '', '296.89', 'F31.89', 'Other specified bipolar and related disorder'),
(671, '', '780.09', 'R41.0', 'Other specified delirium'),
(672, '', '311', 'F32.8', 'Other specified depressive disorder'),
(673, '', '312.89', 'F91.8', 'Other specified disruptive, impulse-control, and conduct disorder'),
(674, '', '300.15', 'F44.89', 'Other specified dissociative disorder'),
(675, '', '', '', 'Other specified elimination disorder'),
(676, '', '787.6', 'R15.9', 'Other specified elimination disorder, With fecal symptoms'),
(677, '', '788.39', 'N39.498', 'Other specified elimination disorder, With urinary symptoms'),
(678, '', '307.59', 'F50.8', 'Other specified feeding or eating disorder'),
(679, '', '302.6', 'F64.8', 'Other specified gender dysphoria'),
(680, '', '780.54', 'G47.19', 'Other specified hypersomnolence disorder'),
(681, '', '780.52', 'G47.09', 'Other specified insomnia disorder'),
(682, '', '300.9', 'F99', 'Other specified mental disorder'),
(683, '', '294.8', 'F06.8', 'Other specified mental disorder due to another medical condition'),
(684, '', '315.8', 'F88', 'Other specified neurodevelopmental disorder'),
(685, '', '300.3', 'F42', 'Other specified obsessive-compulsive and related disorder'),
(686, '', '302.89', 'F65.89', 'Other specified paraphilic disorder'),
(687, '', '301.89', 'F60.89', 'Other specified personality disorder'),
(688, '', '298.8', 'F28', 'Other specified schizophrenia spectrum and other psychotic disorder'),
(689, '', '302.79', 'F52.8', 'Other specified sexual dysfunction'),
(690, '', '780.59', 'G47.8', 'Other specified sleep-wake disorder'),
(691, '', '300.89', 'F45.8', 'Other specified somatic symptom and related disorder'),
(692, '', '307.2', 'F95.8', 'Other specified tic disorder'),
(693, '', '309.89', 'F43.8', 'Other specified trauma- and stressor-related disorder'),
(694, '', '278', 'E66.9', 'Overweight or obesity'),
(695, '', '', '', 'Panic attack specifier'),
(696, '1', '300.01', 'F41.0', 'Panic disorder'),
(697, '', '301', 'F60.0', 'Paranoid personality disorder'),
(698, '', 'V61.20', 'Z62.820', 'Parent-child relational problem'),
(699, '', '302.2', 'F65.4', 'Pedophilic disorder'),
(700, '', '307.22', 'F95.1', 'Persistent (chronic) motor or vocal tic disorder'),
(701, '', '300.4', 'F34.1', 'Persistent depressive disorder (dysthymia)'),
(702, '', 'V15.42', 'Z62.812', 'Personal history (past history) of neglect in childhood'),
(703, '', 'V15.41', 'Z62.810', 'Personal history (past history) of physical abuse in childhood'),
(704, '', 'V15.42', 'Z62.811', 'Personal history (past history) of psychological abuse in childhood'),
(705, '', 'V15.41', 'Z62.810', 'Personal history (past history) of sexual abuse in childhood'),
(706, '', 'V15.42', 'Z91.412', 'Personal history (past history) of spouse or partner neglect'),
(707, '', 'V15.42', 'Z91.411', 'Personal history (past history) of spouse or partner psychological abuse'),
(708, '', 'V15.41', 'Z91.410', 'Personal history (past history) of spouse or partner violence, Physical'),
(709, '', 'V15.41', 'Z91.410', 'Personal history (past history) of spouse or partner violence, Sexual'),
(710, '', 'V62.22', 'Z91.82', 'Personal history of military deployment'),
(711, '', 'V15.59', 'Z91.5', 'Personal history of self-harm'),
(712, '', '310.1', 'F07.0', 'Personality change due to another medical condition'),
(713, '', 'V62.89', 'Z60.0', 'Phase of life problem'),
(714, '', '292.89', '', 'Phencyclidine intoxication'),
(715, '', '292.81', '', 'Phencyclidine intoxication delirium'),
(716, '', '', 'F16.121', 'Phencyclidine intoxication delirium, With mild use disorder'),
(717, '', '', 'F16.221', 'Phencyclidine intoxication delirium, With moderate or severe use disorder'),
(718, '', '', 'F16.921', 'Phencyclidine intoxication delirium, Without use disorder'),
(719, '', '', 'F16.129', 'Phencyclidine intoxication, With mild use disorder'),
(720, '', '', 'F16.229', 'Phencyclidine intoxication, With moderate or severe use disorder'),
(721, '', '', 'F16.929', 'Phencyclidine intoxication, Without use disorder'),
(722, '', '', '', 'Phencyclidine use disorder'),
(723, '', '305.9', 'F16.10', 'Phencyclidine use disorder, Mild'),
(724, '', '304.6', 'F16.20', 'Phencyclidine use disorder, Moderate'),
(725, '', '304.6', 'F16.20', 'Phencyclidine use disorder, Severe'),
(726, '', '292.89', '', 'Phencyclidine-induced anxiety disorder'),
(727, '', '', 'F16.180', 'Phencyclidine-induced anxiety disorder, With mild use disorder'),
(728, '', '', 'F16.280', 'Phencyclidine-induced anxiety disorder, With moderate or severe use disorder'),
(729, '', '', 'F16.980', 'Phencyclidine-induced anxiety disorder, Without use disorder'),
(730, '', '292.84', '', 'Phencyclidine-induced bipolar and related disorder'),
(731, '', '', 'F16.14', 'Phencyclidine-induced bipolar and related disorder, With mild use disorder'),
(732, '', '', 'F16.24', 'Phencyclidine-induced bipolar and related disorder, With moderate or severe use disorder'),
(733, '', '', 'F16.94', 'Phencyclidine-induced bipolar and related disorder, Without use disorder'),
(734, '', '292.84', '', 'Phencyclidine-induced depressive disorder'),
(735, '', '', 'F16.14', 'Phencyclidine-induced depressive disorder, With mild use disorder'),
(736, '', '', 'F16.24', 'Phencyclidine-induced depressive disorder, With moderate or severe use disorder'),
(737, '', '', 'F16.94', 'Phencyclidine-induced depressive disorder, Without use disorder'),
(738, '', '292.9', '', 'Phencyclidine-induced psychotic disorder'),
(739, '', '', 'F16.159', 'Phencyclidine-induced psychotic disorder, With mild use disorder'),
(740, '', '', 'F16.259', 'Phencyclidine-induced psychotic disorder, With moderate or severe use disorder'),
(741, '', '', 'F16.959', 'Phencyclidine-induced psychotic disorder, Without use disorder'),
(742, '', '307.52', '', 'Pica'),
(743, '', '', 'F50.8', 'Pica, In adults'),
(744, '', '', 'F98.3', 'Pica, In children'),
(745, '', '309.81', 'F43.10', 'Posttraumatic stress disorder'),
(746, '', '302.75', 'F52.4', 'Premature (early) ejaculation'),
(747, '', '625.4', 'N94.3', 'Premenstrual dysphoric disorder'),
(748, '', 'V62.21', 'Z56.82', 'Problem related to current military deployment status'),
(749, '', 'V69.9', 'Z72.9', 'Problem related to lifestyle'),
(750, '', 'V60.3', 'Z60.2', 'Problem related to living alone'),
(751, '', 'V60.6', 'Z59.3', 'Problem related to living in a residential institution'),
(752, '', 'V61.5', 'Z64.1', 'Problems related to multiparity'),
(753, '', 'V62.5', 'Z65.3', 'Problems related to other legal circumstances'),
(754, '', 'V62.5', 'Z65.2', 'Problems related to release from prison'),
(755, '', 'V61.7', 'Z64.0', 'Problems related to unwanted pregnancy'),
(756, '', '307.21', 'F95.0', 'Provisional tic disorder'),
(757, '', '316', 'F54', 'Psychological factors affecting other medical conditions'),
(758, '', '', '', 'Psychotic disorder due to another medical condition'),
(759, '', '293.81', 'F06.2', 'Psychotic disorder due to another medical condition, With delusions'),
(760, '', '293.82', 'F06.0', 'Psychotic disorder due to another medical condition, With hallucinations'),
(761, '', '312.33', 'F63.1', 'Pyromania'),
(762, '', '327.42', 'G47.52', 'Rapid eye movement sleep behavior disorder'),
(763, '', '313.89', 'F94.1', 'Reactive attachment disorder'),
(764, '', 'V61.10', 'Z63.0', 'Relationship distress with spouse or intimate partner'),
(765, '', 'V62.89', 'Z65.8', 'Religious or spiritual problem'),
(766, '', '333.94', 'G25.81', 'Restless legs syndrome'),
(767, '', '307.53', 'F98.21', 'Rumination disorder'),
(768, '', '', '', 'Schizoaffective disorder'),
(769, '', '295.7', 'F25.0', 'Schizoaffective disorder, Bipolar type'),
(770, '1', '295.7', 'F25.1', 'Schizoaffective disorder, Depressive type'),
(771, '', '301.2', 'F60.1', 'Schizoid personality disorder'),
(772, '1', '295.9', 'F20.9', 'Schizophrenia'),
(773, '', '295.4', 'F20.81', 'Schizophreniform disorder'),
(774, '', '301.22', 'F21', 'Schizotypal personality disorder'),
(775, '', '292.89', '', 'Sedative, hypnotic, or anxiolytic intoxication'),
(776, '', '292.81', '', 'Sedative, hypnotic, or anxiolytic intoxication delirium'),
(777, '', '', 'F13.121', 'Sedative, hypnotic, or anxiolytic intoxication delirium, With mild use disorder'),
(778, '', '', 'F13.221', 'Sedative, hypnotic, or anxiolytic intoxication delirium, With moderate or severe use disorder'),
(779, '', '', 'F13.921', 'Sedative, hypnotic, or anxiolytic intoxication delirium, Without use disorder'),
(780, '', '', 'F13.129', 'Sedative, hypnotic, or anxiolytic intoxication, With mild use disorder'),
(781, '', '', 'F13.229', 'Sedative, hypnotic, or anxiolytic intoxication, With moderate or severe use disorder'),
(782, '', '', 'F13.929', 'Sedative, hypnotic, or anxiolytic intoxication, Without use disorder'),
(783, '', '', '', 'Sedative, hypnotic, or anxiolytic use disorder'),
(784, '', '305.4', 'F13.10', 'Sedative, hypnotic, or anxiolytic use disorder, Mild'),
(785, '', '304.1', 'F13.20', 'Sedative, hypnotic, or anxiolytic use disorder, Moderate'),
(786, '', '304.1', 'F13.20', 'Sedative, hypnotic, or anxiolytic use disorder, Severe'),
(787, '', '292', '', 'Sedative, hypnotic, or anxiolytic withdrawal'),
(788, '', '292', 'F13.231', 'Sedative, hypnotic, or anxiolytic withdrawal delirium'),
(789, '', '', 'F13.232', 'Sedative, hypnotic, or anxiolytic withdrawal, With perceptual disturbances'),
(790, '', '', 'F13.239', 'Sedative, hypnotic, or anxiolytic withdrawal, Without perceptual disturbances'),
(791, '', '292.89', '', 'Sedative-, hypnotic-, or anxiolytic-induced anxiety disorder'),
(792, '', '', 'F13.180', 'Sedative-, hypnotic-, or anxiolytic-induced anxiety disorder, With mild use disorder'),
(793, '', '', 'F13.280', 'Sedative-, hypnotic-, or anxiolytic-induced anxiety disorder, With moderate or severe use disorder'),
(794, '', '', 'F13.980', 'Sedative-, hypnotic-, or anxiolytic-induced anxiety disorder, Without use disorder'),
(795, '', '292.84', '', 'Sedative-, hypnotic-, or anxiolytic-induced bipolar and related disorder'),
(796, '', '', 'F13.14', 'Sedative-, hypnotic-, or anxiolytic-induced bipolar and related disorder, With mild use disorder'),
(797, '', '', 'F13.24', 'Sedative-, hypnotic-, or anxiolytic-induced bipolar and related disorder, With moderate or severe use disorder'),
(798, '', '', 'F13.94', 'Sedative-, hypnotic-, or anxiolytic-induced bipolar and related disorder, Without use disorder'),
(799, '', '', 'F13.921', 'Sedative-, hypnotic-, or anxiolytic-induced delirium'),
(800, '', '292.84', '', 'Sedative-, hypnotic-, or anxiolytic-induced depressive disorder'),
(801, '', '', 'F13.14', 'Sedative-, hypnotic-, or anxiolytic-induced depressive disorder, With mild use disorder'),
(802, '', '', 'F13.24', 'Sedative-, hypnotic-, or anxiolytic-induced depressive disorder, With moderate or severe use disorder'),
(803, '', '', 'F13.94', 'Sedative-, hypnotic-, or anxiolytic-induced depressive disorder, Without use disorder'),
(804, '', '292.82', '', 'Sedative-, hypnotic-, or anxiolytic-induced major neurocognitive disorder'),
(805, '', '', 'F13.27', 'Sedative-, hypnotic-, or anxiolytic-induced major neurocognitive disorder, With moderate or severe use disorder'),
(806, '', '', 'F13.97', 'Sedative-, hypnotic-, or anxiolytic-induced major neurocognitive disorder, Without use disorder'),
(807, '', '292.89', '', 'Sedative-, hypnotic-, or anxiolytic-induced mild neurocognitive disorder'),
(808, '', '', 'F13.288', 'Sedative-, hypnotic-, or anxiolytic-induced mild neurocognitive disorder, With moderate or severe use disorder'),
(809, '', '', 'F13.988', 'Sedative-, hypnotic-, or anxiolytic-induced mild neurocognitive disorder, Without use disorder'),
(810, '', '292.9', '', 'Sedative-, hypnotic-, or anxiolytic-induced psychotic disorder'),
(811, '', '', 'F13.159', 'Sedative-, hypnotic-, or anxiolytic-induced psychotic disorder, With mild use disorder'),
(812, '', '', 'F13.259', 'Sedative-, hypnotic-, or anxiolytic-induced psychotic disorder, With moderate or severe use disorder'),
(813, '', '', 'F13.959', 'Sedative-, hypnotic-, or anxiolytic-induced psychotic disorder, Without use disorder'),
(814, '', '292.89', '', 'Sedative-, hypnotic-, or anxiolytic-induced sexual dysfunction'),
(815, '', '', 'F13.181', 'Sedative-, hypnotic-, or anxiolytic-induced sexual dysfunction, With mild use disorder'),
(816, '', '', 'F13.281', 'Sedative-, hypnotic-, or anxiolytic-induced sexual dysfunction, With moderate or severe use disorder'),
(817, '', '', 'F13.981', 'Sedative-, hypnotic-, or anxiolytic-induced sexual dysfunction, Without use disorder'),
(818, '', '292.85', '', 'Sedative-, hypnotic-, or anxiolytic-induced sleep disorder'),
(819, '', '', 'F13.182', 'Sedative-, hypnotic-, or anxiolytic-induced sleep disorder, With mild use disorder'),
(820, '', '', 'F13.282', 'Sedative-, hypnotic-, or anxiolytic-induced sleep disorder, With moderate or severe use disorder'),
(821, '', '', 'F13.982', 'Sedative-, hypnotic-, or anxiolytic-induced sleep disorder, Without use disorder'),
(822, '', '313.23', 'F94.0', 'Selective mutism'),
(823, '', '309.21', 'F93.0', 'Separation anxiety disorder'),
(824, '', 'V65.49', 'Z70.9', 'Sex counseling'),
(825, '', '302.83', 'F65.51', 'Sexual masochism disorder'),
(826, '', '302.84', 'F65.52', 'Sexual sadism disorder'),
(827, '', 'V61.8', 'Z62.891', 'Sibling relational problem'),
(828, '', '', '', 'Sleep-related hypoventilation'),
(829, '', '315.39', 'F80.89', 'Social (pragmatic) communication disorder'),
(830, '', '300.23', 'F40.10', 'Social anxiety disorder (social phobia)'),
(831, '', 'V62.4', 'Z60.4', 'Social exclusion or rejection'),
(832, '', '300.82', 'F45.1', 'Somatic symptom disorder'),
(833, '', '', '', 'Specific learning disorder'),
(834, '', '315.1', 'F81.2', 'Specific learning disorder, With impairment in mathematics'),
(835, '', '315', 'F81.0', 'Specific learning disorder, With impairment in reading'),
(836, '', '315.2', 'F81.81', 'Specific learning disorder, With impairment in written expression'),
(837, '', '', '', 'Specific phobia'),
(838, '', '300.29', 'F40.218', 'Specific phobia, Animal'),
(839, '', '300.29', '', 'Specific phobia, Blood-injection-injury'),
(840, '', '', 'F40.230', 'Specific phobia, Fear of blood'),
(841, '', '', 'F40.231', 'Specific phobia, Fear of injections and transfusions'),
(842, '', '', 'F40.233', 'Specific phobia, Fear of injury'),
(843, '', '', 'F40.232', 'Specific phobia, Fear of other medical care'),
(844, '', '300.29', 'F40.228', 'Specific phobia, Natural environment'),
(845, '', '300.29', 'F40.298', 'Specific phobia, Other'),
(846, '', '300.29', 'F40.248', 'Specific phobia, Situational'),
(847, '', '315.39', 'F80.0', 'Speech sound disorder'),
(848, '', '', '', 'Spouse or partner abuse, Psychological, Confirmed'),
(849, '', '995.82', 'T74.31XA', 'Spouse or partner abuse, Psychological, Confirmed, Initial encounter'),
(850, '', '995.82', 'T74.31XD', 'Spouse or partner abuse, Psychological, Confirmed, Subsequent encounter'),
(851, '', '', '', 'Spouse or partner abuse, Psychological, Suspected'),
(852, '', '995.82', 'T76.31XA', 'Spouse or partner abuse, Psychological, Suspected, Initial encounter'),
(853, '', '995.82', 'T76.31XD', 'Spouse or partner abuse, Psychological, Suspected, Subsequent encounter'),
(854, '', '', '', 'Spouse or partner neglect, Confirmed'),
(855, '', '995.85', 'T74.01XA', 'Spouse or partner neglect, Confirmed, Initial encounter'),
(856, '', '995.85', 'T74.01XD', 'Spouse or partner neglect, Confirmed, Subsequent encounter'),
(857, '', '', '', 'Spouse or partner neglect, Suspected'),
(858, '', '995.85', 'T76.01XA', 'Spouse or partner neglect, Suspected, Initial encounter'),
(859, '', '995.85', 'T76.01XD', 'Spouse or partner neglect, Suspected, Subsequent encounter'),
(860, '', '', '', 'Spouse or partner violence, Physical, Confirmed'),
(861, '', '995.81', 'T74.11XA', 'Spouse or partner violence, Physical, Confirmed, Initial encounter'),
(862, '', '995.81', 'T74.11XD', 'Spouse or partner violence, Physical, Confirmed, Subsequent encounter'),
(863, '', '', '', 'Spouse or partner Violence, Physical, Suspected'),
(864, '', '995.81', 'T76.11XA', 'Spouse or partner Violence, Physical, Suspected, Initial encounter'),
(865, '', '995.81', 'T76.11XD', 'Spouse or partner Violence, Physical, Suspected, Subsequent encounter'),
(866, '', '', '', 'Spouse or partner Violence, Sexual, Confirmed'),
(867, '', '995.83', 'T74.21XA', 'Spouse or partner Violence, Sexual, Confirmed, Initial encounter'),
(868, '', '995.83', 'T74.21XD', 'Spouse or partner Violence, Sexual, Confirmed, Subsequent encounter'),
(869, '', '', '', 'Spouse or partner Violence, Sexual, Suspected'),
(870, '', '995.83', 'T76.21XA', 'Spouse or partner Violence, Sexual, Suspected, Initial encounter'),
(871, '', '995.83', 'T76.21XD', 'Spouse or partner Violence, Sexual, Suspected, Subsequent encounter'),
(872, '', '307.3', 'F98.4', 'Stereotypic movement disorder'),
(873, '', 'see specific substances', 'see specific substances', 'Stimulant intoxication'),
(874, '', 'see specific substances', 'see specific substances', 'Stimulant use disorder'),
(875, '', 'see specific substances', 'see specific substances', 'Stimulant withdrawal'),
(876, '', 'see specific substances', 'see specific substances', 'Substance intoxication delirium'),
(877, '', 'see specific substances', 'see specific substances', 'Substance intoxication delirium'),
(878, '', 'see specific substances', 'see specific substances', 'Substance withdrawal delirium'),
(879, '', 'see specific substances', 'see specific substances', 'Substance withdrawal delirium'),
(880, '', 'see specific substances', 'see specific substances', 'Substance/medication-induced anxiety disorder'),
(881, '', 'see specific substances', 'see specific substances', 'Substance/medication-induced bipolar and related disorder'),
(882, '', 'see specific substances', 'see specific substances', 'Substance/medication-induced depressive disorder'),
(883, '', 'see specific substances', 'see specific substances', 'Substance/medication-induced major or mild neurocognitive disorder'),
(884, '', 'see specific substances', 'see specific substances', 'Substance/medication-induced obsessive-compulsive and related disorder'),
(885, '', 'see specific substances', 'see specific substances', 'Substance/medication-induced psychotic disorder'),
(886, '', 'see specific substances', 'see specific substances', 'Substance/medication-induced sexual dysfunction'),
(887, '', 'see specific substances', 'see specific substances', 'Substance/medication-induced sleep disorder'),
(888, '', '333.99', 'G25.71', 'Tardive akathisia'),
(889, '', '333.85', 'G24.01', 'Tardive dyskinesia'),
(890, '', '333.72', 'G24.09', 'Tardive dystonia'),
(891, '', 'V62.4', 'Z60.5', 'Target of (perceived) adverse discrimination or persecution'),
(892, '', '', '', 'Tobacco use disorder'),
(893, '', '305.1', 'Z72.0', 'Tobacco use disorder, Mild'),
(894, '', '305.1', 'F17.200', 'Tobacco use disorder, Moderate'),
(895, '', '305.1', 'F17.200', 'Tobacco use disorder, Severe'),
(896, '', '292', 'F17.203', 'Tobacco withdrawal'),
(897, '', '292.85', '', 'Tobacco-induced sleep disorder'),
(898, '', '', 'F17.208', 'Tobacco-induced sleep disorder, With moderate or severe use disorder'),
(899, '', '307.23', 'F95.2', 'Tourette\'s disorder'),
(900, '', '302.3', 'F65.1', 'Transvestic disorder'),
(901, '', '312.39', 'F63.3', 'Trichotillomania (hair-pulling disorder)'),
(902, '', 'V63.9', 'Z75.3', 'Unavailability or inaccessibility of health care facilities'),
(903, '', 'V63.8', 'Z75.4', 'Unavailability or inaccessibility of other helping agencies'),
(904, '', 'V62.82', 'Z63.4', 'Uncomplicated bereavement'),
(905, '', '291.9', 'F10.99', 'Unspecified alcohol-related disorder'),
(906, '', '', 'F15.99', 'Unspecified amphetamine or other stimulant-related disorder'),
(907, '', '300', 'F41.9', 'Unspecified anxiety disorder'),
(908, '', '314.01', 'F90.9', 'Unspecified attention-deficit/hyperactivity disorder'),
(909, '', '296.8', 'F31.9', 'Unspecified bipolar and related disorder'),
(910, '', '292.9', 'F15.99', 'Unspecified caffeine-related disorder'),
(911, '', '292.9', 'F12.99', 'Unspecified cannabis-related disorder'),
(912, '', '[781.99 +] 293.89', '[R29.818 +] F06.1', '[Other symptoms involving nervous and musculoskeletal systems +] Unspecified catatonia'),
(913, '', '', 'F14.99', 'Unspecified cocaine-related disorder'),
(914, '', '307.9', 'F80.9', 'Unspecified communication disorder'),
(915, '', '780.09', 'R41.0', 'Unspecified delirium'),
(916, '', '311', 'F32.9', 'Unspecified depressive disorder'),
(917, '', '312.9', 'F91.9', 'Unspecified disruptive, impulse-control, and conduct disorder'),
(918, '', '300.15', 'F44.9', 'Unspecified dissociative disorder'),
(919, '', '', '', 'Unspecified elimination disorder'),
(920, '', '787.6', 'R15.9', 'Unspecified elimination disorder, With fecal symptoms'),
(921, '', '788.3', 'R32', 'Unspecified elimination disorder, With urinary symptoms'),
(922, '', '307.5', 'F50.9', 'Unspecified feeding or eating disorder'),
(923, '', '302.6', 'F64.9', 'Unspecified gender dysphoria'),
(924, '', '292.9', 'F16.99', 'Unspecified hallucinogen-related disorder'),
(925, '', 'V60.9', 'Z59.9', 'Unspecified housing or economic problem'),
(926, '', '780.54', 'G47.10', 'Unspecified hypersomnolence disorder'),
(927, '', '292.9', 'F18.99', 'Unspecified inhalant-related disorder'),
(928, '', '780.52', 'G47.00', 'Unspecified insomnia disorder'),
(929, '', '319', 'F79', 'Unspecified intellectual disability (intellectual developmental disorder)'),
(930, '', '300.9', 'F99', 'Unspecified mental disorder'),
(931, '', '294.9', 'F09', 'Unspecified mental disorder due to another medical condition'),
(932, '', '799.59', 'R41.9', 'Unspecified neurocognitive disorder'),
(933, '', '315.9', 'F89', 'Unspecified neurodevelopmental disorder'),
(934, '', '300.3', 'F42', 'Unspecified obsessive-compulsive and related disorder'),
(935, '', '292.9', 'F11.99', 'Unspecified opioid-related disorder'),
(936, '', '292.9', 'F19.99', 'Unspecified other (or unknown) substance-related disorder'),
(937, '', '302.9', 'F65.9', 'Unspecified paraphilic disorder'),
(938, '', '301.9', 'F60.9', 'Unspecified personality disorder'),
(939, '', '292.9', 'F16.99', 'Unspecified phencyclidine-related disorder'),
(940, '', 'V62.9', 'Z60.9', 'Unspecified problem related to social environment'),
(941, '', 'V62.9', 'Z65.9', 'Unspecified problem related to unspecified psychosocial circumstances'),
(942, '', '298.9', 'F29', 'Unspecified schizophrenia spectrum and other psychotic disorder'),
(943, '', '292.9', 'F13.99', 'Unspecified sedative-, hypnotic-, or anxiolytic-related disorder'),
(944, '', '302.7', 'F52.9', 'Unspecified sexual dysfunction'),
(945, '', '780.59', 'G47.9', 'Unspecified sleep-wake disorder'),
(946, '', '300.82', 'F45.9', 'Unspecified somatic symptom and related disorder'),
(947, '', '292.9', '', 'Unspecified stimulant-related disorder'),
(948, '', '307.2', 'F95.9', 'Unspecified tic disorder'),
(949, '', '292.9', 'F17.209', 'Unspecified tobacco-related disorder'),
(950, '', '309.9', 'F43.9', 'Unspecified trauma- and stressor-related disorder'),
(951, '', 'V61.8', 'Z62.29', 'Upbringing away from parents'),
(952, '', 'V62.89', 'Z65.4', 'Victim of crime'),
(953, '', 'V62.89', 'Z65.4', 'Victim of terrorism or torture'),
(954, '', '302.82', 'F65.3', 'Voyeuristic disorder'),
(955, '', 'V40.31', 'Z91.83', 'Wandering associated with a mental disorder');

-- --------------------------------------------------------

--
-- Table structure for table `Diagnosis_details`
--

CREATE TABLE `Diagnosis_details` (
  `visitId` int(11) NOT NULL,
  `dCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Diagnosis_details`
--

INSERT INTO `Diagnosis_details` (`visitId`, `dCode`) VALUES
(1, 424),
(2, 907),
(3, 418),
(4, 11),
(5, 417),
(6, 696),
(7, 418);

-- --------------------------------------------------------

--
-- Table structure for table `Doctor`
--

CREATE TABLE `Doctor` (
  `doctorId` int(11) NOT NULL,
  `doctorName` varchar(50) NOT NULL,
  `doctorAddress` varchar(500) DEFAULT NULL,
  `specialization` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`doctorId`, `doctorName`, `doctorAddress`, `specialization`) VALUES
(1, 'Dr. Alfonso Medina Garza', NULL, 'Doctor General'),
(2, 'Dr. Roberto Lopez Garcia', NULL, 'Dermatologia'),
(3, 'Dra. Laura Medina Garza', NULL, 'Neurologia'),
(4, 'Dra. Sofia Rodriguez Garza', NULL, 'Dermatologia'),
(5, 'Dra. Sandra Marina Ortiz', NULL, 'Neurologia');

-- --------------------------------------------------------

--
-- Table structure for table `Instance`
--

CREATE TABLE `Instance` (
  `instanceId` int(11) NOT NULL,
  `testId` int(11) NOT NULL,
  `visitId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Instance`
--

INSERT INTO `Instance` (`instanceId`, `testId`, `visitId`) VALUES
(1024, 1, 1),
(1025, 2, 1),
(1026, 1, 2),
(1027, 2, 2),
(1028, 1, 3),
(1029, 2, 3),
(1030, 1, 4),
(1031, 2, 4),
(1032, 1, 5),
(1033, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Medicament`
--

CREATE TABLE `Medicament` (
  `medId` int(11) NOT NULL,
  `medName` varchar(50) NOT NULL,
  `ingredientName` varchar(50) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `typeOfDosis` varchar(50) NOT NULL,
  `laboratory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Medicament`
--

INSERT INTO `Medicament` (`medId`, `medName`, `ingredientName`, `quantity`, `typeOfDosis`, `laboratory`) VALUES
(1, 'Farmaxetina', 'Fluoxetina', '20 mg', 'Capsulas', 'ifa CELTICS'),
(2, 'Tressvin', 'Sertalina', '50 mg', 'Tabletas', 'ifa CELTICS'),
(3, 'Tim Asf', 'Quetiapina', '100 mg', 'Tabletas', 'ASOFARMA'),
(4, 'Fluxacord', 'Ciprofloxacino', '500 mg', 'Tabletas', 'accord farma'),
(5, 'Toradol', 'Ketorolaco', '10 mg', 'Tabletas', 'Pharma life'),
(6, 'Buscapina', 'Hioscina', '10 mg', 'Tabletas', 'Pharma life');

-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--

CREATE TABLE `Patient` (
  `patientId` int(11) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `lName` varchar(50) NOT NULL,
  `sex` char(1) NOT NULL,
  `telephone` char(10) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `zip` varchar(8) DEFAULT NULL,
  `state` varchar(8) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `birthDate` date NOT NULL,
  `referral` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Patient`
--

INSERT INTO `Patient` (`patientId`, `fName`, `lName`, `sex`, `telephone`, `street`, `zip`, `state`, `city`, `birthDate`, `referral`) VALUES
(1, 'John', 'Smith', 'M', '8112345678', 'Main Street', '64800', 'NL', 'Monterrey', '1986-04-05', 'Dr. Alfonso'),
(2, 'Margaret', 'Smith', 'F', '8187654321', 'Main Street', '64800', 'NL', 'Monterrey', '1986-08-10', 'Dr. Martinez'),
(3, 'Hugh', 'Jackman', 'M', '5412345678', '2nd Street', '72100', 'NL', 'San Pedro', '1987-12-04', 'Dr. Fernandez'),
(4, 'Jason', 'Boise', 'M', '8100000000', 'Third Street', '60100', 'NL', 'San Nicolas', '1970-10-25', 'Dr. Alvarez');

-- --------------------------------------------------------

--
-- Table structure for table `Prescription`
--

CREATE TABLE `Prescription` (
  `prescriptionId` int(11) NOT NULL,
  `visitId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Prescription`
--

INSERT INTO `Prescription` (`prescriptionId`, `visitId`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 6),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Prescription_details`
--

CREATE TABLE `Prescription_details` (
  `prescriptionId` int(11) NOT NULL,
  `medId` int(11) NOT NULL,
  `instructions` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Prescription_details`
--

INSERT INTO `Prescription_details` (`prescriptionId`, `medId`, `instructions`) VALUES
(1, 1, 'Tomar 20mg cada 7 horas'),
(1, 2, 'Tomar 3 tabletas cada 4 horas'),
(1, 5, 'Tomar 2 tabletas cada 12 horas'),
(2, 2, 'Tomar 20mg cada 7 horas'),
(3, 3, 'Tomar 20mg cada 7 horas'),
(4, 4, 'Tomar 20mg cada 7 horas'),
(5, 3, 'Tomar 10 mg cada 10 horas'),
(6, 4, 'Tomar 5 mg cada 5 horas');

-- --------------------------------------------------------

--
-- Table structure for table `Question`
--

CREATE TABLE `Question` (
  `questionId` int(11) NOT NULL,
  `questionTitle` varchar(550) DEFAULT NULL,
  `questionInstructions` varchar(550) DEFAULT NULL,
  `testId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Question`
--

INSERT INTO `Question` (`questionId`, `questionTitle`, `questionInstructions`, `testId`) VALUES
(101, 'Humor depresivo (tristeza, desesperanza, desamparo, sentimiento de inutilidad) ', '0. Ausente \r\n 1. Estas sensaciones las expresa solamente si le preguntan como se siente \r\n 2. Estas sensaciones las relata espontáneamente \r\n 3. Sensaciones no comunicadas verbalmente (expresión facial, postura, voz, tendencia al\r\nllanto) \r\n4. Manifiesta estas sensaciones en su comunicación verbal y no verbal en forma\r\nespontánea a ', 1),
(102, 'Sentimientos de culpa', '0. Ausente \r\n  1. Se culpa a si mismo, cree haber decepcionado a la gente \r\n  2. Tiene ideas de culpabilidad o medita sobre errores pasados o malas acciones \r\n  3. Siente que la enfermedad actual es un castigo \r\n  4. Oye voces acusatorias o de denuncia y/o experimenta alucinaciones visuales de amenaza ', 1),
(103, 'Suicidio', '0. Ausente \r\n  1. Le parece que la vida no vale la pena ser vivida \r\n  2. Desearía estar muerto o tiene pensamientos sobre la posibilidad de morirse \r\n  3. Ideas de suicidio o amenazas \r\n  4. Intentos de suicidio (cualquier intento serio)', 1),
(104, 'Insomnio precoz', '0. No tiene dificultad \r\n  1. Dificultad ocasional para dormir, por ej. más de media hora el conciliar el sueño \r\n  2. Dificultad para dormir cada noche ', 1),
(105, 'Insomnio intermedio', '0. No hay dificultad \r\n  1. Esta desvelado e inquieto o se despierta varias veces durante la noche \r\n  2. Esta despierto durante la noche, cualquier ocasión de levantarse de la cama se clasifica\r\nen 2 (excepto por motivos de evacuar)', 1),
(201, 'Estado de ánimo ansioso', '0. Ausente \r\n  1. Leve \r\n  2. Moderado \r\n  3. Grave \r\n  4. Muy grave/Incapacitante', 2),
(202, 'Tensión', '0. Ausente \r\n  1. Leve \r\n  2. Moderado \r\n  3. Grave \r\n  4. Muy grave/Incapacitante', 2),
(203, 'Temores', '0. Ausente \r\n  1. Leve \r\n  2. Moderado \r\n  3. Grave \r\n  4. Muy grave/Incapacitante', 2),
(204, 'Insomnio', '0. Ausente \r\n  1. Leve \r\n  2. Moderado \r\n  3. Grave \r\n  4. Muy grave/Incapacitante', 2),
(205, 'Intelectual', '0. Ausente \r\n  1. Leve \r\n  2. Moderado \r\n  3. Grave \r\n  4. Muy grave/Incapacitante', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Response`
--

CREATE TABLE `Response` (
  `responseId` int(11) NOT NULL,
  `questionId` int(11) NOT NULL,
  `instanceId` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Response`
--

INSERT INTO `Response` (`responseId`, `questionId`, `instanceId`, `value`) VALUES
(6010, 101, 1024, 3),
(6011, 102, 1024, 3),
(6012, 103, 1024, 4),
(6013, 104, 1024, 2),
(6014, 105, 1024, 1),
(6015, 201, 1025, 4),
(6016, 202, 1025, 3),
(6017, 203, 1025, 3),
(6018, 204, 1025, 3),
(6019, 205, 1025, 2),
(6020, 101, 1026, 1),
(6021, 102, 1026, 2),
(6022, 103, 1026, 0),
(6023, 104, 1026, 1),
(6024, 105, 1026, 1),
(6025, 201, 1027, 2),
(6026, 202, 1027, 2),
(6027, 203, 1027, 0),
(6028, 204, 1027, 1),
(6029, 205, 1027, 1),
(6030, 101, 1028, 3),
(6031, 102, 1028, 3),
(6032, 103, 1028, 4),
(6033, 104, 1028, 2),
(6034, 105, 1028, 1),
(6035, 201, 1029, 4),
(6036, 202, 1029, 3),
(6037, 203, 1029, 3),
(6038, 204, 1029, 3),
(6039, 205, 1029, 2),
(6040, 101, 1030, 1),
(6041, 102, 1030, 2),
(6042, 103, 1030, 0),
(6043, 104, 1030, 1),
(6044, 105, 1030, 1),
(6045, 201, 1031, 2),
(6046, 202, 1031, 2),
(6047, 203, 1031, 0),
(6048, 204, 1031, 1),
(6049, 205, 1031, 1),
(6050, 101, 1032, 2),
(6051, 102, 1032, 2),
(6052, 103, 1032, 3),
(6053, 104, 1032, 1),
(6054, 105, 1032, 0),
(6055, 201, 1033, 3),
(6056, 202, 1033, 2),
(6057, 203, 1033, 2),
(6058, 204, 1033, 2),
(6059, 205, 1033, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Test`
--

CREATE TABLE `Test` (
  `testId` int(11) NOT NULL,
  `testName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Test`
--

INSERT INTO `Test` (`testId`, `testName`) VALUES
(1, 'Depression'),
(2, 'Anxiety');

-- --------------------------------------------------------

--
-- Table structure for table `Test_scale`
--

CREATE TABLE `Test_scale` (
  `lowLimit` int(11) NOT NULL,
  `highLimit` int(11) DEFAULT NULL,
  `testId` int(11) NOT NULL,
  `descriptor` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Test_scale`
--

INSERT INTO `Test_scale` (`lowLimit`, `highLimit`, `testId`, `descriptor`) VALUES
(0, 7, 1, 'No deprimido'),
(0, 17, 2, 'Ansiedad leve'),
(8, 13, 1, 'Depresion ligera/menor'),
(14, 18, 1, 'Depresion moderada'),
(18, 24, 2, 'Ansiedad moderada'),
(19, 22, 1, 'Depresion severa'),
(23, 54, 1, 'Depresion muy severa'),
(25, 30, 2, 'Ansiedad severa'),
(30, 56, 2, 'Ansiedad muy severa');

-- --------------------------------------------------------

--
-- Table structure for table `Visit`
--

CREATE TABLE `Visit` (
  `visitId` int(11) NOT NULL,
  `patientId` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `vDate` date NOT NULL,
  `motive` varchar(50) NOT NULL,
  `resumen` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Visit`
--

INSERT INTO `Visit` (`visitId`, `patientId`, `doctorId`, `vDate`, `motive`, `resumen`) VALUES
(1, 1, 1, '2018-10-10', 'Suspects mild depression', 'Recommended check-up in a week'),
(2, 2, 1, '2018-10-11', 'Had panic attack', 'Patient needs more help'),
(3, 3, 1, '2018-10-12', 'Attempted suicide', NULL),
(4, 4, 1, '2018-10-13', 'Displays abnormal social interactions', NULL),
(5, 1, 1, '2018-10-17', '1 week check-up', 'Patient has improved'),
(6, 1, 1, '2018-10-24', 'Had panic attack', 'Patient needs more help'),
(7, 1, 1, '2018-10-31', 'Suspects extreme depression', 'Needs specialist aid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_info`
--
ALTER TABLE `app_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_nombre` (`app_nombre`);

--
-- Indexes for table `app_reporte`
--
ALTER TABLE `app_reporte`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_reporte` (`nombre_reporte`);

--
-- Indexes for table `Diagnosis`
--
ALTER TABLE `Diagnosis`
  ADD PRIMARY KEY (`dCode`);

--
-- Indexes for table `Diagnosis_details`
--
ALTER TABLE `Diagnosis_details`
  ADD PRIMARY KEY (`visitId`,`dCode`),
  ADD KEY `dCode` (`dCode`);

--
-- Indexes for table `Doctor`
--
ALTER TABLE `Doctor`
  ADD PRIMARY KEY (`doctorId`);

--
-- Indexes for table `Instance`
--
ALTER TABLE `Instance`
  ADD PRIMARY KEY (`instanceId`),
  ADD KEY `testId` (`testId`),
  ADD KEY `visitId` (`visitId`);

--
-- Indexes for table `Medicament`
--
ALTER TABLE `Medicament`
  ADD PRIMARY KEY (`medId`);

--
-- Indexes for table `Patient`
--
ALTER TABLE `Patient`
  ADD PRIMARY KEY (`patientId`);

--
-- Indexes for table `Prescription`
--
ALTER TABLE `Prescription`
  ADD PRIMARY KEY (`prescriptionId`),
  ADD KEY `visitId` (`visitId`);

--
-- Indexes for table `Prescription_details`
--
ALTER TABLE `Prescription_details`
  ADD PRIMARY KEY (`prescriptionId`,`medId`),
  ADD KEY `medId` (`medId`);

--
-- Indexes for table `Question`
--
ALTER TABLE `Question`
  ADD PRIMARY KEY (`questionId`),
  ADD KEY `testId` (`testId`);

--
-- Indexes for table `Response`
--
ALTER TABLE `Response`
  ADD PRIMARY KEY (`responseId`),
  ADD KEY `questionId` (`questionId`),
  ADD KEY `instanceId` (`instanceId`);

--
-- Indexes for table `Test`
--
ALTER TABLE `Test`
  ADD PRIMARY KEY (`testId`);

--
-- Indexes for table `Test_scale`
--
ALTER TABLE `Test_scale`
  ADD PRIMARY KEY (`lowLimit`,`testId`),
  ADD KEY `testId` (`testId`);

--
-- Indexes for table `Visit`
--
ALTER TABLE `Visit`
  ADD PRIMARY KEY (`visitId`),
  ADD KEY `patientId` (`patientId`),
  ADD KEY `doctorId` (`doctorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_reporte`
--
ALTER TABLE `app_reporte`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Diagnosis_details`
--
ALTER TABLE `Diagnosis_details`
  ADD CONSTRAINT `diagnosis_details_ibfk_1` FOREIGN KEY (`visitId`) REFERENCES `Visit` (`visitId`),
  ADD CONSTRAINT `diagnosis_details_ibfk_2` FOREIGN KEY (`dCode`) REFERENCES `Diagnosis` (`dCode`);

--
-- Constraints for table `Instance`
--
ALTER TABLE `Instance`
  ADD CONSTRAINT `instance_ibfk_1` FOREIGN KEY (`testId`) REFERENCES `Test` (`testId`),
  ADD CONSTRAINT `instance_ibfk_2` FOREIGN KEY (`visitId`) REFERENCES `Visit` (`visitId`);

--
-- Constraints for table `Prescription`
--
ALTER TABLE `Prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`visitId`) REFERENCES `Visit` (`visitId`);

--
-- Constraints for table `Prescription_details`
--
ALTER TABLE `Prescription_details`
  ADD CONSTRAINT `prescription_details_ibfk_1` FOREIGN KEY (`prescriptionId`) REFERENCES `Prescription` (`prescriptionId`),
  ADD CONSTRAINT `prescription_details_ibfk_2` FOREIGN KEY (`medId`) REFERENCES `Medicament` (`medId`);

--
-- Constraints for table `Question`
--
ALTER TABLE `Question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`testId`) REFERENCES `Test` (`testId`);

--
-- Constraints for table `Response`
--
ALTER TABLE `Response`
  ADD CONSTRAINT `response_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `Question` (`questionId`),
  ADD CONSTRAINT `response_ibfk_2` FOREIGN KEY (`instanceId`) REFERENCES `Instance` (`instanceId`);

--
-- Constraints for table `Test_scale`
--
ALTER TABLE `Test_scale`
  ADD CONSTRAINT `test_scale_ibfk_1` FOREIGN KEY (`testId`) REFERENCES `Test` (`testId`);

--
-- Constraints for table `Visit`
--
ALTER TABLE `Visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `Patient` (`patientId`),
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`doctorId`) REFERENCES `Doctor` (`doctorId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
