-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 10:29 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sklep_gitar`
--

-- --------------------------------------------------------

--
-- Table structure for table `gitary`
--

CREATE TABLE `gitary` (
  `id_gitary` int(11) NOT NULL,
  `model_gitary` varchar(50) NOT NULL,
  `ilosc_strun` int(11) NOT NULL,
  `rodzaj_gitary` varchar(20) NOT NULL,
  `id_producenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gitary`
--

INSERT INTO `gitary` (`id_gitary`, `model_gitary`, `ilosc_strun`, `rodzaj_gitary`, `id_producenta`) VALUES
(1, 'Les Paul Standard 60s', 6, 'elektryczna', 1),
(2, 'Les Paul Standard 50s', 6, 'elektryczna', 1),
(3, 'Les Paul Junior', 6, 'elektryczna', 2),
(4, 'Les Paul Studio', 6, 'elektryczna', 2),
(5, '50s J-50 Original', 6, 'akustyczna', 1),
(6, '60s J-40 Original', 6, 'akustyczna', 1),
(7, 'Harley Benton Progressive Series', 7, 'elektryczna', 2);

-- --------------------------------------------------------

--
-- Table structure for table `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `telefon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `imie`, `nazwisko`, `telefon`) VALUES
(-227577996, '[{\"d', 'b\":\"sklep_gitar\",\"table\":\"recenzje\"},{\"db\":\"sklep_gitar\",\"table\":\"gitary\"},{\"db\":\"sklep_gitar\",\"table\":\"producent\"},{\"db\":\"sklep_', 'gitar\",\"table\":\"klienci\"},{\"db\"'),
(1, 'Hubert', 'Małkowski', '938493483'),
(2, 'Jakub', 'Wilczek', '933493456'),
(3, 'Bartek', 'Sitek', '123493456'),
(4, 'Donald', 'Kobuch', '124235456'),
(5, 'Jeży', 'Alicjan', '456235456'),
(6, 'Gracjan', 'Trendewicz', '456235123'),
(7, 'Mikołaj', 'Święty', '678235123');

-- --------------------------------------------------------

--
-- Stand-in structure for view `producenci_gitar`
-- (See below for the actual view)
--
CREATE TABLE `producenci_gitar` (
`ilosc_strun` int(11)
,`nazwa_producenta` varchar(55)
);

-- --------------------------------------------------------

--
-- Table structure for table `producent`
--

CREATE TABLE `producent` (
  `id_producenta` int(11) NOT NULL,
  `nazwa_producenta` varchar(55) NOT NULL,
  `telefon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producent`
--

INSERT INTO `producent` (`id_producenta`, `nazwa_producenta`, `telefon`) VALUES
(1, 'Gibson', '678235123'),
(2, 'Harley Benton', '123235123');

-- --------------------------------------------------------

--
-- Table structure for table `recenzje`
--

CREATE TABLE `recenzje` (
  `id_recenzji` int(11) NOT NULL,
  `id_gitary` int(11) NOT NULL,
  `recenzja` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recenzje`
--

INSERT INTO `recenzje` (`id_recenzji`, `id_gitary`, `recenzja`) VALUES
(1, 1, 'Bardzo fajna gitara polecam'),
(2, 2, 'Bardzo fajna gitara polecam również'),
(3, 3, 'Nie podoba mi się'),
(4, 4, 'Beznadzieja...'),
(5, 4, 'Niczego sobie'),
(6, 5, 'Całkiem całkiem'),
(7, 6, 'Żenada...');

-- --------------------------------------------------------

--
-- Stand-in structure for view `recenzje_gitar`
-- (See below for the actual view)
--
CREATE TABLE `recenzje_gitar` (
`model_gitary` varchar(50)
,`recenzja` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `struny`
-- (See below for the actual view)
--
CREATE TABLE `struny` (
`maksymalna ilosc strun` int(11)
,`model_gitary` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `union_test`
-- (See below for the actual view)
--
CREATE TABLE `union_test` (
`imie` varchar(50)
,`nazwisko` varchar(50)
,`data_zamowienia` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zamowienia` int(11) NOT NULL,
  `id_gitary` int(11) NOT NULL,
  `data_zamowienia` date NOT NULL,
  `id_klienta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`id_zamowienia`, `id_gitary`, `data_zamowienia`, `id_klienta`) VALUES
(1, 1, '2022-01-20', 1),
(2, 2, '2022-01-20', 2),
(3, 3, '2022-01-20', 2),
(4, 3, '2022-01-20', 4),
(5, 5, '2022-01-20', 4),
(6, 5, '2022-01-20', 6),
(7, 7, '2022-01-20', 7);

-- --------------------------------------------------------

--
-- Structure for view `producenci_gitar`
--
DROP TABLE IF EXISTS `producenci_gitar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `producenci_gitar`  AS SELECT DISTINCT `gitary`.`ilosc_strun` AS `ilosc_strun`, `producent`.`nazwa_producenta` AS `nazwa_producenta` FROM (`gitary` join `producent` on(`gitary`.`id_producenta` = `producent`.`id_producenta`)) WHERE `gitary`.`model_gitary` like 'H%' ;

-- --------------------------------------------------------

--
-- Structure for view `recenzje_gitar`
--
DROP TABLE IF EXISTS `recenzje_gitar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `recenzje_gitar`  AS SELECT `gitary`.`model_gitary` AS `model_gitary`, `recenzje`.`recenzja` AS `recenzja` FROM (`gitary` join `recenzje` on(`gitary`.`id_gitary` = `recenzje`.`id_gitary`)) WHERE `gitary`.`ilosc_strun` = 6 GROUP BY `gitary`.`id_gitary` ;

-- --------------------------------------------------------

--
-- Structure for view `struny`
--
DROP TABLE IF EXISTS `struny`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `struny`  AS SELECT max(`gitary`.`ilosc_strun`) AS `maksymalna ilosc strun`, `gitary`.`model_gitary` AS `model_gitary` FROM `gitary` WHERE (select `gitary`.`rodzaj_gitary` = 'elektryczna' from `gitary` where `gitary`.`model_gitary` like 'Les%' limit 1) ;

-- --------------------------------------------------------

--
-- Structure for view `union_test`
--
DROP TABLE IF EXISTS `union_test`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `union_test`  AS SELECT `klienci`.`imie` AS `imie`, `klienci`.`nazwisko` AS `nazwisko`, `zamowienia`.`data_zamowienia` AS `data_zamowienia` FROM (`klienci` join `zamowienia` on(`klienci`.`id_klienta` = `zamowienia`.`id_klienta`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gitary`
--
ALTER TABLE `gitary`
  ADD PRIMARY KEY (`id_gitary`),
  ADD KEY `FK_4ab52f28-d403-4681-b9c1-6c68d6d5a71b` (`id_producenta`);

--
-- Indexes for table `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indexes for table `producent`
--
ALTER TABLE `producent`
  ADD PRIMARY KEY (`id_producenta`);

--
-- Indexes for table `recenzje`
--
ALTER TABLE `recenzje`
  ADD PRIMARY KEY (`id_recenzji`),
  ADD KEY `FK_8ceb35d4-946a-4d41-a2b8-b0a93606c41d` (`id_gitary`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zamowienia`),
  ADD KEY `FK_05e27fb2-15b5-4545-909e-289032eefe5d` (`id_gitary`),
  ADD KEY `FK_b4a5b888-2350-43df-b2eb-c9a5b9f8683a` (`id_klienta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `producent`
--
ALTER TABLE `producent`
  MODIFY `id_producenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `recenzje`
--
ALTER TABLE `recenzje`
  MODIFY `id_recenzji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zamowienia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gitary`
--
ALTER TABLE `gitary`
  ADD CONSTRAINT `FK_4ab52f28-d403-4681-b9c1-6c68d6d5a71b` FOREIGN KEY (`id_producenta`) REFERENCES `producent` (`id_producenta`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `recenzje`
--
ALTER TABLE `recenzje`
  ADD CONSTRAINT `FK_8ceb35d4-946a-4d41-a2b8-b0a93606c41d` FOREIGN KEY (`id_gitary`) REFERENCES `gitary` (`id_gitary`);

--
-- Constraints for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `FK_05e27fb2-15b5-4545-909e-289032eefe5d` FOREIGN KEY (`id_gitary`) REFERENCES `gitary` (`id_gitary`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_b4a5b888-2350-43df-b2eb-c9a5b9f8683a` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
