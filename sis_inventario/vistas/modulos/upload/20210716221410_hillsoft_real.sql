-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-07-2021 a las 15:44:34
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
-- Base de datos: `hillsoft_real`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `detail` varchar(999) NOT NULL,
  `date` varchar(60) NOT NULL,
  `time` varchar(30) NOT NULL,
  `venue` varchar(120) NOT NULL,
  `phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `events`
--

INSERT INTO `events` (`id`, `title`, `detail`, `date`, `time`, `venue`, `phone`) VALUES
(12, 'Cursos de informática - sede Quito', '<p>La Universidad Polit&eacute;cnica Salesiana (UPS) informa a los estudiantes de la sede Quito las fechas y horarios para los cursos de inform&aacute;tica para el periodo 58, que se realizar&aacute;n en el Centro de Capacitaciones y Servicios Inform&aacute;ticos CECASIG.</p>\r\n\r\n<p>Inform&aacute;tica 1 -&nbsp;Windows, internet y correo electr&oacute;nico</p>\r\n\r\n<p>Inform&aacute;tica 2 -&nbsp;Microsoft Word</p>\r\n\r\n<p>Inform&aacute;tica 3 - Microsoft Excel</p>\r\n\r\n<p>Inform&aacute;tica 4 -&nbsp;Mic', '12/07/2021', '', 'Quito', ''),
(13, 'Curso - Certificación: Organizador de Eventos MDT - SENESCYT', '<p>Contenido</p>\r\n\r\n<p><strong>Curso - Certificaci&oacute;n: Organizador de Eventos MDT - SENESCYT</strong>.<br />\r\n<br />\r\n<strong>Modalidad</strong>: Presencial<br />\r\n<strong>Sedes</strong>: Quito - Guayaquil - Ibarra - Ambato - Cuenca<br />\r\n<br />\r\n<br />\r\nLiderazgo capacitaci&oacute;n &amp; eventos se acredit&oacute; ante el setec (secretaria t&eacute;cnica de capacitaci&oacute;n ahora m.d.t) como oec, organismo evaluador de la conformidad, facultando para certificar por competencias labor', '09/07/2021', '08:30', 'Quito, Guayaquil, Cuenca', ''),
(15, 'Introducción Al Análisis De La Cinemática De Robots Paralelo', '<p>En este trabajo se presenta el dise&ntilde;o mec&aacute;nico y el modelo cinem&aacute;tico de un robot paralelo tipo Delta de tres grados de libertad</p>\r\n\r\n<p><strong>Inscripciones</strong></p>\r\n\r\n<p><em>Hora:&nbsp;</em>18:00 a 21:00</p>\r\n\r\n<p><em>Lugar:&nbsp;&nbsp;</em>Unidad de Educaci&oacute;n Continua - Modalidad Online</p>\r\n\r\n<p><strong>Informaci&oacute;n:</strong></p>\r\n\r\n<p>Ing. Iv&aacute;n Escand&oacute;n<br />\r\n<a href=\"mailto:iescandon@ups.edu.ec?Subject=Solicitud%20de%20Informaci%C3%B3n\" target=\"_top\">iescandon@ups.edu.ec</a><br />\r\nCarrera de Mecatr&oacute;nica</p>\r\n\r\n<p><a href=\"https://www.ups.edu.ec/formacion-continua-evento?id=8825\">M&aacute;s Informaci&oacute;n</a></p>\r\n', '12/07/2021', '18:00', 'Unidad de Educación Continua - Modalidad Online', '0974135250'),
(17, 'Curso de Desarrollo Sostenible | Universidad de Columbia', '<p>La Escuela de Gesti&oacute;n Ambienta de la UIDE en colaboraci&oacute;n con The Earth Institute de la Universidad de Columbia, te invitan al Curso de Desarrollo Sostenible.</p>\r\n\r\n<p>The Global Classroom es una iniciativa que fomenta la colaboraci&oacute;n interdisciplinaria entre estudiantes y profesores de todo el mundo, motiv&aacute;ndolos a participar en tareas colectivas y experiencias de aprendizaje de la mano de expertos reconocidos a nivel internacional.</p>\r\n\r\n<p><strong>Para obtener m&aacute;s informaci&oacute;n o inscribirte en el curso llena tus datos en el link:</strong>&nbsp;<a href=\"https://bit.ly/34HMmcP\">https://bit.ly/34HMmcP</a></p>\r\n', '10/8/2021', '07:00', 'En línea', '0974135250'),
(18, 'Mantenimiento En Subestaciones Eléctricas', '<p>El&nbsp;<strong>mantenimiento</strong>&nbsp;de&nbsp;<strong>subestaciones</strong>&nbsp;incluye pruebas&nbsp;<strong>el&eacute;ctricas</strong>&nbsp;peri&oacute;dicas de los diferentes par&aacute;metros del transformador, siendo com&uacute;n la comprobaci&oacute;n regular de caracter&iacute;sticas tales como la relaci&oacute;n de transformaci&oacute;n, la corriente de excitaci&oacute;n.</p>\r\n\r\n<p><strong>Inscripciones</strong></p>\r\n\r\n<p><em>Fechas:&nbsp;</em>Desde el 21 al 29 de octubre de 2021</p>\r\n\r\n<p><em>Hora:&nbsp;</em>Lunes a viernes de 18h00 a 22h00</p>\r\n\r\n<p><em>Lugar</em>:&nbsp;Enlace zoom</p>\r\n\r\n<p><strong>Inscripciones:</strong><br />\r\nEn l&iacute;nea</p>\r\n\r\n<p><strong>Informaci&oacute;n:</strong></p>\r\n\r\n<p>Lcda. Kenia Mu&ntilde;oz<br />\r\n<a href=\"mailto:kmunoz@ups.edu.ec?Subject=Solicitud%20de%20Informaci%C3%B3n\" target=\"_top\">kmunoz@ups.edu.ec</a></p>\r\n\r\n<p><a href=\"https://servicesmovil.ups.edu.ec/eventos/registro.xhtml?id=9053\" target=\"_blank\">Formulario de inscripci', '21/10/2021', '', 'En línea', '0974135250'),
(19, 'Análisis Computacional De Datos Biomédicos - Fundamentos (Cu', '<p>El Centro de&nbsp;<em>Datos</em>&nbsp;desde el cual se brindan todos los servicios del&nbsp;<em>An&aacute;lisis</em>&nbsp;y s&iacute;ntesis: Se utilizar&aacute; en el estudio de los&nbsp;<em>fundamentos</em>&nbsp;te&oacute;ricos, <em>computacionales</em>&nbsp;denominados Sistemas Basados en Conocimiento de estudiantes de la facultad de ciencias m&eacute;dicas de la Universidad de C<em>uenca.</em></p>\r\n\r\n<p><strong>Inscripciones</strong></p>\r\n\r\n<p><em>Fechas:</em>&nbsp;Desde el 20 de septiembre al 02 de octubre de 2021 (Inscripciones abiertas)</p>\r\n\r\n<p><em>Hora:&nbsp;</em>18:00 a 21:00</p>\r\n\r\n<p><em>Lugar:&nbsp;</em>Unidad de Educaci&oacute;n Continua - Modalidad Online</p>\r\n\r\n<p><strong>Informaci&oacute;n:</strong></p>\r\n\r\n<p>Ing. Leonardo Bueno, Mgtr.<br />\r\n<a href=\"mailto:fbueno@ups.edu.ec?Subject=Solicitud%20de%20Informaci%C3%B3n\" target=\"_top\">fbueno@ups.edu.ec</a><br />\r\nTelf: (+593) 74135250<br />\r\nCarrera de Biomedicina</p>\r\n\r\n<p><a href=\"https://servicesmovil.ups.edu.ec/ev', '', '18:00 ', 'Modalidad Online', '0974135250'),
(20, 'Taller De Escritura Creativa Periodística Y Literaria (Cuenc', '<p><strong>Inscripciones</strong></p>\r\n\r\n<p><em>Fechas:&nbsp;</em>Desde el 01 al 30 de septiembre de 2021 (Inscripciones abiertas)</p>\r\n\r\n<p><em>Hora:&nbsp;</em>18:00 a 21:00</p>\r\n\r\n<p><em>Lugar:&nbsp;</em>Unidad de Educaci&oacute;n Continua - Modalidad Online</p>\r\n\r\n<p><strong>Informaci&oacute;n:</strong></p>\r\n\r\n<p>Lcda. Carmen &Aacute;lvarez, Ph.D<br />\r\n<a href=\"mailto:calvarez@ups.edu.ec?Subject=Solicitud%20de%20Informaci%C3%B3n\" target=\"_top\">calvarez@ups.edu.ec</a><br />\r\nTelf: (+593) 74135250<br />\r\nCarrera de Comunicaci&oacute;n</p>\r\n\r\n<p><a href=\"https://servicesmovil.ups.edu.ec/eventos/registro.xhtml?id=8840\" target=\"_blank\">Formulario de inscripci&oacute;n</a></p>\r\n', '01/09/2021', '18:00', 'En línea', '0974135250'),
(21, 'Cloud Computing En La Empresa Ciencias De La Computación (Qu', '<p>Implementaci&oacute;n de herramientas&nbsp;<em>Cloud Computing en las empresas,&nbsp;</em>casi todas las caracter&iacute;sticas modernas de la&nbsp;<em>computaci&oacute;n</em>&nbsp;en nube.</p>\r\n\r\n<p><strong>Inscripciones</strong></p>\r\n\r\n<p><em>Fechas:&nbsp;</em>DEL 16 DE AGOSTO AL 2 DE SEPTIEMBRE DE 2021</p>\r\n\r\n<p><em>Hora:&nbsp;</em>lunes a viernes de 17:00 a 19:00</p>\r\n\r\n<p><em>Lugar:&nbsp;</em>Unidad de educaci&oacute;n continua- Modalidad Online<br />\r\nFORMULARIO DE REGISTRO EN LINEA INVERSI&Oacute;N 75,00$ Inscripciones hasta el 10 de agosto de 2021</p>\r\n\r\n<p><strong>Informaci&oacute;n:</strong></p>\r\n\r\n<p>ING. VIVIANA TIXILIMA<br />\r\n<a href=\"mailto:vtixilima@ups.edu.ec?Subject=Solicitud%20de%20Informaci%C3%B3n\" target=\"_top\">vtixilima@ups.edu.ec</a></p>\r\n\r\n<p><a href=\"https://servicesmovil.ups.edu.ec/eventos/registro.xhtml?id=9204\" target=\"_blank\">Formulario de inscripci&oacute;n</a></p>\r\n', '16/08/2021', '17:00', 'En línea', '0974135250');

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
(12, 'ss', 'efac_71057b5f75fbeb41866c2b0148e70fb9.png'),
(13, 'cd', 'efac_7bead5c148678966acb4e981e70e1d1d.jpg'),
(14, 'becas', 'efac_a4a8080f6b7754cf34df92bfd38adb13.jpg'),
(15, 'sds', 'efac_9e8aae65c2c5ae30a7b8733e515f53b0.jpg'),
(16, 'ñ', 'efac_bd20af85d3611c2ea1264dcb77b9869f.jpg');

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
(9, 'UTC es nuevo un centro de vacunación contra la COVID-19', '<p><img alt=\"\" src=\"La Universidad Técnica de Cotopaxi (UTC) es un nuevo centro para aplicar vacunas contra la COVID-19, el cual cubrirá la población de las parroquias del cantón Latacunga desde el próximo 31 de mayo.    Fabricio Tinajero, rector de la institución, puso a disposición de las autoridades sanitarias la infraestructura universitaria como centro de vacunación y preservación del biológico, por esta razón hoy en la mañana junto con Javier Morales, director distrital de Salud (e), recorrieron las instalaciones de la universidad, donde verificaron los espacios que serán destinados para el triage, toma de signos vitales, aplicación de la vacuna y lugar de estancia para la vigilancia de los recién vacunados.    Comunicó que la UTC siempre ha estado preocupada por el bienestar de la población, razón por la cual plantearon a las autoridades sanitarias el uso de las instalaciones de la universidad.    “La UTC se apresta a recibir a una buena parte de la población para que sea inmunizada, ya que, en este momento complejo y difícil que atraviesa el país, nos corresponde a todas las instituciones aunar esfuerzos para garantizar la vida de los cotopaxenses”, mencionó.\" />La Universidad T&eacute;cnica de Cotopaxi (UTC) es un nuevo centro para aplicar vacunas contra la COVID-19, el cual cubrir&aacute; la poblaci&oacute;n de las parroquias del cant&oacute;n Latacunga desde el pr&oacute;ximo 31 de mayo.</p>\r\n\r\n<p>Fabricio Tinajero, rector de la instituci&oacute;n, puso a disposici&oacute;n de las autoridades sanitarias la infraestructura universitaria como centro de vacunaci&oacute;n y preservaci&oacute;n del biol&oacute;gico, por esta raz&oacute;n hoy en la ma&ntilde;ana junto con Javier Morales, director distrital de Salud (e), recorrieron las instalaciones de la universidad, donde verificaron los espacios que ser&aacute;n destinados para el triage, toma de signos vitales, aplicaci&oacute;n de la vacuna y lugar de estancia para la vigilancia de los reci&eacute;n vacunados.</p>\r\n\r\n<p>Comunic&oacute; que la UTC siempre ha estado preocupada por el bienestar de la poblaci&oacute;n, raz&oacute;n por la cual plantearon a las autoridades sanitarias el uso de las instalaciones de la universidad.</p>\r\n\r\n<p>&ldquo;La UTC se apresta a recibir a una buena parte de la poblaci&oacute;n para que sea inmunizada, ya que, en este momento complejo y dif&iacute;cil que atraviesa el pa&iacute;s, nos corresponde a todas las instituciones aunar esfuerzos para garantizar la vida de los cotopaxenses&rdquo;, mencion&oacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'efac_e45e488c4067b5acd3ad8b74b8c9b69d.jpg', '2021-07-02'),
(10, 'Nuevos laboratorios para la formación estudiantil', '<p>La UTC crece constantemente, la ma&ntilde;ana de este jueves 8 de abril se realiz&oacute; la inauguraci&oacute;n de siete laboratorios de la facultad de Ciencias de la Ingenier&iacute;a y Aplicadas (CIYA), estos cuentan con tecnolog&iacute;a de punta y tienen una inversi&oacute;n de 1.064.000 d&oacute;lares.</p>\r\n\r\n<p>El proceso de equipamiento de los laboratorios inici&oacute; en 2019, deb&iacute;a concluir en el 2020; sin embargo, debido a la pandemia y la paralizaci&oacute;n global de las operaciones de comercio exterior, este sufri&oacute; un retraso, el cual concluy&oacute; en el presente a&ntilde;o.</p>\r\n\r\n<p>Segundo Corrales, decano (e) de la facultad de CIYA, expres&oacute; que la construcci&oacute;n y el equipamiento de los laboratorios no habr&iacute;a sido posible sin el apoyo y gesti&oacute;n de las autoridades de la universidad y de la facultad.</p>\r\n\r\n<p>Coment&oacute; que la realizaci&oacute;n del proyecto para los laboratorios, tuvo el car&aacute;cter de multidisciplinario, ya que, participaron activamente de este, las carreras de Industrial, Electricidad y Electromec&aacute;nica, adem&aacute;s se sumaron al esfuerzo Posgrado y Educaci&oacute;n Continua.</p>\r\n\r\n<p>Remarc&oacute; que los laboratorios son de Sistemas El&eacute;ctricos de Potencia, Automatizaci&oacute;n y PLC, Motores, Circuitos, Alto voltaje, Simulaci&oacute;n de Sistemas Electromec&aacute;nicos y F&iacute;sica.</p>\r\n\r\n<p>Los equipos son de &uacute;ltima tecnolog&iacute;a, de marcas alemanas reconocidas a nivel mundial, para su uso han sido capacitados 19 docentes y dos t&eacute;cnicos de laboratorio.</p>\r\n\r\n<p>Nelson Chiguano, rector (e) de la instituci&oacute;n, expuso que los nuevos laboratorios son un reflejo del compromiso institucional de formar profesionales &iacute;ntegros y competentes, a trav&eacute;s de la investigaci&oacute;n y la vinculaci&oacute;n.</p>\r\n\r\n<p>&ldquo;Estos laboratorios ser&aacute;n una valiosa herramienta para la formaci&oacute;n de profesionales de calidad y excelencia con una vocaci&oacute;n de servicio a la comunidad y su entorno&rdquo;, dijo.</p>\r\n\r\n<p>Por su parte Nathaly Gavil&aacute;nez, estudiante de la facultad de CIYA, manifest&oacute; que los laboratorios permitir&aacute;n ampliar sus conocimientos, para buscar soluciones innovadoras en beneficio del pa&iacute;s.</p>\r\n', 'efac_44173b58924deccd7e05528c64e3c40a.jpg', '2021-07-02'),
(11, 'UTC entrega becas y ayudas económicas a los estudiantes', '<p>Los estudiantes recibir&aacute;n el beneficio en los pr&oacute;ximos d&iacute;as. (Foto archivo)&nbsp;</p>\r\n\r\n<p>La Universidad T&eacute;cnica de Cotopaxi (UTC), entregar&aacute; a la poblaci&oacute;n estudiantil las becas y ayudas econ&oacute;micas a quienes se han beneficiado de esta actividad; adem&aacute;s, en este periodo acad&eacute;mico inici&oacute; un nuevo proceso de postulaciones para quienes deseen acogerse a este beneficio.</p>\r\n\r\n<p>Fabricio Tinajero, rector de la UTC, inform&oacute; que la instituci&oacute;n cumple con su compromiso de velar por el bienestar de toda la comunidad universitaria, ya que, en esta ocasi&oacute;n 549 becas y ayudas econ&oacute;micas han sido aprobadas.</p>\r\n\r\n<p>Estas asignaciones ser&aacute;n para los alumnos que postularon dentro del periodo acad&eacute;mico 2020-2021, ellos debieron entregar varios requisitos para validar la informaci&oacute;n enviada y as&iacute; ser acreedores de esta &uacute;nica asignaci&oacute;n econ&oacute;mica.</p>\r\n\r\n<p>Aproximadamente 135.000 d&oacute;lares han sido asignados para cubrir esta iniciativa, que beneficia a los estudiantes de escasos recursos econ&oacute;micos, qu&eacute; tiene los mejores promedios del cada ciclo acad&eacute;mico, que forman parte de la difusi&oacute;n cultural o que tiene alguna discapacidad.</p>\r\n\r\n<p>El Rector explic&oacute; que la instituci&oacute;n ha cumplido con todos los procesos legales para el desembolso de los recursos econ&oacute;micos, ahora ser&aacute; el Ministerio de Finanzas, la entidad que debe acreditar los dineros a las cuentas de los beneficiarios.</p>\r\n\r\n<p><strong>Nuevo proceso</strong></p>\r\n\r\n<p>Diana Vinueza, directora de Bienestar Universitario, mencion&oacute; que hasta el 30 de abril recibieron las solicitudes para acogerse al beneficio de becas y ayudas econ&oacute;micas del periodo acad&eacute;mico 2021-2021; al momento se analizan los requisitos presentados por los aspirantes para establecer quienes ser&aacute;n acreedores de las ayudas.</p>\r\n\r\n<p>Los alumnos postulantes deben estar pendientes de su mail institucional, ah&iacute; se les informar&aacute; si son acreedores del beneficio.</p>\r\n', 'efac_82ce2042999289a724c7155b07f567e4.jpg', '2021-07-02'),
(12, 'UTC investiga método de optimización para secado del cacao', '<p>Con el objetivo de contribuir con el desarrollo del sector agroproductivo de Cotopaxi y del pa&iacute;s, la Universidad T&eacute;cnica de Cotopaxi (UTC), a trav&eacute;s de la carrera de Electromec&aacute;nica y de la maestr&iacute;a en Electromec&aacute;nica impulsan un proceso de investigaci&oacute;n conjunta para la Determinaci&oacute;n Cin&eacute;tica del Secado de Cacao.</p>\r\n\r\n<p>Este proceso investigativo en el que se involucra el &aacute;rea de pregrado y posgrado, permitir&aacute; a la UTC establecer alternativas para el aprovechamiento de las energ&iacute;as renovables.</p>\r\n\r\n<p>Mauro Albarrac&iacute;n, decano de la facultad de Ciencias de la Ingenier&iacute;a y Aplicadas (CIYA), inform&oacute; que el proyecto generativo estudia los distintos elementos que participan dentro del secado del cacao, la cual es trabajada con la Asociaci&oacute;n de Productores de Cacao de La Man&aacute;.</p>\r\n\r\n<p>Una vez que se obtengan los resultados la planificaci&oacute;n establece que esta tecnolog&iacute;a sea dispuesta a nivel nacional para que los productores de cacao del pa&iacute;s se beneficien del secado de cacao con energ&iacute;a renovable.</p>\r\n\r\n<p>Los investigadores establecen tres etapas del proceso investigativo los que consisten en la determinaci&oacute;n de la mejora del rendimiento t&eacute;rmico, la creaci&oacute;n del secador de cacao y la verificaci&oacute;n de la curva cin&eacute;tica.</p>\r\n\r\n<p>Alex Tigse, estudiante de la carrera de Electromec&aacute;nica, explic&oacute; que el proyecto consiste en el control de la temperatura y en el control del flujo de aire, mientras qu&eacute;, los investigadores de la maestr&iacute;a en Electromec&aacute;nica determinan el control de los datos obtenidos.</p>\r\n\r\n<p>Mauro Albarrac&iacute;n, expuso que la investigaci&oacute;n busca resolver las necesidades de la poblaci&oacute;n para mejorar la calidad de vida y la productividad de los agricultores</p>\r\n', 'efac_eb948068d94156799c748e1fa5bd70d8.jpg', '2021-07-02');

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
(1, 'El mundo Académico es cambiante, evoluciona cada día. Es mucho más competitivo y exigente. En la Universidad Técnica de Cotopaxi nos distinguimos por la calidad de nuestros servicios, el profesionalismo de nuestra gente y la manera en que formamos estudiantes con conocimientos superlativos y competitivos.');

--
-- Índices para tablas volcadas
--

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
-- Indices de la tabla `welcome`
--
ALTER TABLE `welcome`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `excos`
--
ALTER TABLE `excos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `id` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
-- AUTO_INCREMENT de la tabla `welcome`
--
ALTER TABLE `welcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
