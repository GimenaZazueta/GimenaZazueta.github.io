-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2024 a las 02:59:08
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spotifyy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista`
--

CREATE TABLE `artista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artista_canciones`
--

CREATE TABLE `artista_canciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `generos_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `generos_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Dreaming of You', 8, '00:03:45', '2023-05-15', 1, 'https://example.com/dreamingofyou.jpg'),
(2, 'Neon Nights', 6, '00:04:20', '2023-06-01', 1, 'https://example.com/neonnights.jpg'),
(3, 'Lost in the Echo', 1, '00:03:25', '2023-06-08', 1, 'https://example.com/lostintheecho.jpg'),
(4, 'Moonlight Sonata', 7, '00:06:18', '2023-06-15', 1, 'https://example.com/moonlightsonata.jpg'),
(5, 'Rhythm of the Night', 4, '00:04:30', '2023-06-22', 1, 'https://example.com/rhythmofthenight.jpg'),
(6, 'Electric Feel', 7, '00:03:50', '2023-07-01', 1, 'https://example.com/electricfeel.jpg'),
(7, 'Uptown Funk', 3, '00:04:30', '2023-07-08', 1, 'https://example.com/uptownfunk.jpg'),
(8, 'Despacito', 2, '00:03:47', '2023-07-15', 1, 'https://example.com/despacito.jpg'),
(9, 'Purple Haze', 1, '00:02:51', '2023-07-22', 1, 'https://example.com/purplehaze.jpg'),
(10, 'Havana', 7, '00:03:37', '2023-07-29', 1, 'https://example.com/havana.jpg'),
(11, 'Radioactive', 4, '00:03:06', '2023-08-05', 1, 'https://example.com/radioactive.jpg'),
(12, 'Somebody That I Used to Know', 8, '00:04:04', '2023-08-12', 1, 'https://example.com/somebody.jpg'),
(13, 'Dancing Queen', 4, '00:03:51', '2023-08-19', 1, 'https://example.com/dancingqueen.jpg'),
(14, 'Mr. Brightside', 4, '00:03:42', '2023-08-26', 1, 'https://example.com/mrbrightside.jpg'),
(15, 'Shape of You', 8, '00:03:53', '2023-09-02', 1, 'https://example.com/shapeofyou.jpg'),
(16, 'Billie Jean', 8, '00:04:54', '2023-09-09', 1, 'https://example.com/billiejean.jpg'),
(17, 'Bohemian Rhapsody', 1, '00:05:55', '2023-09-16', 1, 'https://example.com/bohemianrhapsody.jpg'),
(18, 'Take on Me', 8, '00:03:48', '2023-09-23', 1, 'https://example.com/takeonme.jpg'),
(19, 'Rolling in the Deep', 8, '00:03:48', '2023-09-30', 1, 'https://example.com/rollinginthedeep.jpg'),
(20, 'All Star', 1, '00:03:20', '2023-10-07', 1, 'https://example.com/allstar.jpg'),
(21, 'Sweet Child o\' Mine', 1, '00:05:55', '2023-10-14', 1, 'https://example.com/sweetchildomine.jpg'),
(22, 'Feel Good Inc.', 1, '00:03:41', '2023-10-21', 1, 'https://example.com/feelgoodinc.jpg'),
(23, 'La Bamba', 2, '00:02:05', '2023-10-28', 1, 'https://example.com/labamba.jpg'),
(24, 'Under Pressure', 1, '00:03:56', '2023-11-04', 1, 'https://example.com/underpressure.jpg'),
(25, 'Smells Like Teen Spirit', 1, '00:05:01', '2023-11-11', 1, 'https://example.com/smellsliketeenspirit.jpg'),
(26, 'In the Air Tonight', 1, '00:05:36', '2023-11-18', 1, 'https://example.com/intheairtonight.jpg'),
(27, 'Thriller', 8, '00:05:57', '2023-11-25', 1, 'https://example.com/thriller.jpg'),
(28, 'Hotel California', 1, '00:06:31', '2023-12-02', 1, 'https://example.com/hotelcalifornia.jpg'),
(29, 'I Will Always Love You', 8, '00:04:31', '2023-12-09', 1, 'https://example.com/iwillalwaysloveyou.jpg'),
(30, 'Let It Be', 1, '00:03:50', '2023-12-16', 1, 'https://example.com/letitbe.jpg'),
(31, 'Wonderwall', 1, '00:04:18', '2023-12-23', 1, 'https://example.com/wonderwall.jpg'),
(32, 'Sweet Home Alabama', 1, '00:04:43', '2023-12-30', 1, 'https://example.com/sweethomealabama.jpg'),
(33, 'I Want to Hold Your Hand', 1, '00:02:27', '2024-01-06', 1, 'https://example.com/iwanttoholdyourhand.jpg'),
(34, 'Hey Jude', 1, '00:07:11', '2024-01-13', 1, 'https://example.com/heyjude.jpg'),
(35, 'Every Breath You Take', 1, '00:04:13', '2024-01-20', 1, 'https://example.com/everybreathyoutake.jpg'),
(36, 'Careless Whisper', 8, '00:05:02', '2024-01-27', 1, 'https://example.com/carelesswhisper.jpg'),
(37, 'Tainted Love', 8, '00:02:41', '2024-02-03', 1, 'https://example.com/taintedlove.jpg'),
(38, 'Like a Prayer', 8, '00:05:41', '2024-02-10', 1, 'https://example.com/likeaprayer.jpg'),
(39, 'Wonderful Tonight', 1, '00:03:41', '2024-02-17', 1, 'https://example.com/wonderfultonight.jpg'),
(40, 'The Power of Love', 8, '00:05:43', '2024-02-24', 1, 'https://example.com/thepoweroflove.jpg'),
(41, 'Total Eclipse of the Heart', 8, '00:04:28', '2024-03-02', 1, 'https://example.com/totaleclipseoftheheart.jpg'),
(42, 'Nothing Compares 2 U', 8, '00:05:08', '2024-03-09', 1, 'https://example.com/nothingcompares2u.jpg'),
(43, 'Karma Chameleon', 8, '00:04:01', '2024-03-16', 1, 'https://example.com/karmachameleon.jpg'),
(44, 'I Want to Know What Love Is', 1, '00:05:00', '2024-03-23', 1, 'https://example.com/iwanttoknowwhatloveis.jpg'),
(45, 'Careless Whisper', 8, '00:05:02', '2024-03-30', 1, 'https://example.com/carelesswhisper2.jpg'),
(46, 'Call Me Maybe', 8, '00:03:13', '2024-04-06', 1, 'https://example.com/callmemaybe.jpg'),
(47, 'Eye of the Tiger', 1, '00:04:05', '2024-04-13', 1, 'https://example.com/eyeofthetiger.jpg'),
(48, 'Take My Breath Away', 8, '00:04:11', '2024-04-20', 1, 'https://example.com/takemybreathaway.jpg'),
(49, 'The Final Countdown', 1, '00:05:09', '2024-04-27', 1, 'https://example.com/thefinalcountdown.jpg'),
(50, 'You Give Love a Bad Name', 1, '00:03:44', '2024-05-04', 1, 'https://example.com/yougiveloveabadname.jpg'),
(51, 'I Just Called to Say I Love You', 8, '00:04:21', '2024-05-11', 1, 'https://example.com/ijustcalledtosayiloveyou.jpg'),
(52, 'Every Rose Has Its Thorn', 1, '00:04:20', '2024-05-18', 1, 'https://example.com/everyrosehasitsthorn.jpg'),
(53, 'Time After Time', 8, '00:04:01', '2024-05-25', 1, 'https://example.com/timeaftertime.jpg'),
(54, 'I Will Survive', 4, '00:03:17', '2024-06-01', 1, 'https://example.com/iwillsurvive.jpg'),
(55, 'Wind Beneath My Wings', 8, '00:04:54', '2024-06-08', 1, 'https://example.com/windbeneathmywings.jpg'),
(56, 'Jessie\'s Girl', 8, '00:03:14', '2024-06-15', 1, 'https://example.com/jessiesgirl.jpg'),
(57, 'What\'s Love Got to Do with It', 8, '00:03:48', '2024-06-22', 1, 'https://example.com/whatslovegottodowithit.jpg'),
(58, 'Do You Really Want to Hurt Me', 8, '00:04:23', '2024-06-29', 1, 'https://example.com/doyoureallywanttohurtme.jpg'),
(59, 'Don\'t You Want Me', 8, '00:03:57', '2024-07-06', 1, 'https://example.com/dontyouwantme.jpg'),
(60, 'Footloose', 8, '00:03:48', '2024-07-13', 1, 'https://example.com/footloose.jpg'),
(61, 'Girls Just Want to Have Fun', 8, '00:03:58', '2024-07-20', 1, 'https://example.com/girlsjustwanttohavefun.jpg'),
(62, 'Kiss', 8, '00:03:46', '2024-07-27', 1, 'https://example.com/kiss.jpg'),
(63, 'Billie Jean', 8, '00:04:54', '2024-08-03', 1, 'https://example.com/billiejean2.jpg'),
(64, 'Every Breath You Take', 8, '00:04:13', '2024-08-10', 1, 'https://example.com/everybreathyoutake2.jpg'),
(65, 'Another Brick in the Wall', 1, '00:03:59', '2024-08-17', 1, 'https://example.com/anotherbrickinthewall.jpg'),
(66, 'Another One Bites the Dust', 1, '00:03:36', '2024-08-24', 1, 'https://example.com/anotheronebitesthedust.jpg'),
(67, 'Piano Man', 1, '00:05:38', '2024-08-31', 1, 'https://example.com/pianoman.jpg'),
(68, 'Sweet Child o\' Mine', 1, '00:05:55', '2024-09-07', 1, 'https://example.com/sweetchildomine2.jpg'),
(69, 'Take on Me', 8, '00:03:48', '2024-09-14', 1, 'https://example.com/takeonme2.jpg'),
(70, 'Under Pressure', 1, '00:03:56', '2024-09-21', 1, 'https://example.com/underpressure2.jpg'),
(71, 'Another One Bites the Dust', 1, '00:03:36', '2024-09-28', 1, 'https://example.com/anotheronebitesthedust2.jpg'),
(72, 'Under Pressure', 1, '00:03:56', '2024-10-05', 1, 'https://example.com/underpressure3.jpg'),
(73, 'Stairway to Heaven', 1, '00:08:02', '2024-10-12', 1, 'https://example.com/stairwaytoheaven2.jpg'),
(74, 'Bohemian Rhapsody', 1, '00:05:55', '2024-10-19', 1, 'https://example.com/bohemianrhapsody2.jpg'),
(75, 'Bohemian Rhapsody', 1, '00:05:55', '2024-10-26', 1, 'https://example.com/bohemianrhapsody3.jpg'),
(76, 'Stairway to Heaven', 1, '00:08:02', '2024-11-02', 1, 'https://example.com/stairwaytoheaven3.jpg'),
(77, 'Bohemian Rhapsody', 1, '00:05:55', '2024-11-09', 1, 'https://example.com/bohemianrhapsody4.jpg'),
(78, 'Stairway to Heaven', 1, '00:08:02', '2024-11-16', 1, 'https://example.com/stairwaytoheaven4.jpg'),
(79, 'Bohemian Rhapsody', 1, '00:05:55', '2024-11-23', 1, 'https://example.com/bohemianrhapsody5.jpg'),
(80, 'Stairway to Heaven', 1, '00:08:02', '2024-11-30', 1, 'https://example.com/stairwaytoheaven5.jpg'),
(81, 'Bohemian Rhapsody', 1, '00:05:55', '2024-12-07', 1, 'https://example.com/bohemianrhapsody6.jpg'),
(82, 'Stairway to Heaven', 1, '00:08:02', '2024-12-14', 1, 'https://example.com/stairwaytoheaven6.jpg'),
(83, 'Bohemian Rhapsody', 1, '00:05:55', '2024-12-21', 1, 'https://example.com/bohemianrhapsody7.jpg'),
(84, 'Stairway to Heaven', 1, '00:08:02', '2024-12-28', 1, 'https://example.com/stairwaytoheaven7.jpg'),
(85, 'Bohemian Rhapsody', 1, '00:05:55', '2025-01-04', 1, 'https://example.com/bohemianrhapsody8.jpg'),
(86, 'Stairway to Heaven', 1, '00:08:02', '2025-01-11', 1, 'https://example.com/stairwaytoheaven8.jpg'),
(87, 'Bohemian Rhapsody', 1, '00:05:55', '2025-01-18', 1, 'https://example.com/bohemianrhapsody9.jpg'),
(88, 'Stairway to Heaven', 1, '00:08:02', '2025-01-25', 1, 'https://example.com/stairwaytoheaven9.jpg'),
(89, 'Bohemian Rhapsody', 1, '00:05:55', '2025-02-01', 1, 'https://example.com/bohemianrhapsody10.jpg'),
(90, 'Stairway to Heaven', 1, '00:08:02', '2025-02-08', 1, 'https://example.com/stairwaytoheaven10.jpg'),
(91, 'Bohemian Rhapsody', 1, '00:05:55', '2025-02-15', 1, 'https://example.com/bohemianrhapsody11.jpg'),
(92, 'Stairway to Heaven', 1, '00:08:02', '2025-02-22', 1, 'https://example.com/stairwaytoheaven11.jpg'),
(93, 'Bohemian Rhapsody', 1, '00:05:55', '2025-03-01', 1, 'https://example.com/bohemianrhapsody12.jpg'),
(94, 'Stairway to Heaven', 1, '00:08:02', '2025-03-08', 1, 'https://example.com/stairwaytoheaven12.jpg'),
(95, 'Bohemian Rhapsody', 1, '00:05:55', '2025-03-15', 1, 'https://example.com/bohemianrhapsody13.jpg'),
(96, 'Stairway to Heaven', 1, '00:08:02', '2025-03-22', 1, 'https://example.com/stairwaytoheaven13.jpg'),
(97, 'Bohemian Rhapsody', 1, '00:05:55', '2025-03-29', 1, 'https://example.com/bohemianrhapsody14.jpg'),
(98, 'Stairway to Heaven', 1, '00:08:02', '2025-04-05', 1, 'https://example.com/stairwaytoheaven14.jpg'),
(99, 'Bohemian Rhapsody', 1, '00:05:55', '2025-04-12', 1, 'https://example.com/bohemianrhapsody15.jpg'),
(100, 'Stairway to Heaven', 1, '00:08:02', '2025-04-19', 1, 'https://example.com/stairwaytoheaven15.jpg'),
(101, 'Bohemian Rhapsody', 1, '00:05:55', '2025-04-26', 1, 'https://example.com/bohemianrhapsody16.jpg'),
(102, 'Stairway to Heaven', 1, '00:08:02', '2025-05-03', 1, 'https://example.com/stairwaytoheaven16.jpg'),
(103, 'Bohemian Rhapsody', 1, '00:05:55', '2025-05-10', 1, 'https://example.com/bohemianrhapsody17.jpg'),
(104, 'Stairway to Heaven', 1, '00:08:02', '2025-05-17', 1, 'https://example.com/stairwaytoheaven17.jpg'),
(105, 'Bohemian Rhapsody', 1, '00:05:55', '2025-05-24', 1, 'https://example.com/bohemianrhapsody18.jpg'),
(106, 'Stairway to Heaven', 1, '00:08:02', '2025-05-31', 1, 'https://example.com/stairwaytoheaven18.jpg'),
(107, 'Bohemian Rhapsody', 1, '00:05:55', '2025-06-07', 1, 'https://example.com/bohemianrhapsody19.jpg'),
(108, 'Stairway to Heaven', 1, '00:08:02', '2025-06-14', 1, 'https://example.com/stairwaytoheaven19.jpg'),
(109, 'Bohemian Rhapsody', 1, '00:05:55', '2025-06-21', 1, 'https://example.com/bohemianrhapsody20.jpg'),
(110, 'Stairway to Heaven', 1, '00:08:02', '2025-06-28', 1, 'https://example.com/stairwaytoheaven20.jpg'),
(111, 'Bohemian Rhapsody', 1, '00:05:55', '2025-07-05', 1, 'https://example.com/bohemianrhapsody21.jpg'),
(112, 'Stairway to Heaven', 1, '00:08:02', '2025-07-12', 1, 'https://example.com/stairwaytoheaven21.jpg'),
(113, 'Bohemian Rhapsody', 1, '00:05:55', '2025-07-19', 1, 'https://example.com/bohemianrhapsody22.jpg'),
(114, 'Stairway to Heaven', 1, '00:08:02', '2025-07-26', 1, 'https://example.com/stairwaytoheaven22.jpg'),
(115, 'Bohemian Rhapsody', 1, '00:05:55', '2025-08-02', 1, 'https://example.com/bohemianrhapsody23.jpg'),
(116, 'Stairway to Heaven', 1, '00:08:02', '2025-08-09', 1, 'https://example.com/stairwaytoheaven23.jpg'),
(117, 'Bohemian Rhapsody', 1, '00:05:55', '2025-08-16', 1, 'https://example.com/bohemianrhapsody24.jpg'),
(118, 'Stairway to Heaven', 1, '00:08:02', '2025-08-23', 1, 'https://example.com/stairwaytoheaven24.jpg'),
(119, 'Bohemian Rhapsody', 1, '00:05:55', '2025-08-30', 1, 'https://example.com/bohemianrhapsody25.jpg'),
(120, 'Stairway to Heaven', 1, '00:08:02', '2025-09-06', 1, 'https://example.com/stairwaytoheaven25.jpg'),
(121, 'Bohemian Rhapsody', 1, '00:05:55', '2025-09-13', 1, 'https://example.com/bohemianrhapsody26.jpg'),
(122, 'Stairway to Heaven', 1, '00:08:02', '2025-09-20', 1, 'https://example.com/stairwaytoheaven26.jpg'),
(123, 'Bohemian Rhapsody', 1, '00:05:55', '2025-09-27', 1, 'https://example.com/bohemianrhapsody27.jpg'),
(124, 'Stairway to Heaven', 1, '00:08:02', '2025-10-04', 1, 'https://example.com/stairwaytoheaven27.jpg'),
(125, 'Bohemian Rhapsody', 1, '00:05:55', '2025-10-11', 1, 'https://example.com/bohemianrhapsody28.jpg'),
(126, 'Stairway to Heaven', 1, '00:08:02', '2025-10-18', 1, 'https://example.com/stairwaytoheaven28.jpg'),
(127, 'Bohemian Rhapsody', 1, '00:05:55', '2025-10-25', 1, 'https://example.com/bohemianrhapsody29.jpg'),
(128, 'Stairway to Heaven', 1, '00:08:02', '2025-11-01', 1, 'https://example.com/stairwaytoheaven29.jpg'),
(129, 'Bohemian Rhapsody', 1, '00:05:55', '2025-11-08', 1, 'https://example.com/bohemianrhapsody30.jpg'),
(130, 'Stairway to Heaven', 1, '00:08:02', '2025-11-15', 1, 'https://example.com/stairwaytoheaven30.jpg'),
(131, 'Bohemian Rhapsody', 1, '00:05:55', '2025-11-22', 1, 'https://example.com/bohemianrhapsody31.jpg'),
(132, 'Stairway to Heaven', 1, '00:08:02', '2025-11-29', 1, 'https://example.com/stairwaytoheaven31.jpg'),
(133, 'Bohemian Rhapsody', 1, '00:05:55', '2025-12-06', 1, 'https://example.com/bohemianrhapsody32.jpg'),
(134, 'Stairway to Heaven', 1, '00:08:02', '2025-12-13', 1, 'https://example.com/stairwaytoheaven32.jpg'),
(135, 'Bohemian Rhapsody', 1, '00:05:55', '2025-12-20', 1, 'https://example.com/bohemianrhapsody33.jpg'),
(136, 'Stairway to Heaven', 1, '00:08:02', '2025-12-27', 1, 'https://example.com/stairwaytoheaven33.jpg'),
(137, 'Bohemian Rhapsody', 1, '00:05:55', '2026-01-03', 1, 'https://example.com/bohemianrhapsody34.jpg'),
(138, 'Stairway to Heaven', 1, '00:08:02', '2026-01-10', 1, 'https://example.com/stairwaytoheaven34.jpg'),
(139, 'Bohemian Rhapsody', 1, '00:05:55', '2026-01-17', 1, 'https://example.com/bohemianrhapsody35.jpg'),
(140, 'Stairway to Heaven', 1, '00:08:02', '2026-01-24', 1, 'https://example.com/stairwaytoheaven35.jpg'),
(141, 'Bohemian Rhapsody', 1, '00:05:55', '2026-01-31', 1, 'https://example.com/bohemianrhapsody36.jpg'),
(142, 'Stairway to Heaven', 1, '00:08:02', '2026-02-07', 1, 'https://example.com/stairwaytoheaven36.jpg'),
(143, 'Bohemian Rhapsody', 1, '00:05:55', '2026-02-14', 1, 'https://example.com/bohemianrhapsody37.jpg'),
(144, 'Stairway to Heaven', 1, '00:08:02', '2026-02-21', 1, 'https://example.com/stairwaytoheaven37.jpg'),
(145, 'Bohemian Rhapsody', 1, '00:05:55', '2026-02-28', 1, 'https://example.com/bohemianrhapsody38.jpg'),
(146, 'Stairway to Heaven', 1, '00:08:02', '2026-03-07', 1, 'https://example.com/stairwaytoheaven38.jpg'),
(147, 'Bohemian Rhapsody', 1, '00:05:55', '2026-03-14', 1, 'https://example.com/bohemianrhapsody39.jpg'),
(148, 'Stairway to Heaven', 1, '00:08:02', '2026-03-21', 1, 'https://example.com/stairwaytoheaven39.jpg'),
(149, 'Bohemian Rhapsody', 1, '00:05:55', '2026-03-28', 1, 'https://example.com/bohemianrhapsody40.jpg'),
(150, 'Stairway to Heaven', 1, '00:08:02', '2026-04-04', 1, 'https://example.com/stairwaytoheaven40.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Rock'),
(2, 'Banda'),
(3, 'Metal'),
(4, 'Disco'),
(5, 'Alternative'),
(6, 'Clasica'),
(7, 'Jazz'),
(8, 'Pop');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Individual', 129),
(2, 'Duo', 169),
(3, 'Familiar', 199);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `duracion` time NOT NULL,
  `total_canciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist_canciones`
--

CREATE TABLE `playlist_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membresias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresias_id`) VALUES
(1, 'Juan Pérez', 'juan.perez@example.com', 2),
(2, 'María González', 'maria.gonzalez@example.com', 1),
(3, 'Carlos Sánchez', 'carlos.sanchez@example.com', 2),
(4, 'Laura Martínez', 'laura.martinez@example.com', 3),
(5, 'Pedro López', 'pedro.lopez@example.com', 3),
(6, 'Ana Rodríguez', 'ana.rodriguez@example.com', 1),
(7, 'Diego Hernández', 'diego.hernandez@example.com', 3),
(8, 'Sofía Díaz', 'sofia.diaz@example.com', 2),
(9, 'Pablo Ruiz', 'pablo.ruiz@example.com', 3),
(10, 'Elena Fernández', 'elena.fernandez@example.com', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `cancion_id` (`cancion_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generos_id` (`generos_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cancion_id` (`cancion_id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresias_id` (`membresias_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artista`
--
ALTER TABLE `artista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artista_canciones`
--
ALTER TABLE `artista_canciones`
  ADD CONSTRAINT `artista_canciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artista` (`id`),
  ADD CONSTRAINT `artista_canciones_ibfk_2` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`generos_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist_canciones`
--
ALTER TABLE `playlist_canciones`
  ADD CONSTRAINT `playlist_canciones_ibfk_1` FOREIGN KEY (`cancion_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlist_canciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresias_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
