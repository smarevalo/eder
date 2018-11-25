-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-11-2018 a las 15:10:28
-- Versión del servidor: 5.7.24-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eder`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id`, `nombre`) VALUES
(1, 'Introducción al Derecho'),
(2, 'Derecho Romano'),
(3, 'Derecho Civil I (Parte General)'),
(4, 'Introducción a la Filosofía'),
(5, 'Historia del Derecho'),
(6, 'Economia Politica'),
(7, 'Derecho Civil II (Obligaciones)'),
(8, 'Derecho Politico'),
(9, 'Finanzas y Derechos Tributario'),
(10, 'Derecho Comercial I'),
(11, 'Sociologia'),
(12, 'Filosofía del Derecho'),
(13, 'Derecho Civil III (Contratos)'),
(14, 'Derecho Comercial II'),
(15, 'Derecho Constitucional'),
(16, 'Derecho Penal I'),
(17, 'Derecho Internacional Público'),
(18, 'Derecho Laboral y Previsional'),
(19, 'Derecho Civil IV (Derechos Reales)'),
(20, 'Derecho Comercial III'),
(21, 'Derecho Público Provincial y Municipal'),
(22, 'Derecho Penal II'),
(23, 'Derecho Procesal Civil y Laboral'),
(24, 'Derecho Agrario Forestal y Minero'),
(25, 'Derecho Civil V (Familia y Sucesiones)'),
(26, 'Derecho de la Navegación'),
(27, 'Derecho Administrativo'),
(28, 'Ética Profesional y Práctica Forense'),
(29, 'Derecho Procesal Penal'),
(30, 'Derecho Internacional Privado y Comunitario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id` int(11) NOT NULL,
  `plan` varchar(20) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `presentacion` blob,
  `perfil` blob,
  `plan_pdf` varchar(50) DEFAULT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id`, `plan`, `nombre`, `presentacion`, `perfil`, `plan_pdf`, `imagen`) VALUES
(1, '089-98', 'Abogacía', 0x3c6872202f3e0d0a3c7020636c6173733d227765737465726e22206c616e673d2265732d455322207374796c653d226d617267696e2d6c6566743a20302e3436636d3b206d617267696e2d626f74746f6d3a2031636d223e0d0a093c7374726f6e673e546974756c6f3a3c2f7374726f6e673e2041626f6761646f3c2f703e0d0a3c7020636c6173733d227765737465726e22206c616e673d2265732d455322207374796c653d226d617267696e2d6c6566743a20302e3436636d3b206d617267696e2d626f74746f6d3a2031636d223e0d0a093c7374726f6e673e447572616369266f61637574653b6e3a3c2f7374726f6e673e20352061266e74696c64653b6f733c2f703e0d0a3c7020636c6173733d227765737465726e22206c616e673d2265732d455322207374796c653d226d617267696e2d6c6566743a20302e3436636d3b206d617267696e2d626f74746f6d3a2031636d223e0d0a093c7374726f6e673e436172676120686f72617269613a3c2f7374726f6e673e20332e30363020686f7261732e3c2f703e0d0a3c6872202f3e0d0a3c7020636c6173733d227765737465726e22206c616e673d2265732d455322207374796c653d226d617267696e2d6c6566743a20302e3436636d3b206d617267696e2d626f74746f6d3a2031636d223e0d0a093c7370616e207374796c653d22666f6e742d66616d696c793a617269616c2c68656c7665746963612c73616e732d73657269663b223e3c666f6e742073697a653d223322207374796c653d22666f6e742d73697a653a2031327074223e456c2054266961637574653b74756c6f2064652041626f6761646f20717565206f746f726761206c6120556e697665727369646164204e6163696f6e616c206465204368696c656369746f20686162696c69746120706172613a3c2f666f6e743e3c2f7370616e3e3c2f703e0d0a3c7020636c6173733d227765737465726e22206c616e673d2265732d455322207374796c653d226d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a20302e3134636d3b20746578742d616c69676e3a206a7573746966793b223e0d0a09266e6273703b3c2f703e0d0a3c756c3e0d0a093c6c6920636c6173733d227765737465726e22206c616e673d2265732d455322207374796c653d226d617267696e2d6c6566743a20312e3039636d3b206d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a203939253b20746578742d616c69676e3a206a7573746966793b223e0d0a09093c7370616e207374796c653d22666f6e742d66616d696c793a617269616c2c68656c7665746963612c73616e732d73657269663b223e3c666f6e742073697a653d223322207374796c653d22666f6e742d73697a653a2031327074223e456a6572636963696f206c69626572616c206465206c612070726f66657369266f61637574653b6e206d6174657269616c697a61646f20656e206c6120646566656e7361206465206c6f7320696e7465726573657320636f6e666961646f7320612073752073616265722c2074616e746f20656e20656c2070726f6365736f206a7564696369616c20636f6d6f2061646d696e69737472617469766f20616e7465206c6f7320266f61637574653b7267616e6f73206465206c612041646d696e69737472616369266f61637574653b6e2050267561637574653b626c6963612e3c2f666f6e743e3c2f7370616e3e3c2f6c693e0d0a3c2f756c3e0d0a3c7020636c6173733d227765737465726e22207374796c653d226d617267696e2d6c6566743a20312e3039636d3b206d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a203939253b20746578742d616c69676e3a206a7573746966793b223e0d0a09266e6273703b3c2f703e0d0a3c756c3e0d0a093c6c6920636c6173733d227765737465726e22206c616e673d2265732d455322207374796c653d226d617267696e2d6c6566743a20312e3039636d3b206d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a203939253b20746578742d616c69676e3a206a7573746966793b223e0d0a09093c7370616e207374796c653d22666f6e742d66616d696c793a617269616c2c68656c7665746963612c73616e732d73657269663b223e3c666f6e742073697a653d223322207374796c653d22666f6e742d73697a653a2031327074223e3c666f6e742073697a653d223322207374796c653d22666f6e742d73697a653a2031327074223e496e636f72706f72616369266f61637574653b6e2061206c612063617272657261206a7564696369616c2e20456a6572636963696f206465206c61206d61676973747261747572612e3c2f666f6e743e3c2f666f6e743e3c2f7370616e3e3c2f6c693e0d0a3c2f756c3e0d0a3c7020636c6173733d227765737465726e22207374796c653d226d617267696e2d6c6566743a20312e3039636d3b206d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a203939253b20746578742d616c69676e3a206a7573746966793b223e0d0a09266e6273703b3c2f703e0d0a3c756c3e0d0a093c6c6920636c6173733d227765737465726e22206c616e673d2265732d455322207374796c653d226d617267696e2d6c6566743a20312e3039636d3b206d617267696e2d626f74746f6d3a2030636d3b20746578742d616c69676e3a206a7573746966793b223e0d0a09093c7370616e207374796c653d22666f6e742d66616d696c793a617269616c2c68656c7665746963612c73616e732d73657269663b223e3c666f6e742073697a653d223322207374796c653d22666f6e742d73697a653a2031327074223e456a65726365722066756e63696f6e65732070267561637574653b626c6963617320657370656369616c697a616461733c2f666f6e743e3c2f7370616e3e3c2f6c693e0d0a3c2f756c3e0d0a3c7020636c6173733d227765737465726e22207374796c653d226d617267696e2d6c6566743a20312e3039636d3b206d617267696e2d626f74746f6d3a2030636d3b20746578742d616c69676e3a206a7573746966793b223e0d0a09266e6273703b3c2f703e0d0a3c756c3e0d0a093c6c6920636c6173733d227765737465726e22206c616e673d2265732d455322207374796c653d226d617267696e2d6c6566743a20312e3039636d3b206d617267696e2d626f74746f6d3a2030636d3b20746578742d616c69676e3a206a7573746966793b223e0d0a09093c7370616e207374796c653d22666f6e742d66616d696c793a617269616c2c68656c7665746963612c73616e732d73657269663b223e3c666f6e742073697a653d223322207374796c653d22666f6e742d73697a653a2031327074223e417365736f726172206120656d7072657361732070267561637574653b626c69636173206f2070726976616461732e3c2f666f6e743e3c2f7370616e3e3c2f6c693e0d0a3c2f756c3e0d0a3c7020636c6173733d227765737465726e22207374796c653d226d617267696e2d6c6566743a20312e3039636d3b206d617267696e2d626f74746f6d3a2030636d3b20746578742d616c69676e3a206a7573746966793b223e0d0a09266e6273703b3c2f703e0d0a3c756c3e0d0a093c6c6920636c6173733d227765737465726e22206c616e673d2265732d455322207374796c653d226d617267696e2d6c6566743a20312e3039636d3b206d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a203938253b20746578742d616c69676e3a206a7573746966793b223e0d0a09093c7370616e207374796c653d22666f6e742d66616d696c793a617269616c2c68656c7665746963612c73616e732d73657269663b223e3c666f6e742073697a653d223322207374796c653d22666f6e742d73697a653a2031327074223e496e746567726172206c6f732063756572706f7320646520617365736f72616d69656e746f20656e6361726761646f73206465206c6120656c61626f72616369266f61637574653b6e2064652070726f796563746f7320656e20656c205061726c616d656e746f2e3c2f666f6e743e3c2f7370616e3e3c2f6c693e0d0a3c2f756c3e0d0a3c7020636c6173733d227765737465726e22207374796c653d226d617267696e2d6c6566743a20312e3039636d3b206d617267696e2d626f74746f6d3a2030636d3b206c696e652d6865696768743a203938253b20746578742d616c69676e3a206a7573746966793b223e0d0a09266e6273703b3c2f703e0d0a3c756c3e0d0a093c6c6920636c6173733d227765737465726e22206c616e673d2265732d455322207374796c653d226d617267696e2d6c6566743a20312e3039636d3b206d617267696e2d626f74746f6d3a2030636d3b20746578742d616c69676e3a206a7573746966793b223e0d0a09093c7370616e207374796c653d22666f6e742d66616d696c793a617269616c2c68656c7665746963612c73616e732d73657269663b223e3c666f6e742073697a653d223322207374796c653d22666f6e742d73697a653a2031327074223e496e636f72706f72617273652061206c61206361727265726120646f63656e7465207920646520696e766573746967616369266f61637574653b6e2e3c2f666f6e743e3c2f7370616e3e3c2f6c693e0d0a3c2f756c3e0d0a3c6872202f3e0d0a3c703e0d0a093c7374796c6520747970653d22746578742f637373223e0d0a70207b206d617267696e2d626f74746f6d3a20302e3235636d3b20646972656374696f6e3a206c74723b20636f6c6f723a2072676228302c20302c2030293b206c696e652d6865696768743a20313135253b207d702e7765737465726e207b20666f6e742d66616d696c793a202243616c69627269222c2073616e732d73657269663b20666f6e742d73697a653a20313070743b207d702e636a6b207b20666f6e742d66616d696c793a202243616c69627269222c2073616e732d73657269663b20666f6e742d73697a653a20313070743b207d702e63746c207b20666f6e742d66616d696c793a2022417269616c222c2073616e732d73657269663b20666f6e742d73697a653a20313070743b207d093c2f7374796c653e0d0a3c2f703e0d0a, 0x3c6872202f3e0d0a3c70207374796c653d22746578742d616c69676e3a206a7573746966793b223e0d0a094c6120666f726d616369266f61637574653b6e2064656c2061626f6761646f207061726120657374612070726f70756573746120637572726963756c617220616c20636f6e636c75697220656c207369676c6f2058582c207375706f6e65206c6120666f726d616369266f61637574653b6e20646520756e2070726f666573696f6e616c20636f6e2063617061636964616420646520696d70756c736172206c61732072656c6163696f6e657320736f6369616c657320656e20746f646f73206c6f732063616d706f73207175652061626172636120737520666f726d616369266f61637574653b6e2c2061637475617220656e206361646120756e6f20646520656c6c6f732c2070726f706f6e657220736f6c7563696f6e6573206a7572266961637574653b6469636173206e75657661732079206372656174697661732c20696e74657276656e697220656e206c6120646563697369266f61637574653b6e20646520636f6e74726f7665727369617320636f6e206573747261746567696173206465207375706572616369266f61637574653b6e20646520636f6e666c6963746f73206164656375616461732079206d6f6465726e61732c20617365736f726172206120656e7465732070267561637574653b626c69636f732079207072697661646f732c207265616c697a617220756e61206c61626f7220646520657374696d6174697661206a7572266961637574653b646963612c20616e616c697a617220656c206465726563686f20706f73697469766f20636f6e206d6972617320616c206c6f67726f2064652076616c6f726573207375706572696f7265732e20456c6c6f20636f6d706f727461206f746f7267617220616c2061626f6761646f20756e6120666f726d616369266f61637574653b6e2071756520496f20686162696c697461207061726120666163696c69746172206163756572646f732c206461726c657320666f726d612061646563756164612c20696d70756c7361722072656c6163696f6e6573207920616374697669646164657320656e2064697374696e746f7320266161637574653b6d6269746f732c206f746f7267266161637574653b6e646f6c657320656c206d6172636f206a7572266961637574653b6469636f20616465637561646f2c20636f6e20636f6e6f63696d69656e746f73206573706563266961637574653b6669636f7320792070657274696e656e7465732e3c6272202f3e0d0a093c6272202f3e0d0a0954656e69656e646f20656e206375656e746120656c206465736172726f6c6c6f20717565206c61732072656c6163696f6e657320696e7465726e6163696f6e616c65732068616e2061647175697269646f2c2079206c6120706172746963756c617220636f6e657869266f61637574653b6e207175652067656e65726120656c204d6572636f7375722070617261206e75657374726f207061266961637574653b732c20656c20656772657361646f206465626520657374617220666f726d61646f20656e20656c206e7565766f2063616d706f206465206c6120696c6567616c6964616420792061637469766964616420736f6369616c2071756520656c6c6f207375706f6e652e2045737465206d6f6465726e6f206d6172636f206465204465726563686f2050267561637574653b626c69636f20792052656c6163696f6e65732050726976616461732c2073756d61646f2061206c61206578697374656e636961206465206f74726f732063656e74726f7320696e7465726e6163696f6e616c6573206465206163756572646f7320726567696f6e616c657320284e414654412c204345452c20657463266561637574653b7465726129206f626c6967612061206f746f726761722061206c6f732065647563616e646f7320756e6120666f726d616369266f61637574653b6e2061636f72646520636f6e20656c2070657266696c2061637475616c2064656c206d756e646f2c20717565206c6f677265206465746563746172206c6173206e65636573696461646573207920666f7274616c657a6173206465206c612072656769266f61637574653b6e20646f6e646520736520696e73657274652079206661766f72657a636120737520696e74656772616369266f61637574653b6e20656e206c617320657374727563747572617320696e7465726e6163696f6e616c65732c20656e2073756d61206f706572617220636f6d6f20636f6e7374727563746f72206465206c6120736f6369656461642e3c6272202f3e0d0a093c6272202f3e0d0a09456e2072617a266f61637574653b6e2064652071756520656c20746974756c6f206361706163697461207061726120656c20656a6572636963696f2070726f666573696f6e616c2073652068612070756573746f20266561637574653b6e666173697320656e206c6120637572726963756c612074616e746f20656e206c6120666f726d616369266f61637574653b6e20266561637574653b7469636120636f6d6f206173266961637574653b2074616d6269266561637574653b6e20656e20656c2061646965737472616d69656e746f20656e206375657374696f6e6573207072266161637574653b6374696361732c2070726f706f6e69266561637574653b6e646f73652065647563617220756e2070726f666573696f6e616c20266161637574653b67696c207920636f6d70726f6d657469646f20636f6e206c6f732076616c6f72657320736f6369616c65732e3c6272202f3e0d0a093c6272202f3e0d0a09436f6e63696269266561637574653b6e646f736520656c2070726f6365736f2065647563617469766f20636f6d6f20756e6120616374697669646164207065726d616e656e746520636f6e74696e75612c206c6f7320636f6e6f63696d69656e746f732067656e6572616c6573207920686162696c6964616465732062266161637574653b736963617320717565207365206272696e64616e20636f6e206c61206573747275637475726120637572726963756c61722064656c20677261646f2c206465626572266161637574653b6e2070726f66756e64697a617273652c2061637475616c697a6172736520636f6e206c6120666f726d616369266f61637574653b6e2064656c20706f7374677261646f2e3c6272202f3e0d0a093c6272202f3e0d0a094c6120556e697665727369646164204e6163696f6e616c206465204c612052696f6a6120736520656e6375656e7472612061626f63616461206120636f6e736f6c69646172206520696e6372656d656e746172207375206f666572746120646520706f7374677261646f2c20666f6d656e74616e646f206c6120696e7465722d6469736369706c696e6120656e747265206c61732064697374696e74617320266161637574653b726561732064656c20636f6e6f63696d69656e746f2e3c6272202f3e0d0a093c6272202f3e0d0a09506f72206c6f2074616e746f2073652070726574656e646520666f726d617220756e2061626f6761646f207265666c657869766f207175652074656e6761206361706163696461642070617261207265736f6c7665722070726f626c656d617320636f6e637265746f732064656c206f7264656e206a7572266961637574653b6469636f2c2073696e20616665727261727365206120756e2073697374656d612064652069646561732070726565737461626c656369646f206520696e6d6f646966696361626c652c20756e2061626f6761646f20636f6e206d656e74616c6964616420637269746963612071756520636f6e6f7a6361206c6120736f6c756369266f61637574653b6e206a7572266961637574653b6469636120792074656e67612063617061636964616420706172612069646561722070726f7075657374617320696e6e6f7661646f7261732e20456e2073266961637574653b6e7465736973206d6178696d697a61722c20612074726176266561637574653b73206465206c6120666f726d616369266f61637574653b6e2c206c61206361706163696461642064652072617a6f6e616d69656e746f2c207265666c657869266f61637574653b6e207920746f6d61206465206465636973696f6e65732e3c2f703e0d0a3c6872202f3e0d0a3c703e0d0a09266e6273703b3c2f703e0d0a, 'Plan089-98Abogacia.pdf', 'abogacia.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `descripcion`) VALUES
(1, 'Profesor Titular'),
(2, 'Profesor Asociado'),
(3, 'Profesor Adjunto'),
(4, 'Jefe de Trabajos Practicos'),
(5, 'Ayudante de Primera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correlatividad`
--

CREATE TABLE `correlatividad` (
  `id` int(11) DEFAULT NULL,
  `correlativade` int(11) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Volcado de datos para la tabla `correlatividad`
--

INSERT INTO `correlatividad` (`id`, `correlativade`, `tipo`) VALUES
(1, 3, 3),
(1, 6, 3),
(1, 8, 3),
(2, 3, 3),
(2, 5, 3),
(2, 7, 3),
(3, 7, 3),
(4, 8, 3),
(6, 9, 3),
(7, 10, 3),
(7, 13, 3),
(8, 11, 3),
(8, 12, 3),
(8, 17, 3),
(10, 14, 3),
(12, 16, 3),
(13, 18, 3),
(13, 19, 3),
(13, 23, 3),
(14, 20, 3),
(14, 23, 3),
(15, 16, 3),
(15, 21, 3),
(16, 22, 3),
(17, 30, 3),
(18, 23, 3),
(19, 24, 3),
(19, 25, 3),
(20, 26, 3),
(20, 30, 3),
(21, 27, 3),
(23, 25, 3),
(23, 27, 3),
(23, 29, 3),
(25, 28, 3),
(27, 28, 3),
(29, 28, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id` int(10) NOT NULL,
  `persona_id` bigint(20) NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  `descripcion` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id`, `persona_id`, `categoria`, `descripcion`) VALUES
(2, 2, 3, NULL),
(3, 3, 1, NULL),
(4, 4, 4, NULL),
(5, 5, 4, NULL),
(6, 6, 1, NULL),
(7, 7, 4, NULL),
(8, 8, 4, NULL),
(9, 9, 2, NULL),
(10, 10, 4, NULL),
(11, 11, 2, NULL),
(12, 12, 3, NULL),
(13, 13, 3, NULL),
(14, 14, 3, NULL),
(15, 15, 4, NULL),
(16, 16, 3, NULL),
(17, 17, 3, NULL),
(18, 18, 5, NULL),
(19, 19, 4, NULL),
(20, 20, 5, NULL),
(21, 21, 1, NULL),
(22, 22, 3, NULL),
(23, 23, 4, NULL),
(24, 24, 4, NULL),
(25, 25, 4, NULL),
(26, 26, 2, NULL),
(27, 27, 4, NULL),
(28, 28, 1, NULL),
(29, 29, 1, NULL),
(30, 30, 1, NULL),
(31, 31, 1, NULL),
(32, 32, 4, NULL),
(33, 33, 5, NULL),
(34, 34, 4, NULL),
(35, 35, 1, NULL),
(37, 37, 5, NULL),
(38, 38, 3, NULL),
(39, 39, 1, NULL),
(40, 40, 3, NULL),
(41, 41, 3, NULL),
(42, 42, 1, NULL),
(43, 43, 3, NULL),
(44, 44, 1, NULL),
(45, 45, 3, NULL),
(46, 46, 3, NULL),
(47, 47, 4, NULL),
(48, 48, 5, NULL),
(49, 49, 4, NULL),
(50, 50, 3, NULL),
(51, 51, 5, NULL),
(52, 52, 3, NULL),
(53, 53, 4, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(11) DEFAULT NULL,
  `id_docente` int(11) DEFAULT NULL,
  `acargo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `id_docente`, `acargo`) VALUES
(2, 49, 0),
(3, 27, 0),
(3, 32, 0),
(3, 51, 0),
(4, 9, 0),
(4, 44, 0),
(5, 6, 0),
(5, 44, 0),
(5, 49, 0),
(6, 26, 0),
(6, 42, 0),
(7, 23, 0),
(7, 34, 0),
(7, 51, 0),
(8, 41, 0),
(8, 44, 0),
(9, 16, 0),
(9, 26, 0),
(9, 39, 0),
(10, 7, 0),
(10, 13, 0),
(10, 19, 0),
(11, 30, 0),
(11, 48, 0),
(12, 9, 0),
(12, 44, 0),
(13, 16, 0),
(13, 20, 0),
(13, 38, 0),
(14, 13, 0),
(14, 19, 0),
(15, 40, 0),
(15, 53, 0),
(16, 15, 0),
(16, 29, 0),
(16, 31, 0),
(17, 7, 0),
(17, 21, 0),
(17, 53, 0),
(18, 10, 0),
(18, 24, 0),
(18, 38, 0),
(19, 2, 0),
(19, 27, 0),
(20, 2, 0),
(20, 28, 0),
(20, 50, 0),
(21, 32, 0),
(21, 34, 0),
(21, 38, 0),
(22, 15, 0),
(22, 25, 0),
(22, 29, 0),
(22, 31, 0),
(23, 18, 0),
(23, 28, 0),
(23, 46, 0),
(24, 17, 0),
(24, 33, 0),
(24, 34, 0),
(25, 3, 0),
(25, 5, 0),
(25, 37, 0),
(26, 21, 0),
(26, 24, 0),
(26, 47, 0),
(27, 4, 0),
(27, 35, 0),
(27, 43, 0),
(28, 39, 0),
(28, 53, 0),
(29, 8, 0),
(29, 12, 0),
(29, 22, 0),
(30, 11, 0),
(30, 24, 0),
(30, 45, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL,
  `persona_id` bigint(20) NOT NULL,
  `legajo` varchar(50) NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `abreviacion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_permiso`
--

CREATE TABLE `grupo_permiso` (
  `grupo_id` int(11) NOT NULL,
  `permiso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nombre_2` varchar(50) DEFAULT NULL,
  `dni` varchar(50) DEFAULT NULL,
  `cuit` varchar(50) DEFAULT NULL,
  `email1` varchar(50) DEFAULT NULL,
  `email2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `apellido`, `nombre`, `nombre_2`, `dni`, `cuit`, `email1`, `email2`) VALUES
(1, 'Arevalo', 'Sergio', 'Martin', '30653165', NULL, 'sarevalo@undec.edu.ar', NULL),
(2, 'Amaya', 'Sonia', 'Del Valle', NULL, '27-17234980-9', 'soniaamaya214@gmail.com', NULL),
(3, 'Barrionuevo Colombres', 'Norma', 'De Las Mercedes', NULL, '23-11978322-4', 'norma_barrionuevo@hotmail.com', NULL),
(4, 'Bazan', 'Liliana ', 'Raquel', NULL, '27-26756933-4', 'lbazan2009@hotmail.com', NULL),
(5, 'Caceres', 'Ines', 'Cecilia', NULL, '27-24049529-0', 'ines_caceres@arnet.com.ar', 'estudiocaceres@arnet.com.ar'),
(6, 'Calvo Leal', 'Maria', 'Angelica', NULL, '27-05194610-9', 'macalvoleal@hotmail.com', NULL),
(7, 'Carballo', 'Andrea', 'Viviana', NULL, '27-21628191-3', 'acarballo@outlook.com', NULL),
(8, 'Carrizo', 'Alberto Marcelo', 'Carrizo', NULL, '20-21666720-5', 'a_marcelocarrizo@yahoo.com.ar', NULL),
(9, 'Ceberio De León', 'Iñaki', NULL, NULL, '20-94989800-9', 'izeberini@gmail.com', NULL),
(10, 'Contreras', 'Maria', 'Laura', NULL, '27-26771859-3', 'mcontreras@undec.edu.ar', NULL),
(11, 'Córdoba', 'Julio', 'César', NULL, '20-25853422-1', 'jccordoba@gmail.com', NULL),
(12, 'Figueroa', 'Rogelio', 'Eduardo Javier', NULL, '20-18081762-0', 'javyfigue10@yahoo.com.ar', NULL),
(13, 'Flaim', 'Pablo', 'Damián', NULL, '20-22034281-7', 'flaim@arnet.com.ar', NULL),
(14, 'Franceschi', 'Pablo', 'Eduardo', NULL, '20-22443380-9', 'pfranceschi@undec.edu.ar ', NULL),
(15, 'Frati', 'Francisco', NULL, NULL, '20-30471314-4', 'pacofrati@hotmail.com', NULL),
(16, 'García Herrera', 'Marcelo José', 'Santiago', NULL, '20-14272180-6', 'marcelo.garcia.herrera@hotmail.com', NULL),
(17, 'Gimelfarb', 'Leonor', NULL, NULL, '27-19010171-7', 'lgimelfarb@undec.edu.ar', NULL),
(18, 'Gonzalez Ribot', 'Norma', 'Ines', NULL, '27-28883038-5', 'gonzalezribot@yahoo.com.ar', NULL),
(19, 'Heredia Querro', 'Juan', 'Sebastián', NULL, '20-31041887-1', 'juansebastian_hq@yahoo.com.ar', NULL),
(20, 'Herrera', 'Jorge ', 'Ricardo', NULL, '20-24049441-9', 'rickiherrera@hotmail.com', NULL),
(21, 'Javurek', 'Giselle', 'Del Carmen ', NULL, '27-16906158-6', 'gjavurek@gmail.com', NULL),
(22, 'Juarez', 'Nicolas', 'Eduardo', NULL, '20-10295768-8', 'n.eduardojuarez@hotmail.com', NULL),
(23, 'Lobos', 'Jimena', 'Del Valle', NULL, '27-28619073-7', 'jimena_lobos@hotmail.com', NULL),
(24, 'Mana', 'Noelia', 'Irene', NULL, '27-25971937-8', 'noeavp@gmail.com', NULL),
(25, 'Mercado', 'Analía', 'María Elizabeth', NULL, '27-28106621-3', 'ammercado@undec.edu.ar', NULL),
(26, 'Montamat', 'Eduardo', 'Rodolfo', NULL, '20-14291592-9', 'montamateduardo@hotmail.com', NULL),
(27, 'Montero', 'Ana', 'Cecilia', NULL, '27-20253886-5', 'acmescribania@hotmail.com', NULL),
(28, 'Nader', 'Sofia', 'Elena', NULL, '27-11935195-8', 'sofia-nader@hotmail.com', NULL),
(29, 'Nader Yappur', 'Daniel', 'Alfredo', NULL, '20-10295926-5', 'danielnaderyappur@gmail.com', NULL),
(30, 'Olmedo', 'Clara', 'Ramona', NULL, '27-16225888-0', 'Clarisa62@yahoo.com', NULL),
(31, 'Ortiz', 'José', 'Luis', NULL, '20-17386420-6', 'jlortiz15@hotmail.com', NULL),
(32, 'Oviedo', 'Fabiana', 'Carolina', NULL, '23-21899691-4', 'fcoviedo@hotmail.com', NULL),
(33, 'Paez', 'Clotilde ', 'Mabel', NULL, '27-22819074-3', 'dramabelpaez@yahoo.com.ar', NULL),
(34, 'Paez', 'Ruben', 'Marcelo', NULL, '20-29944171-8', 'ruben_mpaez22@hotmail.com', NULL),
(35, 'Pastor De Peirotti', 'Irma', NULL, NULL, '27-05178163-0', 'irma_pastor@hotmail.com', NULL),
(37, 'Peters', 'Maria', 'Agostina', NULL, '27-28106291-9', 'agostinapeters@hotmail.es', NULL),
(38, 'Ramos', 'Raul', 'Alberto Nicolas', NULL, '20-28564694-5', 'raulramos11@hotmail.com', NULL),
(39, 'Rejal', 'Rodolfo', 'Ruben', NULL, '20-11935141-4', 'rrejal@undec.edu.ar', NULL),
(40, 'Rodríguez', 'Gabriela', 'Azucena', NULL, '27-23241373-0', 'gazurodriguez@trabajo.gob.ar', NULL),
(41, 'Romano', 'Maria', 'Beatriz', NULL, '27-20380045-8', 'mariela.romano@live.com.ar', NULL),
(42, 'Ruarte Bazan', 'Roque', NULL, NULL, '20-07980533-6', 'roruarte@yahoo.com.ar', NULL),
(43, 'Salcedo', 'Cesar', 'Alberto', NULL, '20-22103815-1', 'casalcedor@gmail.com', NULL),
(44, 'Sanchez Latorre', 'Pablo', 'Daniel', NULL, '20-27698345-9', 'pablosanchezlatorre@gmail.com', NULL),
(45, 'Tobares', 'Iris', 'Selva', NULL, '27-26488246-5', 'iristobares@yahoo.com.ar', NULL),
(46, 'Varela', 'Maria', 'Cecilia', NULL, '23-16148268-4', 'mceciliavarela@hotmail.com', NULL),
(47, 'Vega Correa', 'Martín', 'Lautaro', NULL, '20-31366488-1', 'ab.martinvega@gmail.com', NULL),
(48, 'Vergara', 'Juan', 'Exequiel', NULL, '23-31449601-9', 'estudiojuridicovergara@gmail.com', NULL),
(49, 'Vesely', 'Maria Monica', 'Graciela', NULL, '23-13708276-4', 'escribanavesely@hotmail.com', NULL),
(50, 'Vicentini', 'Gisela', NULL, NULL, '27-29428155-5', 'gvicentini@undec.edu.ar', NULL),
(51, 'Vidal', 'Carlos', 'Anibal', NULL, '20-14798846-0', 'cvid10@yahoo.com.ar', NULL),
(52, 'Yappur', 'Graciela', 'Veronica', NULL, '27-28564620-6', 'gyappur@undec.edu.ar', NULL),
(53, 'Zalazar', 'Daniel', 'Eduardo', NULL, '20-29618294-0', 'abdanielzalazar@hotmail.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `id_asignatura` int(11) NOT NULL,
  `anio` int(11) DEFAULT NULL,
  `codigo` int(11) NOT NULL,
  `regimen` varchar(20) DEFAULT NULL,
  `horas_primer_cuat` int(11) DEFAULT NULL,
  `horas_segundo_cuat` int(11) DEFAULT NULL,
  `horas_anuales` int(11) DEFAULT NULL,
  `programa` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Volcado de datos para la tabla `plan`
--

INSERT INTO `plan` (`id`, `id_carrera`, `id_asignatura`, `anio`, `codigo`, `regimen`, `horas_primer_cuat`, `horas_segundo_cuat`, `horas_anuales`, `programa`) VALUES
(1, 1, 1, 1, 1, 'Anual', 0, 0, 120, 'data/abogacia/1.pdf'),
(2, 1, 2, 1, 2, 'Anual', 0, 0, 120, 'data/abogacia/2.pdf'),
(3, 1, 3, 1, 3, 'Anual', 0, 0, 120, 'data/abogacia/3.pdf'),
(4, 1, 4, 1, 4, '1C', 0, 0, 60, 'data/abogacia/4.pdf'),
(5, 1, 5, 1, 5, '2C', 0, 0, 60, 'data/abogacia/5.pdf'),
(6, 1, 6, 1, 6, '2C', 0, 0, 60, 'data/abogacia/6.pdf'),
(7, 1, 7, 2, 7, 'Anual', 0, 0, 120, 'data/abogacia/7.pdf'),
(8, 1, 8, 2, 8, 'Anual', 0, 0, 120, 'data/abogacia/8.pdf'),
(9, 1, 9, 2, 9, 'Anual', 0, 0, 120, 'data/abogacia/9.pdf'),
(10, 1, 10, 2, 10, 'Anual', 0, 0, 120, 'data/abogacia/10.pdf'),
(11, 1, 11, 2, 11, '2C', 0, 0, 60, 'data/abogacia/11.pdf'),
(12, 1, 12, 2, 12, '2C', 0, 0, 60, 'data/abogacia/12.pdf'),
(13, 1, 13, 3, 13, 'Anual', 0, 0, 120, 'data/abogacia/13.pdf'),
(14, 1, 14, 3, 14, 'Anual', 0, 0, 120, 'data/abogacia/14.pdf'),
(15, 1, 15, 3, 15, 'Anual', 0, 0, 120, 'data/abogacia/15.pdf'),
(16, 1, 16, 3, 16, 'Anual', 0, 0, 120, 'data/abogacia/16.pdf'),
(17, 1, 17, 3, 17, 'Anual', 0, 0, 120, 'data/abogacia/17.pdf'),
(18, 1, 18, 3, 18, '2C', 0, 0, 60, 'data/abogacia/18.pdf'),
(19, 1, 19, 4, 19, 'Anual', 0, 0, 120, 'data/abogacia/19.pdf'),
(20, 1, 20, 4, 20, 'Anual', 0, 0, 120, 'data/abogacia/20.pdf'),
(21, 1, 21, 4, 21, 'Anual', 0, 0, 120, 'data/abogacia/21.pdf'),
(22, 1, 22, 4, 22, 'Anual', 0, 0, 120, 'data/abogacia/22.pdf'),
(23, 1, 23, 4, 23, 'Anual', 0, 0, 120, 'data/abogacia/23.pdf'),
(24, 1, 24, 4, 24, '2C', 0, 0, 60, 'data/abogacia/24.pdf'),
(25, 1, 25, 5, 25, 'Anual', 0, 0, 120, 'data/abogacia/25.pdf'),
(26, 1, 26, 5, 26, '1C', 0, 0, 60, 'data/abogacia/26.pdf'),
(27, 1, 27, 5, 27, 'Anual', 0, 0, 120, 'data/abogacia/27.pdf'),
(28, 1, 28, 5, 28, '2C', 0, 0, 60, 'data/abogacia/28.pdf'),
(29, 1, 29, 5, 29, 'Anual', 0, 0, 120, 'data/abogacia/29.pdf'),
(30, 1, 30, 5, 30, 'Anual', 0, 0, 120, 'data/abogacia/30.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_correlatividad`
--

CREATE TABLE `tipo_correlatividad` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

--
-- Volcado de datos para la tabla `tipo_correlatividad`
--

INSERT INTO `tipo_correlatividad` (`id`, `descripcion`) VALUES
(1, 'Regularizada para cursar'),
(2, 'Aprobada para cursar'),
(3, 'Aprobada para rendir');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `persona_id` bigint(20) NOT NULL,
  `avatar` varchar(255) DEFAULT 'default.jpg',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_confirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `persona_id`, `avatar`, `created_at`, `updated_at`, `is_admin`, `is_confirmed`, `is_deleted`) VALUES
(1, 'sarevalo', '$2y$10$2Qpoxz9l/fByxZYXExkQW.6VIeymIKI3xwKQJB5.vWa2W1Ql5zi3S', 1, NULL, '2018-10-18 16:55:35', '2018-10-18 13:01:35', 1, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_grupo`
--

CREATE TABLE `user_grupo` (
  `user_id` int(11) NOT NULL,
  `grupo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_permiso`
--

CREATE TABLE `user_permiso` (
  `user_id` int(11) NOT NULL,
  `permiso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `correlatividad`
--
ALTER TABLE `correlatividad`
  ADD KEY `correlativa_tipoCorrelativa_idx` (`tipo`),
  ADD KEY `correlatividad_correlativa_de_idx` (`correlativade`),
  ADD KEY `correlativa_plan` (`id`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docente_categoria_idx` (`categoria`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD KEY `idMateria` (`id`),
  ADD KEY `idDocente` (`id_docente`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo_permiso`
--
ALTER TABLE `grupo_permiso`
  ADD PRIMARY KEY (`grupo_id`,`permiso_id`),
  ADD KEY `permiso_id_grupo` (`permiso_id`),
  ADD KEY `grupo_id` (`grupo_id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_carrera_idx` (`id_carrera`),
  ADD KEY `Plan_materia_idx` (`id_asignatura`);

--
-- Indices de la tabla `tipo_correlatividad`
--
ALTER TABLE `tipo_correlatividad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_id` (`persona_id`),
  ADD KEY `persona_id_2` (`persona_id`);

--
-- Indices de la tabla `user_grupo`
--
ALTER TABLE `user_grupo`
  ADD PRIMARY KEY (`user_id`,`grupo_id`),
  ADD KEY `grupo_id_user` (`grupo_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `user_permiso`
--
ALTER TABLE `user_permiso`
  ADD KEY `user_id_permiso` (`user_id`),
  ADD KEY `permiso_id_user` (`permiso_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT de la tabla `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `tipo_correlatividad`
--
ALTER TABLE `tipo_correlatividad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `correlatividad`
--
ALTER TABLE `correlatividad`
  ADD CONSTRAINT `correlativa_plan` FOREIGN KEY (`id`) REFERENCES `plan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `correlativa_tipoCorrelativa` FOREIGN KEY (`tipo`) REFERENCES `tipo_correlatividad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `correlatividad_correlativa_de` FOREIGN KEY (`correlativade`) REFERENCES `plan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `docente_categoria` FOREIGN KEY (`categoria`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_id_docente` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_docente` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `equipo_materia` FOREIGN KEY (`id`) REFERENCES `asignatura` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `grupo_permiso`
--
ALTER TABLE `grupo_permiso`
  ADD CONSTRAINT `grupo_id_permiso` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permiso_id_grupo` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `Plan_materia` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `plan_carrera` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `persona_id_user` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `user_grupo`
--
ALTER TABLE `user_grupo`
  ADD CONSTRAINT `grupo_id_user` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_grupo` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `user_permiso`
--
ALTER TABLE `user_permiso`
  ADD CONSTRAINT `permiso_id_user` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`),
  ADD CONSTRAINT `user_id_permiso` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
