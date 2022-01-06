-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2022 pada 13.27
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `table_reservation`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `meja`
--

CREATE TABLE `meja` (
  `mejaId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seatAmount` int(11) DEFAULT NULL,
  `reserved` tinyint(1) DEFAULT NULL,
  `restaurantId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `meja`
--

INSERT INTO `meja` (`mejaId`, `seatAmount`, `reserved`, `restaurantId`) VALUES
('10edf0e2-5fc2-4122-bbea-522b6a2c1343', 6, 1, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('1c3fb05d-5a96-429f-8617-8f1824d97373', 7, 1, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('1d9a4302-379f-4621-b3bb-6dff6a916b7b', 8, 0, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('28570b3d-035a-478e-8b19-e09758786d3a', 3, 0, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('3cb99962-7bf9-47ee-92b1-610c013e6d2b', 2, 0, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('53739bb9-b1f2-40db-ad15-26a155401f5e', 2, 0, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('5d553e8c-75ba-496e-831a-ea79d582a78a', 5, 0, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('5e77c103-073b-4a5b-bc34-c91d8172f8b9', 10, 0, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('8b5ce99e-4d2a-4557-ba28-cc0feeb4107d', 6, 0, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('98d8c821-3458-46da-9155-07e72adbe2e6', 3, 0, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('b8e6433c-007d-45d2-bcc9-a5ac0eaee893', 3, 0, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('ce05c773-c54e-4a3c-b9ed-6db159da6f2d', 3, 0, '134f2409-bc07-4de8-8b6a-1041aeb86a75'),
('fb6bbb13-6d51-477d-b130-79ee3b4e79a6', 4, 0, '134f2409-bc07-4de8-8b6a-1041aeb86a75');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservation`
--

CREATE TABLE `reservation` (
  `reserveTime` datetime DEFAULT NULL,
  `reserveFor` datetime DEFAULT NULL,
  `numberOfCustomer` varchar(255) DEFAULT NULL,
  `userId` varchar(255) NOT NULL,
  `mejaId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reservation`
--

INSERT INTO `reservation` (`reserveTime`, `reserveFor`, `numberOfCustomer`, `userId`, `mejaId`) VALUES
('2021-12-19 21:09:58', '2021-12-19 21:09:00', '5', '118ff68d-5dbb-4df8-9687-95e2cfb14e21', '8b5ce99e-4d2a-4557-ba28-cc0feeb4107d'),
('2021-12-19 21:18:20', '2021-12-31 21:18:00', '5', '118ff68d-5dbb-4df8-9687-95e2cfb14e21', '8b5ce99e-4d2a-4557-ba28-cc0feeb4107d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurantId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `restaurantName` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `aboutText` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `aboutImage` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `restaurantPassword` text CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `restaurant`
--

INSERT INTO `restaurant` (`restaurantId`, `restaurantName`, `aboutText`, `aboutImage`, `restaurantPassword`) VALUES
('134f2409-bc07-4de8-8b6a-1041aeb86a75', 'Restaurant B', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor i', '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', '$2b$10$PWexSjSc.dV5vYBl5geezuEVw7czPBAmtR0Qwmg.itsp0C6eYwsAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20211205143926-create-user.js'),
('20211205144219-create-meja.js'),
('20211205144337-create-reservation.js'),
('20211205144415-create-restaurant.js');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userId`, `email`, `name`, `phone`, `password`) VALUES
('118ff68d-5dbb-4df8-9687-95e2cfb14e21', 'fuloo@gmail.com', 'Fulo', '089283618387', '$2b$10$H5/2Lf7UdnWeXJEUHjZqrOrqKkVrbd01WGQ62o61HNErv5ioJhdCa'),
('671cf1f4-7d51-4c55-94c6-ae97fc3b115c', 'fulo@gmail.com', 'Fulo', '085123123133', '$2b$10$0js.3YSfmV2yBS/H4ud4uuD/wEBdPiRlLwJRUE9rftRZU1KYQNJSW'),
('f2ad3e9a-77ae-4458-afa4-7ed97e2c1b81', 'test@mail.com', 'test', '0888888888', '$2b$10$rv7aC2cvXRGTCKDmCx1aKebAoxSFsjcedqxOree.tRJ0sGQZ7Ptla');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`mejaId`),
  ADD KEY `restaurantId` (`restaurantId`);

--
-- Indeks untuk tabel `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurantId`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `meja`
--
ALTER TABLE `meja`
  ADD CONSTRAINT `meja_ibfk_1` FOREIGN KEY (`restaurantId`) REFERENCES `restaurant` (`restaurantId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;