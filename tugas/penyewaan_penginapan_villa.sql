-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 09:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penyewaan penginapan villa`
--

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_Villa`, `Kamar`, `Toilet`, `Kolam_renang`, `Parkiran`) VALUES
(1231, 4, 2, 1, 1),
(1232, 5, 2, 1, 1),
(1233, 6, 3, 1, 1);

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`kode_harga`, `id_villa`, `Lama_inap`, `Harga_inap`) VALUES
(5501, 1231, '1 bulan', 'Rp20.000.000'),
(5502, 1231, '6 bulan', 'Rp120.000.000'),
(5503, 1231, '12 bulan', 'Rp240.000.000'),
(5504, 1232, '1 bulan', 'Rp25.000.000'),
(5505, 1232, '6 bulan', 'Rp150.000.000'),
(5506, 1232, '12 bulan', 'Rp300.000.000'),
(5507, 1233, '1 bulan', 'Rp30.000.000'),
(5508, 1233, '6 bulan', 'Rp180.000.000'),
(5509, 1233, '12 bulan', 'Rp360.000.000');

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`NIP`, `id_villa`, `Nama`, `Alamat`, `No_HP`) VALUES
(12341, 1231, 'Anton', 'Cikarang barat', '081234567890'),
(12342, 1233, 'Adi', 'Cikarang selatan', '081234567891'),
(12343, 1232, 'Tina', 'Cikarang timur', '081234567892'),
(12344, 1233, 'Rendi', 'Cikarang selatan', '081234567893'),
(12345, 1233, 'Siska', 'Cikarang selatan', '081234567894'),
(12346, 1231, 'Sutrisno', 'Cikarang barat', '081234567895'),
(12347, 1232, 'Reno', 'Cikarang timur', '081234567896'),
(12348, 1232, 'Dono', 'Cikarang timur', '081234567897'),
(12349, 1231, 'Natasya', 'Cikarang barat', '081234567898'),
(12350, 1233, 'Kesya', 'Cikarang selatan', '081234567899');

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `Nama`, `Alamat`, `No_HP`) VALUES
(9871, 'Andre', 'Jakarta selatan', '089512345671'),
(9872, 'Brian', 'Jakarta selatan', '089512345672'),
(9873, 'Budi', 'Jakarta barat', '089512345673');

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_tamu`, `id_villa`, `tgl_checkin`, `Lama_inap`, `kode_harga`) VALUES
(2341, 9871, 1231, '05-05-2023', '12 bulan', 5503),
(2342, 9872, 1232, '26-05-2023', '6 bulan', 5505),
(2343, 9873, 1233, '12-06-2023', '6 bulan', 5508);

--
-- Dumping data for table `villa`
--

INSERT INTO `villa` (`id_Villa`, `Nama_Villa`, `Alamat`) VALUES
(1231, 'Villa 01', 'Cikarang barat'),
(1232, 'Villa 02', 'Cikarang timur'),
(1233, 'Villa 03', 'Cikarang selatan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
