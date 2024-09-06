-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Bulan Mei 2024 pada 02.01
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodienow`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bayar`
--

CREATE TABLE `tb_bayar` (
  `id_bayar` bigint(20) NOT NULL,
  `nominal_uang` bigint(20) DEFAULT NULL,
  `jumlah` bigint(20) DEFAULT NULL,
  `waktu_bayar` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_bayar`
--

INSERT INTO `tb_bayar` (`id_bayar`, `nominal_uang`, `jumlah`, `waktu_bayar`) VALUES
(2405122006102, 100000, NULL, '2024-05-12 14:08:17'),
(2405131628139, 35000, NULL, '2024-05-13 09:28:36'),
(2405161937563, 50000, NULL, '2024-05-16 12:50:43'),
(2405161951691, 20000, NULL, '2024-05-16 12:51:58'),
(2405162013553, 70000, NULL, '2024-05-16 13:14:04'),
(2405201040665, 100000, NULL, '2024-05-20 03:40:47'),
(2405201047991, 60000, NULL, '2024-05-20 03:48:15'),
(2405201100991, 52000, NULL, '2024-05-20 04:01:12'),
(2405201103698, 70000, NULL, '2024-05-20 04:04:09'),
(2405222023554, 400000, NULL, '2024-05-22 13:26:09'),
(2405230820458, 50000, NULL, '2024-05-23 01:21:17'),
(2405230839822, 200000, NULL, '2024-05-23 01:44:17'),
(2405232048557, 8000, NULL, '2024-05-23 13:48:44'),
(2405232058708, 50000, NULL, '2024-05-23 13:59:16'),
(2405232123159, 50000, NULL, '2024-05-23 14:28:37'),
(2405240606767, 100000, NULL, '2024-05-23 23:08:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_daftar_menu`
--

CREATE TABLE `tb_daftar_menu` (
  `id` int(11) NOT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `nama_menu` varchar(200) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  `stok` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tb_daftar_menu`
--

INSERT INTO `tb_daftar_menu` (`id`, `foto`, `nama_menu`, `keterangan`, `kategori`, `harga`, `stok`) VALUES
(6, '28343-1.jpeg', 'Nasi Ayam Geprek', 'Nasi, Ayam Krispi, Sambal Geprek', 7, '25000', '24'),
(7, '94615-2.jpeg', 'Burger', 'Roti, Daging Sapi, Keju, Bawang Bombay', 7, '30000', '67'),
(8, '22245-4.jpeg', 'Es Buah', 'Susu, Melon, Anggur, Nanas', 6, '15000', '54'),
(9, '90156-5.jpeg', 'Lemon Tea', 'Tea, Gula, Lemon', 6, '21000', '76'),
(10, '68535-6.jpeg', 'Green Tea', 'Green Tea, Gula', 6, '25000', '42'),
(11, '23167-Onion Rings.jpg', 'Onion Rings', 'Bawang Bombay Goreng', 8, '17000', '61');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori_menu`
--

CREATE TABLE `tb_kategori_menu` (
  `id_kat_menu` int(11) NOT NULL,
  `jenis_menu` int(11) DEFAULT NULL,
  `kategori_menu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori_menu`
--

INSERT INTO `tb_kategori_menu` (`id_kat_menu`, `jenis_menu`, `kategori_menu`) VALUES
(4, 2, 'Kopi'),
(6, 2, 'Teh'),
(7, 1, 'Nasi'),
(8, 1, 'Snack');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_list_order`
--

CREATE TABLE `tb_list_order` (
  `id_list_order` int(11) NOT NULL,
  `menu` int(11) DEFAULT NULL,
  `kode_order` bigint(20) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `catatan` varchar(300) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_list_order`
--

INSERT INTO `tb_list_order` (`id_list_order`, `menu`, `kode_order`, `jumlah`, `catatan`, `status`) VALUES
(11, 6, 2405122006102, 2, 'Yang Pedes Banget', 2),
(12, 8, 2405131628139, 2, '', 2),
(13, 8, 2405161937563, 3, 'asdfg', 2),
(14, 8, 2405161951691, 1, '', 2),
(15, 9, 2405162013553, 3, '', 2),
(16, 10, 2405201040665, 3, '2', 2),
(17, 10, 2405201047991, 2, '', 2),
(18, 11, 2405201100991, 3, '', 2),
(19, 10, 2405201103698, 2, '', 2),
(20, 11, 2405222023554, 14, 'Yang Pedes Banget', 2),
(21, 8, 2405222023554, 2, 'Less Sugar', 2),
(22, 9, 2405230820458, 2, 'Jangan pake lemon', 2),
(26, 8, 2405232058708, 2, 'ok', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` bigint(20) NOT NULL DEFAULT 0,
  `pelanggan` varchar(200) DEFAULT NULL,
  `meja` int(11) DEFAULT NULL,
  `pelayan` int(11) DEFAULT NULL,
  `waktu_order` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `pelanggan`, `meja`, `pelayan`, `waktu_order`) VALUES
(2405122006102, 'Moniqca Sandha Iskandar', 21, 2, '2024-05-12 13:06:21'),
(2405131628139, 'test', 3, 3, '2024-05-13 09:28:23'),
(2405161937563, 'abid', 3, 2, '2024-05-16 12:37:26'),
(2405161951691, 'asdf', 4, 3, '2024-05-16 12:51:46'),
(2405162013553, 'faqih', 3, 2, '2024-05-16 13:13:18'),
(2405201040665, 'abid', 2, 2, '2024-05-20 03:40:32'),
(2405201047991, 'ilham', 2, 112, '2024-05-20 03:47:52'),
(2405201100991, 'ilham', 4, 2, '2024-05-20 04:00:44'),
(2405201103698, 'alfieny', 6, 112, '2024-05-20 04:03:51'),
(2405222023554, 'Abdullah Faqih', 27, 2, '2024-05-22 13:23:28'),
(2405230820458, 'Athananda', 16, 3, '2024-05-23 01:20:20'),
(2405232048557, 'faqih', 23, 2, '2024-05-23 13:48:15'),
(2405232058708, 'faqih', 2, 2, '2024-05-23 13:58:59'),
(2405232123159, 'sandha', 21, 2, '2024-05-23 14:23:48'),
(2405240606767, 'Faqih Abdullah', 34, 2, '2024-05-23 23:06:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `level`, `nohp`, `alamat`) VALUES
(2, 'Moniqca', 'moniq@moniq.com', '5b71ce27d91197a54bedc3813771e10e', 1, '089561728910', 'Purwakarta, Jabar'),
(3, 'alfieny2', 'alfieny2@alfieny2.com', '1f07c112fcf3b82b893e77f0a80f423a', 2, '089561728910', 'Bekasi'),
(11, 'Faqih', 'faqih@faqih.com', '45fb45aa7a0c763fa7c8349947f5a7cb', 3, '9876897', 'Cirebon'),
(37, 'abid', 'abid@abid.com', 'fbc2097d2d2310090e007162a34ff628', 3, '1234567890', 'Cikarang\r\n'),
(112, 'ilham', 'ilham@ilham.com', 'b63d204bf086017e34d8bd27ab969f28', 2, '01234543234', 'Bekasi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_bayar`
--
ALTER TABLE `tb_bayar`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indeks untuk tabel `tb_daftar_menu`
--
ALTER TABLE `tb_daftar_menu`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_tb_daftar_menu_tb_kategori_menu` (`kategori`);

--
-- Indeks untuk tabel `tb_kategori_menu`
--
ALTER TABLE `tb_kategori_menu`
  ADD PRIMARY KEY (`id_kat_menu`) USING BTREE;

--
-- Indeks untuk tabel `tb_list_order`
--
ALTER TABLE `tb_list_order`
  ADD PRIMARY KEY (`id_list_order`) USING BTREE,
  ADD KEY `FK_tb_list_order_tb_daftar_menu_new` (`menu`),
  ADD KEY `FK_tb_list_order_tb_order_new` (`kode_order`);

--
-- Indeks untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`) USING BTREE,
  ADD KEY `FK_tb_order_tb_user` (`pelayan`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_daftar_menu`
--
ALTER TABLE `tb_daftar_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori_menu`
--
ALTER TABLE `tb_kategori_menu`
  MODIFY `id_kat_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_list_order`
--
ALTER TABLE `tb_list_order`
  MODIFY `id_list_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_daftar_menu`
--
ALTER TABLE `tb_daftar_menu`
  ADD CONSTRAINT `FK_tb_daftar_menu_tb_kategori_menu` FOREIGN KEY (`kategori`) REFERENCES `tb_kategori_menu` (`id_kat_menu`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_list_order`
--
ALTER TABLE `tb_list_order`
  ADD CONSTRAINT `FK_tb_list_order_tb_daftar_menu` FOREIGN KEY (`menu`) REFERENCES `tb_daftar_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_list_order_tb_daftar_menu_new` FOREIGN KEY (`menu`) REFERENCES `tb_daftar_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_list_order_tb_order` FOREIGN KEY (`kode_order`) REFERENCES `tb_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tb_list_order_tb_order_new` FOREIGN KEY (`kode_order`) REFERENCES `tb_order` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_order`
--
ALTER TABLE `tb_order`
  ADD CONSTRAINT `FK_tb_order_tb_user` FOREIGN KEY (`pelayan`) REFERENCES `tb_user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
