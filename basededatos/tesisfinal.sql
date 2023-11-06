-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-03-2022 a las 16:24:53
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tesisfinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alianza_canton`
--

CREATE TABLE `alianza_canton` (
  `id_can_alia` int(11) NOT NULL,
  `id_prov_alia` int(11) NOT NULL,
  `nom_can_alia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(21, 21, ' Santo Domingo'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `publicado`) VALUES
(1, 'III Encuentro Internacional de Semilleros de Investigación en Calidad y Metrología', 'La Red Académica de investigación en calidad es una instancia que investiga y discute la calidad como una herramienta para aumentar la productividad y competitividad organizacional; por lo tanto, debe crear los espacios para el debate, la crítica y la discusión de los problemas relacionados con la calidad, su concepto e implementación en los diferentes procesos, con el propósito de formar estudiantes con soporte teórico, investigativo, espíritu crítico y propositivo en las discusiones académicas y acciones organizacionales relacionadas con el tema.', 'Piezas red de calidad-04 (1).jpg', 1, '2021-09-26'),
(2, 'UTC Acreditada', 'Con orgullo recibimos este importante logro académico y lo compartimos con todos ustedes.\r\n\r\nSin duda, la UTC es una de las mejores Universidades del país, gracias al trabajo constante de sus autoridades, docentes, estudiantes, personal administrativo y de trabajo.\r\n\r\nEsta Acreditación es el reflejo del trabajo constante y el crecimiento permanente.', 'acreditada 2.jpeg', 1, '2021-09-26'),
(3, 'Lanzamiento del libro \"Buenas Practicas para el Aseguramiento a la Calidad en la Educación Superior\".', 'El Comité Editorial a través de la Dirección de Comunicación, culminó la edición grafica del libro “Buenas practicas, para el aseguramiento y la calidad de la educación superior”. En los próximos días se realizará el lanzamiento oficial para que todos lo tengan a su alcance.', 'WhatsApp Image 2021-08-06 at 21.13.07.jpeg', 1, '2021-09-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
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
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `id_pais` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `encargado` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `profesion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_web` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `titulo`, `email`, `telefono`, `direccion`, `id_pais`, `estado`, `encargado`, `profesion`, `url_web`, `url_image`, `fecha`) VALUES
(1, 'Universidad Técnica de Cotopaxi', 'comunicacion.institucional@utc.edu.ec', '032252205', 'Av. Simón Rodríguez s/n Barrio El Ejido Sector San Felipe.', 4, 1, 'Cristian Tinajero', 'Rector', 'https://www.utc.edu.ec/', 'Logo-UTC-Universidad-Tecnica-de-Cotopaxi.png', '2021-11-25 18:16:28'),
(2, 'Instituto Tecnológico Metropolitano de Medellín ', 'luzbaena@itme.edu.co', '6044405200', 'Cra. 65 #98 A-75, Medellín, Antioquia, Colombia', 2, 1, 'José Manuel Franco Martínez.', 'Secretaria Académica', 'https://www.itm.edu.co/', 'logo-27-300x248.png', '2021-11-25 18:15:36'),
(3, 'Universidad Tecnológica Nacional Facultad Regional Buenos Aires', 'debonis@frba.utn.edu.ar', '541148677500', 'Ciudad Autónoma de Buenos Aires', 1, 1, 'Héctor Aiassa', 'Rector', 'https://www.frba.utn.edu.ar/', '68747470733a2f2f7777772e667262612e75746e2e6564752e61722f77702d636f6e74656e742f75706c6f6164732f323031372f31302f4c6f676f732d55544e2e42412d6373362d7472616e73706172656e74652e706e67.png', '2021-11-25 16:06:51'),
(7, 'Universidad Estatal de Bolívar', 'dbienestar@ueb.edu.ec', '032206010', 'Av. Ernesto Che Guevara s/n y Av. Gabriel Secaira', 4, 1, 'Ing. Arturo Rojas.', 'Rector', 'https://www.ueb.edu.ec/', 'Logo-universidad-de-bolivar.png', '2021-11-25 16:06:20'),
(8, 'Universidad Santo Tomas', 'contactenos@usantotomas.edu.co', '5715878797', 'Cra. 26, Pasto, Nariño, Colombia', 2, 1, 'Fray José Gabriel Mesa Angulo', 'Rector', 'https://www.usta.edu.co/', 'Logotipo_USTA_Colombia.gif', '2021-11-25 16:05:11'),
(9, 'Universidad de la Habana', 'layla@rect.uh.cu', '78352336', 'La Habana, Cuba', 3, 1, 'Layla López Sáez', 'Administración', 'http://www.uh.cu/', 'LogoLaHabana.png', '2022-02-11 08:15:30');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evaluador`
--

INSERT INTO `evaluador` (`id`, `nombre`, `telefono`, `email`, `direccion`, `sobremi_eva`, `url_image`, `url_pdf`, `facebook_eva`, `linked_eva`, `estado`, `fecha`) VALUES
(8, 'Mayra Susana Albán Taipe', '032385141', 'mayra.alban@utc.edu.ec', 'Latacunga', 'Doctorado: Doctora en Sistemas e Informática Maestría: Magíster en Gestión de la Producción Grado: Ingeniera en Informática y Sistemas Computacionales', 'Foto Mayra.png', 'Anexo III Hoja de Vida - Mayra Albán-ok.pdf', '', '', 1, '2022-03-22 15:09:07'),
(9, 'Marco Antonio Veloz Jaramillo', '0992992506', 'marco.veloz@utc.edu.ec', 'Pangua y Av. Cotopaxi', 'Modelización econométrica bajo la metodología de Box-Jenkins. Estudio empírico a la liquidez del sistema financiero ecuatoriano” Revista investigación operacional, Departamento de Matemática Aplicada, Universidad de La Habana & Universidad de Paris Pantheón Sorbonne. I', 'marcoVELOZ.jpg', 'Anexo III Hoja de Vida - Marco Veloz-ok.pdf', 'https://www.facebook.com/marco.velozjaramillo', '', 1, '2022-03-22 15:27:20'),
(10, 'Idalia Eleonora Pacheco Tigselema', '0995835251', 'idalia.pacheco@utc.edu.ec', 'Latacunga', 'Ingeniera Comercial, su formación de cuarto nivel es como Magister en Administración y Marketing, actualmente es Doctora en Ciencias Económicas.\nHa desarrollado funciones como Coordinadora Académica de la Facultad de Ciencias de la Ingeniería y Aplicadas en el periodo 2012-2015, también ha sido profesora titular, coordinadora de la Unidad de Desarrollo Académico de la UTC.\nCoordinadora de Vinculación de la Facultad de Ciencias de la Ingeniería y Aplicadas.\nSu aporte científico es en la línea de la Economía de la Educación, Educación y Aseguramiento de la Calidad de la Educación Superior.\n', 'IDALIApacheco (1).jpg', 'Anexo III Hoja de Vida - Idalia Pacheco-ok.pdf', 'https://www.facebook.com/idalia.pacheco.16', '', 1, '2022-03-22 15:58:33'),
(11, 'Juan José Vizcaíno Figueroa', '(593) 995 617 293', 'juanjose_vizcaino@hotmail.com', 'Ascázubi No.13 y Amable Arauz, Quito', 'Doctorado: Doctor en Ciencias Económicas Maestría: Magíster en Diseño y Evaluación de Proyectos Máster en Evaluación y Gestión de la Calidad de la Educación Superior (Trabajo de titulación) Grado: Ingeniero Agrónomo', 'Juan Vizcaiono.jpg', 'Anexo III Hoja de Vida - Juan Vizcaíno-ok.pdf', 'https://www.facebook.com/juan.vizcaino.167', '', 1, '2022-03-22 20:08:03');

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
  `url_web` varchar(800) NOT NULL,
  `url_image` varchar(500) NOT NULL,
  `descripcion` text NOT NULL,
  `estado` int(1) NOT NULL,
  `orden` int(2) NOT NULL,
  `registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `titulo`, `fecha`, `hora`, `phone`, `venue`, `url_web`, `url_image`, `descripcion`, `estado`, `orden`, `registro`) VALUES
(21, 'Logros y Desafíos de los Sistemas Nacionales de Aseguramiento de la calidad.', '2021-11-09', '10:00', '0984614440', 'Av. Jorge Salvador Lara. S39, lote 38.', '', 'WhatsApp Image 2021-11-04 at 15.46.10.jpeg', 'Segundo Seminario Internacional de Calidad en la Educación Superior. \r\n', 1, 0, '2022-02-11 09:47:18'),
(22, 'Sistemas internos de gestión de la calidad.', '2021-11-10', '11:00', '0983282717', 'Av. 10 de Agosto y Cumanda.', '', 'WhatsApp Image 2021-11-04 at 15.46.11.jpeg', 'Segundo Seminario Internacional de Calidad en la Educación Superior.', 1, 0, '2022-02-11 09:46:54');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `excos`
--

INSERT INTO `excos` (`id`, `name`, `office`, `zone`, `phone`, `email`) VALUES
(1, 'Rt. Rev\'d Okeke', 'National Chiarman', 'Orlu', '08022445353', 'okekert@efac.com'),
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`id`, `news_title`, `news_detail`, `file`, `date`) VALUES
(15, 'Lanzamiento del libro \"Buenas Practicas para el Aseguramiento a la Calidad en la Educación Superior\".', '<p>El Comit&eacute; Editorial a trav&eacute;s de&nbsp;la Direcci&oacute;n de Comunicaci&oacute;n, culmin&oacute; la edici&oacute;n grafica del libro &ldquo;Buenas practicas, para el aseguramiento y la calidad de la educaci&oacute;n superior&rdquo;. En los pr&oacute;ximos d&iacute;as se realizar&aacute; el lanzamiento oficial para que todos lo tengan a su alcance.</p>\r\n', 'efac_2b6d2b7b1ce3000cb04341cf51cad446.jpeg', '2021-08-06'),
(17, 'UTC Acreditada', '<p>Con orgullo recibimos este importante logro acad&eacute;mico y lo compartimos con todos ustedes.</p>\r\n\r\n<p>Sin duda, la UTC es una de las mejores Universidades del pa&iacute;s, gracias al trabajo constante de sus autoridades, docentes, estudiantes, personal administrativo y de trabajo.</p>\r\n\r\n<p>Esta Acreditaci&oacute;n es el reflejo del trabajo constante y el crecimiento permanente.</p>\r\n', 'efac_fae4953ea3aba774587a9c38ef262952.jpeg', '2021-08-06'),
(18, 'III Encuentro Internacional de Semilleros de Investigación en Calidad y Metrología', '<p>La Red Acad&eacute;mica de investigaci&oacute;n en calidad es una instancia que investiga y discute la calidad como una herramienta para aumentar la productividad y competitividad organizacional; por lo tanto, debe crear los espacios para el debate, la cr&iacute;tica y la discusi&oacute;n de los problemas relacionados con la calidad, su concepto e implementaci&oacute;n en los diferentes procesos, con el prop&oacute;sito de formar estudiantes con soporte te&oacute;rico, investigativo, esp&iacute;ritu cr&iacute;tico y propositivo en las discusiones acad&eacute;micas y acciones organizacionales relacionadas con el tema.</p>\r\n', 'efac_7382310c9f0373079166cd30ce338e5b.jpg', '2021-08-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `pais` text NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `pais`, `estado`) VALUES
(0, 'Otro', 0),
(1, 'Argentina', 1),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `publicado`) VALUES
(6, 'lkjhgffghjk', '¿Quieres impedir que los visitantes copien contenido de tu sitio web? En este artículo, te mostraremos cómo detener el robo de contenido de tu sitio web mediante jQuery y Javascript. Para impedir que se robe contenido de tu web puedes hacer dos cosas, una es desactivar el botón derecho del ratón, y lo segundo es desactivar la acción de cortar (CTRL+X), copiar (CTRL+C) y pegar (CTRL+V). Mediante jQuery, puedes deshabilitar fácilmente el botón derecho del ratón y también impedir que se corte, copie y pegue contenido de tu web.', '', 1, '2022-03-22 19:44:29'),
(7, '', '', '413740749012.pdf', 0, '2022-03-22 21:55:48');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `publicacion`
--

INSERT INTO `publicacion` (`id`, `titulo`, `descripcion`, `url_image`, `estado`, `publicado`) VALUES
(3, 'Calidad en la Educación Superior - Primera Edición', 'El Observatorio de Buenas Prácticas para el Aseguramiento de la Calidad en la Educación Superior (OBPACES) y la Dirección de Evaluación y Aseguramiento de la Calidad de la Universidad Técnica de Cotopaxi (UTC) tienen el agrado de presentar la primera edición del libro Buenas prácticas para el aseguramiento de la calidad en la educación superior, el mismo que recoge experiencias llevadas a cabo en varias universidades, mostrando los beneficios con los que aportaron para la mejora continua de cada una de ellas o los impactos que se están generando. También son parte de este libro, reflexiones en torno a la eficiencia y retención estudiantil, porque son temas en los que permanentemente se centran los esfuerzos de las instituciones de educación superior (IES) por mejorarlos. Para la consecución de esta obra, fueron invitados varios investigadores y conocedores del ámbito de la calidad en la educación superior, tanto nacionales como internacionales, quienes aportaron con elementos teóricos, marcos metodológicos y resultados concretos de su trabajo en diferentes espacios de actuación vinculados a la propuesta de estrategias encaminadas al fortalecimiento de la gestión universitaria. Es indiscutible que la gestión de la calidad ha tomado fuerza en los últimos años en el país, pasando de un enfoque orientado hacia el cumplimiento de indicadores y estándares, a uno donde se reconoce que asegurar la calidad es mantener el equilibrio y articulación de las funciones sustantivas, teniendo como eje de trabajo la participación real y activa de los grupos de interés, no solo como beneficiarios de los servicios que prestan las IES sino como impulsores de una planificación institucional orientada al desarrollo de proyectos y oferta académica pertinente para el contexto en el que se desenvuelven.Por ello este libro pretende llegar no solo a académicos e investigadores sino también a otros actores vinculados a la educación superior, para que cuenten con elementos de discusión que les permitan tener una visión clara sobre los procesos e iniciativas que las IES llevan a cabo para mejorar sus procesos internos y generar acercamientos con la sociedad, mediante el trabajo en redes y alianzas estratégicas, considerando que la calidad es un concepto dinámico que requiere de una alta capacidad de adaptación para ser eficaces y eficientes en el cumplimiento del direccionamiento estratégico.', 'Buenaspracticas.pdf', 1, '2021-11-11 16:45:05'),
(7, 'Arturo Borja estudio', 'Excel csv', 'Exportar a Excel, CSV, PDF, Print Datatables usando PHP MySQL  BaulPHP (1).pdf', 1, '2022-02-18 20:44:44'),
(8, '', '', 'demo.png', 0, '2022-03-22 19:58:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fname` text COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `table_images`
--

INSERT INTO `table_images` (`id`, `images`, `fregis`) VALUES
(1, '1234227910.jpg', '2021-08-06 11:15:07'),
(2, '2139832446.jpg', '2021-08-06 23:40:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id` int(11) NOT NULL,
  `body` varchar(3999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(1, 'Bryan Yambay', 'admin', '$2a$07$asxx54ahjppf45sd87a5auV5B0ECrQzGx5KgM9wefFAiDRVmsWN4W', 'Administrador', 'vistas/img/usuarios/admin/794.jpg', 1, '2022-03-24 08:17:36', '2022-03-24 13:17:36'),
(68, 'Nelly Maribel Guashpa Yungas', 'nelly', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Docente', 'vistas/img/usuarios/nelly/396.jpg', 1, '2022-02-11 04:49:29', '2022-02-11 09:49:29'),
(69, 'Luis Alfredo Yambay Amaguaya', 'luis', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Colaborador', 'vistas/img/usuarios/luis/438.jpg', 0, '0000-00-00 00:00:00', '2022-03-22 19:48:45'),
(70, 'Nelly Maribel Guashpa Yungas', 'nelly123', '$2a$07$asxx54ahjppf45sd87a5auRajNP0zeqOkB9Qda.dSiTb2/n.wAC/2', 'Docente', 'vistas/img/usuarios/nelly123/105.png', 1, '2022-02-18 15:41:57', '2022-02-18 20:41:57'),
(71, 'jhhh', '123', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Colaborador', 'vistas/img/usuarios/123/597.jpg', 0, '0000-00-00 00:00:00', '2022-03-22 19:49:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `name` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `size` int(50) NOT NULL,
  `estadoe` int(11) NOT NULL,
  `rutaa` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoo` text COLLATE utf8_spanish_ci NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `evaluador`
--
ALTER TABLE `evaluador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
