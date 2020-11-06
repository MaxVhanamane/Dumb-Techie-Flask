-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2020 at 03:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dumbtechie`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `srno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`srno`, `name`, `phone_num`, `email`, `msg`, `date`) VALUES
(1, 'first user', '8546864587', 'xyz@gmail.com', 'first msg', '2020-09-25 13:07:53'),
(3, 'Ronak group', '8548526242', 'rounak@123gmail.com', 'I live in Raunak city', '2020-09-25 16:12:28'),
(4, 'Ram', '151515151511', 'asad@gmail.com', 'hi there', '2020-09-30 01:35:29'),
(5, 'xyz', '8487548642', 'xyz@gmail.com', 'will it go???', '2020-09-30 23:34:35'),
(6, 'xyz', '8487548642', 'xyz@gmail.com', 'will it go???', '2020-09-30 23:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `srno` int(50) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`srno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'How is memory managed in Python?', 'Memory management', 'first-post', 'Memory management in python is managed by Python private heap space. All Python objects and data structures are located in a private heap. The programmer does not have access to this private heap. The python interpreter takes care of this instead.\r\nThe allocation of heap space for Python objects is done by Python’s memory manager. The core API gives access to some tools for the programmer to code.\r\nPython also has an inbuilt garbage collector, which recycles all the unused memory and so that it can be made available to the heap space.', 'about-bg.jpg', '2020-11-06 18:32:05'),
(2, 'What is screen burn-in???', 'Screen burn in issue', 'screen-burn', 'If you spend long enough debating the merits of LCD vs OLED display technologies, eventually someone will touch upon the subject of dreaded OLED screen burn in. The point made is that OLED displays will inevitably suffer from horrible looking artifacts over time, while LCD won’t. But like most of these debates, you’ll probably hear as many overblown anecdotes as you will actual facts about the issue.\r\n\r\nYou may never have experienced it for yourself, but many consumers are wary about the possibility of burn in when pondering their next expensive smartphone purchase. Particularly as flagship smartphones have now universally adopted OLED display technology. To settle any concerns, we’re going to answer all the key questions — what is screen burn in, why does it happen, and what can I do to avoid it?\r\n\r\n', 'about-bg.jpg', '2020-11-06 18:33:09'),
(3, 'What is type conversion in Python?', 'Type conversion in python', 'third-post', ' Type conversion refers to the conversion of one data type iinto another.\r\n\r\nint() – converts any data type into integer type\r\n\r\nfloat() – converts any data type into float type\r\n\r\nord() – converts characters into integer\r\n\r\nhex() – converts integers to hexadecimal\r\n\r\noct() – converts integer to octal\r\n\r\ntuple() – This function is used to convert to a tuple.\r\n\r\nset() – This function returns the type after converting to set.\r\n\r\nlist() – This function is used to convert any data type to a list type.\r\n\r\ndict() – This function is used to convert a tuple of order (key,value) into a dictionary.\r\n\r\nstr() – Used to convert integer into a string.', 'about-bg.jpg', '2020-11-06 18:36:23'),
(4, 'How to install Python on Windows and set path variable?', 'Installing Python on Windows', 'fourth-post', 'To install Python on Windows, follow the below steps:\r\n\r\nInstall python from this link: https://www.python.org/downloads/\r\nAfter this, install it on your PC. Look for the location where PYTHON has been installed on your PC using the following command on your command prompt: cmd python. \r\nThen go to advanced system settings and add a new variable and name it as PYTHON_NAME and paste the copied path.\r\nLook for the path variable, select its value and select ‘edit’.\r\nAdd a semicolon towards the end of the value if it’s not present and then type %PYTHON_HOME% ', 'about-bg.jpg', '2020-11-06 18:37:40'),
(5, 'How can you generate random numbers in Python?', 'generating random numbers', 'fifth-post', 'Random module is the standard module that is used to generate a random number. The method is defined as:\r\n\r\n1)import random\r\n2)random.random\r\nThe statement random.random() method return the floating point number that is in the range of [0, 1). The function generates random float numbers. The methods that are used with the random class are the bound methods of the hidden instances. The instances of the Random can be done to show the multi-threading programs that creates a different instance of individual threads. The other random generators that are used in this are:\r\n\r\nrandrange(a, b): it chooses an integer and define the range in-between [a, b). It returns the elements by selecting it randomly from the range that is specified. It doesn’t build a range object.\r\nuniform(a, b): it chooses a floating point number that is defined in the range of [a,b).Iyt returns the floating point number\r\nnormalvariate(mean, sdev): it is used for the normal distribution where the mu is a mean and the sdev is a sigma that is used for standard deviation.\r\nThe Random class that is used and instantiated creates an independent multiple random number generators.', 'about-bg.jpg', '2020-11-06 18:40:06'),
(6, 'What is the difference between range & xrange?', 'range & xrange', 'sixth-post', 'For the most part, xrange and range are the exact same in terms of functionality. They both provide a way to generate a list of integers for you to use, however you please. The only difference is that range returns a Python list object and x range returns an xrange object.\r\n\r\nThis means that xrange doesn’t actually generate a static list at run-time like range does. It creates the values as you need them with a special technique called yielding. This technique is used with a type of object known as generators. That means that if you have a really gigantic range you’d like to generate a list for, say one billion, xrange is the function to use.\r\n\r\nThis is especially true if you have a really memory sensitive system such as a cell phone that you are working with, as range will use as much memory as it can to create your array of integers, which can result in a Memory Error and crash your program. It’s a memory hungry beast.', 'about-bg.jpg', '2020-11-06 18:43:53'),
(7, 'Can comments be used in JSON?', 'comments in JSON ', 'seventh-post', 'JSON does not support comments. It was also never intended to be used for configuration files where comments would be needed. Hjson is a configuration file format for humans. Relaxed syntax, fewer mistakes, more comments.', 'about-bg.jpg', '2020-11-06 19:15:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `srno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `srno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
