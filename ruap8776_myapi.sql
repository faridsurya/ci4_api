-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Jul 2022 pada 14.37
-- Versi server: 10.2.43-MariaDB-cll-lve
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruap8776_myapi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `portofolios`
--

CREATE TABLE `portofolios` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `ig` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `portofolios`
--

INSERT INTO `portofolios` (`id`, `nama`, `bio`, `ig`, `linkedin`, `github`) VALUES
(1, 'Farid Surya', 'inilah saya.', 'https://instagram.com/fareedsurya', 'https://linked.in/fareedsurya', 'https://github.com/fareedsurya'),
(2, 'Apridan', 'bio apridan', 'https://instagram.com/apridan', 'https://linked.in/apridan', 'https://github.com/apridan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `motto` text NOT NULL,
  `ig_url` varchar(255) NOT NULL,
  `fb_url` varchar(255) NOT NULL,
  `gh_url` varchar(255) NOT NULL,
  `yt_url` varchar(255) NOT NULL,
  `avatar_url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `motto`, `ig_url`, `fb_url`, `gh_url`, `yt_url`, `avatar_url`) VALUES
(1, 'Farid Surya', 'Hidup adalah tidak mati', '', '', '', '', ''),
(3, 'Jokowi', 'revolusi mental', '', '', '', '', ''),
(4, 'Pengguna 1', 'oke', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `portofolios`
--
ALTER TABLE `portofolios`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `portofolios`
--
ALTER TABLE `portofolios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
