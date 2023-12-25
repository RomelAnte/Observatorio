-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-12-2023 a las 00:09:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `obsebarotio1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alianza_canton`
--

CREATE TABLE `alianza_canton` (
  `id_can_alia` int(11) NOT NULL,
  `id_prov_alia` int(11) NOT NULL,
  `nom_can_alia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alianza_canton`
--

INSERT INTO `alianza_canton` (`id_can_alia`, `id_prov_alia`, `nom_can_alia`) VALUES
(1, 1, 'Cuenca'),
(2, 2, 'Guaranda'),
(3, 3, 'Azogues'),
(4, 4, 'Tulcán'),
(5, 5, 'Riobamba'),
(6, 6, 'Latacunga'),
(7, 7, 'Machala'),
(8, 8, 'Esmeraldas'),
(9, 9, 'Puerto Baquerizo Moreno'),
(10, 10, 'Guayaquil'),
(11, 11, 'Ibarra'),
(12, 12, 'Loja'),
(13, 13, 'Babahoyo'),
(14, 14, 'Portoviejo'),
(15, 15, 'Macas'),
(16, 16, 'Tena'),
(17, 17, 'Francisco de Orellana'),
(18, 18, 'Puyo'),
(19, 19, 'Quito'),
(20, 20, 'Santa Elena'),
(21, 21, 'Santo Domingo'),
(22, 22, 'Nueva Loja'),
(23, 23, 'Nueva Loja'),
(24, 23, 'Ambato');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alianza_pais`
--

CREATE TABLE `alianza_pais` (
  `id_pais_alia` int(11) NOT NULL,
  `nom_pais_alia` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alianza_pais`
--

INSERT INTO `alianza_pais` (`id_pais_alia`, `nom_pais_alia`) VALUES
(1, 'Ecuador'),
(2, 'Afganistán'),
(3, 'Albania'),
(4, 'Alemania'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Antigua y Barbuda'),
(8, 'Arabia Saudita'),
(9, 'Argelia'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Bahamas'),
(15, 'Bangladés'),
(16, 'Bélgica'),
(17, 'Bolivia'),
(18, 'Brasil'),
(19, 'Canadá'),
(20, 'Catar'),
(21, 'Chile'),
(22, 'China');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alianza_parroquia`
--

CREATE TABLE `alianza_parroquia` (
  `id_parro_alia` int(11) NOT NULL,
  `id_can_alia` int(11) NOT NULL,
  `nom_parro_alia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alianza_parroquia`
--

INSERT INTO `alianza_parroquia` (`id_parro_alia`, `id_can_alia`, `nom_parro_alia`) VALUES
(1, 1, 'Bellavista'),
(2, 1, 'Cañaribamba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alianza_prov`
--

CREATE TABLE `alianza_prov` (
  `id_prov_alia` int(11) NOT NULL,
  `id_pais_alia` int(11) NOT NULL,
  `nom_prov_alia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alianza_prov`
--

INSERT INTO `alianza_prov` (`id_prov_alia`, `id_pais_alia`, `nom_prov_alia`) VALUES
(1, 1, ' Azuay'),
(2, 1, 'Bolívar'),
(3, 1, 'Cañar'),
(4, 1, 'Carchi'),
(5, 1, 'Chimborazo'),
(6, 1, 'Cotopaxi'),
(7, 1, 'El Oro'),
(8, 1, 'Esmeraldas'),
(9, 1, 'Galápagos'),
(10, 1, 'Guayas'),
(11, 1, 'Imbabura'),
(12, 1, 'Loja'),
(13, 1, 'Los Ríos'),
(14, 1, 'Manabí'),
(15, 1, 'Morona Santiago'),
(16, 1, 'Napo'),
(17, 1, 'Orellana'),
(18, 1, 'Pastaza'),
(19, 1, 'Pichincha'),
(20, 1, 'Santa Elena'),
(21, 1, 'Santo Domingo de los Tsáchilas'),
(22, 1, 'Sucumbíos'),
(23, 1, 'Tungurahua'),
(24, 1, 'Zamora Chinchipe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alianza_univer`
--

CREATE TABLE `alianza_univer` (
  `id_uni_alia` int(11) NOT NULL,
  `id_ciu_alia` int(11) NOT NULL,
  `nom_uni_alia` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `cod_estu` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `fecha` varchar(60) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` text NOT NULL,
  `detalle` text NOT NULL,
  `registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`cod_estu`, `titulo`, `fecha`, `hora`, `telefono`, `direccion`, `detalle`, `registro`) VALUES
(1, 'hola', '2021-09-24', '15:35:50', '0984614440', 'Quito', 'hola ', '2021-09-23 21:42:11'),
(22, 'prueba 1', '12/10/2021', '15:35:50', '0984614440', 'Quito', 'hola si como estan, en quito o en peru.', '2021-09-23 21:57:19'),
(23, 'prueba 1', '12/10/2021', '15:35:50', '0984614440', 'Quito', 'hola si como estan, en quito o en peru.', '2021-09-23 21:57:19'),
(24, 'prueba 1', '12/10/2021', '15:35:50', '0984614440', 'Quito', 'hola si como estan, en quito o en peru.', '2021-09-23 21:57:19'),
(25, 'prueba 1', '12/10/2021', '15:35:50', '0984614440', 'Quito', 'hola si como estan, en quito o en peru.', '2021-09-23 21:57:19'),
(26, 'prueba 1', '12/10/2021', '15:35:50', '0984614440', 'Quito', 'hola si como estan, en quito o en peru.', '2021-09-23 21:57:19'),
(27, 'prueba 1', '12/10/2021', '15:35:50', '0984614440', 'Quito', 'hola si como estan, en quito o en peru.', '2021-09-23 21:57:19'),
(28, 'prueba 1', '12/10/2021', '15:35:50', '0984614440', 'Quito', 'hola si como estan, en quito o en peru.', '2021-09-23 21:57:19'),
(29, 'prueba 1', '12/10/2021', '15:35:50', '0984614440', 'Quito', 'hola si como estan, en quito o en peru.', '2021-09-23 21:57:19'),
(30, 'prueba 1', '12/10/2021', '15:35:50', '0984614440', 'Quito', 'hola si como estan, en quito o en peru.', '2021-09-23 21:57:19'),
(31, 'prueba 1', '12/10/2021', '15:35:50', '0984614440', 'Quito', 'hola si como estan, en quito o en peru.', '2021-09-23 21:57:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL,
  `publicado` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `publicado`) VALUES
(1, 'III Encuentro Internacional de Semilleros de Investigación en Calidad y Metrología', 'La Red Académica de investigación en calidad es una instancia que investiga y discute la calidad como una herramienta para aumentar la productividad y competitividad organizacional; por lo tanto, debe crear los espacios para el debate, la crítica y la discusión de los problemas relacionados con la calidad, su concepto e implementación en los diferentes procesos, con el propósito de formar estudiantes con soporte teórico, investigativo, espíritu crítico y propositivo en las discusiones académicas y acciones organizacionales relacionadas con el tema.', 'Piezas red de calidad-04 (1).jpg', 1, '2021-09-26'),
(2, 'UTC Acreditada', 'Con orgullo recibimos este importante logro académico y lo compartimos con todos ustedes.\r\n\r\nSin duda, la UTC es una de las mejores Universidades del país, gracias al trabajo constante de sus autoridades, docentes, estudiantes, personal administrativo y de trabajo.\r\n\r\nEsta Acreditación es el reflejo del trabajo constante y el crecimiento permanente.', 'acreditada 2.jpeg', 1, '2021-09-26'),
(3, 'Lanzamiento del libro \"Buenas Practicas para el Aseguramiento a la Calidad en la Educación Superior\".', 'El Comité Editorial a través de la Dirección de Comunicación, culminó la edición grafica del libro “Buenas practicas, para el aseguramiento y la calidad de la educación superior”. En los próximos días se realizará el lanzamiento oficial para que todos lo tengan a su alcance.', 'WhatsApp Image 2021-08-06 at 21.13.07.jpeg', 1, '2021-09-26'),
(9, 'Clase espejo', 'En el marco de las actividades de internacionalización que viene llevando a cabo la Red Académica de Investigación en Calidad, continúan con éxito las clases espejo. El 14 y 21 de septiembre se impartió el tema Six Sigma con la participación de docentes y estudiantes del ITM y de la Universidad de Medellín.', 'clase espejo.jpeg', 1, '2023-11-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Ciencia', '2021-07-09 20:20:34'),
(2, 'Electronica', '2021-07-09 20:20:45'),
(3, 'Robotica', '2021-07-09 20:20:58'),
(4, 'Base de datos', '2021-07-09 20:21:08'),
(5, 'Inteligencia Artificial', '2021-07-09 20:21:22'),
(6, 'php', '2021-07-09 20:21:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `email` text NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` text NOT NULL,
  `id_pais` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `encargado` varchar(255) NOT NULL,
  `profesion` varchar(255) NOT NULL,
  `url_web` varchar(255) NOT NULL,
  `url_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `titulo`, `email`, `telefono`, `direccion`, `id_pais`, `estado`, `encargado`, `profesion`, `url_web`, `url_image`, `fecha`) VALUES
(1, 'Universidad Técnica de Cotopaxi', 'rectorado@utc.edu.ec', '(03) 2- 252-307', 'Av. Simón Rodríguez s/n Barrio El Ejido Sector San Felipe.', 4, 1, 'Dr. Cristian Fabricio Tinajero Jiménez', 'Rector', 'https://www.utc.edu.ec/', 'Logo-UTC-Universidad-Tecnica-de-Cotopaxi.png', '2023-12-25 17:31:08'),
(2, 'Instituto Tecnológico Metropolitano de Medellín ', 'rector@itm.edu.co', '(604) 440 51 00', 'Cra. 65 #98 A-75, Medellín, Antioquia, Colombia', 2, 1, 'Magíster Alejandro Villa Gómez', 'Secretaria Académica', 'https://www.itm.edu.co/', 'logo-27-300x248.png', '2023-12-25 17:01:53'),
(3, 'Universidad Tecnológica Nacional Facultad Regional Buenos Aires', 'debonis@frba.utn.edu.ar', '541148677500', 'Ciudad Autónoma de Buenos Aires', 1, 0, 'Héctor Aiassa', 'Rector', 'https://www.frba.utn.edu.ar/', '68747470733a2f2f7777772e667262612e75746e2e6564752e61722f77702d636f6e74656e742f75706c6f6164732f323031372f31302f4c6f676f732d55544e2e42412d6373362d7472616e73706172656e74652e706e67.png', '2023-12-25 16:51:54'),
(7, 'Universidad Estatal de Bolívar', 'rector@ueb.edu.ec', '(03) 2-206-802', 'Av. Ernesto Che Guevara s/n y Av. Gabriel Secaira', 4, 1, 'Ing. Hernán Arturo Rojas Sánchez, PhD.', 'Rector', 'https://www.ueb.edu.ec/', 'Logo-universidad-de-bolivar.png', '2023-12-25 17:31:25'),
(8, 'Universidad Santo Tomas', 'rector@usantotomas.edu.co', '(57) 15878797', 'Cra. 26, Pasto, Nariño, Colombia', 2, 1, 'Fray José Gabriel Mesa Angulo, O.P.', 'Rector', 'https://www.usta.edu.co/', 'U-Santo Tomás.png', '2023-12-25 17:12:06'),
(9, 'Universidad de La Habana', 'layla@rect.uh.cu', '78352336', 'La Habana, Cuba', 3, 1, 'Dra. Miriam Nicado', 'Rector', 'http://www.uh.cu/', 'U de la Habana.jpg', '2023-12-25 17:31:42'),
(252, 'Institución Universitaria Salazar y Herrera', '', '', '', 2, 1, 'Pbro. Jairo Alonso Molina Arango', 'Rector', 'https://www.iush.edu.co/', 'Logo-IUSH.png', '2023-12-25 16:54:50'),
(253, 'Fundación Universitaria Claretiana', 'rector@uniclaretiana.edu.co', '604 6726033 Ext 901 ', '', 2, 1, 'Albeiro Ospina Ospina', 'Rector', 'https://www.uniclaretiana.edu.co/', 'Fundación Claretiana.png', '2023-12-25 16:56:37'),
(255, 'Politécnico Colombiano Jaime Isaza Cadavid', 'rectoria@elpoli.edu.co', '3197933 / 3152489924', '', 2, 1, 'Jairo Alexander Osorio Saraz', 'Rector', 'https://www.politecnicojic.edu.co/', 'Logo Politécnico JIC.png', '2023-12-25 16:56:53'),
(256, 'Institución Universitaria Visión de las Américas', '', '', '', 2, 1, '', 'Rector', 'https://www.uam.edu.co/', 'logo visión de las américas.png', '2023-12-25 16:57:15'),
(257, 'Fundación Universitaria Católica del Norte', 'rectoria@ucn.edu.co', 'PBX (057) (4) 605 15 35 Ext. 4021', '', 2, 1, 'Pbro. Diego Luis Rendón Urrea', 'Rector', 'https://www.ucn.edu.co', 'U_Catolicadelnorte.jpg', '2023-12-25 16:57:28'),
(258, 'Universidad Militar Nueva Granada', 'rectoria@unimilitar.edu.co', '+57601 6500 000 - 634 3200, Ext 1002-1003', '', 2, 1, 'Brigadier General (R) Luis Fernando Puentes Torres', 'Rector', 'https://www.umng.edu.co', 'U. Militar Nueva Granada.png', '2023-12-25 16:57:38'),
(259, 'Universidad de Medellín', 'corresrec@udemedellin.edu.co', '(604) 590 45 00 – (604) 590 6999', '', 2, 0, 'Federico Restrepo Posada', 'Rector', 'https://udemedellin.edu.co/', 'logo_udemedellin2.png', '2023-12-25 18:28:29'),
(260, 'Universidad Industrial de Santander', 'rectoria@uis.edu.co', '607 6344000 Ext. 2425', '', 2, 1, 'Hernán Porras Díaz', 'Rector', 'https://uis.edu.co', 'Logo-UIS1.png', '2023-12-25 16:57:54'),
(261, 'Corporación Universidad Americana', 'rectoriamed@coruniamericana.edu.co', '4445004', '', 2, 0, 'Albert Coredor Gómez', 'Rector', 'https://americana.edu.co/medellin/', 'Logo-Americana.png', '2023-12-25 16:51:54'),
(262, 'Universidad Tecnológica de Pereira', 'rectoria@utp.edu.co', '(+57)60 6 3137350', '', 2, 1, 'Luis Fernando Gavira Trujillo', 'Rector', 'https://www.utp.edu.co', 'U_PEREIRA.png', '2023-12-25 16:58:27'),
(264, 'Universidad de la Amazonia', '', '', '', 2, 1, '', '', 'https://www.uniamazonia.edu.co/', 'Imagotipo_de_la_Universidad_de_la_Amazonia.png', '2023-12-25 17:09:52'),
(265, 'Universidad Técnica de Ambato', '', '', '', 4, 1, '', '', 'https://www.uta.edu.ec/', 'Universidad-Tecnica-de-Ambato.png', '2023-12-25 17:30:20'),
(267, 'Universidad de Antioquia', '', '', '', 2, 1, '', '', 'https://www.udea.edu.co/', 'logosimbolo-horizontal-U. Antioquia.png', '2023-12-25 17:36:18'),
(269, 'Corporación Universitaria Minuto de Dios', '', '', '', 2, 1, '', '', 'https://www.uniminuto.edu/', 'logos_uniminuto1.png', '2023-12-25 17:45:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mensaje` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `created_at`) VALUES
(8, 'Bryan Mauricio', 'bryan@gmail.com', 'Hola mundo', '2022-02-18 20:47:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluador`
--

CREATE TABLE `evaluador` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` text NOT NULL,
  `direccion` text NOT NULL,
  `sobremi_eva` varchar(700) NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `url_pdf` varchar(255) NOT NULL,
  `facebook_eva` varchar(800) NOT NULL,
  `linked_eva` varchar(800) NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evaluador`
--

INSERT INTO `evaluador` (`id`, `nombre`, `telefono`, `email`, `direccion`, `sobremi_eva`, `url_image`, `url_pdf`, `facebook_eva`, `linked_eva`, `estado`, `fecha`) VALUES
(8, 'Mayra Susana Albán Taipe', '032385141', 'mayra.alban@utc.edu.ec', 'Latacunga', 'Doctorado: Doctora en Sistemas e Informática Maestría: Magíster en Gestión de la Producción Grado: Ingeniera en Informática y Sistemas Computacionales', 'Foto Mayra.png', 'Anexo III Hoja de Vida - Mayra Albán-ok.pdf', '', '', 0, '2023-11-20 19:42:40'),
(9, 'Marco Antonio Veloz Jaramillo', '0992992506', 'marco.veloz@utc.edu.ec', 'Pangua y Av. Cotopaxi', 'Modelización econométrica bajo la metodología de Box-Jenkins. Estudio empírico a la liquidez del sistema financiero ecuatoriano” Revista investigación operacional, Departamento de Matemática Aplicada, Universidad de La Habana & Universidad de Paris Pantheón Sorbonne. I', 'marcoVELOZ.jpg', 'Anexo III Hoja de Vida - Marco Veloz-ok.pdf', 'https://www.facebook.com/marco.velozjaramillo', '', 0, '2023-11-20 18:57:27'),
(10, 'Idalia Eleonora Pacheco Tigselema', '0995835251', 'idalia.pacheco@utc.edu.ec', 'Latacunga', 'Ingeniera Comercial, su formación de cuarto nivel es como Magister en Administración y Marketing, actualmente es Doctora en Ciencias Económicas.\nHa desarrollado funciones como Coordinadora Académica de la Facultad de Ciencias de la Ingeniería y Aplicadas en el periodo 2012-2015, también ha sido profesora titular, coordinadora de la Unidad de Desarrollo Académico de la UTC.\nCoordinadora de Vinculación de la Facultad de Ciencias de la Ingeniería y Aplicadas.\nSu aporte científico es en la línea de la Economía de la Educación, Educación y Aseguramiento de la Calidad de la Educación Superior.\n', 'IDALIApacheco (1).jpg', 'Anexo III Hoja de Vida - Idalia Pacheco-ok.pdf', 'https://www.facebook.com/idalia.pacheco.16', '', 0, '2023-11-20 18:57:35'),
(11, 'Juan José Vizcaíno Figueroa', '(593) 995 617 293', 'juanjose_vizcaino@hotmail.com', 'Ascázubi No.13 y Amable Arauz, Quito', 'Doctorado: Doctor en Ciencias Económicas Maestría: Magíster en Diseño y Evaluación de Proyectos Máster en Evaluación y Gestión de la Calidad de la Educación Superior (Trabajo de titulación) Grado: Ingeniero Agrónomo', 'Juan Vizcaiono.jpg', 'Anexo III Hoja de Vida - Juan Vizcaíno-ok.pdf', 'https://www.facebook.com/juan.vizcaino.167', '', 0, '2023-11-20 18:57:40'),
(166, 'Rosa Mayelín Guerra Bretaña', '(53) 53893984', 'mayelin@biomat.uh.cu', 'La Habana', 'Doctorado: Dr. C. Químicas Maestría: M. Sc. Físico Matemáticas Grado: Licenciada en Física', 'mayelin guerra.jpg', 'mayelin guerra.pdf', '', '', 1, '2023-11-20 19:45:18'),
(167, 'Ximena Lucía Pedraza Nájar', '(57) 3108628648', 'ximena.pedraza@unimilitar.edu.co;', 'Bogotá D.C.', 'Doctorado: Doctora en Administración Maestría: Magíster en Calidad y Gestión Integral Grado: Microbióloga Industrial', 'ximena pedraza.jpg', 'ximena pedraza.pdf', '', '', 1, '2023-11-20 19:42:08'),
(168, 'Hernando Camacho Camacho', '3158442116', 'hernadocamacho@usantotomas.edu.co', 'Bogotá', 'Maestría: Magíster en Docencia e investigación con énfasis en ingeniería Grado: Ingeniero Metalúrgico', 'hernando camacho.jpg', 'hernando camacho.pdf', '', '', 1, '2023-11-20 19:42:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `fecha` varchar(60) NOT NULL,
  `hora` varchar(30) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `venue` varchar(500) NOT NULL,
  `url_video` text NOT NULL,
  `url_web` varchar(800) NOT NULL,
  `url_image` varchar(500) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL,
  `registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `titulo`, `fecha`, `hora`, `phone`, `venue`, `url_video`, `url_web`, `url_image`, `descripcion`, `estado`, `orden`, `registro`) VALUES
(21, 'Logros y Desafíos de los Sistemas Nacionales de Aseguramiento de la calidad.', '2021-11-09', '10:00', '0984614440', 'Av. Jorge Salvador Lara. S39, lote 38.', '', '', 'WhatsApp Image 2021-11-04 at 15.46.10.jpeg', 'Segundo Seminario Internacional de Calidad en la Educación Superior. \r\n', 1, 0, '2021-11-09 09:47:18'),
(22, 'Sistemas internos de gestión de la calidad.', '2021-11-10', '11:00', '0983282717', 'Av. 10 de Agosto y Cumanda.', '', '', 'WhatsApp Image 2021-11-04 at 15.46.11.jpeg', 'Segundo Seminario Internacional de Calidad en la Educación Superior.', 1, 0, '2021-11-10 09:46:54'),
(31, 'Nanociencia y energía solar, una alternativa para el futuro de la transición energética.', '2023-05-24', '10:00', '', '', '', '', 'Nanociencia.png', 'Webinar', 1, 0, '2023-05-24 19:51:47'),
(33, 'La gestión del retiro de productos defectuosos', '2022-08-19', '10:00', '', '', '', '', 'Cátedra abierta 19 de agosto.jpg', 'Webinar', 1, 0, '2022-08-19 20:16:02'),
(34, 'Gestión de la calidad en el periodismo', '2022-09-16', '10:00', '', '', '', '', 'Cátedra abierta 16 de septiembre.jpg', 'Webinar', 1, 0, '2022-09-16 20:16:09'),
(35, 'Neuromarketing', '2022-09-30', '10:00', '', '', '', 'https://www.youtube.com/watch?v=Th9aYtmqSYc', 'Cátedra abierta 30 de septiembre.png', 'Webinar', 1, 0, '2022-09-30 20:23:19'),
(36, 'Emprendimiento, calidad y comercio justo', '2022-12-06', '17:00', '', '', '', '', 'Imagen de WhatsApp 2023-11-28 a las 14.42.04_8eb253af.jpg', 'Webinar', 1, 0, '2022-12-06 20:29:43'),
(37, 'Transformación digital como soporte a la gestión de la calidad', '2022-11-08', '08:30', '', 'Universidad Técnica de Cotopaxi', '', 'https://fb.watch/oAOpFSMCZJ/', 'IMG-20231011-WA0008.jpg', 'VI CONGRESO Internacional de Investigación en Calidad', 1, 0, '2022-11-08 21:54:58'),
(38, 'Transformación digital como soporte a la gestión de la calidad', '2022-11-08', '08:30', '', 'Universidad Técnica de Cotopaxi', '', 'https://fb.watch/oAOpFSMCZJ/', 'IMG-20231011-WA0013.jpg', 'VI CONGRESO Internacional de Investigación en Calidad', 1, 0, '2022-11-08 21:55:02'),
(39, 'Los sistemas de indicadores y su impacto en la gestión universitaria', '2022-11-09', '10:30', '', 'Universidad Técnica de Cotopaxi', '', 'https://fb.watch/oAOBRo8I33/', 'IMG-20231011-WA0014.jpg', 'IV Seminario internacional de calidad en la educación superior', 1, 0, '2022-11-09 21:57:44'),
(41, 'Los sistemas de indicadores y su impacto en la gestión universitaria', '2022-11-09', '10:30', '', 'Universidad Técnica de Cotopaxi', '', 'https://fb.watch/oAOBRo8I33/', 'IMG-20231011-WA0012.jpg', 'IV Seminario internacional de calidad en la educación superior', 1, 0, '2022-11-09 21:57:48'),
(42, 'Sistemas Integrados de gestión', '2023-08-30', '18:00', '', '', '', '', 'IMG-20231124-WA0019 (1).jpg', 'Catedra abierta', 1, 0, '2023-08-30 21:34:38'),
(45, '', '2022-11-23', '10:00', '', '', '', '', 'image.jpg', 'III Seminario internacional de calidad en la educación superior', 1, 0, '2023-12-24 03:29:43'),
(46, 'El liderazgo y la dirección estratégica como pilares de la gestión organizacional', '2022-11-03', '', '', 'Universidad Técnica de Cotopaxi ', '', '', 'Imagen de WhatsApp 2023-11-29 a las 14.14.59_e01fca68.jpg', 'IV Encuentro de semilleros', 1, 0, '2022-11-03 19:18:27'),
(49, 'Introducción a Lean Six Sigma White Belt', '2023-04-18', '11:00', '', '', '', '', 'zyro-image.png', 'Webinar', 1, 0, '2023-12-25 21:25:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `excos`
--

CREATE TABLE `excos` (
  `id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `office` varchar(75) NOT NULL,
  `zone` varchar(75) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `excos`
--

INSERT INTO `excos` (`id`, `name`, `office`, `zone`, `phone`, `email`) VALUES
(1, 'Rt. Revd Okeke', 'National Chiarman', 'Orlu', '08022445353', 'okekert@efac.com'),
(2, 'Bryan Yambay', 'Estudiante', 'utc', '0987592584', 'yambaybryan@gmail.com'),
(3, 'Ana Ruiz', 'ana', 'ana@gmail.com', '1515545', 'by@jjb');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `gallery`
--

INSERT INTO `gallery` (`id`, `images`, `registro`) VALUES
(1, '1025700347.jpg', '2022-03-02 16:17:34'),
(3, '1510726516.jpg', '2022-03-02 16:17:25'),
(4, '1770771261.jpg', '2021-11-04 23:04:49'),
(6, '1085597173.jpg', '2022-03-02 16:20:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

CREATE TABLE `news` (
  `id` int(70) NOT NULL,
  `news_title` varchar(200) NOT NULL,
  `news_detail` varchar(5000) NOT NULL,
  `file` varchar(150) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`id`, `news_title`, `news_detail`, `file`, `date`) VALUES
(15, 'Lanzamiento del libro \"Buenas Practicas para el Aseguramiento a la Calidad en la Educación Superior\".', 'El Comité Editorial a través de la Dirección de Comunicación, culminó la edición grafica del libro “Buenas practicas, para el aseguramiento y la calidad de la educación superior”. En los próximos días se realizará el lanzamiento oficial para que todos lo tengan a su alcance.     ', 'efac_2b6d2b7b1ce3000cb04341cf51cad446.jpeg', '2021-08-06'),
(17, 'UTC Acreditada', 'Con orgullo recibimos este importante logro académico y lo compartimos con todos ustedes.\nSin duda, la UTC es una de las mejores Universidades del país, gracias al trabajo constante de sus autoridades, docentes, estudiantes, personal administrativo y de trabajo.\nEsta Acreditación es el reflejo del trabajo constante y el crecimiento permanente.                ', 'efac_fae4953ea3aba774587a9c38ef262952.jpeg', '2021-08-06'),
(18, 'III Encuentro Internacional de Semilleros de Investigación en Calidad y Metrología', 'La Red Académica de investigación en calidad es una instancia que investiga y discute la calidad como una herramienta para aumentar la productividad y competitividad organizacional; por lo tanto, debe crear los espacios para el debate, la crítica y la discusión de los problemas relacionados con la calidad, su concepto e implementación en los diferentes procesos, con el propósito de formar estudiantes con soporte teórico, investigativo, espíritu crítico y propositivo en las discusiones académicas y acciones organizacionales relacionadas con el tema.', 'efac_7382310c9f0373079166cd30ce338e5b.jpg', '2021-08-06'),
(19, 'Clase espejo', 'En el marco de las actividades de internacionalización que viene llevando a cabo la Red Académica de Investigación en Calidad, continúan con éxito las clases espejo. El 14 y 21 de septiembre se impartió el tema Six Sigma con la participación de docentes y estudiantes del ITM y de la Universidad de Medellín.', 'clase espejo.jpeg', '2023-11-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `pais` text NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `pais`, `estado`) VALUES
(0, 'Otro', 0),
(1, 'Argentina', 0),
(2, 'Colombia', 1),
(3, 'Cuba', 1),
(4, 'Ecuador', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL,
  `publicado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `publicado`) VALUES
(9, 'MODELO DE MEDICIÓN DE LAS HERRAMIENTAS EMPLEADAS EN LOS PROCESOS DE INTERNACIONALIZACIÓN DEL CURRÍCULO DE LAS INSTITUCIONES DE EDUCACIÓN SUPERIOR: AVANCES Y PRINCIPALES RESULTADOS', '', 'Convenio y proyecto.pdf', 1, '2023-12-25 16:28:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `estado` int(11) NOT NULL,
  `publicado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `publicado`) VALUES
(1, 'Calidad en la Educación Superior - Primera Edición', 'El Observatorio de Buenas Prácticas para el Aseguramiento de la Calidad en la Educación Superior (OBPACES) y la Dirección de Evaluación y Aseguramiento de la Calidad de la Universidad Técnica de Cotopaxi (UTC) tienen el agrado de presentar la primera edición del libro Buenas prácticas para el aseguramiento de la calidad en la educación superior, el mismo que recoge experiencias llevadas a cabo en varias universidades, mostrando los beneficios con los que aportaron para la mejora continua de cada una de ellas o los impactos que se están generando. También son parte de este libro, reflexiones en torno a la eficiencia y retención estudiantil, porque son temas en los que permanentemente se centran los esfuerzos de las instituciones de educación superior (IES) por mejorarlos. Para la consecución de esta obra, fueron invitados varios investigadores y conocedores del ámbito de la calidad en la educación superior, tanto nacionales como internacionales, quienes aportaron con elementos teóricos, marcos metodológicos y resultados concretos de su trabajo en diferentes espacios de actuación vinculados a la propuesta de estrategias encaminadas al fortalecimiento de la gestión universitaria. Es indiscutible que la gestión de la calidad ha tomado fuerza en los últimos años en el país, pasando de un enfoque orientado hacia el cumplimiento de indicadores y estándares, a uno donde se reconoce que asegurar la calidad es mantener el equilibrio y articulación de las funciones sustantivas, teniendo como eje de trabajo la participación real y activa de los grupos de interés, no solo como beneficiarios de los servicios que prestan las IES sino como impulsores de una planificación institucional orientada al desarrollo de proyectos y oferta académica pertinente para el contexto en el que se desenvuelven.Por ello este libro pretende llegar no solo a académicos e investigadores sino también a otros actores vinculados a la educación superior, para que cuenten con elementos de discusión que les permitan tener una visión clara sobre los procesos e iniciativas que las IES llevan a cabo para mejorar sus procesos internos y generar acercamientos con la sociedad, mediante el trabajo en redes y alianzas estratégicas, considerando que la calidad es un concepto dinámico que requiere de una alta capacidad de adaptación para ser eficaces y eficientes en el cumplimiento del direccionamiento estratégico.', 'Buenaspracticas.pdf', 1, '2023-11-15 14:34:08'),
(9, 'Calidad en la Educación Superior - Segunda Edición', 'La Dirección de Aseguramiento de la Calidad de la Universidad\r\nTécnica de Cotopaxi (UTC), el Observatorio de Buenas Prácticas\r\npara el Aseguramiento de la Calidad en la Educación Superior\r\n(OBPACES) y la Red Académica de Investigación en Calidad, realiza\r\nla presentación de la segunda edición del libro Buenas prácticas\r\npara el aseguramiento de la calidad en la educación superior. Esta\r\nimportante obra compila experiencias relacionadas con los sistemas\r\nde gestión de la calidad de Instituciones de Educación Superior,\r\ncuyos resultados provienen de propuestas de interés institucional y\r\naportes de investigadores bajo una iniciativa particular.\r\nCada una de las reflexiones contenidas en este libro aportan a\r\nlos procesos de mejora de las funciones sustantivas, enfatizando\r\nla importancia de los procesos de autoevaluación como parte\r\nfundamental de la cultura organizacional, como línea base para la\r\ntoma de decisiones e impulso de acciones de mejora.\r\nEn este texto se abordan casos prácticos de la implementación de\r\nvarias herramientas de calidad, analizando sus beneficios e impactos\r\ncon base en la evidencia, tal como lo establece uno de los principios\r\nde la calidad.\r\nCompartir las experiencias obtenidas en diferentes contextos, sin\r\nduda, enriquece la visión de académicos e investigadores en temas\r\nde calidad en la educación superior, puesto que permite conocer\r\nlas particularidades de donde fueron aplicados los procesos o\r\n8 Buenas Prácticas\r\nPara el aseguramiento de la calidad en la educación superior\r\nherramientas de calidad que se presentan en este documento. Por\r\nello, es importante conocer no solo los beneficios que pueden traer\r\nsino, sobre todo, cuáles son las principales limitaciones que se\r\npueden presentar, para tomar los correctivos necesarios en posibles\r\nprocesos de benchmarking.\r\nEs propicio extender un agradecimiento a los autores de esta obra,\r\nporque con su aporte se demuestra que el trabajo colaborativo entre\r\ncolegas, es necesario para difundir las buenas prácticas que se\r\nrealizan en torno a la calidad en la educación superior.', 'Buenas_Prácticas_segunda_edición_ISBN.pdf', 1, '2023-11-15 18:29:26'),
(10, 'Calidad en la Educación Superior - Tercera Edición', 'La Dirección de Aseguramiento de la Calidad\r\nde la Universidad Técnica de Cotopaxi (UTC),\r\nel Observatorio de Buenas Prácticas para el\r\nAseguramiento de la Calidad en la Educación\r\nSuperior (OBPACES) y la Red Académica\r\nde Investigación en Calidad, realizan la\r\npresentación de la tercera edición del libro\r\nBuenas prácticas para el aseguramiento\r\nde la calidad en la educación superior. Esta\r\nobra compila experiencias relacionadas con\r\nla internacionalización e impactos de las\r\nactividades que las Instituciones de Educación\r\nSuperior (IES) realizan para formar profesionales\r\nglobales.\r\nLos capítulos que se presentan relatan prácticas\r\nrelacionadas con la investigación y su impacto\r\nen el desarrollo de los países y en la toma de\r\ndecisiones de las IES, considerando diversas\r\nPresentación\r\nBuenas prácticas\r\nPara el aseguramiento de la\r\ncalidad en la educación superior\r\nBuenas prácticas\r\nPara el aseguramiento de la\r\ncalidad en la educación superior\r\nherramientas como son la planificación,\r\nproyectos y métricas de producción científica.\r\nDesde la docencia se plantea una metodología\r\npara evaluar resultados de aprendizaje, una ruta\r\npara lograr programas con doble titulación y un\r\nanálisis teórico sobre las ventajas de incorporar\r\nla gamificación como estrategia didáctica\r\npara desarrollar las habilidades de análisis y\r\nsíntesis. También se discute la importancia de\r\nlos sistemas de aseguramiento de la calidad en\r\nla internacionalización de la educación superior\r\ny los retos que aún tienen las IES para su\r\ninserción en contextos globales de cooperación\r\ninterinstitucional.\r\nUn agradecimiento especial a los autores\r\nnacionales e internacionales que contribuyeron\r\npara la edición de esta obra, porque su\r\naporte confirma la importancia de trabajar\r\ncolaborativamente para difundir las buenas\r\nprácticas que se llevan a cabo en diferentes\r\ncontextos, que pueden servir como guía para\r\nimplementarlas, adaptarlas o discutirlas, con\r\nresponsabilidad y crítica académica constructiva.\r\n', 'Buenas_Prácticas_2023 completo ISBN.pdf', 1, '2023-11-15 18:33:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` int(11) NOT NULL,
  `fname` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `titulo`, `id_categoria`, `id_usuario`, `codigo`, `descripcion`, `estado`, `fname`, `name`, `fecha`) VALUES
(5, 'Calidad en la Educación Superior - Primera Edición', 0, 1, 1552, 'El Observatorio de Buenas Prácticas para el Aseguramiento de\r\nla Calidad en la Educación Superior (OBPACES) y la Dirección de\r\nEvaluación y Aseguramiento de la Calidad de la Universidad Técnica\r\nde Cotopaxi (UTC) tienen el agrado de presentar la primera edición\r\ndel libro Buenas prácticas para el aseguramiento de la calidad en\r\nla educación superior, el mismo que recoge experiencias llevadas\r\na cabo en varias universidades, mostrando los beneficios con los\r\nque aportaron para la mejora continua de cada una de ellas o los\r\nimpactos que se están generando. También son parte de este libro,\r\nreflexiones en torno a la eficiencia y retención estudiantil, porque son\r\ntemas en los que permanentemente se centran los esfuerzos de las\r\ninstituciones de educación superior (IES) por mejorarlos.\r\nPara la consecución de esta obra, fueron invitados varios\r\ninvestigadores y conocedores del ámbito de la calidad en la\r\neducación superior, tanto nacionales como internacionales,\r\nquienes aportaron con elementos teóricos, marcos metodológicos\r\ny resultados concretos de su trabajo en diferentes espacios de\r\nactuación vinculados a la propuesta de estrategias encaminadas al\r\nfortalecimiento de la gestión universitaria.\r\nEs indiscutible que la gestión de la calidad ha tomado fuerza en los\r\núltimos años en el país, pasando de un enfoque orientado hacia el\r\ncumplimiento de indicadores y estándares, a uno donde se reconoce\r\nque asegurar la calidad es mantener el equilibrio y articulación de las\r\nfunciones sustantivas, teniendo como eje de trabajo la participación real y activa de los grupos de interés, no solo como beneficiarios\r\nde los servicios que prestan las IES sino como impulsores de una\r\nplanificación institucional orientada al desarrollo de proyectos y oferta\r\nacadémica pertinente para el contexto en el que se desenvuelven.Por ello este libro pretende llegar no solo a académicos e\r\ninvestigadores sino también a otros actores vinculados a la educación\r\nsuperior, para que cuenten con elementos de discusión que les\r\npermitan tener una visión clara sobre los procesos e iniciativas que\r\nlas IES llevan a cabo para mejorar sus procesos internos y generar\r\nacercamientos con la sociedad, mediante el trabajo en redes y alianzas\r\nestratégicas, considerando que la calidad es un concepto dinámico\r\nque requiere de una alta capacidad de adaptación para ser eficaces\r\ny eficientes en el cumplimiento del direccionamiento estratégico.', 1, '20210730201007_Buenas Prácticas ISBN.pdf', 'Buenas Prácticas ISBN.pdf', '2021-08-08 16:12:21'),
(6, 'Nuevo Public', 0, 1, 444, 'ghjk', 1, '20210808185404_Foto Mayra.JPG', 'Foto Mayra.JPG', '2021-08-08 16:54:04'),
(7, 'Software libre', 0, 1, 123456, 'fg', 1, '20210811034126_sis_inventario.sql', 'sis_inventario.sql', '2021-08-11 01:41:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quote`
--

CREATE TABLE `quote` (
  `id` int(11) NOT NULL,
  `quote` varchar(300) NOT NULL,
  `quote_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `quote`
--

INSERT INTO `quote` (`id`, `quote`, `quote_by`) VALUES
(1, 'For God did not send his Son into the world to condemn the world, but to save the world through him.', ' John 3:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(45) NOT NULL,
  `site_title` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `site_desc` varchar(350) NOT NULL,
  `site_keyword` varchar(250) NOT NULL,
  `google_code` varchar(1000) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(60) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `facebook` varchar(45) NOT NULL,
  `twitter` varchar(34) NOT NULL,
  `linkedin` varchar(45) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_title`, `email`, `site_desc`, `site_keyword`, `google_code`, `street`, `city`, `country`, `phone`, `facebook`, `twitter`, `linkedin`, `status`) VALUES
(1, 'Observatorio de buenas practicas', 'Observatorio', 'juan.vizcaino8079@utc.edu.ec', 'Redes de Buenas Practicas', 'Search Engine Ready, Business and others', 'www.utc.edu.ec', 'Av. Simón Rodríguez s/n Barrio El Ejido Sector San Felipe.', 'Latacunga', 'Ecuador', '0987592584', 'universidadtecnicadecotopaxi ', 'utcCotopaxi', '0995617293', 'utc_cotopaxi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_admin`
--

CREATE TABLE `table_admin` (
  `id` int(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `file` varchar(567) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `table_admin`
--

INSERT INTO `table_admin` (`id`, `name`, `email`, `username`, `password`, `file`) VALUES
(1, 'Bryan Yambay', 'yambaybryan@gmail.com', 'admin', 'admin', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_ads`
--

CREATE TABLE `table_ads` (
  `id` int(20) NOT NULL,
  `header_ads` varchar(500) NOT NULL,
  `side_ads` varchar(500) NOT NULL,
  `footer_ads` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `table_ads`
--

INSERT INTO `table_ads` (`id`, `header_ads`, `side_ads`, `footer_ads`) VALUES
(1, '<!-- Adtall - Ad Display Code -->\r\n<script type=\"text/javascript\" src=\"//www.adtall.com/display/js/ads.js?822&522&728&90&0\"></script>\r\n<!-- Adtall - Ad Display Code -->', '<!-- Adtall - Ad Display Code -->\r\n<script type=\"text/javascript\" src=\"//www.adtall.com/display/js/ads.js?821&522&300&250&0\"></script>\r\n<!-- Adtall - Ad Display Code -->', 'Footer ads code here');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_images`
--

CREATE TABLE `table_images` (
  `id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `fregis` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `table_images`
--

INSERT INTO `table_images` (`id`, `images`, `fregis`) VALUES
(1, '1234227910.webp', '2023-11-28 18:58:30'),
(2, '2139832446.webp', '2023-11-28 18:58:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id` int(11) NOT NULL,
  `body` varchar(3999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_about`
--

INSERT INTO `tbl_about` (`id`, `body`) VALUES
(4, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_resources`
--

CREATE TABLE `tbl_resources` (
  `id` int(11) NOT NULL,
  `body` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbl_resources`
--

INSERT INTO `tbl_resources` (`id`, `body`) VALUES
(1, '<p>...,,,,,,,,,,,,,</p>\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_evaluador`
--

CREATE TABLE `tipo_evaluador` (
  `id` int(11) NOT NULL,
  `evaluador` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_evaluador`
--

INSERT INTO `tipo_evaluador` (`id`, `evaluador`) VALUES
(1, 'Ciencias Administrativas'),
(2, 'Ciencias de la Educación'),
(3, 'Ciencias de la Ingeniería'),
(4, 'Extensión la Mana'),
(5, 'Extensión Pujilí');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_online`
--

CREATE TABLE `user_online` (
  `session` varchar(100) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `user_online`
--

INSERT INTO `user_online` (`session`, `time`) VALUES
('qcotvvi268d7irofeoehiaj364', 1500896285),
('6jmm0l8uvu2hrmbmll5pstnv54', 1500896318),
('qcotvvi268d7irofeoehiaj364', 1500896285),
('6jmm0l8uvu2hrmbmll5pstnv54', 1500896318),
('qcotvvi268d7irofeoehiaj364', 1500896285),
('6jmm0l8uvu2hrmbmll5pstnv54', 1500896318);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `perfil` text NOT NULL,
  `foto` text NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Bryan Yambay', 'admin', '$2a$07$asxx54ahjppf45sd87a5audFhDDYSjEsLgLcHXSCviRvBd7j2Vhs6', 'Administrador', 'vistas/img/usuarios/admin/794.jpg', 1, '2023-12-03 08:42:13', '2023-12-03 13:42:13'),
(68, 'Nelly Maribel Guashpa Yungas', 'nelly', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Docente', 'vistas/img/usuarios/nelly/396.jpg', 1, '2022-02-11 04:49:29', '2022-02-11 09:49:29'),
(69, 'Luis Alfredo Yambay Amaguaya', 'luis', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Colaborador', 'vistas/img/usuarios/luis/438.jpg', 0, '0000-00-00 00:00:00', '2022-03-22 19:48:45'),
(70, 'Nelly Maribel Guashpa Yungas', 'nelly123', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'Docente', 'vistas/img/usuarios/nelly123/105.png', 1, '2022-02-18 15:41:57', '2022-02-18 20:41:57'),
(71, 'romel', 'romel1', '$2a$07$asxx54ahjppf45sd87a5auVdAYP5Bpn6Tcxdq22C9QV2v53VLu5de', 'Administrador', 'vistas/img/usuarios/123/597.jpg', 1, '2023-12-25 13:56:52', '2023-12-25 18:56:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `name` text NOT NULL,
  `telefono` text NOT NULL,
  `email` text NOT NULL,
  `direccion` text NOT NULL,
  `ruta` text NOT NULL,
  `tipo` text NOT NULL,
  `size` int(50) NOT NULL,
  `estadoe` int(11) NOT NULL,
  `rutaa` text NOT NULL,
  `tipoo` text NOT NULL,
  `sizee` int(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `name`, `telefono`, `email`, `direccion`, `ruta`, `tipo`, `size`, `estadoe`, `rutaa`, `tipoo`, `sizee`, `fecha`) VALUES
(1, 0, 'Marco Antonio Veloz Jaramillo', '032807735', 'marco.veloz@utc.edu.ec', 'Pangua y Av. Cotopaxi', 'marcoVELOZjpg', 'image/jpeg', 90691, 1, '', '', 0, '2021-08-18 18:25:59'),
(2, 0, 'Juan José Vizcaíno Figueroa', '022349705', 'juanjose_vizcaino@hotmail.com', 'Ascázubi No.13 y Amable Arauz, Quito', 'JuanVizcaionojpg', 'image/jpeg', 8815, 0, '', '', 0, '2021-08-07 01:32:19'),
(3, 0, 'Idalia Eleonora Pacheco Tigselema', '0995835251', 'idalia.pacheco@utc.edu.ec', 'Latacunga', 'IDALIApacheco1jpg', 'image/jpeg', 97908, 1, '', '', 0, '2021-08-18 18:26:03'),
(4, 0, 'Mayra Susana Albán Taipe', '032385141', 'mayra.alban@utc.edu.ec', 'Latacunga', 'FotoMayraJPG', 'image/jpeg', 200595, 0, '', '', 0, '2021-08-07 01:38:46'),
(7, 0, 'Bryan Mauricio ', '0984614440', 'yambaybryan@gmail.com', 'mhbjhhj', 'imagen_20210927_103158png', 'image/png', 528010, 0, '', '', 0, '2021-09-27 15:31:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `welcome`
--

CREATE TABLE `welcome` (
  `id` int(11) NOT NULL,
  `body` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `welcome`
--

INSERT INTO `welcome` (`id`, `body`) VALUES
(1, 'NUevo mensaje');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alianza_canton`
--
ALTER TABLE `alianza_canton`
  ADD PRIMARY KEY (`id_can_alia`),
  ADD KEY `id_prov_alia` (`id_prov_alia`);

--
-- Indices de la tabla `alianza_pais`
--
ALTER TABLE `alianza_pais`
  ADD PRIMARY KEY (`id_pais_alia`);

--
-- Indices de la tabla `alianza_parroquia`
--
ALTER TABLE `alianza_parroquia`
  ADD PRIMARY KEY (`id_parro_alia`),
  ADD KEY `id_can_alia` (`id_can_alia`);

--
-- Indices de la tabla `alianza_prov`
--
ALTER TABLE `alianza_prov`
  ADD PRIMARY KEY (`id_prov_alia`),
  ADD KEY `id_pais_alia` (`id_pais_alia`);

--
-- Indices de la tabla `alianza_univer`
--
ALTER TABLE `alianza_univer`
  ADD KEY `id_ciu_alia` (`id_ciu_alia`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`cod_estu`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pais` (`id_pais`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `evaluador`
--
ALTER TABLE `evaluador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `excos`
--
ALTER TABLE `excos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `table_admin`
--
ALTER TABLE `table_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `table_ads`
--
ALTER TABLE `table_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `table_images`
--
ALTER TABLE `table_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_resources`
--
ALTER TABLE `tbl_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_evaluador`
--
ALTER TABLE `tipo_evaluador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `welcome`
--
ALTER TABLE `welcome`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alianza_canton`
--
ALTER TABLE `alianza_canton`
  MODIFY `id_can_alia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `alianza_pais`
--
ALTER TABLE `alianza_pais`
  MODIFY `id_pais_alia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `alianza_parroquia`
--
ALTER TABLE `alianza_parroquia`
  MODIFY `id_parro_alia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `alianza_prov`
--
ALTER TABLE `alianza_prov`
  MODIFY `id_prov_alia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `cod_estu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `evaluador`
--
ALTER TABLE `evaluador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `excos`
--
ALTER TABLE `excos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `id` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `quote`
--
ALTER TABLE `quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `table_admin`
--
ALTER TABLE `table_admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `table_ads`
--
ALTER TABLE `table_ads`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `table_images`
--
ALTER TABLE `table_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_resources`
--
ALTER TABLE `tbl_resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_evaluador`
--
ALTER TABLE `tipo_evaluador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `welcome`
--
ALTER TABLE `welcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alianza_canton`
--
ALTER TABLE `alianza_canton`
  ADD CONSTRAINT `alianza_canton_ibfk_1` FOREIGN KEY (`id_prov_alia`) REFERENCES `alianza_prov` (`id_prov_alia`);

--
-- Filtros para la tabla `alianza_parroquia`
--
ALTER TABLE `alianza_parroquia`
  ADD CONSTRAINT `alianza_parroquia_ibfk_1` FOREIGN KEY (`id_can_alia`) REFERENCES `alianza_canton` (`id_can_alia`);

--
-- Filtros para la tabla `alianza_prov`
--
ALTER TABLE `alianza_prov`
  ADD CONSTRAINT `alianza_prov_ibfk_1` FOREIGN KEY (`id_pais_alia`) REFERENCES `alianza_pais` (`id_pais_alia`);

--
-- Filtros para la tabla `alianza_univer`
--
ALTER TABLE `alianza_univer`
  ADD CONSTRAINT `alianza_univer_ibfk_1` FOREIGN KEY (`id_ciu_alia`) REFERENCES `alianza_canton` (`id_can_alia`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_ibfk_1` FOREIGN KEY (`id`) REFERENCES `table_admin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
