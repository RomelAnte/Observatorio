-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-08-2021 a las 19:00:35
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sis_inventario`
--

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
  `name` text COLLATE utf8_spanish_ci NOT NULL,
  `siglas` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `size` int(50) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `id_pais` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `name`, `siglas`, `ruta`, `tipo`, `size`, `email`, `telefono`, `direccion`, `id_pais`, `estado`, `url`, `fecha`) VALUES
(1, 'Universidad Técnica de Cotopaxi', 'UTC', 'LogoUTCUniversidadTecnicadeCotopaxipng', 'image/png', 44105, 'comunicacion.institucional@utc.edu.ec', '03 2252205', 'Av. Simón Rodríguez s/n Barrio El Ejido Sector San Felipe.', 4, 1, 'https://www.utc.edu.ec/', '2021-08-08 15:00:36'),
(2, 'Instituto Tecnológico Metropolitano de Medellín ', 'ITM', 'ITMcolombiajpg', 'image/jpeg', 39872, 'luzbaena@itme.edu.co', '+5744600727', 'Cra. 65 #98 A-75, Medellín, Antioquia, Colombia', 2, 1, 'https://www.itm.edu.co/', '2021-08-08 15:00:37'),
(3, 'Universidad Tecnológica Nacional Facultad Regional...', 'UTN.BA', 'logocentradongopng', 'image/png', 29549, 'debonis@frba.utn.edu.ar', '(54 11) 4867-7500', 'Ciudad Autónoma de Buenos Aires', 1, 1, 'https://www.frba.utn.edu.ar/', '2021-08-08 15:00:38'),
(7, 'Universidad Estatal de Bolívar', 'UEB', 'escudoUEBpng', 'image/png', 15683, 'dbienestar@ueb.edu.ec', '(593) 32206010 ', 'Av. Ernesto Che Guevara s/n y Av. Gabriel Secaira', 4, 1, 'https://www.ueb.edu.ec/', '2021-08-08 14:42:54'),
(8, 'Universidad Santo Tomas', 'USTA', 'SantotoEscudopng', 'image/png', 128441, 'contactenos@usantotomas.edu.co', '01 8000 111 180', 'Bogotá, Colombia.', 2, 1, 'https://www.usta.edu.co/', '2021-08-08 14:42:55'),
(9, 'Universidad de la Habana', 'UH', '464gif', 'image/gif', 18670, 'silvia@rect.uh.cu', '78322357', 'Calle J, No. 556 e/ 25 y 27, Vedado.', 3, 1, 'http://www.uh.cu/', '2021-08-08 02:30:56');

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
(1, 'Emma Flores', 'emmagladys@gmail.com', 'Hola, como están. Quisiera saber como postularme como evaluador.', '2021-07-14 18:09:56'),
(2, 'Jaqueline Ruiz', 'mauricio32@gmail.com', 'hola.', '2021-07-14 18:12:46'),
(3, 'Pedro Yunga', 'donpedro@gmail.com', 'dedos, y manos antes de verla.', '2021-07-14 18:12:25'),
(4, 'hola', 'a@gmail.com', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2021-07-30 18:28:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluador`
--

CREATE TABLE `evaluador` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `hojavida` varchar(255) NOT NULL,
  `estadoe` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evaluador`
--

INSERT INTO `evaluador` (`id`, `codigo`, `idusuario`, `hojavida`, `estadoe`, `fecha`) VALUES
(1, 0, 57, 'adsdsdsdsd', 1, '2021-07-08 00:03:54'),
(2, 0, 59, 'xsfvdfdfv', 1, '2021-07-08 00:03:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `detail` text NOT NULL,
  `date` varchar(60) NOT NULL,
  `time` varchar(30) NOT NULL,
  `venue` text NOT NULL,
  `phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `title`, `detail`, `date`, `time`, `venue`, `phone`) VALUES
(1, 'Lanzamiento del libro \"Buenas Practicas para el Aseguramiento a la Calidad en la Educación Superior\".', '<h2><big><strong>Lanzamiento del libro &quot;Buenas Practicas para el Aseguramiento a la Calidad en la Educaci&oacute;n Superior&quot;.</strong></big></h2>\r\n\r\n<p>El Comit&eacute; Editorial a trav&eacute;s de&nbsp;la Direcci&oacute;n de Comunicaci&oacute;n, culmin&oacute; la edici&oacute;n grafica del libro &ldquo;Buenas practicas, para el aseguramiento y la calidad de la educaci&oacute;n superior&rdquo;. En los pr&oacute;ximos d&iacute;as se realizar&aacute; el lanzamiento oficial para que todos lo tengan a su alcance.</p>\r\n\r\n<p><strong>Autores del libro:</strong></p>\r\n\r\n<ul>\r\n	<li>Vizca&iacute;no Figueroa Juan Jos&eacute;</li>\r\n	<li>Pacheco Tigselema Idalia Eleonora</li>\r\n	<li>Correa Hincapi&eacute; Natalia</li>\r\n	<li>Cornejo Jos&eacute; William</li>\r\n	<li>Mar&iacute;n &Aacute;lvarez Yudi</li>\r\n	<li>Gonz&aacute;lez Agudelo Elvia Mar&iacute;a</li>\r\n	<li>Lasso Iza Paola Cristina</li>\r\n	<li>Galindo C&aacute;rdenas Leonor</li>\r\n	<li>Guerra Breta&ntilde;a Rosa Mayel&iacute;n</li>\r\n	<li>Navas Olmedo Walter Humberto</li>\r\n	<li>Veloz Jaramillo Marco Antonio</li>\r\n	<li>V&aacute;squez Mullo Marcia Soledad</li>\r\n	<li>Alb&aacute;n Taipe Mayra Susana</li>\r\n	<li>Urgiles Urgiles Jos&eacute; Luis</li>\r\n</ul>\r\n', '11/08/2021', '08:00', 'Av. Simón Rodríguez s/n Barrio El Ejido Sector San Felipe.', '0995617293');

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
  `caption` varchar(225) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gallery`
--

INSERT INTO `gallery` (`id`, `caption`, `file`) VALUES
(20, 'G1', 'efac_08259969d4e67efb0d4d56b28a844441.jpg'),
(21, 'G2', 'efac_4193809f60efb431d2206003f4e40eae.jpg'),
(22, 'G3', 'efac_37a30019a1a9bac71aadeda0109b8097.jpg'),
(23, 'G4', 'efac_a31c72c80a95c8b3dd7d60e95695e772.jpg');

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
  `pais` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `pais`) VALUES
(1, 'Argentina'),
(2, 'Colombia'),
(3, 'Cuba'),
(4, 'Ecuador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
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
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `titulo`, `id_categoria`, `id_usuario`, `codigo`, `descripcion`, `estado`, `fname`, `name`, `fecha`) VALUES
(1, 'Calidad en la Educación Superior - Primera Edición', 0, 1, 1552, 'El Observatorio de Buenas Prácticas para el Aseguramiento de\r\nla Calidad en la Educación Superior (OBPACES) y la Dirección de\r\nEvaluación y Aseguramiento de la Calidad de la Universidad Técnica\r\nde Cotopaxi (UTC) tienen el agrado de presentar la primera edición\r\ndel libro Buenas prácticas para el aseguramiento de la calidad en\r\nla educación superior, el mismo que recoge experiencias llevadas\r\na cabo en varias universidades, mostrando los beneficios con los\r\nque aportaron para la mejora continua de cada una de ellas o los\r\nimpactos que se están generando. También son parte de este libro,\r\nreflexiones en torno a la eficiencia y retención estudiantil, porque son\r\ntemas en los que permanentemente se centran los esfuerzos de las\r\ninstituciones de educación superior (IES) por mejorarlos.\r\nPara la consecución de esta obra, fueron invitados varios\r\ninvestigadores y conocedores del ámbito de la calidad en la\r\neducación superior, tanto nacionales como internacionales,\r\nquienes aportaron con elementos teóricos, marcos metodológicos\r\ny resultados concretos de su trabajo en diferentes espacios de\r\nactuación vinculados a la propuesta de estrategias encaminadas al\r\nfortalecimiento de la gestión universitaria.\r\nEs indiscutible que la gestión de la calidad ha tomado fuerza en los\r\núltimos años en el país, pasando de un enfoque orientado hacia el\r\ncumplimiento de indicadores y estándares, a uno donde se reconoce\r\nque asegurar la calidad es mantener el equilibrio y articulación de las\r\nfunciones sustantivas, teniendo como eje de trabajo la participación real y activa de los grupos de interés, no solo como beneficiarios\r\nde los servicios que prestan las IES sino como impulsores de una\r\nplanificación institucional orientada al desarrollo de proyectos y oferta\r\nacadémica pertinente para el contexto en el que se desenvuelven.Por ello este libro pretende llegar no solo a académicos e\r\ninvestigadores sino también a otros actores vinculados a la educación\r\nsuperior, para que cuenten con elementos de discusión que les\r\npermitan tener una visión clara sobre los procesos e iniciativas que\r\nlas IES llevan a cabo para mejorar sus procesos internos y generar\r\nacercamientos con la sociedad, mediante el trabajo en redes y alianzas\r\nestratégicas, considerando que la calidad es un concepto dinámico\r\nque requiere de una alta capacidad de adaptación para ser eficaces\r\ny eficientes en el cumplimiento del direccionamiento estratégico.', 1, '20210730201007_Buenas Prácticas ISBN.pdf', 'Buenas Prácticas ISBN.pdf', '2021-08-08 16:28:16');

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
(6, 'Nuevo Public', 0, 1, 444, 'ghjk', 1, '20210808185404_Foto Mayra.JPG', 'Foto Mayra.JPG', '2021-08-08 16:54:04');

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
(1, 'Bryan Yambay', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', 'vistas/img/usuarios/admin/794.jpg', 1, '2021-08-07 21:26:06', '2021-08-08 02:26:06'),
(57, 'Juan Fernando Urrego', 'juan', '$2a$07$asxx54ahjppf45sd87a5auwRi.z6UsW7kVIpm0CUEuCpmsvT2sG6O', 'Docente', 'vistas/img/usuarios/juan/461.jpg', 1, '2021-07-16 10:34:57', '2021-07-16 15:34:57'),
(58, 'Julio Gómez', 'julio', '$2a$07$asxx54ahjppf45sd87a5auQhldmFjGsrgUipGlmQgDAcqevQZSAAC', 'Estudiante', 'vistas/img/usuarios/julio/100.png', 1, '2021-07-07 00:21:23', '2021-07-07 05:21:23'),
(59, 'Ana Gonzalez', 'ana', '$2a$07$asxx54ahjppf45sd87a5auLd2AxYsA/2BbmGKNk2kMChC3oj7V0Ca', 'Docente', 'vistas/img/usuarios/ana/754.jpg', 0, '2017-12-26 19:21:40', '2021-07-10 00:33:39'),
(60, 'prueba', 'aa', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Estudiante', 'vistas/img/usuarios/aa/625.jpg', 0, '0000-00-00 00:00:00', '2021-07-04 18:09:15'),
(61, 'Carlos', 'carlos', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Estudiante', 'vistas/img/usuarios/carlos/985.png', 0, '0000-00-00 00:00:00', '2021-07-15 18:24:20'),
(62, 'Alex Ladimir Pacalla Flores', 'alex1', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Estudiante', 'vistas/img/usuarios/alex1/467.jpg', 0, '0000-00-00 00:00:00', '2021-07-14 17:30:35'),
(63, 'Mery Flores', 'mery', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Docente', 'vistas/img/usuarios/mery/237.jpg', 0, '0000-00-00 00:00:00', '2021-07-15 17:05:52'),
(64, 'pruba1', 'user', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'Docente', 'vistas/img/usuarios/user/412.jpg', 1, '2021-07-16 15:13:24', '2021-07-16 20:13:24');

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
(1, 0, 'Marco Antonio Veloz Jaramillo', '032807735', 'marco.veloz@utc.edu.ec', 'Pangua y Av. Cotopaxi', 'marcoVELOZjpg', 'image/jpeg', 90691, 0, '', '', 0, '2021-08-07 01:30:24'),
(2, 0, 'Juan José Vizcaíno Figueroa', '022349705', 'juanjose_vizcaino@hotmail.com', 'Ascázubi No.13 y Amable Arauz, Quito', 'JuanVizcaionojpg', 'image/jpeg', 8815, 0, '', '', 0, '2021-08-07 01:32:19'),
(3, 0, 'Idalia Eleonora Pacheco Tigselema', '0995835251', 'idalia.pacheco@utc.edu.ec', 'Latacunga', 'IDALIApacheco1jpg', 'image/jpeg', 97908, 0, '', '', 0, '2021-08-07 01:34:02'),
(4, 0, 'Mayra Susana Albán Taipe', '032385141', 'mayra.alban@utc.edu.ec', 'Latacunga', 'FotoMayraJPG', 'image/jpeg', 200595, 0, '', '', 0, '2021-08-07 01:38:46');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `idusuario` (`idusuario`);

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
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `evaluador`
--
ALTER TABLE `evaluador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `excos`
--
ALTER TABLE `excos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `id` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `welcome`
--
ALTER TABLE `welcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`);

--
-- Filtros para la tabla `evaluador`
--
ALTER TABLE `evaluador`
  ADD CONSTRAINT `evaluador_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

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
