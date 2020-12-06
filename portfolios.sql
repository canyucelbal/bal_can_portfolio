-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2020 at 10:40 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfoliodata`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(20) NOT NULL,
  `image` varchar(25) NOT NULL,
  `imageb` varchar(25) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `name`, `description`, `date`, `image`, `imageb`) VALUES
(2, 'Bouncing Balls', 'Asymmetrically bouncing balls by pushing', '2020', 'balls.gif', 'ballsb.gif'),
(3, 'Banya Logo', 'Logo animation of the imaginary brand Banya', '2020', 'banyalogo.gif', 'banyalogob.gif'),
(4, 'Business Card', 'Eco Culinarius business card sample', '2019', 'businesscard.png', 'businesscardb.png'),
(5, 'Demo Reel Intro', 'Demo reel intro sample', '2020', 'demoreel.gif', 'demoreelb.gif'),
(6, 'Data Visualisation - Olympics', 'Data visualisation mockup of the number of olympics medals by country', '2019', 'flags.jpg', 'flagsb.jpg'),
(7, '3D Room Work', 'Hyatt Hotel Room', '2019', 'hyatt.jpg', 'hyattb.jpg'),
(8, 'Magazine Spread', 'Double page spread sample of Banya cosmetics brand', '2020', 'magazine.png', 'magazineb.png'),
(9, 'Cosmetic Products', 'Cosmetic products styleframes', '2020', 'makeup.gif', 'makeupb.gif'),
(10, 'Nickelodeon Logo', 'Ending of a Nickelodeon TV Bumper', '2020', 'nickelodeon.gif', 'nickelodeonb.gif'),
(11, 'Samba Dancer', '3D Motion Design of a Hairy Samba Dancer', '2020', 'samba.gif', 'sambab.gif'),
(12, 'Snowglobe', '3D snowglobe work', '2019', 'snowglobe.jpg', 'snowglobeb.jpg'),
(14, 'Tetley\'s Beer', '3D Beer Bottles of Tetley\'s and Huggies brand mashup', '2019', 'tetleys.jpg', 'tetleysb.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
