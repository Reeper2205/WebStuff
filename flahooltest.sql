-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2014 at 06:27 PM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `flahooltest`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `user_id`) VALUES
(1, 0),
(1, 0),
(2, 0),
(3, 0),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `user_id` int(20) NOT NULL,
  `date` date NOT NULL,
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`user_id`, `date`, `post_id`, `title`, `body`) VALUES
(1, '2014-06-03', 1, 'a', 'This is the first Post'),
(1, '2014-06-03', 6, 'b', 'Hello world'),
(1, '2014-06-03', 7, 'c', 'Hello world 2'),
(1, '2014-06-03', 8, 'd', 'Testing'),
(1, '2014-06-03', 9, 'e', 'Testing'),
(2, '2014-06-03', 11, 'f', 'Yo yo yo yo yo yo 			'),
(2, '2014-06-03', 12, 'g', 'Hello world again		'),
(3, '2014-06-03', 13, 'h', 'test test			,'),
(4, '2014-06-03', 14, 'i', 'This better work			'),
(3, '2014-06-03', 15, 'j', 'test			'),
(3, '2014-06-03', 16, 'k', '	ppp			'),
(2, '2014-06-03', 17, 'l', '	kkk			'),
(4, '2014-06-03', 18, 'm', 'Celtic Pure water		'),
(1, '0000-00-00', 19, 'n', 'Date Test			'),
(1, '2014-06-04', 20, 'o', '	date test 2			'),
(1, '2014-06-04', 21, 'This is a test				', ''),
(1, '2014-06-04', 22, 'Test again		', ''),
(4, '2014-06-04', 23, 'Joe test			', 'Joe test				'),
(1, '2014-06-04', 24, 'TinyMCE Test', '<h1>Heading</h1>\r\n<p><strong>Bold</strong></p>\r\n<p><em><strong>Italic</strong></em></p>\r\n<h6><em><strong>Heading small</strong></em></h6>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salt` varchar(10) NOT NULL,
  `Name` varchar(20) CHARACTER SET hp8 NOT NULL,
  `password` varchar(20) CHARACTER SET hp8 NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `salt`, `Name`, `password`, `group_id`) VALUES
(1, '', 'Dave', 'password', 1),
(2, '', 'Karl', 'password', 1),
(3, '', 'Bill', 'password', 2),
(4, '', 'joe', 'password', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
