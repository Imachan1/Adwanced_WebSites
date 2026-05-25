-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 25, 2026 at 03:06 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tworzenie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `IDautor` bigint(20) UNSIGNED NOT NULL,
  `nazwisko` char(30) DEFAULT NULL,
  `imie` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autorzy`
--

INSERT INTO `autorzy` (`IDautor`, `nazwisko`, `imie`) VALUES
(1, 'Mickiewicz', 'Adam'),
(2, 'Kochanowski', 'Jan'),
(3, 'Prus', 'Bolesław'),
(4, 'Słowacki', 'Juliusz'),
(5, 'Sienkiewicz', 'Henryk');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `czytelnicy`
--

CREATE TABLE `czytelnicy` (
  `IDczytelnik` bigint(20) UNSIGNED NOT NULL,
  `czytImie` char(30) DEFAULT NULL,
  `czytNazwisko` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `czytelnicy`
--

INSERT INTO `czytelnicy` (`IDczytelnik`, `czytImie`, `czytNazwisko`) VALUES
(1, 'Adam', 'Kowalski'),
(2, 'Barbara', 'Kowalska'),
(3, 'Jan', 'Nowak'),
(4, 'Barnaba', 'Nowak');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `IDksiazka` bigint(20) UNSIGNED NOT NULL,
  `tytul` char(30) DEFAULT NULL,
  `autor` int(11) DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `dataZakupu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` (`IDksiazka`, `tytul`, `autor`, `cena`, `dataZakupu`) VALUES
(1, 'Pan Tadeusz', 1, 12, '1999-12-01'),
(2, 'Grażyna', 1, 22, '2019-12-01'),
(3, 'Ballady i romanse', 1, 15, '1987-11-15'),
(4, 'Pan Tadeusz', 1, 33, '2009-01-22'),
(5, 'Pan Tadeusz', 1, 55, '2009-12-01'),
(6, 'Treny', 2, 78, '1999-12-01'),
(7, 'Fraszki', 2, 65, '1959-10-11'),
(8, 'Treny', 2, 35, '2019-03-01'),
(9, 'Treny', 2, 69, '2006-01-22'),
(10, 'Fraszki', 2, 44, '1966-12-01'),
(11, 'Emancypantki', 3, 69, '2001-12-01'),
(12, 'Emancypantki', 3, 99, '2011-05-09'),
(13, 'Emancypantki', 3, 25, '2025-08-21'),
(14, 'Emancypantki', 3, 75, '2011-11-11'),
(15, 'Emancypantki', 3, 33, '2031-06-16'),
(16, 'Ogniem i mieczem', 5, 69, '2001-12-01'),
(17, 'Potop', 5, 159, '2011-12-01'),
(18, 'Pan Wołodiowski', 5, 222, '2021-02-16'),
(19, 'Krzyżacy', 5, 147, '2051-09-01'),
(20, 'Quo vadis', 5, 25, '2001-12-01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wypozyczenia`
--

CREATE TABLE `wypozyczenia` (
  `IDczytelnik` int(11) NOT NULL,
  `IDksiazka` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`IDczytelnik`, `IDksiazka`) VALUES
(1, 3),
(2, 15),
(2, 10),
(3, 19);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`IDautor`),
  ADD UNIQUE KEY `IDautor` (`IDautor`);

--
-- Indeksy dla tabeli `czytelnicy`
--
ALTER TABLE `czytelnicy`
  ADD PRIMARY KEY (`IDczytelnik`),
  ADD UNIQUE KEY `IDczytelnik` (`IDczytelnik`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`IDksiazka`),
  ADD UNIQUE KEY `IDksiazka` (`IDksiazka`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `IDautor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `czytelnicy`
--
ALTER TABLE `czytelnicy`
  MODIFY `IDczytelnik` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `IDksiazka` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
