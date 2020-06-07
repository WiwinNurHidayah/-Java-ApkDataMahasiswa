-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2020 at 06:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_ptik`
--

CREATE TABLE `data_ptik` (
  `id` int(11) DEFAULT NULL,
  `nim` varchar(17) CHARACTER SET latin1 DEFAULT NULL,
  `nama` varchar(35) CHARACTER SET latin1 DEFAULT NULL,
  `jalurMasuk` varchar(21) CHARACTER SET latin1 DEFAULT NULL,
  `asalDaerah` varchar(43) CHARACTER SET latin1 DEFAULT NULL,
  `noHp` varchar(19) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_ptik`
--

INSERT INTO `data_ptik` (`id`, `nim`, `nama`, `jalurMasuk`, `asalDaerah`, `noHp`) VALUES
(1, 'K3519001', 'Abella Chandra Nakhwah', 'SM', 'Pedan, Klaten', '085293959099'),
(2, 'K3519002', 'Abiyyu Tsany', 'SM', 'Bogor', '081289518492'),
(3, 'K3519003', 'Afif Fauzan Zarror', 'SBMPTN', 'Sukoharjo', '085326525752'),
(4, 'K3519004', 'Afifu Rohman Nasiruddin', 'SBMPTN', 'Ngawen, Blora', '082223277708'),
(5, 'K3519005', 'Ahmad Nur Kholily', 'SBMPTN', 'Bandung', '085707387102'),
(6, 'K3519006', 'Alfarkhan Adji Permana', 'SBMPTN', 'Surakarta', '087727721400'),
(7, 'K3519007', 'Alta Dzaky Adyata', 'SBMPTN', 'Sukoharjo', '082326596329'),
(8, 'K3519008', 'Alviana Hermawati', 'SBMPTN', 'Sukoharjo', '085725009083'),
(9, 'K3519009', 'Alvin Kurniawan', 'SBMPTN', 'Sukoharjo', '085803412185'),
(10, 'K3519010', 'Alwan Nuha Zaky Fadhila', 'SBMPTN', 'Surakarta', '082135422425'),
(11, 'K3519011', 'Amalia Rizqi Marwah', 'SNMPTN', 'Padangsidimpuan', '081375546527'),
(12, 'K3519012', 'Amanatusa\'adah', 'SNMPTN', 'Bantarbarang', '085523912888'),
(13, 'K3519013', 'Anandito Ranggi Perwira Al Alim', 'SNMPTN', 'Surakarta', '089602696514'),
(14, 'K3519014', 'Andhika Bagas Saputra', 'SM', 'Kotabumi', '085378200300'),
(15, 'K3519015', 'Arafik Nur Fadliansah', 'SBMPTN', 'Purbalingga', '085714186920'),
(17, 'K3519017', 'Arkan Bhanu Kurniadi', 'SM', 'Salaman, Magelang', '085802171196'),
(18, 'K3519018', 'Auliya Nurul Achyani', 'SNMPTN', 'Banjarnegara', '085228447112'),
(19, 'K3519019', 'Azib Ikhsanudin', 'SBMPTN', 'Sukoharjo', '085728198961'),
(20, 'K3519020', 'Bara Bintang Pradana', 'SNMPTN', 'Madiun', '089620625032'),
(21, 'K3519021', 'Christian Anelka Manik', 'SBMPTN', 'Surakarta', '081351880960'),
(22, 'K3519022', 'Daryl Zavier Arian', 'SM', 'Bekasi', '082184543734'),
(23, 'K3519023', 'Dicky Wahyu Nugroho', 'SNMPTN', 'Surakarta', '083154951347'),
(24, 'K3519024', 'Diki Wahyudi Rustanto', 'SNMPTN', 'Pati', '085669911591'),
(25, 'K3519025', 'Dimas Satria Sandi Pradana', 'SBMPTN', 'Karanganyar', '082134095029');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
