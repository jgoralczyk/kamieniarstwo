-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 21 Cze 2023, 07:31
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kamienie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kamienie`
--

CREATE TABLE `kamienie` (
  `id_k` int(11) NOT NULL,
  `typ` varchar(50) DEFAULT NULL,
  `doplata` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `kamienie`
--

INSERT INTO `kamienie` (`id_k`, `typ`, `doplata`) VALUES
(1, 'granit', 170),
(2, 'andezyt', 133),
(3, 'dioryt', 149);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id_p` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `id_r` int(11) DEFAULT NULL,
  `cena` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id_p`, `nazwa`, `id_r`, `cena`) VALUES
(1, 'Parapety minimalistyczne', 1, '199.99'),
(2, 'Parapety designerskie', 1, '249.99'),
(3, 'Parapety nowoczesne', 1, '149.99'),
(4, 'Schody proste', 2, '599.99'),
(5, 'Schody kręcone', 2, '699.99'),
(6, 'Grobowce architektoniczne', 3, '2999.99'),
(7, 'Grobowce historyczne', 3, '3999.99'),
(8, 'Grobowce współczesne', 3, '3499.99'),
(9, 'Parapety klasyczne', 1, '179.99'),
(10, 'Parapety dekoracyjne', 1, '169.99'),
(11, 'Parapety regulowane', 1, '189.99'),
(12, 'Schody łamane', 2, '549.99'),
(13, 'Schody spiralne', 2, '499.99'),
(14, 'Schody dwubiegowe', 2, '399.99'),
(15, 'Grobowce rodzinne', 3, '2599.99'),
(16, 'Grobowce artystyczne', 3, '3199.99'),
(17, 'Schody trójbiegowe', 2, '598.99'),
(18, 'Grobowce symboliczne', 3, '2799.99'),
(19, 'Rzeźba Marmurowa', 4, '29.99'),
(20, 'Rzeźba Granitowa', 4, '39.99'),
(21, 'Rzeźba Piaskowcowa', 4, '49.99'),
(22, 'Rzeźba Alabastrowa', 4, '59.99'),
(23, 'Rzeźba Bazaltowa', 4, '69.99'),
(24, 'Schody Marmurowe', 5, '199.99'),
(25, 'Schody Granitowe', 5, '299.99'),
(26, 'Schody Piaskowcowe', 5, '399.99'),
(27, 'Schody Alabastrowe', 5, '499.99'),
(28, 'Schody Bazaltowe', 5, '599.99'),
(29, 'Pomnik Marmurowy', 6, '499.99'),
(30, 'Pomnik Granitowy', 6, '599.99'),
(31, 'Pomnik Piaskowcowy', 6, '699.99'),
(32, 'Pomnik Alabastrowy', 6, '799.99'),
(33, 'Pomnik Bazaltowy', 6, '899.99'),
(34, 'Mur Marmurowy', 7, '149.99'),
(35, 'Mur Granitowy', 7, '249.99'),
(36, 'Mur Piaskowcowy', 7, '349.99'),
(37, 'Mur Alabastrowy', 7, '449.99'),
(38, 'Mur Bazaltowy', 7, '549.99'),
(39, 'Nagrobek Marmurowy', 8, '399.99'),
(40, 'Nagrobek Granitowy', 8, '499.99'),
(41, 'Nagrobek Piaskowcowy', 8, '599.99'),
(42, 'Nagrobek Alabastrowy', 8, '699.99'),
(43, 'Nagrobek Bazaltowy', 8, '799.99'),
(44, 'Stół Marmurowy', 9, '199.99'),
(45, 'Stół Granitowy', 9, '399.99'),
(46, 'Stół Piaskowcowy', 9, '199.99'),
(47, 'Stół Alabastrowy', 9, '299.99'),
(48, 'Stół Bazaltowy', 9, '199.99');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzaje`
--

CREATE TABLE `rodzaje` (
  `id_r` int(11) NOT NULL,
  `rodzaj` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rodzaje`
--

INSERT INTO `rodzaje` (`id_r`, `rodzaj`) VALUES
(1, 'parapety'),
(2, 'schody'),
(3, 'grobowce'),
(4, 'Rzeźby'),
(5, 'Pomniki'),
(6, 'Mury'),
(7, 'Nagrobki'),
(8, 'Stoły'),
(9, 'Krzesła');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `status`
--

CREATE TABLE `status` (
  `id_s` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `status`
--

INSERT INTO `status` (`id_s`, `status`) VALUES
(1, 'zaakceptowany'),
(2, 'oczekujący'),
(3, 'odrzucony');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wiadomosci`
--

CREATE TABLE `wiadomosci` (
  `id` int(11) NOT NULL,
  `imię` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `treść` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `wiadomosci`
--

INSERT INTO `wiadomosci` (`id`, `imię`, `email`, `treść`) VALUES
(13, 'Anna Nowak', 'anna.nowak@example.com', 'Czy oferujecie usługi związane z projektowaniem i montażem blatu kuchennego z granitu?'),
(14, 'Piotr Kowalski', 'piotr.kowalski@example.com', 'Interesuje mnie zakup i montaż nagrobka z marmuru. Czy możecie dostarczyć takie produkty?'),
(15, 'Magda Wiśniewska', 'magda.wisniewska@example.com', 'Chciałabym uzyskać więcej informacji na temat dostępnych kamieni naturalnych w waszej ofercie.'),
(16, 'Tomasz Nowicki', 'tomasz.nowicki@example.com', 'Czy oferujecie usługi renowacji i polerowania blatów kamiennych?');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_z` int(11) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `telefon` varchar(9) DEFAULT NULL,
  `id_p` int(11) DEFAULT NULL,
  `id_k` int(11) DEFAULT NULL,
  `id_s` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_z`, `imie`, `nazwisko`, `telefon`, `id_p`, `id_k`, `id_s`) VALUES
(1, 'test', 'test', '123123123', 1, 3, 1),
(2, 'Test', 'test', '123123123', 15, 2, 3),
(3, 'Test2', 'test2', '456456456', 6, 3, 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kamienie`
--
ALTER TABLE `kamienie`
  ADD PRIMARY KEY (`id_k`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `id_r` (`id_r`);

--
-- Indeksy dla tabeli `rodzaje`
--
ALTER TABLE `rodzaje`
  ADD PRIMARY KEY (`id_r`);

--
-- Indeksy dla tabeli `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_s`);

--
-- Indeksy dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_z`),
  ADD KEY `id_p` (`id_p`),
  ADD KEY `id_k` (`id_k`),
  ADD KEY `id_s` (`id_s`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_z` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `produkty_ibfk_1` FOREIGN KEY (`id_r`) REFERENCES `rodzaje` (`id_r`);

--
-- Ograniczenia dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `zamowienia_ibfk_1` FOREIGN KEY (`id_p`) REFERENCES `produkty` (`id_p`),
  ADD CONSTRAINT `zamowienia_ibfk_2` FOREIGN KEY (`id_k`) REFERENCES `kamienie` (`id_k`),
  ADD CONSTRAINT `zamowienia_ibfk_3` FOREIGN KEY (`id_s`) REFERENCES `status` (`id_s`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
