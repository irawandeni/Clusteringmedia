-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Feb 2022 pada 06.07
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18404255_clustering`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`, `phone`, `email`, `level`) VALUES
(1, 'admin', 'admin', 'Administrator', '+6281947472218', 'admin@gmail.com', 'Admin'),
(2, 'user', 'user', 'Adrian Maulana', '08x', 'adrianmaulana11@gmail.com', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cluster`
--

CREATE TABLE `cluster` (
  `ID` int(11) NOT NULL,
  `Cluster` int(11) NOT NULL,
  `idx` char(11) NOT NULL,
  `v1` float NOT NULL,
  `v2` float NOT NULL,
  `v3` float NOT NULL,
  `v4` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cluster`
--

INSERT INTO `cluster` (`ID`, `Cluster`, `idx`, `v1`, `v2`, `v3`, `v4`) VALUES
(1, 1, 'c1', 22.1429, 19, 18.9286, 19.2143),
(2, 1, 'c2', 25.4737, 21.5789, 21.6316, 21.8947),
(3, 1, 'c3', 27.8, 23.32, 23.24, 24),
(4, 2, 'c1', 22.1801, 19.1783, 19.2094, 19.2027),
(5, 2, 'c2', 25.1991, 21.4221, 21.4572, 21.6882),
(6, 2, 'c3', 27.8, 23.32, 23.24, 24);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Pangkat` varchar(11) NOT NULL,
  `Tugas` varchar(25) NOT NULL,
  `Mapel` varchar(50) NOT NULL,
  `v1` float NOT NULL,
  `v2` float NOT NULL,
  `v3` float NOT NULL,
  `v4` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`ID`, `Nama`, `Pangkat`, `Tugas`, `Mapel`, `v1`, `v2`, `v3`, `v4`) VALUES
(12, 'Tri Nursih, A.Ma.Pd', 'IV A', 'Guru Kelas I', 'Guru Kelas ', 27.8, 23.32, 23.24, 24),
(13, 'Ani Sukasri Endarwati.Spd', 'IV A', 'Guru Kelas II', 'Guru Kelas ', 21.7308, 19.1538, 19.4615, 19.3462),
(14, 'Cholisoh,S.Pd', 'IIIC', 'Guru Kelas III', 'Guru Kelas ', 22.1429, 19, 18.9286, 19.2143),
(15, 'Heri Sukamto Spd.SD', 'IIIC', 'Guru Kelas IV', 'Guru Kelas ', 22.6667, 19.381, 19.2381, 19.0476),
(16, 'Listiyo Pangesti', '-', 'Guru Kelas V', 'GTT', 25.4737, 21.5789, 21.6316, 21.8947),
(17, 'Kuntowati Solikhah, Spd Sd', 'IIIC', 'Guru Kelas VI', 'Guru Kelas', 24.4737, 22.5789, 22.6316, 22.8947),
(18, 'Winanti Khusumaning Rahayu S.Pd  I\r\n', 'IIIB', 'Guru PAI I-VI', 'Guru PAI', 24.65, 21.1083, 21.1083, 21.275);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(3) NOT NULL,
  `npsn` int(30) NOT NULL,
  `sekolah` varchar(20) NOT NULL,
  `ptk` varchar(50) NOT NULL,
  `pangkat` varchar(15) NOT NULL,
  `nip` bigint(50) NOT NULL,
  `tugas` varchar(10) NOT NULL,
  `mapel` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `npsn`, `sekolah`, `ptk`, `pangkat`, `nip`, `tugas`, `mapel`) VALUES
(1, 20304763, 'SDN JATIMULYO', 'Sariyem,S.Pd.SD', 'IV A', 196407141985082003, 'KS', 'kosong'),
(2, 20304763, 'SDN JATIMULYO', 'Ani Sukasri Endarwati.Spd', 'IV A', 196406301984052001, 'II', 'Guru Kelas'),
(3, 20304763, 'SDN JATIMULYO', 'Tri Nursih, A.Ma.Pd', 'IV A', 196607261991022001, 'I', 'Guru Kelas'),
(4, 20304763, 'SDN JATIMULYO', 'Cholisoh,S.Pd', 'IIIC', 197409252007012009, 'III', 'Guru Kelas'),
(5, 20304763, 'SDN JATIMULYO', 'Heri Sukamto Spd.SD', 'IIIC', 19800512200701009, 'IV', 'Guru Kelas'),
(6, 20304763, 'SDN JATIMULYO', 'Kuntowati Solikhah, Spd Sd', 'IIIC', 197805192008012017, 'VI', 'Guru Kelas'),
(7, 20304763, 'SDN JATIMULYO', 'Winanti Khusumaning Rahayu S.Pd  I', 'IIIB', 1981061320009032004, 'I-VI', 'Guru PAI'),
(8, 20304763, 'SDN JATIMULYO', 'Listiyo Pangesti', '-', 0, 'V', 'GTT'),
(55, 0, 'Laki-Laki', '4', '18', 0, '2012-12-17', 'Kalirancan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id` int(10) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `absen` int(10) NOT NULL,
  `jekel` varchar(75) NOT NULL,
  `kelas` varchar(75) NOT NULL,
  `tempat` varchar(75) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` varchar(75) NOT NULL,
  `guru` varchar(75) NOT NULL,
  `mp1` int(10) DEFAULT NULL,
  `mp2` int(10) DEFAULT NULL,
  `mp3` int(10) DEFAULT NULL,
  `mp4` int(10) DEFAULT NULL,
  `mp5` int(10) DEFAULT NULL,
  `mp6` int(10) DEFAULT NULL,
  `ti1` int(10) DEFAULT NULL,
  `ti2` int(10) DEFAULT NULL,
  `ti3` int(10) DEFAULT NULL,
  `ti4` int(10) DEFAULT NULL,
  `ti5` int(10) DEFAULT NULL,
  `si1` int(10) DEFAULT NULL,
  `si2` int(10) DEFAULT NULL,
  `si3` int(10) DEFAULT NULL,
  `si4` int(10) DEFAULT NULL,
  `si5` int(10) DEFAULT NULL,
  `km1` int(10) DEFAULT NULL,
  `km2` int(10) DEFAULT NULL,
  `km3` int(10) DEFAULT NULL,
  `km4` int(10) DEFAULT NULL,
  `km5` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id`, `nama`, `absen`, `jekel`, `kelas`, `tempat`, `tanggal`, `alamat`, `guru`, `mp1`, `mp2`, `mp3`, `mp4`, `mp5`, `mp6`, `ti1`, `ti2`, `ti3`, `ti4`, `ti5`, `si1`, `si2`, `si3`, `si4`, `si5`, `km1`, `km2`, `km3`, `km4`, `km5`) VALUES
(154, 'Daviana Ratih Janatika', 6, 'Perempuan', '3', 'Kebumen', '2012-08-12', 'Jatimulyo', 'Cholisoh,S.Pd', 3, 3, 1, 3, 2, 4, 3, 5, 3, 4, 1, 4, 3, 4, 5, 2, 1, 3, 4, 2, 5),
(155, 'Aqila Khulwa Khoirulnisa', 2, 'Perempuan', '3', 'Kebumen', '2013-03-03', 'Jatimulyo', 'Cholisoh,S.Pd', 3, 3, 4, 2, 4, 5, 3, 5, 3, 4, 3, 4, 3, 5, 4, 2, 1, 3, 4, 2, 5),
(156, 'Tsalita Zahra Rahmadani', 18, 'Perempuan', '3', 'Kebumen', '2012-08-16', 'Jatimulyo', 'Cholisoh,S.Pd', 3, 3, 4, 2, 4, 5, 3, 5, 3, 4, 1, 4, 3, 5, 4, 2, 1, 3, 4, 2, 5),
(157, 'Chantika Abelia Kenny', 4, 'Perempuan', '3', 'Kebumen', '2012-07-05', 'Jatimulyo', 'Cholisoh,S.Pd', 3, 3, 4, 2, 4, 5, 3, 5, 3, 4, 3, 4, 3, 5, 4, 2, 1, 3, 4, 2, 5),
(158, 'Oktavia Indah Puspita', 12, 'Perempuan', '3', 'Kebumen', '2012-10-04', 'Jatimulyo', 'Cholisoh,S.Pd', 3, 3, 4, 2, 4, 5, 3, 5, 3, 4, 3, 4, 3, 5, 4, 2, 1, 3, 4, 2, 5),
(159, 'Ikhsanul Akmal', 9, 'Laki-Laki', '3', 'Kebumen', '2012-07-14', 'Candiwulan', 'Cholisoh,S.Pd', 4, 5, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(160, 'Alfi Widiyanti ', 1, 'Perempuan', '3', 'Kebumen', '2013-05-10', 'Jatimulyo', 'Cholisoh,S.Pd', 4, 5, 5, 4, 5, 5, 4, 5, 5, 4, 5, 3, 5, 4, 5, 5, 4, 5, 5, 4, 5),
(161, 'Atika Nur Laila', 3, 'Perempuan', '3', 'Kebumen', '2012-07-01', 'Jatimulyo', 'Cholisoh,S.Pd', 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 5, 3, 5, 4, 5, 4, 5, 4, 5, 4, 5),
(162, 'Muhammad Akmal Al Zikra', 11, 'Laki-Laki', '3', 'Kebumen', '2012-09-08', 'Jatimulyo', 'Cholisoh,S.Pd', 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5),
(163, 'Robit', 15, 'Laki-Laki', '3', 'Kebumen', '2013-02-01', 'Jatimulyo', 'Cholisoh,S.Pd', 4, 5, 3, 5, 4, 3, 4, 5, 4, 5, 4, 5, 5, 4, 5, 5, 5, 4, 5, 5, 4),
(164, 'Yusuf Aditya', 19, 'Laki-Laki', '3', 'Bekasi', '2013-05-08', 'Jatimulyo', 'Cholisoh,S.Pd', 1, 2, 3, 4, 5, 4, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5),
(165, 'Dini Dwi Juliawati', 7, 'Perempuan', '3', 'Kebumen', '2013-07-19', 'Jatimulyo', 'Cholisoh,S.Pd', 4, 4, 4, 4, 4, 4, 5, 4, 4, 5, 5, 5, 4, 4, 5, 2, 3, 5, 4, 2, 4),
(166, 'Prajna Nihayatuz S', 13, 'Perempuan', '3', 'Kebumen', '2012-02-09', 'Jatimulyo', 'Cholisoh,S.Pd', 5, 5, 5, 5, 5, 5, 4, 5, 4, 5, 5, 5, 4, 4, 5, 5, 3, 4, 5, 5, 5),
(167, 'Syabil', 15, 'Laki-Laki', '3', 'Kebumen', '2013-11-11', 'Jatimulyo', 'Cholisoh,S.Pd', 1, 2, 3, 4, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 5),
(168, 'Galuh Zaki O', 6, 'Laki-Laki', '4', 'Kebumen', '2008-10-10', 'Jatimulyo', 'Heri Sukamto Spd.SD', 4, 4, 5, 4, 5, 5, 5, 5, 4, 5, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 4),
(169, 'Khanza Naufa Z', 18, 'Perempuan', '4', 'Kebumen', '2012-06-12', 'Jatimulyo', 'Heri Sukamto Spd.SD', 4, 2, 5, 5, 4, 3, 5, 5, 5, 4, 5, 4, 5, 1, 2, 5, 5, 4, 2, 4, 5),
(170, 'Afzania Kala Khusnanda', 2, 'Perempuan', '4', 'Kebumen', '2012-04-22', 'Kalijirek', 'Heri Sukamto Spd.SD', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3),
(171, 'Danis', 15, 'Laki-Laki', '4', 'Kebumen', '2012-02-29', 'Jatimulyo', 'Heri Sukamto Spd.SD', 3, 3, 1, 5, 4, 3, 3, 4, 5, 2, 4, 3, 3, 1, 3, 3, 3, 4, 3, 3, 5),
(172, 'Rafa', 6, 'Laki-Laki', '4', 'Kebumen', '2012-10-24', 'Jatimulyo', 'Heri Sukamto Spd.SD', 5, 4, 5, 4, 5, 4, 3, 4, 5, 3, 4, 5, 4, 4, 5, 4, 4, 3, 5, 4, 4),
(173, 'Nabil', 12, 'Laki-Laki', '4', 'Semarang', '2011-02-02', 'Jatimulyo', 'Heri Sukamto Spd.SD', 4, 3, 5, 4, 4, 3, 4, 3, 4, 3, 3, 4, 3, 4, 4, 3, 3, 2, 3, 4, 3),
(174, 'Shafara Irati Aulia', 22, 'Perempuan', '4', 'Kebumen', '2011-12-31', 'Jatimulyo', 'Heri Sukamto Spd.SD', 5, 5, 3, 5, 3, 3, 3, 4, 3, 5, 4, 5, 5, 4, 3, 3, 4, 5, 5, 5, 3),
(175, 'Rakha Jefery Pratama', 4, 'Laki-Laki', '4', 'Kebumen', '2012-03-17', 'Jatimulyo', 'Heri Sukamto Spd.SD', 4, 3, 4, 4, 4, 4, 4, 4, 4, 3, 4, 4, 5, 4, 4, 4, 4, 4, 5, 4, 4),
(176, 'Rafif Iqbal', 20, 'Laki-Laki', '4', 'Kebumen', '2011-12-29', 'Jatimulyo', 'Heri Sukamto Spd.SD', 4, 5, 4, 3, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 4, 4),
(177, 'Rafika Amelia K', 17, 'Perempuan', '4', 'Kebumen', '2011-07-05', 'Jatimulyo', 'Heri Sukamto Spd.SD', 5, 5, 3, 5, 5, 3, 5, 5, 5, 3, 5, 5, 5, 5, 3, 5, 5, 4, 5, 5, 4),
(178, 'Raffi Ahmad', 17, 'Laki-Laki', '4', 'Kebumen', '2010-05-16', 'Jatimulyo', 'Heri Sukamto Spd.SD', 1, 2, 1, 4, 3, 5, 1, 2, 5, 3, 4, 1, 1, 3, 2, 5, 1, 3, 2, 5, 2),
(179, 'Ainun Yumna N', 4, 'Perempuan', '4', 'Yogyakarta', '2011-11-19', 'Jatimulyo', 'Heri Sukamto Spd.SD', 3, 3, 4, 4, 3, 4, 3, 4, 4, 4, 3, 3, 4, 4, 4, 3, 4, 4, 3, 4, 3),
(180, 'Nazifa Apriani', 15, 'Perempuan', '4', 'Kebumen', '0000-00-00', 'Kalijirek', 'Heri Sukamto Spd.SD', 5, 4, 5, 5, 5, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4),
(181, 'Nagra Fitria Rahman', 14, 'Perempuan', '4', 'Kebumen', '2011-08-31', 'Candiwulan', 'Heri Sukamto Spd.SD', 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 3, 5, 5, 4, 5, 4, 5, 5, 5, 4),
(182, 'Athala Hasanatul Syamila', 7, 'Perempuan', '4', 'Kebumen', '2010-05-15', 'Kawedusan', 'Heri Sukamto Spd.SD', 3, 3, 4, 5, 3, 4, 3, 4, 5, 4, 3, 4, 5, 5, 5, 4, 5, 4, 4, 3, 4),
(183, 'Aditya Alif Prasetya', 1, 'Laki-Laki', '4', 'Kebumen', '2010-07-16', 'Jatimulyo', 'Heri Sukamto Spd.SD', 1, 2, 3, 4, 5, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5),
(184, 'Rusti Fitria Pritami ', 21, 'Perempuan', '4', 'Kebumen', '2010-08-31', 'Jatimulyo', 'Heri Sukamto Spd.SD', 3, 3, 4, 3, 2, 3, 3, 4, 3, 3, 3, 3, 3, 2, 4, 2, 2, 3, 4, 3, 3),
(185, 'Dimas Dwi Prakoso', 7, 'Laki-Laki', '4', 'Kebumen', '2012-08-16', 'Jatimulyo', 'Heri Sukamto Spd.SD', 5, 4, 4, 3, 5, 5, 3, 4, 2, 3, 5, 4, 5, 3, 4, 5, 4, 5, 5, 3, 5),
(186, 'Nadil Dzaki A', 13, 'Laki-Laki', '4', 'Kebumen', '2012-03-02', 'Jatimulyo', 'Heri Sukamto Spd.SD', 3, 3, 4, 3, 3, 3, 2, 3, 4, 3, 3, 3, 5, 3, 3, 2, 3, 3, 5, 3, 4),
(187, 'Ahmad Lutfi Hakim', 3, 'Laki-Laki', '4', 'Kebumen', '2012-12-12', 'Jatimulyo', 'Heri Sukamto Spd.SD', 5, 5, 5, 4, 4, 2, 4, 5, 5, 4, 5, 3, 4, 5, 5, 5, 5, 3, 5, 5, 4),
(188, 'Hana Mailah', 9, 'Perempuan', '4', 'Kebumen', '2011-12-19', 'Karang Sari', 'Heri Sukamto Spd.SD', 4, 5, 2, 4, 4, 2, 4, 4, 5, 3, 5, 5, 4, 4, 2, 4, 4, 2, 4, 2, 5),
(189, 'Athan Zimraan Maulana Wijiyanto', 6, 'Laki-Laki', '6', 'Kebumen', '2011-06-14', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 3, 4, 4, 5, 4, 3, 4, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4, 5),
(190, 'Annisa Fatachil Baroroh', 2, 'Perempuan', '6', 'Kebumen', '2009-10-04', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 5, 4, 5, 4, 4, 5, 3, 5, 5, 5, 5, 5, 3, 5, 5, 4, 5, 4, 5, 4, 5),
(191, 'Nadil Fakreza', 10, 'Laki-Laki', '6', 'Kebumen', '2010-03-01', 'Kuwayuhan', 'Kuntowati Solikhah, Spd Sd', 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 5, 4, 4, 4),
(192, 'Nasyawa Z.S', 12, 'Perempuan', '6', 'Kebumen', '2010-02-01', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 4, 4, 5, 4, 4, 5, 4, 4, 4, 5, 5, 5, 4, 5, 4, 4, 4, 5, 5, 5, 4),
(193, 'Rahma Fitria', 14, 'Perempuan', '6', 'Kebumen', '2009-10-01', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 4, 5, 5, 4, 4, 5, 4, 4, 5, 4, 5, 4, 4, 4, 5, 5, 4, 5, 5, 4, 5),
(194, 'Mohammad Azmi Rohmadoni', 8, 'Laki-Laki', '6', 'Kebumen', '2009-09-18', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 5, 5, 5),
(195, 'Syariful Anam', 18, 'Laki-Laki', '6', 'Kebumen', '2009-07-21', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 4, 4, 4, 5, 4, 5, 4, 4, 4, 5, 5, 4, 5, 4, 4, 5, 4, 4, 5, 4, 4),
(196, 'M Fakhururozi', 11, 'Laki-Laki', '6', 'Kebumen', '2012-07-21', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 5, 5, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5),
(197, 'Anam Hafiz Azmi', 1, 'Laki-Laki', '6', 'Kebumen', '2009-12-09', 'Karang Kembang', 'Kuntowati Solikhah, Spd Sd', 4, 5, 5, 5, 3, 4, 5, 4, 4, 4, 4, 5, 4, 3, 4, 5, 4, 5, 5, 5, 4),
(198, 'Faqih Abdul Rohman', 5, 'Laki-Laki', '6', 'Kebumen', '2009-09-27', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 4, 4, 3, 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 3, 5, 3, 4, 5, 5, 3, 4),
(199, 'Ghufron Nur Shidiq ', 7, 'Laki-Laki', '6', 'Majalengka', '2009-11-21', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 5, 4, 5, 3, 5, 3, 3, 3, 4, 3, 3, 5, 4, 3, 3, 3, 4, 5, 3, 3, 5),
(200, 'Ariska Dwi Rahmawati', 3, 'Laki-Laki', '6', 'Kebumen', '2009-07-04', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 4, 5, 5, 5, 3, 4, 5, 4, 4, 4, 4, 5, 4, 3, 4, 5, 4, 4, 4, 4, 4),
(201, 'Nakesha Amelia Z', 11, 'Perempuan', '6', 'Kebumen', '2010-06-30', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 4, 3, 4, 5, 3, 3, 3, 4, 3, 4, 3, 5, 4, 4, 5, 3, 3, 4, 3, 3, 4),
(202, 'Talitha Haura Balqis', 19, 'Perempuan', '6', 'Kebumen', '2010-01-15', 'Kalijirek', 'Kuntowati Solikhah, Spd Sd', 4, 3, 4, 5, 3, 4, 3, 4, 3, 4, 5, 5, 4, 4, 5, 4, 3, 4, 4, 5, 4),
(203, 'Siti Munawaroh', 17, 'Perempuan', '6', 'Kebumen', '2010-10-27', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 5, 4, 4, 5, 3, 5, 5, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4, 5),
(204, 'Muhamad Azhar Mubarok', 9, 'Laki-Laki', '6', 'Kebumen', '2008-10-17', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 5, 4, 3, 3, 4, 3, 3, 4, 3, 4, 3, 5, 5, 4, 5, 4, 3, 4, 4, 3, 3),
(205, 'Raffi Adha Prasetya', 13, 'Laki-Laki', '6', 'Kebumen', '2011-10-20', 'Jatimulyo', 'Kuntowati Solikhah, Spd Sd', 4, 5, 5, 5, 3, 4, 5, 4, 4, 4, 4, 4, 4, 3, 5, 5, 4, 5, 5, 5, 4),
(206, 'Sabiila Rizqi A', 16, 'Perempuan', '6', 'Kebumen', '2010-01-17', 'Candiwulan', 'Kuntowati Solikhah, Spd Sd', 3, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 3, 4, 5, 4, 5, 5, 4, 5, 5, 5),
(207, 'Fauzi Maskrunin', 12, 'Laki-Laki', '5', 'Kebumen', '2009-10-05', 'Jatimulyo', 'Listiyo Pangesti', 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 4, 5, 5, 4, 5, 4, 5),
(208, 'Arjun Agam F', 5, 'Laki-Laki', '5', 'Kebumen', '2010-06-12', 'Jatimulyo', 'Listiyo Pangesti', 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 4, 5, 5, 4, 5, 5, 3, 4, 4, 5, 4),
(209, 'Eliza Via Rahmadani', 10, 'Perempuan', '5', 'Kebumen ', '2010-08-28', 'Jatimulyo', 'Listiyo Pangesti', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(210, 'Antara Bisana', 4, 'Perempuan', '5', 'Kebumen', '2010-05-21', 'Jatimulyo', 'Listiyo Pangesti', 4, 4, 4, 5, 5, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 3, 5, 4, 4, 5, 5),
(211, 'Alif.M.A', 2, 'Laki-Laki', '5', 'Kebumen', '2011-05-16', 'Jatimulyo', 'Listiyo Pangesti', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(212, 'Muhammad Iqbal', 16, 'Laki-Laki', '5', 'Kebumen', '2009-05-20', 'Jatimulyo', 'Listiyo Pangesti', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(213, 'Nidara Latifa', 18, 'Perempuan', '5', 'Kebumen', '2011-03-25', 'Jatimulyo', 'Listiyo Pangesti', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(214, 'Kirana Syakila Rahmanisa', 14, 'Perempuan', '5', 'Kebumen', '2011-02-16', 'Jatimulyo', 'Listiyo Pangesti', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(215, 'Arinu Asya Wulandari', 5, 'Perempuan', '5', 'Kebumen', '2010-06-16', 'Jatimulyo', 'Listiyo Pangesti', 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 5, 5, 5, 4, 5, 5, 4, 4, 4, 5, 5),
(216, 'Erna Endah Sulistyawati', 11, 'Perempuan', '5', 'Tegal', '2011-09-09', 'Jatimulyo', 'Listiyo Pangesti', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(217, 'Najib Mauludi ', 18, 'Laki-Laki', '5', 'Kebumen', '2010-03-03', 'Jatimulyo', 'Listiyo Pangesti', 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 4, 5, 4, 4, 5),
(218, 'Maura Sashi Kirana', 25, 'Laki-Laki', '5', 'Kebumen', '2010-01-30', 'Jatimulyo', 'Listiyo Pangesti', 5, 4, 5, 5, 4, 5, 3, 5, 5, 5, 5, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5),
(219, 'Annisa Dwi Nur Camelia', 3, 'Laki-Laki', '5', 'Kebumen', '2011-03-23', 'Jatimulyo', 'Listiyo Pangesti', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(220, 'Ahmad Sabili Al kahfi', 5, 'Laki-Laki', '5', 'Kebumen', '2010-10-09', 'Candiwulan', 'Listiyo Pangesti', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5),
(221, 'Khanza Zahra Zhafirah', 13, 'Perempuan', '5', 'Kebumen', '2010-06-12', 'Jatimulyo', 'Listiyo Pangesti', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(222, 'Ayu Putri Nur Malasari', 9, 'Perempuan', '5', 'Kebumen', '2011-01-15', 'Kalijirek', 'Listiyo Pangesti', 5, 3, 4, 4, 4, 5, 5, 4, 5, 5, 4, 4, 5, 4, 5, 5, 5, 5, 5, 4, 4),
(223, 'Aurelia Widayatul Hanifah', 8, 'Perempuan', '5', 'Kebumen', '2011-02-03', 'Candiwulan', 'Listiyo Pangesti', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(224, 'Novita Puja Jayani', 15, 'Perempuan', '1', 'Kebumen', '2011-10-30', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(225, 'Fadhi V', 13, 'Laki-Laki', '1', 'Kebumen', '2014-08-19', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 2, 3, 3, 4, 3, 3, 4, 4, 4, 4, 4, 5, 4, 5, 4, 5, 4, 4, 5, 3, 4),
(226, 'Hafizhah Indah', 15, 'Perempuan', '1', 'Kebumen', '2014-05-30', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 5, 5, 4, 5, 5, 5, 4, 5, 4, 5, 5, 4, 5, 4, 5, 4, 5, 4, 5),
(227, 'Nanda Abi', 21, 'Laki-Laki', '1', 'Kebumen', '2014-10-08', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 5, 5, 5, 5, 3, 5, 5, 4, 5, 4, 5, 5, 4, 5, 4, 5, 5, 5, 5),
(228, 'Adzara Raya ', 3, 'Perempuan', '1', 'Kebumen', '2014-01-10', 'Surotrunan', 'Tri Nursih, A.Ma.Pd', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5),
(229, 'Imania Sahitya Karema', 17, 'Perempuan', '1', 'Kebumen', '2014-06-17', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 4),
(230, 'Abdul Hamid', 1, 'Laki-Laki', '1', 'Kebumen', '2014-01-27', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 5, 5, 5, 5, 5, 3, 4, 5, 4, 5, 4, 3, 4, 5, 4, 3, 4, 3, 5, 5),
(231, 'Tegar Navizairi', 25, 'Laki-Laki', '1', 'Kebumen', '2914-11-17', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(232, 'Zardhan Rifai', 29, 'Laki-Laki', '1', 'Kebumen', '2014-08-13', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 5, 3, 5, 4, 5, 3, 4, 5, 2, 5, 2, 3, 4, 4, 5, 5, 4, 5, 4, 5),
(233, 'Diah Septi Nurul', 11, 'Perempuan', '1', 'Kebumen', '2014-08-17', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 4, 5, 4, 4, 5, 4, 5, 4, 5),
(234, 'Tsani Sava Sabrina', 27, 'Perempuan', '1', 'Kebumen', '2014-10-28', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(235, 'Ridha Zavira ', 23, 'Perempuan', '1', 'Kebumen', '2014-07-07', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5),
(236, 'Aldinno', 5, 'Laki-Laki', '1', 'Kebumen', '2014-02-02', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 4, 5, 4, 5, 4, 5),
(237, 'Bayu Tri Sabani', 9, 'Laki-Laki', '1', 'Kebumen', '2014-07-19', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 5, 5, 5, 4, 4, 5, 5, 4, 5, 5, 5, 5, 5, 4, 4, 5, 4, 5, 4),
(238, 'Vino Aldiyansa', 28, 'Laik-Laki', '1', 'Kebumen', '2014-12-12', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(239, 'Alif Rahman A', 6, 'Laki-Laki', '1', 'Kebumen', '2014-03-03', 'Kambang Sari', 'Tri Nursih, A.Ma.Pd', 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(240, 'Sufian Nur Hakim', 24, 'Laki-Laki', '1', 'Kebumen', '2014-09-24', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 5, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 4, 5, 5, 5),
(241, 'Falidzal Muzacky', 14, 'Laki-Laki', '1', 'Kebumen', '2014-07-07', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 4, 3, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(242, 'Clara Natania Putri', 10, 'Perempuan', '1', 'Kebumen', '2014-03-03', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 5, 5, 4, 5, 4, 5, 4, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(243, 'Avira Jasseline Kameswara', 9, 'Perempuan', '1', 'Kebumen', '2014-08-22', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5),
(244, 'Muhammad Hannan', 20, 'Laki-Laki', '1', 'Kebumen', '2014-03-14', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(245, 'Tirta Hachika', 26, 'Laik-Laki', '1', 'Kebumen', '2014-10-10', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 5, 5, 5, 4, 5, 4, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(246, 'Jasmine Adezkiana', 18, 'Perempuan', '1', 'Kebumen', '2014-05-13', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 4, 5, 3, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(247, 'Keyla ', 22, 'Perempuan', '1', 'Kebumen', '2014-08-08', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 4, 4, 5, 3, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(248, 'Evan Doson Firdaus', 12, 'Laki-Laki', '1', 'Kebumen', '2014-05-05', 'Jatimulyo', 'Tri Nursih, A.Ma.Pd', 5, 5, 5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5, 5),
(249, 'Hauzan', 16, 'Laik-Laki', '2', 'Kebumen', '2014-08-28', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 5, 5, 5, 4, 4, 4, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5),
(250, 'Cakra Abiar Lizar', 8, 'Laki-Laki', '2', 'Kebumen', '2013-08-09', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 3, 4, 5, 2, 1, 5, 4, 3, 2, 1, 5, 5, 4, 3, 5, 5, 5, 5, 4, 3),
(251, 'Rifki Rahmadani P', 24, 'Laki-Laki', '2', 'Lampung', '2013-05-03', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 3, 5, 4, 4, 3, 5, 3, 5, 2, 5, 2, 4, 3, 5, 2, 5, 5, 5, 4, 3),
(252, 'Ghina Kanvila ', 12, 'Perempuan', '2', 'Kebumen', '2006-08-21', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 5, 5, 5, 4, 3, 5, 5, 5, 4, 5, 5, 4, 4, 5, 5, 5, 5, 3, 4, 5),
(253, 'Azam Rasya Fatahilla', 6, 'Laki-Laki', '2', 'Kebumen', '2013-06-21', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(254, 'Adib Akilla Pranaja Setiawan', 2, 'Laki-Laki', '2', 'Kebumen', '2014-11-13', 'Candiwulan', 'Ani Sukasri Endarwati.Spd', 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4),
(255, 'Nurin Najwa Nugroho', 20, 'Perempuan', '2', 'Kebumen', '2013-07-21', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(256, 'Muhammad Fahri ', 16, 'Laki-Laki', '2', 'Kebumen', '2013-11-14', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(257, 'Isheila Wahy EO', 14, 'Perempuan', '2', 'Kebumen', '2013-10-03', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4),
(258, 'Ardiyansa Nur Prabawa', 4, 'Laki-Laki', '2', 'Kebumen', '2013-01-21', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(259, 'Syakiya Naifa Lubna', 26, 'Laki-Laki', '2', 'Kebumen', '2014-03-24', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(260, 'Naura Hasna Hamidah', 18, 'Perempuan', '2', 'Kebumen ', '2014-02-18', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(261, 'Ade Eva ', 1, 'Perempuan', '2', 'Kebumen', '2013-01-28', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 5, 1, 5, 1, 4, 3, 4, 4, 3, 3, 5, 3, 2, 4, 4, 4, 4, 4, 4, 4),
(262, 'Nabila Safira Yuristya', 17, 'Perempuan', '2', 'Kebumen', '2013-06-13', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 5, 1, 4, 1, 4, 3, 4, 4, 3, 3, 5, 4, 2, 4, 4, 4, 4, 5, 4, 4),
(263, 'Nazzua Arzenta Putri Yani', 19, 'Laki-Laki', '2', 'Kebumen', '2013-11-16', 'Kambang Sari', 'Ani Sukasri Endarwati.Spd', 4, 5, 1, 4, 1, 5, 4, 5, 2, 1, 4, 4, 4, 4, 1, 5, 4, 4, 5, 4, 4),
(264, 'Asriyatin Kholivatun', 5, 'Perempuan', '2', 'Kebumen', '2013-10-07', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 5, 1, 4, 4, 5, 4, 3, 3, 4, 4, 3, 2, 4, 4, 5, 4, 4, 5, 4, 4),
(265, 'Mahmud Datul Nur Azizah', 15, 'Perempuan', '2', 'Kebumen', '2013-04-19', 'Kebebekan', 'Ani Sukasri Endarwati.Spd', 2, 2, 3, 4, 2, 2, 4, 3, 3, 4, 4, 4, 3, 3, 4, 4, 3, 3, 4, 3, 4),
(266, 'Ghaidah', 11, 'Perempuan', '2', 'Kebumen', '2013-03-07', 'Kebebekan', 'Ani Sukasri Endarwati.Spd', 4, 5, 1, 4, 1, 4, 4, 3, 3, 4, 4, 3, 2, 2, 4, 4, 3, 3, 3, 4, 4),
(267, 'Yaldhan Rakha Al Fatih', 27, 'Laki-Laki', '2', 'Kebumen', '2014-01-18', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 1, 5, 3, 5, 2, 5, 3, 5, 5, 3, 3, 4, 4, 4, 4, 1, 4, 4, 4, 4, 4),
(268, 'Ahmad Zain As Sabiq', 3, 'Laki-Laki', '2', 'Kebumen ', '2014-08-28', 'Kalijirek', 'Ani Sukasri Endarwati.Spd', 1, 2, 3, 4, 5, 1, 1, 4, 3, 1, 5, 1, 2, 3, 4, 5, 1, 3, 4, 1, 5),
(269, 'Ilyas Fahri Arif', 13, 'Laki-Laki', '2', 'Kebumen ', '2013-10-28', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 1, 5, 2, 3, 3, 4, 1, 4, 3, 2, 5, 5, 4, 3, 5, 3, 1, 3, 5, 2, 4),
(270, 'Fadli Akbar', 9, 'Laki-Laki', '2', 'Kebumen', '2013-08-18', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 3, 3, 3, 3, 5, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 5, 5, 4),
(271, 'Rizqi Ridho Fadli', 23, 'Laki-Laki', '2', 'Kebumen', '2013-02-19', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 5, 5, 4, 5, 4, 4, 5, 5, 4, 5, 5, 5, 5, 4, 5, 4, 5, 4, 5, 4, 5),
(272, 'Azzam Irsyad', 7, 'Laki-Laki', '2', 'Kebumen', '2013-02-26', 'Kalijirek', 'Ani Sukasri Endarwati.Spd', 4, 1, 5, 5, 4, 4, 4, 4, 4, 4, 4, 3, 4, 3, 3, 2, 3, 1, 5, 4, 2),
(273, 'Angga Pamungkas', 21, 'Laki-Laki', '2', 'Kebumen', '2013-12-27', 'Jatimulyo', 'Ani Sukasri Endarwati.Spd', 4, 4, 4, 3, 4, 4, 5, 4, 4, 3, 4, 5, 4, 4, 3, 5, 5, 4, 3, 4, 3),
(274, 'Zulfa Faisal Hasni', 29, 'Laki-Laki', '2', 'Kebumen', '2013-12-19', 'Candiwulan', 'Ani Sukasri Endarwati.Spd', 4, 2, 1, 5, 1, 4, 5, 4, 1, 1, 3, 5, 1, 3, 5, 2, 1, 2, 3, 4, 5),
(275, 'Daviana Ratih Janatika', 6, 'Perempuan', '3', 'Kebumen', '2012-08-12', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd I', 3, 3, 1, 3, 2, 4, 3, 5, 3, 4, 1, 4, 3, 4, 5, 2, 1, 3, 4, 2, 5),
(276, 'Aqila Khulwa Khoirulnisa', 2, 'Perempuan', '3', 'Kebumen', '2013-03-03', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd I', 3, 3, 4, 2, 4, 5, 3, 5, 3, 4, 3, 4, 3, 5, 4, 2, 1, 3, 4, 2, 5),
(277, 'Tsalita Zahra Rahmadani', 18, 'Perempuan', '3', 'Kebumen', '2012-08-16', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd I', 3, 3, 4, 2, 4, 5, 3, 5, 3, 4, 1, 4, 3, 5, 4, 2, 1, 3, 4, 2, 5),
(278, 'Chantika Abelia Kenny', 4, 'Perempuan', '3', 'Kebumen', '2012-07-05', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd I', 3, 3, 4, 2, 4, 5, 3, 5, 3, 4, 3, 4, 3, 5, 4, 2, 1, 3, 4, 2, 5),
(279, 'Oktavia Indah Puspita', 12, 'Perempuan', '3', 'Kebumen', '2012-10-04', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd I', 3, 3, 4, 2, 4, 5, 3, 5, 3, 4, 3, 4, 3, 5, 4, 2, 1, 3, 4, 2, 5),
(280, 'Ikhsanul Akmal', 9, 'Laki-Laki', '3', 'Kebumen', '2012-07-14', 'Candiwulan', 'Winanti Khusumaning Rahayu S.Pd I', 4, 5, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(281, 'Alfi Widiyanti ', 1, 'Perempuan', '3', 'Kebumen', '2013-05-10', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd I', 4, 5, 5, 4, 5, 5, 4, 5, 5, 4, 5, 3, 5, 4, 5, 5, 4, 5, 5, 4, 5),
(282, 'Atika Nur Laila', 3, 'Perempuan', '3', 'Kebumen', '2012-07-01', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd I', 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 5, 3, 5, 4, 5, 4, 5, 4, 5, 4, 5),
(283, 'Muhammad Akmal Al Zikra', 11, 'Laki-Laki', '3', 'Kebumen', '2012-09-08', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5),
(284, 'Robit', 15, 'Laki-Laki', '3', 'Kebumen', '2013-02-01', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 3, 5, 4, 3, 4, 5, 4, 5, 4, 5, 5, 4, 5, 5, 5, 4, 5, 5, 4),
(285, 'Yusuf Aditya', 19, 'Laki-Laki', '3', 'Bekasi', '2013-05-08', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 1, 2, 3, 4, 5, 4, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5),
(286, 'Dini Dwi Juliawati', 7, 'Perempuan', '3', 'Kebumen', '2013-07-19', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 4, 4, 5, 4, 4, 5, 5, 5, 4, 4, 5, 2, 3, 5, 4, 2, 4),
(287, 'Prajna Nihayatuz S', 13, 'Perempuan', '3', 'Kebumen', '2012-02-09', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 4, 5, 4, 5, 5, 5, 4, 4, 5, 5, 3, 4, 5, 5, 5),
(288, 'Syabil', 15, 'Laki-Laki', '3', 'Kebumen', '2013-11-11', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 1, 2, 3, 4, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 3, 4, 5),
(289, 'Galuh Zaki O', 6, 'Laki-Laki', '4', 'Kebumen', '2008-10-10', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 5, 4, 5, 5, 5, 5, 4, 5, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 4),
(290, 'Khanza Naufa Z', 18, 'Perempuan', '4', 'Kebumen', '2012-06-12', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 2, 5, 5, 4, 3, 5, 5, 5, 4, 5, 4, 5, 1, 2, 5, 5, 4, 2, 4, 5),
(291, 'Afzania Kala Khusnanda', 2, 'Perempuan', '4', 'Kebumen', '2012-04-22', 'Kalijirek', 'Winanti Khusumaning Rahayu S.Pd  I', 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3),
(292, 'Danis', 15, 'Laki-Laki', '4', 'Kebumen', '2012-02-29', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 3, 3, 1, 5, 4, 3, 3, 4, 5, 2, 4, 3, 3, 1, 3, 3, 3, 4, 3, 3, 5),
(293, 'Rafa', 6, 'Laki-Laki', '4', 'Kebumen', '2012-10-24', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 4, 5, 4, 3, 4, 5, 3, 4, 5, 4, 4, 5, 4, 4, 3, 5, 4, 4),
(294, 'Nabil', 12, 'Laki-Laki', '4', 'Semarang', '2011-02-02', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 3, 5, 4, 4, 3, 4, 3, 4, 3, 3, 4, 3, 4, 4, 3, 3, 2, 3, 4, 3),
(295, 'Shafara Irati Aulia', 22, 'Perempuan', '4', 'Kebumen', '2011-12-31', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 3, 5, 3, 3, 3, 4, 3, 5, 4, 5, 5, 4, 3, 3, 4, 5, 5, 5, 3),
(296, 'Rakha Jefery Pratama', 4, 'Laki-Laki', '4', 'Kebumen', '2012-03-17', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 3, 4, 4, 4, 4, 4, 4, 4, 3, 4, 4, 5, 4, 4, 4, 4, 4, 5, 4, 4),
(297, 'Rafif Iqbal', 20, 'Laki-Laki', '4', 'Kebumen', '2011-12-29', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 4, 3, 5, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 4, 5, 4, 4),
(298, 'Rafika Amelia K', 17, 'Perempuan', '4', 'Kebumen', '2011-07-05', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 3, 5, 5, 3, 5, 5, 5, 3, 5, 5, 5, 5, 3, 5, 5, 4, 5, 5, 4),
(299, 'Raffi Ahmad', 17, 'Laki-Laki', '4', 'Kebumen', '2010-05-16', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 1, 2, 1, 4, 3, 5, 1, 2, 5, 3, 4, 1, 1, 3, 2, 5, 1, 3, 2, 5, 2),
(300, 'Ainun Yumna N', 4, 'Perempuan', '4', 'Yogyakarta', '2011-11-19', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 3, 3, 4, 4, 3, 4, 3, 4, 4, 4, 3, 3, 4, 4, 4, 3, 4, 4, 3, 4, 3),
(301, 'Nazifa Apriani', 15, 'Perempuan', '4', 'Kebumen', '2011-11-18', 'Kalijirek', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 5, 1, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4),
(302, 'Nagra Fitria Rahman', 14, 'Perempuan', '4', 'Kebumen', '2011-08-31', 'Candiwulan', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 3, 5, 5, 4, 5, 4, 5, 5, 5, 4),
(303, 'Athala Hasanatul Syamila', 7, 'Perempuan', '4', 'Kebumen', '2010-05-15', 'Kawedusan', 'Winanti Khusumaning Rahayu S.Pd  I', 3, 3, 4, 5, 3, 4, 3, 4, 5, 4, 3, 4, 5, 5, 5, 4, 5, 4, 4, 3, 4),
(304, 'Aditya Alif Prasetya', 1, 'Laki-Laki', '4', 'Kebumen', '2010-07-16', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 1, 2, 3, 4, 5, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5),
(305, 'Rusti Fitria Pritami ', 21, 'Perempuan', '4', 'Kebumen', '2010-08-31', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 3, 3, 4, 3, 2, 3, 3, 4, 3, 3, 3, 3, 3, 2, 4, 2, 2, 3, 4, 3, 3),
(306, 'Dimas Dwi Prakoso', 7, 'Laki-Laki', '4', 'Kebumen', '2012-08-16', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 4, 3, 5, 5, 3, 4, 2, 3, 5, 4, 5, 3, 4, 5, 4, 5, 5, 3, 5),
(307, 'Nadil Dzaki A', 13, 'Laki-Laki', '4', 'Kebumen', '2012-03-02', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 3, 3, 4, 3, 3, 3, 2, 3, 4, 3, 3, 3, 5, 3, 3, 2, 3, 3, 5, 3, 4),
(308, 'Ahmad Lutfi Hakim', 3, 'Laki-Laki', '4', 'Kebumen', '2012-12-12', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 4, 4, 2, 4, 5, 5, 4, 5, 3, 4, 5, 5, 5, 5, 3, 5, 5, 4),
(309, 'Hana Mailah', 9, 'Perempuan', '4', 'Kebumen', '2011-12-19', 'Karang Sari', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 2, 4, 4, 2, 4, 4, 5, 3, 5, 5, 4, 4, 2, 4, 4, 2, 4, 2, 5),
(310, 'Athan Zimraan Maulana Wijiyanto', 6, 'Laki-Laki', '6', 'Kebumen', '2011-06-14', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 3, 4, 4, 5, 4, 3, 4, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4, 5),
(311, 'Annisa Fatachil Baroroh', 2, 'Perempuan', '6', 'Kebumen', '2009-10-04', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 4, 4, 5, 3, 5, 5, 5, 5, 5, 3, 5, 5, 4, 5, 4, 5, 4, 5),
(312, 'Nadil Fakreza', 10, 'Laki-Laki', '6', 'Kebumen', '2010-03-01', 'Kuwayuhan', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 5, 4, 4, 4),
(313, 'Nasyawa Z.S', 12, 'Perempuan', '6', 'Kebumen', '2010-02-01', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 5, 4, 4, 5, 4, 4, 4, 5, 5, 5, 4, 5, 4, 4, 4, 5, 5, 5, 4),
(314, 'Rahma Fitria', 14, 'Perempuan', '6', 'Kebumen', '2009-10-01', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 5, 4, 4, 5, 4, 4, 5, 4, 5, 4, 4, 4, 5, 5, 4, 5, 5, 4, 5),
(315, 'Mohammad Azmi Rohmadoni', 8, 'Laki-Laki', '6', 'Kebumen', '2009-09-18', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 5, 5, 5),
(316, 'Syariful Anam', 18, 'Laki-Laki', '6', 'Kebumen', '2009-07-21', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 5, 4, 5, 4, 4, 4, 5, 5, 4, 5, 4, 4, 5, 4, 4, 5, 4, 4),
(317, 'M Fakhururozi', 11, 'Laki-Laki', '6', 'Kebumen', '2012-07-21', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 2, 5, 5, 5, 2, 5, 5, 5, 5, 5, 2, 5, 5, 5, 5, 5),
(318, 'Anam Hafiz Azmi', 1, 'Laki-Laki', '6', 'Kebumen', '2009-12-09', 'Karang Kembang', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 5, 5, 3, 4, 5, 4, 4, 4, 4, 5, 4, 3, 4, 5, 4, 5, 5, 5, 4),
(319, 'Faqih Abdul Rohman', 5, 'Laki-Laki', '6', 'Kebumen', '2009-09-27', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 3, 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 3, 5, 3, 4, 5, 5, 3, 4),
(320, 'Ghufron Nur Shidiq ', 7, 'Laki-Laki', '6', 'Majalengka', '2009-11-21', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 3, 5, 3, 3, 3, 4, 3, 3, 5, 4, 3, 3, 3, 4, 5, 3, 3, 5),
(321, 'Ariska Dwi Rahmawati', 3, 'Laki-Laki', '6', 'Kebumen', '2009-07-04', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 5, 5, 3, 4, 5, 4, 4, 4, 4, 5, 4, 3, 4, 5, 4, 4, 4, 4, 4),
(322, 'Nakesha Amelia Z', 11, 'Perempuan', '6', 'Kebumen', '2010-06-30', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 3, 4, 5, 3, 3, 3, 4, 3, 4, 3, 5, 4, 4, 5, 3, 3, 4, 3, 3, 4),
(323, 'Talitha Haura Balqis', 19, 'Perempuan', '6', 'Kebumen', '2010-01-15', 'Kalijirek', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 3, 4, 5, 3, 4, 3, 4, 3, 4, 5, 5, 4, 4, 5, 4, 3, 4, 4, 5, 4),
(324, 'Siti Munawaroh', 17, 'Perempuan', '6', 'Kebumen', '2010-10-27', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 4, 5, 3, 5, 5, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 5, 4, 5),
(325, 'Muhamad Azhar Mubarok', 9, 'Laki-Laki', '6', 'Kebumen', '2008-10-17', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 3, 3, 4, 3, 3, 4, 3, 4, 3, 5, 5, 4, 5, 4, 3, 4, 4, 3, 3),
(326, 'Raffi Adha Prasetya', 13, 'Laki-Laki', '6', 'Kebumen', '2011-10-20', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 5, 5, 3, 4, 5, 4, 4, 4, 4, 4, 4, 3, 5, 5, 4, 5, 5, 5, 4),
(327, 'Sabiila Rizqi A', 16, 'Perempuan', '6', 'Kebumen', '2010-01-17', 'Candiwulan', 'Winanti Khusumaning Rahayu S.Pd  I', 3, 4, 5, 5, 5, 5, 5, 5, 5, 4, 5, 3, 4, 5, 4, 5, 5, 4, 5, 5, 5),
(328, 'Fauzi Maskrunin', 12, 'Laki-Laki', '5', 'Kebumen', '2009-10-05', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 4, 5, 5, 4, 5, 4, 5),
(329, 'Arjun Agam F', 5, 'Laki-Laki', '5', 'Kebumen', '2010-06-12', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 4, 5, 5, 4, 5, 5, 3, 4, 4, 5, 4),
(330, 'Eliza Via Rahmadani', 10, 'Perempuan', '5', 'Kebumen ', '2010-08-28', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(331, 'Antara Bisana', 4, 'Perempuan', '5', 'Kebumen', '2010-05-21', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 5, 5, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 3, 5, 4, 4, 5, 5),
(332, 'Alif.M.A', 2, 'Laki-Laki', '5', 'Kebumen', '2011-05-16', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(333, 'Muhammad Iqbal', 16, 'Laki-Laki', '5', 'Kebumen', '2009-05-20', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(334, 'Nidara Latifa', 18, 'Perempuan', '5', 'Kebumen', '2011-03-25', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(335, 'Kirana Syakila Rahmanisa', 14, 'Perempuan', '5', 'Kebumen', '2011-02-16', 'Winanti Khusumaning Rahayu S.Pd  I', 'Listiyo Pangesti', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(336, 'Arinu Asya Wulandari', 5, 'Perempuan', '5', 'Kebumen', '2010-06-16', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 5, 5, 4, 4, 4, 4, 4, 5, 5, 5, 4, 5, 5, 4, 4, 4, 5, 5),
(337, 'Erna Endah Sulistyawati', 11, 'Perempuan', '5', 'Tegal', '2011-09-09', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(338, 'Najib Mauludi ', 18, 'Laki-Laki', '5', 'Kebumen', '2010-03-03', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 4, 4, 5, 4, 4, 5),
(339, 'Maura Sashi Kirana', 25, 'Laki-Laki', '5', 'Kebumen', '2010-01-30', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 4, 5, 3, 5, 5, 5, 5, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5),
(340, 'Annisa Dwi Nur Camelia', 3, 'Laki-Laki', '5', 'Kebumen', '2011-03-23', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(341, 'Ahmad Sabili Al kahfi', 5, 'Laki-Laki', '5', 'Kebumen', '2010-10-09', 'Candiwulan', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5),
(342, 'Khanza Zahra Zhafirah', 13, 'Perempuan', '5', 'Kebumen', '2010-06-12', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(343, 'Ayu Putri Nur Malasari', 9, 'Perempuan', '5', 'Kebumen', '2011-01-15', 'Kalijirek', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 3, 4, 4, 4, 5, 5, 4, 5, 5, 4, 4, 5, 4, 5, 5, 5, 5, 5, 4, 4),
(344, 'Aurelia Widayatul Hanifah', 8, 'Perempuan', '5', 'Kebumen', '2011-02-03', 'Candiwulan', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(345, 'Novita Puja Jayani', 15, 'Perempuan', '1', 'Kebumen', '2011-10-30', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(346, 'Fadhi V', 13, 'Laki-Laki', '1', 'Kebumen', '2014-08-19', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 2, 3, 3, 4, 3, 3, 4, 4, 4, 4, 4, 5, 4, 5, 4, 5, 4, 4, 5, 3, 4),
(347, 'Hafizhah Indah', 15, 'Perempuan', '1', 'Kebumen', '2014-05-30', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 4, 5, 5, 5, 4, 5, 4, 5, 5, 4, 5, 4, 5, 4, 5, 4, 5),
(348, 'Nanda Abi', 21, 'Laki-Laki', '1', 'Kebumen', '2014-10-08', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 5, 5, 3, 5, 5, 4, 5, 4, 5, 5, 4, 5, 4, 5, 5, 5, 5),
(349, 'Adzara Raya ', 3, 'Perempuan', '1', 'Kebumen', '2014-01-10', 'Surotrunan', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5),
(350, 'Imania Sahitya Karema', 17, 'Perempuan', '1', 'Kebumen', '2014-06-17', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 4),
(351, 'Abdul Hamid', 1, 'Laki-Laki', '1', 'Kebumen', '2014-01-27', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 3, 4, 5, 4, 5, 4, 3, 4, 5, 4, 3, 4, 3, 5, 5),
(352, 'Tegar Navizairi', 25, 'Laki-Laki', '1', 'Kebumen', '2914-11-17', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(353, 'Zardhan Rifai', 29, 'Laki-Laki', '1', 'Kebumen', '2014-08-13', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 3, 5, 4, 5, 3, 4, 5, 2, 5, 2, 3, 4, 4, 5, 5, 4, 5, 4, 5),
(354, 'Diah Septi Nurul', 11, 'Perempuan', '1', 'Kebumen', '2014-08-17', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 4, 5, 4, 4, 5, 4, 5, 4, 5),
(355, 'Tsani Sava Sabrina', 27, 'Perempuan', '1', 'Kebumen', '2014-10-28', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(356, 'Ridha Zavira ', 23, 'Perempuan', '1', 'Kebumen', '2014-07-07', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5),
(357, 'Aldinno', 5, 'Laki-Laki', '1', 'Kebumen', '2014-02-02', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 4, 4, 5, 4, 5, 4, 5),
(358, 'Bayu Tri Sabani', 9, 'Laki-Laki', '1', 'Kebumen', '2014-07-19', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 5, 4, 4, 5, 5, 4, 5, 5, 5, 5, 5, 4, 4, 5, 4, 5, 4),
(359, 'Vino Aldiyansa', 28, 'Laik-Laki', '1', 'Kebumen', '2014-12-12', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(360, 'Alif Rahman A', 6, 'Laki-Laki', '1', 'Kebumen', '2014-03-03', 'Kambang Sari', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(361, 'Sufian Nur Hakim', 24, 'Laki-Laki', '1', 'Kebumen', '2014-09-24', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 5, 4, 5, 5, 5),
(362, 'Falidzal Muzacky', 14, 'Laki-Laki', '1', 'Kebumen', '2014-07-07', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 5, 5, 5, 4, 5, 5, 4, 3, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(363, 'Clara Natania Putri', 10, 'Perempuan', '1', 'Kebumen', '2014-03-03', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 4, 5, 4, 5, 4, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(364, 'Avira Jasseline Kameswara', 9, 'Perempuan', '1', 'Kebumen', '2014-08-22', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 4, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5),
(365, 'Muhammad Hannan', 20, 'Laki-Laki', '1', 'Kebumen', '2014-03-14', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 5, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(366, 'Tirta Hachika', 26, 'Laik-Laki', '1', 'Kebumen', '2014-10-10', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 5, 5, 5, 4, 5, 4, 5, 5, 4, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5),
(367, 'Jasmine Adezkiana', 18, 'Perempuan', '1', 'Kebumen', '2014-05-13', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 4, 5, 3, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(368, 'Keyla ', 22, 'Perempuan', '1', 'Kebumen', '2014-08-08', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 4, 4, 5, 3, 5, 5, 5, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5),
(369, 'Evan Doson Firdaus', 12, 'Laki-Laki', '1', 'Kebumen', '2014-05-05', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 4, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 4, 5, 5, 5, 5, 5, 5),
(370, 'Hauzan', 16, 'Laik-Laki', '2', 'Kebumen', '2014-08-28', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 5, 4, 4, 4, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5),
(371, 'Cakra Abiar Lizar', 8, 'Laki-Laki', '2', 'Kebumen', '2013-08-09', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 3, 4, 5, 2, 1, 5, 4, 3, 2, 1, 5, 5, 4, 3, 5, 5, 5, 5, 4, 3),
(372, 'Rifki Rahmadani P', 24, 'Laki-Laki', '2', 'Lampung', '2013-05-03', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 3, 5, 4, 4, 3, 5, 3, 5, 2, 5, 2, 4, 3, 5, 2, 5, 5, 5, 4, 3),
(373, 'Ghina Kanvila ', 12, 'Perempuan', '2', 'Kebumen', '2006-08-21', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 5, 5, 4, 3, 5, 5, 5, 4, 5, 5, 4, 4, 5, 5, 5, 5, 3, 4, 5),
(374, 'Azam Rasya Fatahilla', 6, 'Laki-Laki', '2', 'Kebumen', '2013-06-21', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(375, 'Adib Akilla Pranaja Setiawan', 2, 'Laki-Laki', '2', 'Kebumen', '2014-11-13', 'Candiwulan', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4),
(376, 'Nurin Najwa Nugroho', 20, 'Perempuan', '2', 'Kebumen', '2013-07-21', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(377, 'Muhammad Fahri ', 16, 'Laki-Laki', '2', 'Kebumen', '2013-11-14', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(378, 'Isheila Wahy EO', 14, 'Perempuan', '2', 'Kebumen', '2013-10-03', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4),
(379, 'Ardiyansa Nur Prabawa', 4, 'Laki-Laki', '2', 'Kebumen', '2013-01-21', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(380, 'Syakiya Naifa Lubna', 26, 'Laki-Laki', '2', 'Kebumen', '2014-03-24', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(381, 'Naura Hasna Hamidah', 18, 'Perempuan', '2', 'Kebumen ', '2014-02-18', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(382, 'Ade Eva ', 1, 'Perempuan', '2', 'Kebumen', '2013-01-28', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 1, 5, 1, 4, 3, 4, 4, 3, 3, 5, 3, 2, 4, 4, 4, 4, 4, 4, 4),
(383, 'Nabila Safira Yuristya', 17, 'Perempuan', '2', 'Kebumen', '2013-06-13', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 1, 4, 1, 4, 3, 4, 4, 3, 3, 5, 4, 2, 4, 4, 4, 4, 5, 4, 4),
(384, 'Nazzua Arzenta Putri Yani', 19, 'Laki-Laki', '2', 'Kebumen', '2013-11-16', 'Kambang Sari', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 1, 4, 1, 5, 4, 5, 2, 1, 4, 4, 4, 4, 1, 5, 4, 4, 5, 4, 4),
(385, 'Asriyatin Kholivatun', 5, 'Perempuan', '2', 'Kebumen', '2013-10-07', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 1, 4, 4, 5, 4, 3, 3, 4, 4, 3, 2, 4, 4, 5, 4, 4, 5, 4, 4),
(386, 'Mahmud Datul Nur Azizah', 15, 'Perempuan', '2', 'Kebumen', '2013-04-19', 'Kebebekan', 'Winanti Khusumaning Rahayu S.Pd  I', 2, 2, 3, 4, 2, 2, 4, 3, 3, 4, 4, 4, 3, 3, 4, 4, 3, 3, 4, 3, 4),
(387, 'Ghaidah', 11, 'Perempuan', '2', 'Kebumen', '2013-03-07', 'Kebebekan', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 5, 1, 4, 1, 4, 4, 3, 3, 4, 4, 3, 2, 2, 4, 4, 3, 3, 3, 4, 4),
(388, 'Yaldhan Rakha Al Fatih', 27, 'Laki-Laki', '2', 'Kebumen', '2014-01-18', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 1, 5, 3, 5, 2, 5, 3, 5, 5, 3, 3, 4, 4, 4, 4, 1, 4, 4, 4, 4, 4),
(389, 'Ahmad Zain As Sabiq', 3, 'Laki-Laki', '2', 'Kebumen ', '2014-08-28', 'Kalijirek', 'Winanti Khusumaning Rahayu S.Pd  I', 1, 2, 3, 4, 5, 1, 1, 4, 3, 1, 5, 1, 2, 3, 4, 5, 1, 3, 4, 1, 5),
(390, 'Ilyas Fahri Arif', 13, 'Laki-Laki', '2', 'Kebumen ', '2013-10-28', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 1, 5, 2, 3, 3, 4, 1, 4, 3, 2, 5, 5, 4, 3, 5, 3, 1, 3, 5, 2, 4),
(391, 'Fadli Akbar', 9, 'Laki-Laki', '2', 'Kebumen', '2013-08-18', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 3, 3, 3, 3, 5, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 4, 4, 5, 5, 4),
(392, 'Rizqi Ridho Fadli', 23, 'Laki-Laki', '2', 'Kebumen', '2013-02-19', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 5, 5, 4, 5, 4, 4, 5, 5, 4, 5, 5, 5, 5, 4, 5, 4, 5, 4, 5, 4, 5),
(393, 'Azzam Irsyad', 7, 'Laki-Laki', '2', 'Kebumen', '2013-02-26', 'Kalijirek', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 1, 5, 5, 4, 4, 4, 4, 4, 4, 4, 3, 4, 3, 3, 2, 3, 1, 5, 4, 2),
(394, 'Angga Pamungkas', 21, 'Laki-Laki', '2', 'Kebumen', '2013-12-27', 'Jatimulyo', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 4, 4, 3, 4, 4, 5, 4, 4, 3, 4, 5, 4, 4, 3, 5, 5, 4, 3, 4, 3),
(395, 'Zulfa Faisal Hasni', 29, 'Laki-Laki', '2', 'Kebumen', '2013-12-19', 'Candiwulan', 'Winanti Khusumaning Rahayu S.Pd  I', 4, 2, 1, 5, 1, 4, 5, 4, 1, 1, 3, 5, 1, 3, 5, 2, 1, 2, 3, 4, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `iterasi`
--

CREATE TABLE `iterasi` (
  `ID` int(11) NOT NULL,
  `Cluster` int(11) NOT NULL,
  `ID_data` int(11) NOT NULL,
  `c1` float NOT NULL,
  `c2` float NOT NULL,
  `min` char(2) NOT NULL,
  `c3` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `iterasi`
--

INSERT INTO `iterasi` (`ID`, `Cluster`, `ID_data`, `c1`, `c2`, `min`, `c3`) VALUES
(1, 1, 12, 9.6, 3.93, 'c3', 0),
(2, 1, 13, 0.7, 5.58, 'c1', 9.49),
(3, 1, 14, 0, 5.68, 'c1', 9.6),
(4, 1, 15, 0.74, 5.15, 'c1', 9.08),
(5, 1, 16, 5.68, 0, 'c2', 3.93),
(6, 1, 17, 5.68, 0, 'c2', 3.93),
(7, 1, 18, 4.4, 0.87, 'c2', 5.22),
(8, 2, 12, 9.38, 3.93, 'c3', 0),
(9, 2, 13, 0.54, 5.16, 'c1', 9.49),
(10, 2, 14, 0.33, 5.27, 'c1', 9.6),
(11, 2, 15, 0.55, 4.74, 'c1', 9.08),
(12, 2, 16, 5.45, 0.42, 'c2', 3.93),
(13, 2, 17, 5.45207, 0.67344, 'c2', 0),
(14, 2, 18, 4.21023, 1.91659, 'c2', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasus`
--

CREATE TABLE `kasus` (
  `idk` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kharga` float NOT NULL,
  `kmenu` float NOT NULL,
  `kfasilitas` float NOT NULL,
  `kjam` float NOT NULL,
  `set_sementara` varchar(10) NOT NULL,
  `tugas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kasus`
--

INSERT INTO `kasus` (`idk`, `nama`, `kharga`, `kmenu`, `kfasilitas`, `kjam`, `set_sementara`, `tugas`) VALUES
(1, 'Guru Kelas 1', 27.8, 23.32, 23.24, 24, 'C3', 'Tri Nursih, A.Ma.Pd'),
(2, 'Guru Kelas 2', 21.7308, 19.1538, 19.4615, 19.3462, 'C1', 'Ani Sukasri Endarwati.Spd'),
(3, 'Guru Kelas 3', 22.1429, 19, 18.9286, 19.2143, 'C1', 'Cholisoh,S.Pd'),
(4, 'Guru Kelas 4', 22.6667, 19.381, 19.2381, 19.0476, 'C1', 'Heri Sukamto Spd.SD'),
(5, 'Guru Kelas 5', 25.4737, 21.5789, 21.6316, 21.8947, 'C2', 'Listiyo Pangesti'),
(6, 'Guru Kelas 6', 25.4737, 21.5789, 21.6316, 21.8947, 'C2', 'Kuntowati Solikhah, Spd Sd'),
(7, 'Guru Mapel PAI', 24.6445, 21.0413, 21.124, 21.2479, 'C2', 'Winanti Khusumaning Rahayu S.Pd  I');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas1`
--

CREATE TABLE `kelas1` (
  `id` int(11) NOT NULL,
  `no` varchar(30) NOT NULL,
  `pedagogik` float NOT NULL,
  `profesional` float NOT NULL,
  `kepribadian` float NOT NULL,
  `sosial` float NOT NULL,
  `siswa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas1`
--

INSERT INTO `kelas1` (`id`, `no`, `pedagogik`, `profesional`, `kepribadian`, `sosial`, `siswa`) VALUES
(1, 'Responden 71', 18, 20, 23, 20, 'Novita Pujayani'),
(2, 'Responden 72', 28, 23, 23, 23, 'Fadhi V\r\n'),
(3, 'Responden 73', 29, 22, 23, 24, 'Hafizhah Indah\r\n'),
(4, 'Responden 74', 24, 20, 20, 25, 'Nanda Abi\r\n'),
(5, 'Responden 75', 29, 25, 25, 25, 'Adzara Raya\r\n'),
(6, 'Responden 76', 30, 21, 25, 20, 'Imania Sahitya Karema\r\n'),
(7, 'Responden 77', 29, 25, 24, 25, 'Abdu Hamid\r\n'),
(8, 'Responden 78', 27, 19, 18, 25, 'Tegar Navizairi\r\n'),
(9, 'Responden 79', 29, 24, 22, 23, 'Zardhan Rifai\r\n'),
(10, 'Responden 80', 24, 25, 25, 25, 'Diah Septi Nurul\r\n'),
(11, 'Responden 81', 30, 25, 20, 25, 'Tsani Sava Sabrina\r\n'),
(12, 'Responden 82', 29, 24, 22, 23, 'Ridha Zavira\r\n'),
(13, 'Responden 83', 28, 24, 22, 23, 'Aldinno\r\n'),
(14, 'Responden 84', 30, 25, 24, 25, 'Bayu Tri Sabani\r\n'),
(15, 'Responden 85', 29, 25, 25, 25, 'Vino Aldiyansa\r\n'),
(16, 'Responden 86', 29, 24, 24, 24, 'Alif Rahman A\r\n'),
(17, 'Responden 87', 29, 23, 22, 23, 'Sufian Nur Hakim\r\n'),
(18, 'Responden 88', 30, 23, 23, 25, 'Falidzal Muzacky\r\n'),
(19, 'Responden 89', 30, 25, 24, 25, 'Clara Natania Putri\r\n'),
(20, 'Responden 90', 28, 23, 24, 25, 'Avira Jasseline Kameswara\r\n'),
(21, 'Responden 91', 29, 24, 23, 24, 'Muhammad Hannan\r\n'),
(22, 'Responden 92', 28, 23, 24, 25, 'Tirta Harchika\r\n'),
(23, 'Responden 93', 26, 24, 25, 25, 'Jasmine Adezkiana\r\n'),
(24, 'Responden 94', 26, 24, 25, 25, 'Keyla\r\n'),
(25, 'Responden 95', 27, 24, 24, 24, 'Evan Dosson Firdaus\r\n'),
(73, 'Responden 73', 29, 22, 23, 24, 'Hafizhah Indah'),
(74, 'Responden 74', 24, 20, 20, 25, 'Nanda Abi'),
(75, 'Responden 75', 29, 25, 25, 25, 'Adzara Raya'),
(76, 'Responden 76', 30, 21, 25, 20, 'Imania Sahitya Karema'),
(77, 'Responden 77', 29, 25, 24, 25, 'Abdu Hamid'),
(78, 'Responden 78', 27, 19, 18, 25, 'Tegar Navizairi'),
(79, 'Responden 79', 29, 24, 22, 23, 'Zardhan Rifai'),
(80, 'Responden 80', 24, 25, 25, 25, 'Diah Septi Nurul'),
(81, 'Responden 81', 30, 25, 20, 25, 'Tsani Sava Sabrina'),
(82, 'Responden 82', 29, 24, 22, 23, 'Ridha Zavira'),
(83, 'Responden 83', 28, 24, 22, 23, 'Aldinno'),
(84, 'Responden 84', 30, 25, 24, 25, 'Bayu Tri Sabani'),
(85, 'Responden 85', 29, 25, 25, 25, 'Vino Aldiyansa'),
(86, 'Responden 86', 29, 24, 24, 24, 'Alif Rahman A'),
(87, 'Responden 87', 29, 23, 22, 23, 'Sufian Nur Hakim'),
(88, 'Responden 88', 30, 23, 23, 25, 'Falidzal Muzacky'),
(89, 'Responden 89', 30, 25, 24, 25, 'Clara Natania Putri'),
(90, 'Responden 90', 28, 23, 24, 25, 'Avira Jasseline Kameswara'),
(91, 'Responden 91', 29, 24, 23, 24, 'Muhammad Hannan'),
(92, 'Responden 92', 28, 23, 24, 25, 'Tirta Harchika'),
(93, 'Responden 93', 26, 24, 25, 25, 'Jasmine Adezkiana'),
(94, 'Responden 94', 26, 24, 25, 25, 'Keyla'),
(95, 'Responden 95', 27, 24, 24, 24, 'Evan Dosson Firdaus'),
(96, 'Rata-Rata', 27.8, 23.32, 23.24, 24, '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas2`
--

CREATE TABLE `kelas2` (
  `id` int(11) NOT NULL,
  `no` varchar(30) NOT NULL,
  `pedagogik` float NOT NULL,
  `profesional` float NOT NULL,
  `kepribadian` float NOT NULL,
  `sosial` float NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas2`
--

INSERT INTO `kelas2` (`id`, `no`, `pedagogik`, `profesional`, `kepribadian`, `sosial`, `nama`) VALUES
(1, 'Responden 96', 19, 15, 22, 22, 'Hauzan\r\n\r\n'),
(2, 'Responden 97', 23, 20, 16, 21, 'Cakra Abiar Lizar\r\n'),
(3, 'Responden 98', 26, 24, 23, 22, 'Rifki Rahmadani P\r\n\r\n'),
(4, 'Responden 99', 24, 20, 20, 20, 'Ghina Kanvila\r\n'),
(5, 'Responden 100', 24, 20, 20, 20, 'Azam Rasya Fatahilla\r\n'),
(6, 'Responden 101', 24, 25, 25, 20, 'Adib Akilla Pranaja Setiawan\r\n\r\n'),
(7, 'Responden 102', 24, 20, 20, 20, 'Nurin Najwa Nugroho\r\n\r\n'),
(8, 'Responden 103', 24, 25, 25, 20, 'Muhammad Fahri\r\n'),
(9, 'Responden 104', 24, 20, 20, 20, 'Isheila Wahy EO\r\n'),
(10, 'Responden 105', 24, 20, 20, 20, 'Ardiyansa Nur Prabawa\r\n'),
(11, 'Responden 106', 24, 20, 20, 20, 'Syakiya Naifa Lubna\r\n'),
(12, 'Responden 107', 24, 20, 20, 20, 'Naura Hasna Hamidah\r\n'),
(13, 'Responden 108', 20, 17, 18, 20, 'Ade Eva\r\n'),
(14, 'Responden 109', 19, 17, 19, 21, 'Nabila Safira Yuristya\r\n'),
(15, 'Responden 110', 20, 15, 18, 21, 'Nazzua Arzenta Putri Yani\r\n'),
(16, 'Responden 111', 23, 18, 18, 21, 'Asriyatin Kholivatun\r\n'),
(17, 'Responden 112', 15, 18, 18, 17, 'Mahmud Datul Nur Azizah\r\n'),
(18, 'Responden 113', 19, 18, 15, 17, 'Ghaidah\r\n'),
(19, 'Responden 114', 21, 19, 17, 20, 'Yaldhan Rakha Al Fatih\r\n'),
(20, 'Responden 115', 16, 14, 15, 14, 'Ahmad Zain As Sabiq\r\n'),
(21, 'Responden 116', 18, 15, 20, 13, 'Ilyas Fahri Arif\r\n'),
(22, 'Responden 117', 20, 20, 22, 22, 'Fadli Akbar\r\n'),
(23, 'Responden 118', 27, 24, 23, 23, 'Rizqi Ridho Fadli\r\n'),
(24, 'Responden 119', 23, 20, 15, 15, 'Azzam Irsyad\r\n'),
(25, 'Responden 120', 23, 20, 21, 19, 'Angga Pamungkas\r\n'),
(26, 'Responden 121', 17, 14, 16, 15, 'Zulfa Faisal Hasni\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas3`
--

CREATE TABLE `kelas3` (
  `id` int(11) NOT NULL,
  `no` varchar(30) NOT NULL,
  `pedagogik` int(11) NOT NULL,
  `profesional` int(11) NOT NULL,
  `kepribadian` int(11) NOT NULL,
  `sosial` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas3`
--

INSERT INTO `kelas3` (`id`, `no`, `pedagogik`, `profesional`, `kepribadian`, `sosial`, `nama`) VALUES
(1, 'Responden 1', 13, 16, 18, 15, 'Daviana Ratih Janantaka'),
(2, 'Responden 2', 21, 18, 18, 14, 'Aqila Khulwa Khoirul'),
(3, 'Responden 3', 21, 15, 18, 20, 'Tsalita Zahra Rahmadani'),
(4, 'Responden 4', 19, 18, 18, 15, 'Chantika Abelia Kenny'),
(5, 'Responden 5', 18, 15, 18, 15, 'Oktavia Indah Puspita'),
(6, 'Responden 6', 25, 25, 25, 25, 'Ikhsanul Akmal'),
(7, 'Responden 7', 28, 21, 22, 23, 'Alfi Widiyanti'),
(8, 'Responden 8', 22, 25, 17, 23, 'Atika Nur Laila'),
(9, 'Responden 9', 26, 25, 24, 25, 'Muhammad Akmal Al Zikra'),
(10, 'Responden 10', 24, 22, 24, 23, 'Robit'),
(11, 'Responden 11', 19, 15, 15, 15, 'Yusuf Aditya'),
(12, 'Responden 12', 24, 23, 20, 19, 'Dini Dwi Juliawat'),
(13, 'Responden 13', 30, 23, 23, 22, 'Prajna Nihayatuz S'),
(14, 'Responden 14', 20, 5, 5, 15, 'Syabil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas4`
--

CREATE TABLE `kelas4` (
  `id` int(11) NOT NULL,
  `no` varchar(30) NOT NULL,
  `pedagogik` int(11) NOT NULL,
  `profesional` int(11) NOT NULL,
  `kepribadian` int(11) NOT NULL,
  `sosial` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas4`
--

INSERT INTO `kelas4` (`id`, `no`, `pedagogik`, `profesional`, `kepribadian`, `sosial`, `nama`) VALUES
(1, 'Responden 15', 27, 23, 24, 23, 'Galuh Zaki O\r\n'),
(2, 'Responden 16', 23, 24, 17, 20, 'Khanza Nausa Z\r\n'),
(3, 'Responden 17', 18, 15, 15, 15, 'Afzania Kala Khusnanda\r\n'),
(4, 'Responden 18', 19, 18, 18, 15, 'Danis\r\n'),
(5, 'Responden 19', 27, 19, 22, 20, 'Rafa\r\n'),
(6, 'Responden 20', 23, 17, 18, 15, 'Nabil\r\n'),
(7, 'Responden 21', 24, 19, 20, 22, 'Shafara Irati Aulia\r\n'),
(8, 'Responden 22', 23, 19, 21, 21, 'Rakha Jefery Pratama\r\n'),
(9, 'Responden 23', 25, 20, 25, 22, 'Rafif Iqbal\r\n'),
(10, 'Responden 24', 26, 23, 23, 23, 'Rafika Amelia K\r\n'),
(11, 'Responden 25', 16, 15, 12, 9, 'Raffi Ahmad\r\n'),
(12, 'Responden 26', 21, 18, 18, 18, 'Ainun Yumna N\r\n'),
(13, 'Responden 27', 25, 25, 25, 23, 'Nazifa Apriani\r\n'),
(14, 'Responden 28', 28, 24, 22, 23, 'Nagra Fitria Rahman\r\n'),
(15, 'Responden 29', 22, 19, 23, 20, 'Athala Hasanatul Syamila\r\n'),
(16, 'Responden 30', 20, 14, 14, 14, 'Aditya Alif Prasetya\r\n'),
(17, 'Responden 31', 18, 16, 14, 15, 'Rusti Fitria Pritami\r\n'),
(18, 'Responden 32', 26, 17, 21, 22, 'Dimas Dwi Prakoso\r\n'),
(19, 'Responden 33', 19, 18, 16, 18, 'Nadil Dzaki A\r\n'),
(20, 'Responden 34', 25, 23, 22, 22, 'Ahmad Lutfi Hakim\r\n'),
(21, 'Responden 35', 21, 21, 19, 17, 'Hana Mailah\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas5`
--

CREATE TABLE `kelas5` (
  `id` int(11) NOT NULL,
  `no` varchar(30) NOT NULL,
  `pedagogik` int(11) NOT NULL,
  `profesional` int(11) NOT NULL,
  `kepribadian` int(11) NOT NULL,
  `sosial` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas5`
--

INSERT INTO `kelas5` (`id`, `no`, `pedagogik`, `profesional`, `kepribadian`, `sosial`, `nama`) VALUES
(1, 'Responden 54', 24, 23, 24, 23, 'Fauzi Maskrunin\r\n'),
(2, 'Responden 55', 24, 19, 24, 20, 'Arjun Agam F\r\n'),
(3, 'Responden 56', 30, 25, 25, 25, 'Eliza Via Rahmadani\r\n'),
(4, 'Responden 57', 26, 23, 23, 23, 'Antara Bisana\r\n'),
(5, 'Responden 58', 30, 25, 25, 25, 'Alif.M.A\r\n'),
(6, 'Responden 59', 30, 25, 25, 25, 'Muhammad Iqbal\r\n'),
(7, 'Responden 60', 30, 25, 25, 25, 'Nidara Latifa\r\n'),
(8, 'Responden 61', 30, 25, 25, 25, 'Kirana Syakila Rahmanisa\r\n'),
(9, 'Responden 62', 26, 21, 24, 22, 'Arinu Asya Wulandari\r\n'),
(10, 'Responden 63', 30, 25, 25, 25, 'Erna Endah Sulistyawati\r\n'),
(11, 'Responden 64', 29, 25, 23, 22, 'Najib Mauludi\r\n'),
(12, 'Responden 65', 28, 23, 23, 25, 'Maura Sashi Kirana\r\n'),
(13, 'Responden 66', 30, 25, 25, 25, 'Annisa Dwi Nur Camelia\r\n'),
(14, 'Responden 67', 30, 25, 25, 25, 'Ahmad Sabili Al kahfi\r\n'),
(15, 'Responden 68', 30, 25, 25, 25, 'Khanza Zahra Zhafirah\r\n'),
(16, 'Responden 69', 25, 23, 23, 23, 'Ayu Dwi Nur Malasari\r\n'),
(17, 'Responden 70', 30, 25, 25, 25, 'Auralia Widayatul Hanifah\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas6`
--

CREATE TABLE `kelas6` (
  `id` int(11) NOT NULL,
  `no` varchar(30) NOT NULL,
  `pedagogik` int(11) NOT NULL,
  `profesional` int(11) NOT NULL,
  `kepribadian` int(11) NOT NULL,
  `sosial` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas6`
--

INSERT INTO `kelas6` (`id`, `no`, `pedagogik`, `profesional`, `kepribadian`, `sosial`, `nama`) VALUES
(1, 'Responden 36', 23, 22, 24, 24, 'Athan Zimraan Maulana Wijiyanto\r\n'),
(2, 'Responden 37', 27, 23, 22, 22, 'Annisa Fatchil Baroroh\r\n'),
(3, 'Responden 38', 25, 20, 21, 21, 'Nadil Fakreza\r\n'),
(4, 'Responden 39', 26, 22, 22, 23, 'Nasyawa Z.S\r\n'),
(5, 'Responden 40', 27, 22, 23, 23, 'Rahma Fitria\r\n'),
(6, 'Responden 41', 25, 29, 21, 24, 'Mohammad Azmi Rohmadoni\r\n'),
(7, 'Responden 42', 26, 22, 22, 21, 'Syariful Anam\r\n'),
(8, 'Responden 43', 27, 22, 22, 25, 'M Fakhururozi\r\n'),
(9, 'Responden 44', 26, 21, 21, 22, 'Anam Hafiz Azmi\r\n'),
(10, 'Responden 45', 25, 24, 21, 21, 'Faqih Abdul Rohman\r\n'),
(11, 'Responden 46', 25, 16, 15, 20, 'Ghufron Nur Shidiq\r\n'),
(12, 'Responden 47', 26, 21, 21, 20, 'Ariska Dwi rahmawati\r\n'),
(13, 'Responden 48', 22, 17, 21, 17, 'Nakesha Amelia Z\r\n'),
(14, 'Responden 49', 23, 19, 22, 20, 'Talitha Haura Balqis\r\n'),
(15, 'Responden 50', 26, 23, 24, 24, 'Siti Munawaroh\r\n'),
(16, 'Responden 51', 22, 17, 22, 17, 'Muhamad Azhar Mubarok\r\n'),
(17, 'Responden 52', 26, 21, 21, 23, 'Raffi Adha Prasetya\r\n'),
(18, 'Responden 53', 27, 24, 21, 24, 'Sabiila Rizqi A\r\n'),
(36, 'Responden 36', 23, 22, 24, 24, 'Athan Zimraan Maulana Wijiyanto\r\n'),
(37, 'Responden 37', 27, 23, 22, 22, 'Annisa Fatchil Baroroh\r\n'),
(38, 'Responden 38', 25, 20, 21, 21, 'Nadil Fakreza\r\n'),
(39, 'Responden 39', 26, 22, 22, 23, 'Nasyawa Z.S\r\n'),
(40, 'Responden 40', 27, 22, 23, 23, 'Rahma Fitria\r\n'),
(41, 'Responden 41', 25, 29, 21, 24, 'Mohammad Azmi Rohmadoni\r\n'),
(42, 'Responden 42', 26, 22, 22, 21, 'Syariful Anam\r\n'),
(43, 'Responden 43', 27, 22, 22, 25, 'M Fakhururozi\r\n'),
(44, 'Responden 44', 26, 21, 21, 22, 'Anam Hafiz Azmi\r\n'),
(45, 'Responden 45', 25, 24, 21, 21, 'Faqih Abdul Rohman\r\n'),
(46, 'Responden 46', 25, 16, 15, 20, 'Ghufron Nur Shidiq\r\n'),
(47, 'Responden 47', 26, 21, 21, 20, 'Ariska Dwi rahmawati\r\n'),
(48, 'Responden 48', 22, 17, 21, 17, 'Nakesha Amelia Z\r\n'),
(49, 'Responden 49', 23, 19, 22, 20, 'Talitha Haura Balqis\r\n'),
(50, 'Responden 50', 26, 23, 24, 24, 'Siti Munawaroh\r\n'),
(51, 'Responden 51', 22, 17, 22, 17, 'Muhamad Azhar Mubarok\r\n'),
(52, 'Responden 52', 26, 21, 21, 23, 'Raffi Adha Prasetya\r\n'),
(53, 'Responden 53', 27, 24, 21, 24, 'Sabiila Rizqi A\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pai`
--

CREATE TABLE `pai` (
  `id` int(11) NOT NULL,
  `no` varchar(30) NOT NULL,
  `pedagogik` int(11) NOT NULL,
  `profesional` int(11) NOT NULL,
  `kepribadian` int(11) NOT NULL,
  `sosial` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pai`
--

INSERT INTO `pai` (`id`, `no`, `pedagogik`, `profesional`, `kepribadian`, `sosial`, `nama`) VALUES
(1, 'Responden 1', 13, 16, 18, 15, 'Daviana Ratih Janantaka'),
(2, 'Responden 2', 21, 18, 18, 14, 'Aqila Khulwa Khoirul'),
(3, 'Responden 3', 21, 15, 18, 20, 'Tsalita Zahra Rahmadani'),
(4, 'Responden 4', 19, 18, 18, 15, 'Chantika Abelia Kenny'),
(5, 'Responden 5', 18, 15, 18, 15, 'Oktavia Indah Puspita'),
(6, 'Responden 6', 25, 25, 25, 25, 'Ikhsanul Akmal'),
(7, 'Responden 7', 28, 21, 22, 23, 'Alfi Widiyanti'),
(8, 'Responden 8', 22, 25, 17, 23, 'Atika Nur Laila'),
(9, 'Responden 9', 26, 25, 24, 25, 'Muhammad Akmal Al Zikra'),
(10, 'Responden 10', 24, 22, 24, 23, 'Robit'),
(11, 'Responden 11', 19, 15, 15, 15, 'Yusuf Aditya'),
(12, 'Responden 12', 24, 23, 20, 19, 'Dini Dwi Juliawat'),
(13, 'Responden 13', 30, 23, 23, 22, 'Prajna Nihayatuz S'),
(14, 'Responden 14', 20, 5, 5, 15, 'Syabil'),
(15, 'Responden 15', 27, 23, 24, 23, 'Galuh Zaki O\r\n'),
(16, 'Responden 16', 23, 24, 17, 20, 'Khanza Nausa Z\r\n'),
(17, 'Responden 17', 18, 15, 15, 15, 'Afzania Kala Khusnanda\r\n'),
(18, 'Responden 18', 19, 18, 18, 15, 'Danis\r\n'),
(19, 'Responden 19', 27, 19, 22, 20, 'Rafa\r\n'),
(20, 'Responden 20', 23, 17, 18, 15, 'Nabil\r\n'),
(21, 'Responden 21', 24, 19, 20, 22, 'Shafara Irati Aulia\r\n'),
(22, 'Responden 22', 23, 19, 21, 21, 'Rakha Jefery Pratama\r\n'),
(23, 'Responden 23', 25, 20, 25, 22, 'Rafif Iqbal\r\n'),
(24, 'Responden 24', 26, 23, 23, 23, 'Rafika Amelia K\r\n'),
(25, 'Responden 25', 16, 15, 12, 9, 'Raffi Ahmad\r\n'),
(26, 'Responden 26', 21, 18, 18, 18, 'Ainun Yumna N\r\n'),
(27, 'Responden 27', 25, 25, 25, 23, 'Nazifa Apriani\r\n'),
(28, 'Responden 28', 28, 24, 22, 23, 'Nagra Fitria Rahman\r\n'),
(29, 'Responden 29', 22, 19, 23, 20, 'Athala Hasanatul Syamila\r\n'),
(30, 'Responden 30', 20, 14, 14, 14, 'Aditya Alif Prasetya\r\n'),
(31, 'Responden 31', 18, 16, 14, 15, 'Rusti Fitria Pritami\r\n'),
(32, 'Responden 32', 26, 17, 21, 22, 'Dimas Dwi Prakoso\r\n'),
(33, 'Responden 33', 19, 18, 16, 18, 'Nadil Dzaki A\r\n'),
(34, 'Responden 34', 25, 23, 22, 22, 'Ahmad Lutfi Hakim\r\n'),
(35, 'Responden 35', 21, 21, 19, 17, 'Hana Mailah\r\n'),
(54, 'Responden 54', 24, 23, 24, 23, 'Fauzi Maskrunin\r\n'),
(55, 'Responden 55', 24, 19, 24, 20, 'Arjun Agam F\r\n'),
(56, 'Responden 56', 30, 25, 25, 25, 'Eliza Via Rahmadani\r\n'),
(57, 'Responden 57', 26, 23, 23, 23, 'Antara Bisana\r\n'),
(58, 'Responden 58', 30, 25, 25, 25, 'Alif.M.A\r\n'),
(59, 'Responden 59', 30, 25, 25, 25, 'Muhammad Iqbal\r\n'),
(60, 'Responden 60', 30, 25, 25, 25, 'Nidara Latifa\r\n'),
(61, 'Responden 61', 30, 25, 25, 25, 'Kirana Syakila Rahmanisa\r\n'),
(62, 'Responden 62', 26, 21, 24, 22, 'Arinu Asya Wulandari\r\n'),
(63, 'Responden 63', 30, 25, 25, 25, 'Erna Endah Sulistyawati\r\n'),
(64, 'Responden 64', 29, 25, 23, 22, 'Najib Mauludi\r\n'),
(65, 'Responden 65', 28, 23, 23, 25, 'Maura Sashi Kirana\r\n'),
(66, 'Responden 66', 30, 25, 25, 25, 'Annisa Dwi Nur Camelia\r\n'),
(67, 'Responden 67', 30, 25, 25, 25, 'Ahmad Sabili Al kahfi\r\n'),
(68, 'Responden 68', 30, 25, 25, 25, 'Khanza Zahra Zhafirah\r\n'),
(69, 'Responden 69', 25, 23, 23, 23, 'Ayu Dwi Nur Malasari\r\n'),
(70, 'Responden 70', 30, 25, 25, 25, 'Auralia Widayatul Hanifah\r\n'),
(71, 'Responden 71', 30, 25, 25, 25, 'Novita Puja Jayani\r\n\r\n'),
(72, 'Responden 72', 28, 23, 23, 23, 'Fadhi V'),
(96, 'Responden 96', 19, 15, 22, 22, 'Hauzan'),
(97, 'Responden 97', 23, 20, 16, 21, 'Cakra Abiar Lizar'),
(98, 'Responden 98', 26, 24, 23, 22, 'Rifki Rahmadani P'),
(99, 'Responden 99', 24, 20, 20, 20, 'Ghina Kanvila'),
(100, 'Responden 100', 24, 20, 20, 20, 'Azam Rasya Fatahilla'),
(101, 'Responden 101', 24, 25, 25, 20, 'Adib Akilla Pranaja Setiawan'),
(102, 'Responden 102', 24, 20, 20, 20, 'Nurin Najwa Nugroho'),
(103, 'Responden 103', 24, 25, 25, 20, 'Muhammad Fahri'),
(104, 'Responden 104', 24, 20, 20, 20, 'Isheila Wahy EO'),
(105, 'Responden 105', 24, 20, 20, 20, 'Ardiyansa Nur Prabawa'),
(106, 'Responden 106', 24, 20, 20, 20, 'Syakiya Naifa Lubna'),
(107, 'Responden 107', 24, 20, 20, 20, 'Naura Hasna Hamidah'),
(108, 'Responden 108', 20, 17, 18, 20, 'Ade Eva'),
(109, 'Responden 109', 19, 17, 19, 21, 'Nabila Safira Yuristya'),
(110, 'Responden 110', 20, 15, 18, 21, 'Nazzua Arzenta Putri Yani'),
(111, 'Responden 111', 23, 18, 18, 21, 'Asriyatin Kholivatun'),
(112, 'Responden 112', 15, 18, 18, 17, 'Mahmud Datul Nur Azizah'),
(113, 'Responden 113', 19, 18, 15, 17, 'Ghaidah'),
(114, 'Responden 114', 21, 19, 17, 20, 'Yaldhan Rakha Al Fatih'),
(115, 'Responden 115', 16, 14, 15, 14, 'Ahmad Zain As Sabiq'),
(116, 'Responden 116', 18, 15, 20, 13, 'Ilyas Fahri Arif'),
(117, 'Responden 117', 20, 20, 22, 22, 'Fadli Akbar'),
(118, 'Responden 118', 27, 24, 23, 23, 'Rizqi Ridho Fadli'),
(119, 'Responden 119', 23, 20, 15, 15, 'Azzam Irsyad'),
(120, 'Responden 120', 23, 20, 21, 19, 'Angga Pamungkas'),
(121, 'Responden 121', 17, 14, 16, 15, 'Zulfa Faisal Hasni');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` int(3) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `nama`, `kategori`) VALUES
(1, 'Guru dapat memahami dengan baik ciri-ciri peserta ', 'pedagogik'),
(2, 'Guru dapat memahami potensi-potensi anak didik', 'pedagogik'),
(3, 'Guru dapat menguasai bahasa indonesia yang baik sebagai medium of instruction yang efektif', 'Pedagogik'),
(4, 'Guru memiliki metode penyampaian materi yang baik  dan dapat membimbing anak bika menghadapi persoalan dalam pembelajaran', 'Pedagogik'),
(5, 'Guru memberikan ulangan/ujian sesuai materi yang diajarkan', 'Pedagogik'),
(6, 'Guru dapat menguasai berbagai model dan strategi pembelajaran dan juga menyampailan rencana pembelajaran dengan baik', 'Pedagogik'),
(7, 'Guru mampu menguasai bagaimana menerapkan Teknologi dalam upaya meningkatkan efektifitas anak', 'Profesional'),
(8, 'Guru mampu menguasai bagaimana mengolah learning resources dari lingkungan hidup sehingga dapat di pergunakan untuk mendukung proses belajar mengajar', 'Profesional'),
(9, 'Guru mampu menguasai learning resources yang di perlukan dalam proses belajar mengajar', 'Profesional'),
(10, 'Guru mampu menguasai bagaimanamenerapkan teknologi informasi dalam upaya menngkatkan efektifitas belajar ', 'Profesional'),
(11, 'Guru mampu menguasai bagaimana menyusun rencana pelajaran yang mengemas isi , media teknologi  dan value dalam setiap proses pembelajaran ', 'Profesional'),
(12, 'Guru memiliki keteladanan dalam bersikap dan berperilaku', 'Kepribadian'),
(13, 'Guru selalu adil dan memiliki kasih sayang kepada siswa tanpa membeda-bedakan', 'Kepribadian'),
(14, 'Guru memiliki kearifan dalam mengambil keputusan dan pengendalian diri dalam berbagai kondisi', 'Kepribadian'),
(15, 'Guru dapat memiliki rasa tanggung jawab yang kokoh dalam menjalankan fungsinya sebagai guru', 'Kepribadian'),
(16, 'Guru memberikan pujian terhadap peserta didik yang dapat menyelesaikan tugas tepat waktu ', 'Kepribadian'),
(17, 'Guru mampuu memahami beberapa faktor yang berpengaruh dalam menciptakan lingkungan belajar yang mendukung pbm', 'Sosial'),
(18, 'Guru dapat mengerti berbagai faktor sosial cultural dan ekonomi yang berpengaruh terhadap proses pendidikan anak di sekolah', 'Sosial'),
(19, 'Guru mampu memahami pentingnya hubungan antara sekolah dengan orang tua dan tokoh masyarakat yang berpengaruh terhadap proses pendidikan anak di Indonesia', 'Sosial'),
(20, 'Guru dapat mengerti nilai-nilai dan norma-norma yang berlaku dan di junjung tinggi oleh masyarakat ', 'Sosial'),
(21, 'Guru mampu memahami berbagai faktor yang berkontribusi dalam menciptakan lingkungan belajar yang mendukung Proses belajar Mengajar ', 'Sosial');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jekel` varchar(20) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `absen` int(10) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `jekel`, `kelas`, `absen`, `tempat`, `tanggal`, `alamat`) VALUES
(1, 'Daviana Ratih Janati', 'Perempuan', '3', 6, 'Kebumen', '2012-08-12', 'Jatimulyo'),
(2, 'Aqila Khulwa Khoirulnisa', 'Perempuan', '3', 2, 'Kebumen', '2013-03-03', 'Jatimulyo'),
(3, 'Tsalita Zahra Rahmad', 'Perempuan', '3', 3, 'Kebumen', '2012-08-16', 'Jatimulyo'),
(4, 'Chantika Abelia Kenn', 'Perempuan', '3', 4, 'Kebumen', '2012-05-05', 'Jatimulyo'),
(5, 'Oktavia Indah Puspit', 'Perempuan', '3', 12, 'Kebumen', '2012-10-04', 'Jatimulyo'),
(6, 'Ikhsanul Akmal', 'Laki-Laki', '3', 9, 'Kebumen', '2012-07-14', 'Candiwulan'),
(7, 'Alfi Widiyanti ', 'Perempuan', '3', 1, 'Kebumen', '2013-05-10', 'Jatimulyo'),
(8, 'Atika Nur Laila', 'Perempuan', '3', 3, 'Kebumen', '2012-07-01', 'Jatimulyo'),
(9, 'Muhammad Akmal Al Zi', 'Laki-Laki', '3', 13, 'Kebumen', '2012-09-08', 'Jatimulyo'),
(10, 'Robit', 'Laki-Laki', '3', 15, 'Kebumen', '2013-02-01', 'Jatimulyo'),
(11, 'Yusuf Aditya', 'Laki-Laki', '3', 19, 'Bekasi', '2013-05-08', 'Jatimulyo'),
(12, 'Dini Dwi Juliawat', 'Perempuan', '3', 7, 'Kebumen', '2012-09-19', 'Jatimulyo'),
(13, 'Prajna Nihayatuz S', 'Perempuan', '3', 13, 'Kebumen', '2012-09-26', 'Jatimulyo'),
(14, 'Syabil', 'Laik-Laki', '3', 17, 'Kebumen', '2013-11-11', 'Jatimulyo'),
(15, 'Galuh Zaki O', 'Laki-Laki', '4', 6, 'Kebumen', '2008-10-10', 'Jatimulyo'),
(16, 'Khanza Nausa Z', 'Laki-Laki', '4', 19, 'Kebumen', '2012-06-12', 'Jatimulyo'),
(17, 'Afzania Kala Khusnan', 'Laki-Laki', '4', 19, 'Kebumen', '2012-04-02', 'Kalijirek'),
(18, 'Danis', 'Laki-Laki', '4', 15, 'Kebumen', '2012-02-29', 'Jatimulyo'),
(19, 'Rafa', 'Laki-Laki', '4', 6, 'Kebumen ', '2012-10-28', 'Jatimulyo'),
(20, 'Nabil', 'Laki-Laki', '4', 12, 'Semarang', '2012-02-02', 'Jatimulyo'),
(21, 'Shafara Irati Aulia', 'Perempuan', '4', 22, 'Kebumen', '2011-12-31', 'Jatimulyo'),
(22, 'Rakha Jefery Pratama', 'Laki-Laki', '4', 4, 'Kebumen', '2012-03-17', 'Jatimulyo'),
(23, 'Rafif Iqbal', 'Laki-Laki', '4', 20, 'Kebumen', '2011-12-29', 'Jatimulyo'),
(24, 'Rafika Amelia K', 'Perempuan', '4', 11, 'Kebumen', '2011-07-05', 'Jatimulyo'),
(25, 'Raffi Ahmad', 'Laki-laki', '4', 17, 'Kebumen', '2010-05-16', 'Jatimulyo'),
(26, 'Ainun Yumna N', 'Perempuan', '4', 4, 'Yogyakarta', '2011-11-19', 'Jatimulyo'),
(27, 'Nazifa Apriani', 'Perempuan', '4', 15, 'Kebumen', '2010-04-21', 'Kalijirek'),
(28, 'Nagra Fitria Rahman', 'Perempuan', '4', 14, 'Kebumen', '2011-08-31', 'Candiwulan'),
(29, 'Athala Hasanatul Sya', 'Perempuan', '4', 11, 'Kebumen', '2010-05-15', 'Kawedusan'),
(30, 'Aditya Alif Prasetya', 'Laki-Laki', '4', 1, 'Kebumen', '2010-07-16', 'Jatimulyo'),
(31, 'Rusti Fitria Pritami', 'Perempuan', '4', 21, 'Kebumen', '2011-08-31', 'Jatimulyo'),
(32, 'Dimas Dwi Prakoso', 'Laki-Laki', '4', 7, 'Kebumen ', '2012-08-16', 'Jatimulyo'),
(33, 'Nadil Dzaki A', 'Laki-Laki', '4', 13, 'Semarang', '2012-03-02', 'Jatimulyo'),
(34, 'Ahmad Lutfi Hakim', 'Laki-Laki', '4', 3, 'Kebumen', '2012-12-12', 'Jatimulyo'),
(35, 'Hana Mailah', 'Perempuan', '4', 9, 'Kebumen', '2011-12-19', 'Karang sari'),
(36, 'Athan Zimraan Maulan', 'Laki-Laki ', '6', 4, 'Kebumen', '2010-06-14', 'Jatimulyo'),
(37, 'Annisa Fatchil Baror', 'Perempuan', '6', 2, 'Kebumen', '2009-10-04', 'Jatimulyo'),
(38, 'Nadil Fakreza', 'Laki-Laki', '6', 10, 'Kebumen', '2010-03-01', 'Kewayuhan'),
(39, 'Nasyawa Z.S', 'Perempuan', '6', 12, 'Kebumen', '2010-02-01', 'Jatimulyo'),
(40, 'Rahma Fitria', 'Perempuan', '6', 14, 'Kebumen', '2010-10-01', 'Jatimulyo'),
(41, 'Mohammad Azmi Rohmad', 'Laki-Laki', '6', 8, 'Kebumen', '2009-09-18', 'Jatimulyo'),
(42, 'Syariful Anam', 'Laki-Laki', '6', 18, 'Kebumen', '2009-07-21', 'Jatimulyo'),
(43, 'M Fakhururozi', 'Laki-Laki', '6', 11, 'Kebumen', '2013-01-13', 'Jatimulyo'),
(44, 'Anam Hafiz Azmi', 'Laki-Laki', '6', 1, 'Kebumen', '2009-12-01', 'Karang Kembang'),
(45, 'Faqih Abdul Rohman', 'Laki-Laki', '6', 5, 'Kebumen', '2009-09-27', 'Jatimulyo'),
(46, 'Ghufron Nur Shidiq ', 'Laki-Laki', '6', 7, 'Majalengka', '2009-11-21', 'Jatimulyo'),
(47, 'Ariska Dwi rahmawati', 'Perempuan', '6', 3, 'Kebumen', '2009-07-04', 'Jatimulyo'),
(48, 'Nakesha Amelia Z', 'Perempuan', '6', 11, 'Kebumen', '2010-06-30', 'Jatimulyo'),
(49, 'Talitha Haura Balqis', 'Perempuan', '6', 19, 'Kebumen', '2010-01-15', 'Kalijirek'),
(50, 'Siti Munawaroh', 'Laki-Laki', '6', 17, 'Kebumen', '2010-10-27', 'Jatimulyo'),
(51, 'Muhamad Azhar Mubaro', 'Laki-Laki', '6', 9, 'Kebumen', '2008-10-17', 'Jatimulyo'),
(52, 'Raffi Adha Prasetya', 'Laki-Laki', '6', 14, 'Kebumen', '2011-10-20', 'Jatimulyo'),
(53, 'Sabiila Rizqi A', 'Perempuan', '6', 16, 'Kebumen', '2010-01-17', 'Candiwulan'),
(54, 'Fauzi Maskrunin', 'Laki-Laki', '5', 12, 'Kebumen', '2009-10-05', 'Jatimulyo'),
(55, 'Arjun Agam F', 'Laki-Laki', '5', 6, 'Kebumen', '2010-06-12', 'Jatimulyo'),
(56, 'Eliza Via Rahmadani', 'Perempuan', '5', 10, 'Kebumen', '2010-08-28', 'Jatimulyo'),
(57, 'Antara Bisana', 'Perempuan', '5', 4, 'Kebumen', '2010-05-21', 'Jatimulyo'),
(58, 'Alif.M.A', 'Laki-Laki', '5', 3, 'Kebumen', '2011-05-16', 'Jatimulyo'),
(59, 'Muhammad Iqbal', 'Laki-Laki', '5', 16, 'Kebumen', '2009-05-20', 'Jatimulyo'),
(60, 'Nidara Latifa', 'Perempuan', '5', 18, 'Kebumen', '2011-03-25', 'Jatimulyo'),
(61, 'Kirana Syakila Rahma', 'Perempuan', '5', 16, 'Kebumen', '2011-01-17', 'Jatimulyo'),
(62, 'Arinu Asya Wulandari', 'Perempuan', '5', 4, 'Kebumen', '2010-07-16', 'Jatimulyo'),
(63, 'Erna Endah Sulistyaw', 'Perempuan', '5', 11, 'Tegal', '2011-09-09', 'Jatimulyo'),
(64, 'Najib Mauludi ', 'Laki-Laki', '5', 18, 'Kebumen', '2010-03-03', 'Jatimulyo'),
(65, 'Maura Sashi Kirana', 'Perempuan', '5', 15, 'Kebumen', '2010-01-03', 'Jatimulyo'),
(66, 'Annisa Dwi Nur Camel', 'Perempuan', '5', 3, 'Semarang', '2011-03-23', 'Jatimulyo'),
(67, 'Ahmad Sabili Al kahf', 'Laki-Laki', '5', 5, 'Kebumen', '2010-10-09', 'Candiwulan'),
(68, 'Khanza Zahra Zhafira', 'Perempuan', '5', 5, 'Kebumen', '2010-06-12', 'Jatimulyo'),
(69, 'Ayu Putri Nur Malasari', 'Perempuan', '5', 9, 'Kebumen', '2011-01-15', 'Kalijirek'),
(70, 'Auralia Widayatul Ha', 'Perempuan', '5', 8, 'Kebumen', '2011-02-03', 'Candiwulan'),
(71, 'Novita Puja Jayani', 'Perempuan', '1', 15, 'Kebumen', '2011-11-20', 'Jatimulyo'),
(72, 'Fadhi V', 'Laki-Laki', '1', 13, 'Kebumen', '2014-08-19', 'Jatimulyo'),
(73, 'Hafizhah Indah', 'Laki-Laki', '1', 15, 'Kebumen', '2014-05-30', 'Jatimulyo'),
(74, 'Nanda Abi', 'Laki-Laki', '1', 21, 'Kebumen', '2014-10-08', 'Jatimulyo'),
(75, 'Adzara Raya', 'Perempuan', '1', 3, 'Kebumen', '2014-01-10', 'Surotrunan'),
(76, 'Imania Sahitya Karem', 'Perempuan', '1', 17, 'Kebumen', '2014-06-17', 'Jatimulyo'),
(77, 'Abdu Hamid', 'Laki-Laki', '1', 1, 'Kebumen', '2014-01-27', 'Jatimulyo'),
(78, 'Tegar Navizairi', 'Laki-Laki', '1', 25, 'Kebumen', '2014-11-10', 'Jatimulyo'),
(79, 'Zardhan Rifai', 'Laki-Laki', '1', 29, 'Kebumen', '2015-08-13', 'Jatimulyo'),
(80, 'Diah Septi Nurul', 'Perempuan', '1', 11, 'Kebumen', '2014-08-17', 'Jatimulyo'),
(81, 'Tsani Sava Sabrina', 'Perempuan', '1', 27, 'Kebumen', '2014-10-28', 'Jatimulyo'),
(82, 'Ridha Zavira ', 'Perempuan', '1', 23, 'Kebumen', '2014-07-07', 'Jatimulyo'),
(83, 'Aldinno', 'Laki-Laki', '1', 5, 'Kebumen', '2014-02-02', 'Jatimulyo'),
(84, 'Bayu Tri Sabani', 'Laki-Laki', '1', 9, 'Kebumen', '2014-06-19', 'Jatimulyo'),
(85, 'Vino Aldiyansa', 'Laki-Laki', '1', 28, 'Kebumen', '2014-12-12', 'Jatimulyo'),
(86, 'Alif Rahman A', 'Laki-Laki', '1', 6, 'Kebumen', '2014-03-03', 'Kambang Sari'),
(87, 'Sufian Nur Hakim', 'Laki-Laki', '1', 24, 'Kebumen', '2014-09-24', 'Jatimulyo'),
(88, 'Falidzal Muzacky', 'Laki-Laki', '1', 14, 'Kebumen', '2014-07-07', 'Jatimulyo'),
(89, 'Clara Natania Putri', 'Perempuan', '1', 10, 'Kebumen', '2014-03-03', 'Jatimulyo'),
(90, 'Avira Jasseline Kame', 'Perempuan', '1', 8, 'Kebumen', '2014-08-22', 'Jatimulyo'),
(91, 'Muhammad Hannan', 'Laki-Laki', '1', 20, 'Kebumen', '2014-03-14', 'Jatimulyo'),
(92, 'Tirta Harchika', 'Laki-Laki', '1', 26, 'Kebumen', '2014-10-10', 'Jatimulyo'),
(93, 'Jasmine Adezkiana', 'Perempuan', '1', 18, 'Kebumen', '2014-05-13', 'Jatimulyo'),
(94, 'Keyla ', 'Perempuan', '1', 22, 'Kebumen', '2014-08-08', 'Jatimulyo'),
(95, 'Evan Dosson Firdaus', 'Laki-Laki', '1', 12, 'Kebumen', '2014-05-05', 'Jatimulyo'),
(96, 'Hauzan', 'Laki-Laki', '2', 16, 'Kebumen', '2014-08-28', 'Jatimulyo'),
(97, 'Cakra Abiar Lizar', 'Laki-Laki', '2', 8, 'Kebumen', '2013-08-09', 'Jatimulyo'),
(98, 'Rifki Rahmadani P', 'Laki-Laki', '2', 24, 'Lampung', '2013-05-03', 'Jatimulyo'),
(99, 'Ghina Kanvila ', 'Perempuan', '2', 12, 'Kebumen', '2013-09-21', 'Jatimulyo'),
(100, 'Azam Rasya Fatahilla', 'Laki-Laki', '2', 6, 'Kebumen', '2013-01-21', 'Jatimulyo'),
(101, 'Adib Akilla Pranaja ', 'Laki-Laki', '2', 2, 'Kebumen', '2013-11-13', 'Candiwulan'),
(102, 'Nurin Najwa Nugroho', 'Perempuan', '2', 20, 'Kebumen', '2013-07-21', 'Jatimulyo'),
(103, 'Muhammad Fahri ', 'Laki-Laki', '2', 16, 'Kebumen', '2013-11-14', 'Jatimulyo'),
(104, 'Isheila Wahy EO', 'Perempuan', '2', 14, 'Kebumen', '2013-10-03', 'Jatimulyo'),
(105, 'Ardiyansa Nur Prabaw', 'Perempuan', '2', 4, 'Kebumen', '2013-01-21', 'Jatimulyo'),
(106, 'Syakiya Naifa Lubna', 'Perempuan', '2', 26, 'Kebumen', '2014-03-24', 'Jatimulyo'),
(107, 'Naura Hasna Hamidah', 'Perempuan', '2', 18, 'Kebumen', '2014-02-18', 'Jatimulyo'),
(108, 'Ade Eva ', 'Perempuan', '2', 1, 'Kebumen', '2013-01-01', 'Jatimulyo'),
(109, 'Nabila Safira Yurist', 'Perempuan', '2', 17, 'Kebumen', '2013-06-13', 'Jatimulyo'),
(110, 'Nazzua Arzenta Putri', 'Perempuan', '2', 19, 'Kebumen', '2013-11-16', 'Jatimulyo'),
(111, 'Asriyatin Kholivatun', 'Perempuan', '2', 5, 'Kebumen', '2013-10-07', 'Jatimulyo'),
(112, 'Mahmud Datul Nur Azi', 'Perempuan', '2', 15, 'Kebumen', '2013-04-19', 'Kebebekan'),
(113, 'Ghaidah', 'Perempuan', '2', 11, 'Kebumen', '2013-03-07', 'Jatimulyo'),
(114, 'Yaldhan Rakha Al Fat', 'Laki-Laki', '2', 27, 'Kebumen', '2014-01-18', 'Kalirancang'),
(115, 'Ahmad Zain As Sabiq', 'Laki-Laki', '2', 3, 'Kebumen', '2013-08-02', 'Jatimulyo'),
(116, 'Ilyas Fahri Arif', 'Laki-Laki', '2', 13, 'Kebumen', '2013-10-28', 'Jatimulyo'),
(117, 'Fadli Akbar', 'Laki-Laki', '2', 9, 'Kebumen', '2013-08-18', 'Kebumen'),
(118, 'Rizqi Ridho Fadli', 'Laki-Laki', '2', 23, 'Kebumen', '2013-10-10', 'Jatimulyo'),
(119, 'Azzam Irsyad', 'Laki-Laki', '2', 7, 'Kebumen', '2013-02-26', 'Kalijirek'),
(120, 'Angga Pamungkas', 'Laki-Laki', '2', 21, 'Kebumen', '2013-12-12', 'Jatimulyo'),
(121, 'Zulfa Faisal Hasni', 'Laki-Laki', '2', 29, 'Kebumen', '2013-12-19', 'Candiwulan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cluster`
--
ALTER TABLE `cluster`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `iterasi`
--
ALTER TABLE `iterasi`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `kasus`
--
ALTER TABLE `kasus`
  ADD PRIMARY KEY (`idk`);

--
-- Indeks untuk tabel `kelas1`
--
ALTER TABLE `kelas1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas2`
--
ALTER TABLE `kelas2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas3`
--
ALTER TABLE `kelas3`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas4`
--
ALTER TABLE `kelas4`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas5`
--
ALTER TABLE `kelas5`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas6`
--
ALTER TABLE `kelas6`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pai`
--
ALTER TABLE `pai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `cluster`
--
ALTER TABLE `cluster`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT untuk tabel `iterasi`
--
ALTER TABLE `iterasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `kasus`
--
ALTER TABLE `kasus`
  MODIFY `idk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kelas1`
--
ALTER TABLE `kelas1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT untuk tabel `kelas2`
--
ALTER TABLE `kelas2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT untuk tabel `kelas3`
--
ALTER TABLE `kelas3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `kelas4`
--
ALTER TABLE `kelas4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `kelas5`
--
ALTER TABLE `kelas5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `kelas6`
--
ALTER TABLE `kelas6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `pai`
--
ALTER TABLE `pai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT untuk tabel `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
