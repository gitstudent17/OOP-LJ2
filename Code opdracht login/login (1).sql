-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 03 apr 2025 om 14:26
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` text NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(6, 'Jan', NULL, 'j', 'user', '2025-02-28 13:41:03'),
(7, 'Peter1', NULL, 'f', 'user', '2025-02-28 14:00:24'),
(8, 'admin', NULL, 'admin', 'user', '2025-03-05 07:38:46'),
(9, 'hgh', NULL, '$2y$10$RSmiLGgWxtJ.F7K/hAJ6xe8HyK5J8YMyjGACPg6ctDkw/u2bHaa46', 'user', '2025-03-05 08:27:57'),
(10, 'KLM', 'KLM@klm.nl', '$2y$10$9MBpkTGbZ2ZXSK8fpRVqauNHz1JKaVr5lAZ82mkFthZplCnPkuo2m', 'user', '2025-03-10 07:35:41'),
(11, 'l.h', NULL, 'hk', 'user', '2025-03-12 07:53:16'),
(12, 'aa', NULL, 'aa', 'user', '2025-03-12 07:58:33'),
(13, 'ddd', NULL, 'ddd', 'user', '2025-03-19 08:12:40'),
(14, 'lll', NULL, 'lll', 'user', '2025-03-19 08:12:54'),
(15, 'Monica', NULL, 'monica', 'user', '2025-03-19 08:46:09'),
(16, 'qqq', NULL, 'qqq', 'user', '2025-03-19 08:50:39'),
(17, 'zzz', NULL, 'zzz', 'user', '2025-03-19 08:50:58'),
(18, 'fff', NULL, 'fff', 'user', '2025-03-19 09:04:59'),
(35, 'hhh', NULL, 'hhh', 'user', '2025-04-02 07:04:33'),
(36, 'PPP', NULL, 'PPP', 'user', '2025-04-02 07:05:02'),
(37, 'vvv', NULL, 'vvv', 'user', '2025-04-02 07:05:22'),
(38, 'ttt', NULL, 'ttt', 'user', '2025-04-02 07:05:44');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
