-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2019 at 05:09 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kopeg`
--

-- --------------------------------------------------------

--
-- Table structure for table `aora`
--

CREATE TABLE `aora` (
  `tanggal` date DEFAULT NULL,
  `divre` varchar(20) DEFAULT NULL,
  `kode_kopeg` varchar(20) DEFAULT NULL,
  `nama_kopeg` varchar(20) DEFAULT NULL,
  `kode_loket` varchar(20) DEFAULT NULL,
  `loket` varchar(20) DEFAULT NULL,
  `nama_biller` varchar(20) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  `customer` varchar(20) DEFAULT NULL,
  `tagihan` int(11) DEFAULT NULL,
  `surcharge` int(11) DEFAULT NULL,
  `fee_ca` int(11) DEFAULT NULL,
  `fee_finnet` int(11) DEFAULT NULL,
  `kewajiban` int(11) DEFAULT NULL,
  `kode_biller` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arindo_input`
--

CREATE TABLE `arindo_input` (
  `tanggal` date NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `fee` int(11) NOT NULL,
  `pen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arindo_tempat`
--

CREATE TABLE `arindo_tempat` (
  `user` varchar(25) DEFAULT NULL,
  `kode_user` varchar(25) NOT NULL,
  `tempat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arindo_tempat`
--

INSERT INTO `arindo_tempat` (`user`, `kode_user`, `tempat`) VALUES
('BANJARAN', 'BJN0465', 'BANJARAN'),
('CIJAURA1', 'CJA1001', 'CIJAURA'),
('CIJAURA2', 'CJA2002', 'CIJAURA'),
('CICALENGKA', 'CLK1001', 'CICALENGKA'),
('CIMAHI1', 'CMI1001', 'CIMAHI'),
('CIMAHI2', 'CMI2002', 'CIMAHI'),
('DAGO1', 'DG01001', 'DAGO'),
('KOPO1', 'KPO1001', 'KOPO'),
('KOPO2', 'KPO2002', 'KOPO'),
('LEMBONG1', 'LBG1001', 'LEMBONG'),
('LEMBONG2', 'LBG2002', 'LEMBONG'),
('LEMBONG3', 'LBG3003', 'LEMBONG'),
('LEMBANG', 'LEM1001', 'LEMBANG'),
('MAJALAYA', 'MJA1001', 'MAJALAYA'),
('PADALARANG', 'PDL0001', 'PADALARANG'),
('PLASA RANCAEKEK', 'RCK3003', 'PLASA RANCAEKEK'),
('RAJAWALI1', 'RJW1001', 'RAJAWALI'),
('RAJAWALI2', 'RJW2002', 'RAJAWALI'),
('RAJAWALI3', 'RJW3003', 'RAJAWALI'),
('SUMEDANG2', 'SMD1001', 'SUMEDANG'),
('SOREANG', 'SOR1001', 'SOREANG'),
('SUPRATMAN2', 'SPR1001', 'SUPRATMAN'),
('SUPRATMAN3', 'SPR2002', 'SUPRATMAN'),
('SETIABUDI1', 'STB1001', 'SETIABUDI'),
('SETIABUDI2', 'STB2002', 'SETIABUDI'),
('TANJUNG SARI', 'TJS1001', 'TANJUNGSARI'),
('UJUNGBERUNG1', 'UBR1001', 'UJUNG BERUNG'),
('WINDU1', 'WND1001', 'WINDU'),
('WINDU2', 'WND2002', 'WINDU');

-- --------------------------------------------------------

--
-- Table structure for table `arindo_trx`
--

CREATE TABLE `arindo_trx` (
  `kode_user` varchar(25) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `pln_lembar` int(11) DEFAULT NULL,
  `pln_trx` int(11) DEFAULT NULL,
  `telepon_lembar` int(11) DEFAULT NULL,
  `telepon_trx` int(11) DEFAULT NULL,
  `indovision_lembar` int(11) DEFAULT NULL,
  `indovision_trx` int(11) DEFAULT NULL,
  `halo_lembar` int(11) DEFAULT NULL,
  `halo_trx` int(11) DEFAULT NULL,
  `pulsa_lembar` int(11) DEFAULT NULL,
  `pulsa_trx` int(11) DEFAULT NULL,
  `pdam_lembar` int(11) DEFAULT NULL,
  `pdam_trx` int(11) DEFAULT NULL,
  `adira_lembar` int(11) DEFAULT NULL,
  `adira_trx` int(11) DEFAULT NULL,
  `baf_lembar` int(11) DEFAULT NULL,
  `baf_trx` int(11) DEFAULT NULL,
  `fif_lembar` int(11) DEFAULT NULL,
  `fif_trx` int(11) DEFAULT NULL,
  `bpjs_lembar` int(11) DEFAULT NULL,
  `bpjs_trx` int(11) DEFAULT NULL,
  `plnp_lembar` int(11) NOT NULL,
  `plnp_trx` int(11) NOT NULL,
  `wom_lembar` int(11) NOT NULL,
  `wom_trx` int(11) NOT NULL,
  `total_lembar` int(11) DEFAULT NULL,
  `total_trx` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arindo_trx`
--

INSERT INTO `arindo_trx` (`kode_user`, `tanggal`, `pln_lembar`, `pln_trx`, `telepon_lembar`, `telepon_trx`, `indovision_lembar`, `indovision_trx`, `halo_lembar`, `halo_trx`, `pulsa_lembar`, `pulsa_trx`, `pdam_lembar`, `pdam_trx`, `adira_lembar`, `adira_trx`, `baf_lembar`, `baf_trx`, `fif_lembar`, `fif_trx`, `bpjs_lembar`, `bpjs_trx`, `plnp_lembar`, `plnp_trx`, `wom_lembar`, `wom_trx`, `total_lembar`, `total_trx`) VALUES
('CJA1001', '2019-12-03', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 118500, 0, 0, 0, 0, 0, 0, 2, 216000, 0, 0, 0, 0, 4, 334500),
('CJA2002', '2019-12-03', 5, 1183777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1183777),
('KPO2002', '2019-12-03', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 753000, 0, 0, 0, 0, 0, 0, 1, 753000),
('LEM1001', '2019-12-03', 8, 1034509, 0, 0, 0, 0, 0, 0, 1, 49600, 0, 0, 0, 0, 0, 0, 0, 0, 3, 135000, 1, 102500, 0, 0, 13, 1321609),
('RCK3003', '2019-12-03', 2, 226494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 226494),
('SMD1001', '2019-12-03', 1, 52947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 313500, 1, 22500, 0, 0, 5, 388947),
('SOR1001', '2019-12-03', 0, 0, 0, 0, 0, 0, 0, 0, 5, 195300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52500, 0, 0, 6, 247800),
('SPR2002', '2019-12-03', 0, 0, 0, 0, 0, 0, 0, 0, 2, 21900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 21900),
('UBR1001', '2019-12-03', 2, 438524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 438524),
('CJA1001', '2019-12-04', 3, 1097556, 0, 0, 0, 0, 0, 0, 0, 0, 6, 200900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 1298456),
('CJA2002', '2019-12-04', 9, 1770122, 0, 0, 1, 114900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 808000, 0, 0, 0, 0, 0, 0, 11, 2693022),
('KPO2002', '2019-12-04', 1, 329006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 329006),
('LBG3003', '2019-12-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 53500, 0, 0, 0, 0, 1, 53500),
('LEM1001', '2019-12-04', 6, 1141514, 3, 128720, 0, 0, 0, 0, 2, 147100, 0, 0, 0, 0, 0, 0, 0, 0, 4, 403000, 1, 102500, 0, 0, 16, 1922834),
('MJA1001', '2019-12-04', 5, 1270055, 0, 0, 0, 0, 0, 0, 0, 0, 1, 93600, 0, 0, 0, 0, 0, 0, 0, 0, 2, 405000, 0, 0, 8, 1768655),
('RCK3003', '2019-12-04', 5, 5427373, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 202500, 0, 0, 6, 5629873),
('SMD1001', '2019-12-04', 4, 1330758, 0, 0, 1, 154900, 0, 0, 0, 0, 1, 57500, 0, 0, 0, 0, 0, 0, 1, 53500, 1, 22500, 0, 0, 8, 1619158),
('SOR1001', '2019-12-04', 0, 0, 0, 0, 0, 0, 0, 0, 2, 55350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1002500, 0, 0, 3, 1057850),
('SPR2002', '2019-12-04', 0, 0, 0, 0, 0, 0, 0, 0, 1, 10950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 10950),
('STB2002', '2019-12-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 641175, 0, 0, 0, 0, 0, 0, 1, 641175),
('UBR1001', '2019-12-04', 4, 736031, 0, 0, 0, 0, 0, 0, 0, 0, 1, 19800, 0, 0, 0, 0, 0, 0, 1, 53500, 0, 0, 0, 0, 6, 809331);

-- --------------------------------------------------------

--
-- Table structure for table `biaya_pln`
--

CREATE TABLE `biaya_pln` (
  `biaya_admin` int(11) NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biaya_pln`
--

INSERT INTO `biaya_pln` (`biaya_admin`, `fee`) VALUES
(2700, 2000),
(3000, 2000),
(5000, 3300);

-- --------------------------------------------------------

--
-- Table structure for table `biaya_voucher`
--

CREATE TABLE `biaya_voucher` (
  `denom` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `fee_kopegtel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biaya_voucher`
--

INSERT INTO `biaya_voucher` (`denom`, `harga_jual`, `fee_kopegtel`) VALUES
(10000, 11000, 800),
(20000, 21000, 10000),
(25000, 25500, 1000),
(50000, 50000, 1500),
(100000, 99000, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `coba`
--

CREATE TABLE `coba` (
  `a` varchar(20) NOT NULL,
  `b` int(20) NOT NULL,
  `c` int(20) NOT NULL,
  `d` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coba`
--

INSERT INTO `coba` (`a`, `b`, `c`, `d`) VALUES
('a', 2, 0, 0),
('a', 0, 3, 0),
('a', 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `fax`
--

CREATE TABLE `fax` (
  `id` int(255) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `fax` int(255) NOT NULL,
  `lainlain` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fax`
--

INSERT INTO `fax` (`id`, `tanggal`, `lokasi`, `fax`, `lainlain`) VALUES
(1, '2016-04-25', 'ARCAMANIK', 10000, 100001);

-- --------------------------------------------------------

--
-- Table structure for table `fee_admin`
--

CREATE TABLE `fee_admin` (
  `tanggal` date NOT NULL,
  `fee_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_admin`
--

INSERT INTO `fee_admin` (`tanggal`, `fee_admin`) VALUES
('2019-12-03', 979000),
('2019-12-04', 1808000),
('2019-12-05', 2998000),
('2019-12-06', 2595000),
('2019-12-07', 528000),
('2019-12-08', 9000),
('2019-12-09', 3892500);

-- --------------------------------------------------------

--
-- Table structure for table `fee_akses`
--

CREATE TABLE `fee_akses` (
  `tanggal` date NOT NULL,
  `fee_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_akses`
--

INSERT INTO `fee_akses` (`tanggal`, `fee_akses`) VALUES
('2016-08-01', 263500),
('2016-09-01', 215500),
('2016-09-02', 149000),
('2016-09-03', 33000),
('2016-09-04', 7000),
('2016-09-05', 1010500),
('2016-09-06', 947500),
('2016-09-07', 1566000),
('2016-09-08', 724500),
('2016-09-09', 629000),
('2016-09-10', 199000),
('2016-09-11', 500),
('2016-09-12', 0),
('2016-09-13', 788000),
('2016-09-14', 946000),
('2016-09-15', 976500),
('2016-09-16', 922000),
('2016-09-17', 201500),
('2016-09-18', 1000),
('2016-09-19', 1860500),
('2016-09-20', 1738000),
('2016-09-21', 414500),
('2016-09-22', 241000),
('2016-09-23', 176500),
('2016-09-24', 38500),
('2016-09-25', 0),
('2016-09-26', 186500),
('2016-09-27', 125000),
('2016-09-28', 103500),
('2016-08-30', 151000),
('2016-10-01', 0),
('2016-10-31', 170500),
('2016-11-18', 1464000),
('2016-11-01', 127000),
('2016-11-02', 78000),
('2016-11-03', 83500),
('2016-11-04', 513000),
('2016-11-05', 213500),
('2016-11-06', 500),
('2016-11-07', 1302000),
('2016-11-08', 895500),
('2016-11-09', 723500),
('2016-11-10', 711000),
('2016-11-11', 610500),
('2016-11-12', 134000),
('2016-11-13', 2000),
('2016-11-14', 898000),
('2016-11-15', 914000),
('2016-11-16', 848000),
('2016-11-17', 841000),
('2016-11-19', 517000),
('2016-11-20', 9500),
('2016-11-21', 918500),
('2016-11-22', 318500),
('2016-11-23', 226000),
('2016-11-24', 132500),
('2016-11-25', 172000),
('2016-11-26', 24000),
('2016-11-27', 0),
('2016-11-28', 287500),
('2016-11-29', 174000),
('2016-11-30', 128500),
('2016-12-01', 152500),
('2016-12-02', 92000),
('2016-12-03', 22000),
('2016-12-05', 912500),
('2016-12-04', 0),
('2016-12-06', 912000),
('2016-12-07', 850000),
('2016-12-08', 686000),
('2016-12-09', 669000),
('2016-12-10', 197500),
('2016-12-11', 0),
('2016-12-12', 2500),
('2016-12-13', 924000),
('2016-12-14', 891500),
('2016-12-27', 380500),
('2016-12-28', 174500),
('2017-05-16', 800500),
('2017-05-17', 947500),
('2017-05-18', 1014500),
('2017-07-12', 671500),
('2017-07-05', 635500),
('2018-03-01', 59500),
('2018-03-02', 52500),
('2018-05-03', 46500),
('2018-10-01', 104000),
('2019-08-01', 27500),
('0000-00-00', 0),
('2019-10-01', 38000),
('2019-09-30', 45500),
('2019-09-28', 13000),
('2019-10-02', 78500),
('2019-10-03', 187000),
('2019-10-04', 284500),
('2019-10-05', 149000),
('2019-10-06', 2500),
('2019-12-02', 65500),
('2019-12-03', 168000),
('2019-12-04', 311500),
('2019-12-05', 513000),
('2019-12-06', 446500),
('2019-12-07', 90000),
('2019-12-08', 1500),
('2019-12-09', 670000);

-- --------------------------------------------------------

--
-- Table structure for table `fee_arindo`
--

CREATE TABLE `fee_arindo` (
  `tanggal` date DEFAULT NULL,
  `kode_user` varchar(15) DEFAULT NULL,
  `transaksi` varchar(15) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL,
  `lembar` int(11) DEFAULT NULL,
  `tagihan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fee_pdam`
--

CREATE TABLE `fee_pdam` (
  `pdam` varchar(50) NOT NULL,
  `regional` varchar(50) NOT NULL,
  `biaya_admin` int(11) NOT NULL,
  `fee_mitra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee_pdam`
--

INSERT INTO `fee_pdam` (`pdam`, `regional`, `biaya_admin`, `fee_mitra`) VALUES
('PDAM Aceh Barat ( Meulaboh)', 'PDAM SUMATERA', 2000, 850),
('PDAM Aceh Besar', 'PDAM SUMATERA', 2000, 900),
('PDAM Aceh Tamiang', 'PDAM SUMATERA', 2000, 850),
('PDAM Aceh Timur', 'PDAM SUMATERA', 2000, 850),
('PDAM Aetra Jakarta', 'PDAM DKI JAKARTA', 2500, 800),
('PDAM Banda Aceh', 'PDAM SUMATERA', 2000, 900),
('PDAM Bandarlampung', 'PDAM SUMATERA', 2700, 1000),
('PDAM Bandung', 'PDAM JAWA BARAT', 2500, 1000),
('PDAM Bangkalan', 'PDAM JAWA TIMUR', 2500, 950),
('PDAM Banjarmasin', 'PDAM KALIMANTAN', 2000, 850),
('PDAM Banyumas', 'PDAM JAWA TENGAH', 2000, 900),
('PDAM Banyuwangi', 'PDAM JAWA TIMUR', 1800, 750),
('PDAM Blitar', 'PDAM JAWA TIMUR', 2000, 1000),
('PDAM Bondowoso', 'PDAM JAWA TIMUR', 1800, 700),
('PDAM Boyolali', 'PDAM JAWA TENGAH', 2000, 800),
('PDAM Cianjur', 'PDAM JAWA BARAT', 2500, 1000),
('PDAM Cirebon', 'PDAM JAWA BARAT', 2500, 1000),
('PDAM Denpasar', 'PDAM BALI', 2500, 800),
('PDAM Depok', 'PDAM JAWA BARAT', 2000, 1000),
('PDAM Garut', 'PDAM JAWA BARAT', 2500, 900),
('PDAM Jember', 'PDAM JAWA TIMUR', 1600, 650),
('PDAM Jombang', 'PDAM JAWA TIMUR', 2000, 800),
('PDAM Kab Banjarbaru', 'PDAM KALIMANTAN', 2000, 850),
('PDAM Kab Bogor', 'PDAM JAWA BARAT', 2500, 1000),
('PDAM Kab Gowa', 'PDAM SULAWESI', 2500, 1000),
('PDAM Kab Kupang', 'PDAM NUSA TENGGARA TIMUR', 2200, 800),
('PDAM Kab Malang', 'PDAM JAWA TIMUR', 2100, 800),
('PDAM Kab Maros', 'PDAM SULAWESI', 2500, 1000),
('PDAM Kab Mojokerto', 'PDAM JAWA TIMUR', 2000, 800),
('PDAM Kab Probolinggo', 'PDAM JAWA TIMUR', 1800, 750),
('PDAM Kab Subang', 'PDAM JAWA BARAT', 2500, 1000),
('PDAM Kab Sumedang', 'PDAM JAWA BARAT', 2500, 1000),
('PDAM Kab. Bandung', 'PDAM JAWA BARAT', 2500, 1000),
('PDAM Kab. Bone', 'PDAM SULAWESI', 2500, 1000),
('PDAM Kab. Cilacap', 'PDAM JAWA TENGAH', 2000, 900),
('PDAM Kab. Gresik', 'PDAM JAWA TIMUR', 2000, 800),
('PDAM Kab. Magelang', 'PDAM JAWA TENGAH', 2500, 800),
('PDAM Kab. Magetan', 'PDAM JAWA TIMUR', 2000, 800),
('PDAM Kab. Nganjuk', 'PDAM JAWA TIMUR', 2500, 800),
('PDAM Kab. Palopo', 'PDAM SULAWESI', 0, 1000),
('PDAM Kab. Ponorogo', 'PDAM JAWA TIMUR', 2000, 700),
('PDAM Kab. Sragen', 'PDAM JAWA TENGAH', 2000, 900),
('PDAM Kab.Lamongan', 'PDAM JAWA TIMUR', 2000, 800),
('PDAM Karawang', 'PDAM JAWA BARAT', 2000, 1000),
('PDAM Klaten', 'PDAM JAWA TENGAH', 2000, 800),
('PDAM Kota Bandung', 'PDAM JAWA BARAT', 2500, 800),
('PDAM Kota Bogor', 'PDAM JAWA BARAT', 2500, 1000),
('PDAM Kota Jambi', 'PDAM SUMATERA', 2000, 800),
('PDAM Kota Kupang', 'PDAM NUSA TENGGARA TIMUR', 2200, 800),
('PDAM Kota Makasar', 'PDAM SULAWESI', 2500, 850),
('PDAM Kota Mojokerto', 'PDAM JAWA TIMUR', 2500, 1000),
('PDAM kota Probolingg', 'PDAM JAWA TIMUR', 1800, 750),
('PDAM Kudus', 'PDAM JAWA TENGAH', 1600, 550),
('PDAM Lombok Tengah', 'PDAM NUSA TENGGARA TIMUR', 2500, 900),
('PDAM Mataram', 'PDAM NUSA TENGGARA BARAT', 2500, 900),
('PDAM Medan ( Tirta Nadi)', 'PDAM SUMATERA', 2500, 750),
('PDAM Palembang', 'PDAM SUMATERA', 1500, 800),
('PDAM Palyja Jakarta', 'PDAM DKI JAKARTA', 2500, 800),
('PDAM Serang', 'PDAM JAWA BARAT', 2000, 800),
('PDAM Sidoarjo (Kab.)', 'PDAM JAWA TIMUR', 1800, 700),
('PDAM Situbondo', 'PDAM JAWA TIMUR', 1600, 700),
('PDAM Solo', 'PDAM JAWA TENGAH', 2000, 800),
('PDAM Surabaya', 'PDAM JAWA TIMUR', 2000, 1000),
('PDAM TasikMalaya', 'PDAM JAWA BARAT', 2000, 600),
('PDAM Tasikmalaya Kota', 'PDAM JAWA BARAT', 2000, 600),
('PDAM Tuban', 'PDAM JAWA TIMUR', 2000, 800);

-- --------------------------------------------------------

--
-- Table structure for table `harga_pulsa`
--

CREATE TABLE `harga_pulsa` (
  `kode_pulsa` varchar(10) NOT NULL,
  `produk` varchar(15) NOT NULL,
  `harga_arindo` int(10) NOT NULL,
  `harga_jual` int(10) NOT NULL,
  `fee_kopeg` int(10) NOT NULL,
  `penyedia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `harga_pulsa`
--

INSERT INTO `harga_pulsa` (`kode_pulsa`, `produk`, `harga_arindo`, `harga_jual`, `fee_kopeg`, `penyedia`) VALUES
('A10', 'AS', 10950, 11000, 1100, 'TELKOMSEL'),
('A100', 'AS', 98000, 100000, 2000, 'TELKOMSEL'),
('A20', 'AS', 20500, 21000, 1200, 'TELKOMSEL'),
('A5', 'AS', 5900, 6000, 100, 'TELKOMSEL'),
('A50', 'AS', 49500, 50500, 1150, 'TELKOMSEL'),
('AX10', 'AXIS', 11350, 12000, 650, 'AXIS TELEKOM INDONESIA'),
('AX100', 'AXIS', 100200, 101000, 800, 'AXIS TELEKOM INDONESIA'),
('AX25', 'AXIS', 25350, 26000, 650, 'AXIS TELEKOM INDONESIA'),
('AX5', 'AXIS', 6350, 7000, 650, 'AXIS TELEKOM INDONESIA'),
('AX50', 'AXIS', 50200, 51000, 800, 'AXIS TELEKOM INDONESIA'),
('CM10', 'SMART', 10400, 11000, 600, 'SMARTFREN TELECOM'),
('CM100', 'SMART', 100600, 101000, 400, 'SMARTFREN TELECOM'),
('CM20', 'SMART', 20400, 21000, 600, 'SMARTFREN TELECOM'),
('CM5', 'SMART', 5400, 6000, 600, 'SMARTFREN TELECOM'),
('CM50', 'SMART', 50400, 51000, 600, 'SMARTFREN TELECOM'),
('E1', 'ESIA', 1250, 2000, 750, 'ESIA'),
('E10', 'ESIA', 10200, 11000, 800, 'ESIA'),
('E100', 'ESIA', 99100, 101000, 1900, 'ESIA'),
('E20', 'ESIA', 20000, 21000, 1000, 'ESIA'),
('E25', 'ESIA', 25000, 26000, 1000, 'ESIA'),
('E5', 'ESIA', 5350, 6000, 650, 'ESIA'),
('E50', 'ESIA', 49550, 51000, 1450, 'ESIA'),
('I10', 'IM3', 10600, 11500, 900, 'INDOSAT'),
('I100', 'IM3', 98700, 100000, 1300, 'INDOSAT'),
('I25', 'IM3', 25350, 26250, 900, 'INDOSAT'),
('I5', 'IM3', 5550, 6000, 450, 'INDOSAT'),
('I50', 'IM3', 49700, 51000, 1300, 'INDOSAT'),
('M10', 'MENTARI', 10600, 11000, 400, 'INDOSAT'),
('M100', 'MENTARI', 98700, 100000, 1300, 'INDOSAT'),
('M25', 'MENTARI', 25350, 26000, 650, 'INDOSAT'),
('M5', 'MENTARI', 5550, 6000, 450, 'INDOSAT'),
('M50', 'MENTARI', 49700, 51000, 1300, 'INDOSAT'),
('R10', 'FREN', 10300, 11000, 700, 'SMARTFREN TELECOM'),
('R100', 'FREN', 100300, 101000, 700, 'SMARTFREN TELECOM'),
('R25', 'FREN', 25300, 26000, 700, 'SMARTFREN TELECOM'),
('R50', 'FREN', 50300, 51000, 700, 'SMARTFREN TELECOM'),
('S10', 'SIMPATI', 10950, 11000, 1100, 'TELKOMSEL'),
('S100', 'SIMPATI', 98000, 100000, 2000, 'TELKOMSEL'),
('S20', 'SIMPATI', 20500, 22000, 1200, 'TELKOMSEL'),
('S5', 'SIMPATI', 5900, 6000, 100, 'TELKOMSEL'),
('S50', 'SIMPATI', 48600, 51000, 1150, 'TELKOMSEL'),
('T1', 'THREE', 1250, 2000, 750, 'HUTCHISON CHAROEN POKPHAND TELECOM'),
('T10', 'THREE', 10100, 11000, 900, 'HUTCHISON CHAROEN POKPHAND TELECOM'),
('T100', 'THREE', 99000, 100000, 1000, 'HUTCHISON CHAROEN POKPHAND TELECOM'),
('T2', 'THREE', 2200, 3000, 800, 'HUTCHISON CHAROEN POKPHAND TELECOM'),
('T20', 'THREE', 19850, 21000, 1150, 'HUTCHISON CHAROEN POKPHAND TELECOM'),
('T30', 'THREE', 29750, 31000, 1250, 'HUTCHISON CHAROEN POKPHAND TELECOM'),
('T5', 'THREE', 5050, 6000, 950, 'HUTCHISON CHAROEN POKPHAND TELECOM'),
('T50', 'THREE', 49450, 51000, 1550, 'HUTCHISON CHAROEN POKPHAND TELECOM'),
('XR10', 'XL', 10850, 11000, 150, 'XL AXIATA'),
('XR100', 'XL', 99850, 100000, 150, 'XL AXIATA'),
('XR25', 'XL', 25350, 26000, 650, 'XL AXIATA'),
('XR5', 'XL', 5850, 6000, 150, 'XL AXIATA'),
('XR50', 'XL', 50050, 51000, 950, 'XL AXIATA');

-- --------------------------------------------------------

--
-- Table structure for table `indovision`
--

CREATE TABLE `indovision` (
  `tanggal` date DEFAULT NULL,
  `divre` varchar(20) DEFAULT NULL,
  `kode_kopeg` varchar(20) DEFAULT NULL,
  `nama_kopeg` varchar(20) DEFAULT NULL,
  `kode_loket` varchar(20) DEFAULT NULL,
  `loket` varchar(20) DEFAULT NULL,
  `nama_biller` varchar(20) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  `customer` varchar(20) DEFAULT NULL,
  `tagihan` int(11) DEFAULT NULL,
  `surcharge` int(11) DEFAULT NULL,
  `fee_ca` int(11) DEFAULT NULL,
  `fee_finnet` int(11) DEFAULT NULL,
  `kewajiban` int(11) DEFAULT NULL,
  `kode_biller` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indovision`
--

INSERT INTO `indovision` (`tanggal`, `divre`, `kode_kopeg`, `nama_kopeg`, `kode_loket`, `loket`, `nama_biller`, `account`, `customer`, `tagihan`, `surcharge`, `fee_ca`, `fee_finnet`, `kewajiban`, `kode_biller`) VALUES
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'MNC VISION P2H', '401000452099', 'BURHAN AFFANDI YAHYA', 114900, 0, 1500, 1500, 113400, '55'),
('2019-12-05', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'MNC VISION P2H', '0301010783890', 'M SURATMAN ISKANDAR ', 184900, 0, 1500, 1500, 183400, '55'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'MNC VISION P2H', '401000452099', 'BURHAN AFFANDI YAHYA', 114900, 0, 1500, 1500, 113400, '55');

-- --------------------------------------------------------

--
-- Table structure for table `kaliuser`
--

CREATE TABLE `kaliuser` (
  `id` int(5) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `user` varchar(20) NOT NULL,
  `xfee` int(10) NOT NULL,
  `xtitip` int(10) NOT NULL,
  `xadmin` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaliuser`
--

INSERT INTO `kaliuser` (`id`, `lokasi`, `user`, `xfee`, `xtitip`, `xadmin`) VALUES
(1, 'ARCAMANIK', 'arcamanik', 2000, 300, 3000),
(2, 'BATUJAJAR', 'batujajar', 2000, 300, 3000),
(3, 'BKR', 'bkr1', 2000, 300, 3000),
(4, 'BANJARAN', 'bkr2', 2000, 300, 3000),
(5, 'MAJALAYA', 'cicalengka1', 2000, 300, 3000),
(6, 'CIJAURA1', 'cijaura', 2000, 300, 3000),
(7, 'CIJAURA2', 'cijaura2', 2000, 300, 3000),
(8, 'CIKALONG WETAN', 'cikalongwetan', 2000, 300, 3000),
(9, 'CILILIN', 'cililin', 2000, 300, 3000),
(10, 'CIMAHI 1', 'cimahi1', 1700, 130, 2500),
(11, 'CIMAHI 2', 'cimahi2', 1700, 130, 2500),
(12, 'DAGO 1', 'dago1', 1700, 130, 2500),
(13, 'DAGO 2', 'dago2', 1700, 130, 2500),
(14, 'CICALENGKA', 'ddl_cclengka', 2000, 300, 3000),
(15, 'RANCAEKEK 2/ LILIK', 'ddl_rckkbru', 2000, 300, 3000),
(16, 'PLASA RANCAEKEK', 'gegerkalong1', 2000, 300, 3000),
(17, 'JATINANGOR', 'jatinangor', 2000, 300, 3000),
(18, 'JATINANGOR / PD', 'ujungberung1', 2000, 300, 3000),
(19, 'KOPO 1 ', 'kopo1', 2000, 300, 3000),
(20, 'KOPO 2', 'kopo2', 2000, 300, 3000),
(21, 'LEMBANG', 'lembang', 1700, 130, 2500),
(22, 'LEMBONG 1', 'lembong1', 2000, 300, 0),
(23, 'LEMBONG 2', 'lembong2', 2000, 300, 0),
(24, 'LEMBONG 3 ', 'lembong3', 2000, 300, 0),
(25, 'PADALARANG', 'padalarang1', 2000, 300, 3000),
(26, 'RAJAWALI 1', 'rajawali1', 2000, 300, 3000),
(27, 'RAJAWALI 2', 'rajawali2', 2000, 300, 3000),
(28, 'RAJAWALI 3', 'rajawali3', 2000, 300, 3000),
(29, 'RANCAEKEK / ERRI', 'rancaekek', 2000, 300, 3000),
(30, 'SETIABUDI 1', 'setiabudi1', 2000, 300, 0),
(31, 'SETIABUDI 2 ', 'setiabudi2', 2000, 300, 0),
(32, 'SOREANG', 'soreang', 2000, 300, 3000),
(33, 'SUMEDANG 1 ', 'sumedang1', 2000, 300, 3000),
(34, 'SUMEDANG 2', 'sumedang2', 2000, 300, 3000),
(35, 'SUPRATMAN 1', 'supratman1', 2000, 300, 3000),
(36, 'SUPRATMAN 2', 'supratman2', 2000, 300, 3000),
(37, 'SUPRATMAN 3', 'supratman3', 2000, 300, 3000),
(38, 'TANJUNGSARI', 'tanjungsari', 2000, 300, 3000),
(39, 'UJUNG BERUNG', 'ujungberung2', 2000, 300, 3000),
(40, 'WINDU 1 ', 'windu1', 2000, 300, 3000),
(41, 'WINDU 2', 'windu2', 2000, 300, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `kinerja_user`
--

CREATE TABLE `kinerja_user` (
  `id` int(11) NOT NULL,
  `loket` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `sopp` int(11) NOT NULL,
  `pln` int(11) NOT NULL,
  `pdam` int(11) NOT NULL,
  `voucher` int(11) NOT NULL,
  `indovision` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kode_awal`
--

CREATE TABLE `kode_awal` (
  `nomor_awal` varchar(10) NOT NULL,
  `produk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kode_awal`
--

INSERT INTO `kode_awal` (`nomor_awal`, `produk`) VALUES
('811', 'SIMPATI'),
('812', 'SIMPATI'),
('813', 'SIMPATI'),
('814', 'MENTARI'),
('815', 'MENTARI'),
('816', 'MENTARI'),
('817', 'XL'),
('818', 'XL'),
('819', 'XL'),
('821', 'SIMPATI'),
('822', 'SIMPATI'),
('823', 'AS'),
('831', 'AXIS'),
('838', 'AXIS'),
('851', 'AS'),
('852', 'AS'),
('853', 'AS'),
('855', 'IM3'),
('856', 'IM3'),
('857', 'IM3'),
('858', 'MENTARI'),
('859', 'XL'),
('877', 'XL'),
('878', 'XL'),
('879', 'XL'),
('881', 'AS'),
('882', 'FREN'),
('883', 'FREN'),
('884', 'FREN'),
('887', 'FREN'),
('888', 'FREN'),
('889', 'FREN'),
('896', 'THREE'),
('897', 'THREE'),
('898', 'THREE'),
('899', 'THREE');

-- --------------------------------------------------------

--
-- Table structure for table `konpensasi`
--

CREATE TABLE `konpensasi` (
  `tanggal_masalah` date NOT NULL,
  `tanggal_konpensasi` date NOT NULL,
  `sopp_finnet` int(11) DEFAULT NULL,
  `voucher_finnet` int(11) DEFAULT NULL,
  `fee_akses` int(11) DEFAULT NULL,
  `pln_finnet` int(11) DEFAULT NULL,
  `pdam_finnet` int(11) DEFAULT NULL,
  `adira_finnet` int(11) DEFAULT NULL,
  `baf_finnet` int(11) DEFAULT NULL,
  `fif_finnet` int(11) DEFAULT NULL,
  `wom_finnet` int(11) DEFAULT NULL,
  `indovision_finnet` int(11) DEFAULT NULL,
  `toptv_finnet` int(11) DEFAULT NULL,
  `bigtv_finnet` int(11) DEFAULT NULL,
  `adiratv_finnet` int(11) DEFAULT NULL,
  `bpjs_finnet` int(11) DEFAULT NULL,
  `voucher_arindo` int(11) DEFAULT NULL,
  `pln_arindo` int(11) DEFAULT NULL,
  `pdam_arindo` int(11) DEFAULT NULL,
  `adira_arindo` int(11) DEFAULT NULL,
  `baf_arindo` int(11) DEFAULT NULL,
  `fif_arindo` int(11) DEFAULT NULL,
  `wom_arindo` int(11) DEFAULT NULL,
  `indovision_arindo` int(11) DEFAULT NULL,
  `toptv_arindo` int(11) DEFAULT NULL,
  `bigtv_arindo` int(11) DEFAULT NULL,
  `adiratv_arindo` int(11) DEFAULT NULL,
  `bpjs_arindo` int(11) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_aoratv`
--

CREATE TABLE `k_aoratv` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo`
--

CREATE TABLE `k_arindo` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_adira`
--

CREATE TABLE `k_arindo_adira` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_adiratv`
--

CREATE TABLE `k_arindo_adiratv` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_baf`
--

CREATE TABLE `k_arindo_baf` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_bigtv`
--

CREATE TABLE `k_arindo_bigtv` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_bpjs`
--

CREATE TABLE `k_arindo_bpjs` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_fif`
--

CREATE TABLE `k_arindo_fif` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_indovision`
--

CREATE TABLE `k_arindo_indovision` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_pdam`
--

CREATE TABLE `k_arindo_pdam` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_pln`
--

CREATE TABLE `k_arindo_pln` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_toptv`
--

CREATE TABLE `k_arindo_toptv` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_voucher`
--

CREATE TABLE `k_arindo_voucher` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_arindo_wom`
--

CREATE TABLE `k_arindo_wom` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_indovision`
--

CREATE TABLE `k_indovision` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_pdam`
--

CREATE TABLE `k_pdam` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_pln`
--

CREATE TABLE `k_pln` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_sopp`
--

CREATE TABLE `k_sopp` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_transvision`
--

CREATE TABLE `k_transvision` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_voucher_smart`
--

CREATE TABLE `k_voucher_smart` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_voucher_tri`
--

CREATE TABLE `k_voucher_tri` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `k_voucher_tsel`
--

CREATE TABLE `k_voucher_tsel` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `user_id` int(10) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `loket` varchar(20) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tempat_pisah` varchar(20) NOT NULL,
  `user` varchar(20) DEFAULT NULL,
  `tempat_arindo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`user_id`, `lokasi`, `loket`, `tempat`, `tempat_pisah`, `user`, `tempat_arindo`) VALUES
(3, 'BKR', 'bkr1', 'BKR', 'BKR', NULL, NULL),
(4, 'BANJARAN', 'bkr2', 'BANJARAN', 'BANJARAN', 'BJN0465', 'BANJARAN'),
(5, 'MAJALAYA', 'cicalengka1', 'MAJALAYA', 'MAJALAYA', 'MJA1001', NULL),
(6, 'CIJAURA', 'cijaura', 'CIJAURA', 'CIJAURA 1', 'CJA1001', 'CIJAURA'),
(7, 'CIJAURA2', 'cijaura2', 'CIJAURA', 'CIJAURA 2', 'CJA2002', 'CIJAURA 2'),
(10, 'CIMAHI 1', 'cimahi1', 'CIMAHI', 'CIMAHI 1', 'CMI1001', NULL),
(11, 'CIMAHI 2', 'cimahi2', 'CIMAHI', 'CIMAHI 2', 'CMI2002', NULL),
(14, 'CICALENGKA', 'ddl_cclengka', 'CICALENGKA', 'CICALENGKA', 'CLK1001', NULL),
(16, 'PLASA RANCAEKEK', 'gegerkalong1', 'PLASA RANCAEKEK', 'PLASA RANCAEKEK', 'RCK3003', NULL),
(17, 'JATINANGOR', 'jatinangor', 'JATINANGOR', 'JATINANGOR', NULL, NULL),
(19, 'KOPO 1', 'kopo1', 'KOPO', 'KOPO 1', 'KPO1001', NULL),
(20, 'KOPO 2 ', 'kopo2', 'KOPO', 'KOPO 2', 'KPO2002', NULL),
(21, 'LEMBANG', 'lembang', 'LEMBANG', 'LEMBANG', 'LEM1001', 'LEMBANG'),
(22, 'LEMBONG 1', 'lembong1', 'LEMBONG', 'LEMBONG', 'LBG1001', NULL),
(23, 'LEMBONG 2', 'lembong2', 'LEMBONG', 'LEMBONG 2', 'LBG2002', NULL),
(24, 'LEMBONG 3', 'lembong3', 'LEMBONG', 'LEMBONG 3', 'LBG3003', NULL),
(25, 'PADALARANG 1', 'padalarang1', 'PADALARANG', 'PADALARANG', 'PDL0001', 'PADALARANG'),
(26, 'RAJAWALI 1', 'rajawali1', 'RAJAWALI', 'RAJAWALI 1', 'RJW1001', NULL),
(27, 'RAJAWALI 2', 'rajawali2', 'RAJAWALI', 'RAJAWALI 2', 'RJW2002', NULL),
(28, 'RAJAWALI 3', 'rajawali3', 'RAJAWALI', 'RAJAWALI 3', 'RJW3003', NULL),
(30, 'SETIABUDI 1', 'setiabudi1', 'SETIABUDI', 'SETIABUDI 1', 'STB1001', NULL),
(31, 'SETIABUDI 2', 'setiabudi2', 'SETIABUDI', 'SETIABUDI 2', 'STB2002', NULL),
(32, 'SOREANG', 'soreang', 'SOREANG', 'SOREANG', 'SOR1001', NULL),
(33, 'SUMEDANG 1', 'sumedang1', 'SUMEDANG', 'SUMEDANG', NULL, NULL),
(34, 'SUMEDANG 2', 'sumedang2', 'SUMEDANG', 'SUMEDANG', 'SMD1001', NULL),
(36, 'SUPRATMAN 2', 'supratman2', 'SUPRATMAN', 'SUPRATMAN 2', 'SPR1001', NULL),
(37, 'SUPRATMAN 3', 'supratman3', 'SUPRATMAN', 'SUPRATMAN 3', 'SPR2002', NULL),
(39, 'UJUNG BERUNG', 'ujungberung2', 'UJUNG BERUNG', 'UJUNG BERUNG', 'UBR1001', NULL),
(40, 'WINDU 1', 'windu1', 'WINDU', 'WINDU 1', 'WND1001', NULL),
(41, 'WINDU 2', 'windu2', 'WINDU', 'WINDU 2', 'WND2002', NULL),
(42, 'CICALENGKA 2', 'cicalengka2', 'CICALENGKA', 'CICALENGKA', NULL, NULL),
(43, 'CIJAURA', 'cijaura1', 'CIJAURA', 'CIJAURA 1', '', 'CIJAURA'),
(44, 'PADALARANG', 'padalarang', 'PADALARANG', 'PADALARANG', NULL, NULL),
(45, 'LEMBANG', 'lembang1', 'LEMBANG', 'LEMBANG', '', 'LEMBANG'),
(46, 'SETIABUDHI 1', 'setiabudhi1', 'SETIABUDI', 'SETIABUDI 1', NULL, NULL),
(47, 'SETIABUDHI 2', 'setiabudhi2', 'SETIABUDI', 'SETIABUDI 2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lokasi2`
--

CREATE TABLE `lokasi2` (
  `user_id` int(10) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `loket` varchar(20) NOT NULL,
  `tempat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi2`
--

INSERT INTO `lokasi2` (`user_id`, `lokasi`, `loket`, `tempat`) VALUES
(1, 'BKR', 'bkr1', 'BKR'),
(2, 'BANJARAN', 'bkr2', 'BANJARAN'),
(3, 'MAJALAYA', 'cicalengka1', 'MAJALAYA'),
(4, 'CIJAURA', 'cijaura', 'CIJAURA'),
(5, 'CIJAURA2', 'cijaura2', 'CIJAURA'),
(6, 'CIMAHI 1', 'cimahi1', 'CIMAHI'),
(7, 'CIMAHI 2', 'cimahi2', 'CIMAHI2'),
(8, 'CICALENGKA', 'ddl_cclengka', 'CICALENGKA'),
(9, 'PADALARANG1', 'padalarang1', 'PADALARANG'),
(10, 'PLASA RANCAEKEK', 'gegerkalong1', 'PLASA RANCAEKEK'),
(11, 'JATINANGOR', 'jatinangor', 'JATINANGOR'),
(12, 'JATINANGOR / PDL', 'ujungberung1', 'JATINANGOR'),
(13, 'KOPO 1', 'kopo1', 'KOPO'),
(14, 'KOPO 2', 'kopo2', 'KOPO'),
(15, 'LEMBANG', 'lembang', 'LEMBANG'),
(16, 'LEMBONG 1', 'lembong1', 'LEMBONG'),
(17, 'LEMBONG 2', 'lembong2', 'LEMBONG'),
(18, 'LEMBONG 3', 'lembong3', 'LEMBONG'),
(19, 'RAJAWALI 1', 'rajawali1', 'RAJAWALI'),
(20, 'RAJAWALI 2', 'rajawali2', 'RAJAWALI'),
(21, 'RAJAWALI 3', 'rajawali3', 'RAJAWALI'),
(22, 'RANCAEKEK 2/ LILIK', 'ddl_rckkbru', 'RANCAEKEK 2/LILIK'),
(23, 'SETIABUDI 1', 'setiabudi1', 'SETIABUDI'),
(24, 'SETIABUDI 2', 'setiabudi2', 'SETIABUDI'),
(25, 'SOREANG', 'soreang', 'SOREANG'),
(26, 'SUMEDANG 1', 'sumedang1', 'SUMEDANG'),
(27, 'SUMEDANG 2', 'sumedang2', 'SUMEDANG'),
(28, 'SUPRATMAN 1', 'supratman1', 'SUPRATMAN'),
(29, 'SUPRATMAN 2', 'supratman2', 'SUPRATMAN'),
(30, 'SUPRATMAN 3', 'supratman3', 'SUPRATMAN'),
(31, 'TANJUNGSARI', 'tanjungsari', 'TANJUNGSARI'),
(32, 'UJUNG BERUNG', 'ujungberung2', 'UJUNG BERUNG'),
(33, 'WINDU 1', 'windu1', 'WINDU'),
(34, 'WINDU 2', 'windu2', 'WINDU');

-- --------------------------------------------------------

--
-- Table structure for table `loket`
--

CREATE TABLE `loket` (
  `loket` varchar(20) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nomor`
--

CREATE TABLE `nomor` (
  `nomor` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nomor`
--

INSERT INTO `nomor` (`nomor`) VALUES
('852');

-- --------------------------------------------------------

--
-- Table structure for table `pdam`
--

CREATE TABLE `pdam` (
  `tanggal` date NOT NULL,
  `jam` varchar(255) NOT NULL,
  `kopegtel` varchar(255) NOT NULL,
  `loket` varchar(255) NOT NULL,
  `virtual_account` int(11) NOT NULL,
  `nama_area` varchar(255) NOT NULL,
  `fee_admin` int(11) NOT NULL,
  `no_pdam` int(11) NOT NULL,
  `trx` int(11) NOT NULL,
  `bill` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total_fee` int(11) NOT NULL,
  `total_kopeg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdam`
--

INSERT INTO `pdam` (`tanggal`, `jam`, `kopegtel`, `loket`, `virtual_account`, `nama_area`, `fee_admin`, `no_pdam`, `trx`, `bill`, `amount`, `total_fee`, `total_kopeg`) VALUES
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cicalengka1', 30315013, 'PDAM Bandung', 2500, 2147483647, 1, 1, 91100, 2500, 93600),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cicalengka1', 30315013, 'PDAM Bandung', 2500, 2147483647, 1, 1, 97200, 2500, 99700),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 32600, 2500, 35100),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 74000, 2500, 76500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 20300, 2500, 22800),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 47600, 2500, 50100),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40100, 2500, 42600),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 91800, 2500, 94300),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'kopo2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 231300, 2500, 233800),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 193800, 2500, 196300),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 115500, 2500, 118000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 85000, 2500, 87500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 103300, 2500, 105800),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 66700, 2500, 69200),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 62000, 2500, 64500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 361700, 2500, 364200),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 55000, 2500, 57500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 133800, 2500, 136300),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 148200, 2500, 150700),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 360200, 2500, 362700),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 44600, 2500, 47100),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 86000, 2500, 88500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 33000, 2500, 35500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 84400, 2500, 86900),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 56000, 2500, 58500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'soreang', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 215700, 2500, 218200),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'soreang', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 185950, 2500, 188450),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 73900, 2500, 76400),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 178400, 2500, 180900),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 49500, 2500, 52000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 99100, 2500, 101600),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 587100, 2500, 589600),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 636850, 2500, 639350),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 35200, 2500, 37700),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 216500, 2500, 219000),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 270000, 2500, 272500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'ujungberung2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 157000, 2500, 159500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 26900, 2500, 29400),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 53000, 2500, 55500),
('2019-12-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cicalengka1', 30315013, 'PDAM Bandung', 2500, 2147483647, 1, 1, 31500, 2500, 34000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cicalengka1', 30315013, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cicalengka2', 30315013, 'PDAM Bandung', 2500, 2147483647, 1, 1, 274100, 2500, 276600),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 43400, 2500, 45900),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40100, 2500, 42600),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 295200, 2500, 297700),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 27400, 2500, 29900),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 78500, 2500, 81000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'kopo2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 205800, 2500, 208300),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 165200, 2500, 167700),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 78500, 2500, 81000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 115500, 2500, 118000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 115500, 2500, 118000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 252200, 2500, 254700),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 51400, 2500, 53900),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 56800, 2500, 59300),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 273800, 2500, 276300),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 23800, 2500, 26300),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 163000, 2500, 165500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 800400, 2500, 802900),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 128800, 2500, 131300),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 119400, 2500, 121900),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 194600, 2500, 197100),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 75200, 2500, 77700),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 84400, 2500, 86900),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 78700, 2500, 81200),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 35200, 2500, 37700),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 471600, 2500, 474100),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 30200, 2500, 32700),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 46000, 2500, 48500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40100, 2500, 42600),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 98000, 2500, 100500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 30000, 2500, 32500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 52200, 2500, 54700),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 118600, 2500, 121100),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 110000, 2500, 112500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 270000, 2500, 272500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 165200, 2500, 167700),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 56000, 2500, 58500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 37800, 2500, 40300),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 63000, 2500, 65500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 70600, 2500, 73100),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 56800, 2500, 59300),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'soreang', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 381500, 2500, 384000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'soreang', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 55000, 2500, 57500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 98450, 2500, 100950),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 98450, 2500, 100950),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 202900, 2500, 205400),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 118000, 2500, 120500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 55000, 2500, 57500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 105400, 2500, 107900),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 55000, 2500, 57500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 84600, 2500, 87100),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 175800, 2500, 178300),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 56000, 2500, 58500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'ujungberung2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 19900, 2500, 22400),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'ujungberung2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 23600, 2500, 26100),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 156400, 2500, 158900),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 98000, 2500, 100500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 66000, 2500, 68500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 36800, 2500, 39300),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 33500, 2500, 36000),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 138200, 2500, 140700),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 22200, 2500, 24700),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 52200, 2500, 54700),
('2019-12-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500);

-- --------------------------------------------------------

--
-- Table structure for table `pengawasan`
--

CREATE TABLE `pengawasan` (
  `transfer1` int(11) NOT NULL,
  `transfer2` int(11) NOT NULL,
  `transfer3` int(11) NOT NULL,
  `transfer4` int(11) NOT NULL,
  `biaya` int(11) NOT NULL,
  `tarik_tunai` int(11) NOT NULL,
  `jasa giro` int(11) NOT NULL,
  `pph` int(11) NOT NULL,
  `kel giro` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengawasan`
--

INSERT INTO `pengawasan` (`transfer1`, `transfer2`, `transfer3`, `transfer4`, `biaya`, `tarik_tunai`, `jasa giro`, `pph`, `kel giro`, `tanggal`) VALUES
(-4916551, -125508919, -103904929, 0, -15000, 0, 0, 0, 0, '2019-12-03'),
(-17833810, -247587636, -299066444, 0, -15000, 0, 0, 0, 0, '2019-12-04'),
(-18475162, -427242643, -360793915, 0, -15000, 0, 0, 0, 0, '2019-12-05'),
(-26965737, -404892045, -414699315, 0, -15000, 0, 0, 0, 0, '2019-12-08'),
(-39903346, -530248494, -627330362, 0, -15000, 0, 0, 0, 0, '2019-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `pln`
--

CREATE TABLE `pln` (
  `tanggal` date NOT NULL,
  `divre` varchar(10) NOT NULL,
  `kode_kopegtel` varchar(10) NOT NULL,
  `kopegtel` varchar(100) NOT NULL,
  `loket` varchar(100) NOT NULL,
  `nomor` int(11) NOT NULL,
  `trx` int(10) NOT NULL,
  `bill` int(10) NOT NULL,
  `amount` int(100) NOT NULL,
  `fee_admin` int(100) NOT NULL,
  `total_kopeg` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pln`
--

INSERT INTO `pln` (`tanggal`, `divre`, `kode_kopegtel`, `kopegtel`, `loket`, `nomor`, `trx`, `bill`, `amount`, `fee_admin`, `total_kopeg`) VALUES
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'cicalengka1', 315023, 3, 3, 716030, 8250, 724280),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'cicalengka2', 315033, 9, 9, 3881743, 24750, 3906493),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'cijaura1', 315043, 21, 21, 5889797, 57750, 5947547),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'cijaura2', 315063, 15, 15, 6244890, 41250, 6286140),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'cimahi2', 315423, 16, 16, 3645747, 44000, 3689747),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'jatinangor', 315353, 4, 4, 261676, 11000, 272676),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'kopo1', 315123, 2, 2, 642950, 5500, 648450),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'kopo2', 315133, 13, 13, 6064044, 35750, 6099794),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'lembang1', 315143, 17, 17, 10871031, 46750, 10917781),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'lembong2', 315303, 15, 15, 19555879, 41250, 19597129),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'lembong3', 315013, 12, 12, 7991700, 33000, 8024700),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'padalarang', 315343, 1, 1, 100000, 2750, 102750),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'rajawali1', 315153, 6, 6, 925819, 16500, 942319),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'rajawali2', 315163, 6, 6, 987645, 16500, 1004145),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'setiabudhi1', 315313, 4, 4, 1816929, 11000, 1827929),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'setiabudhi2', 315323, 2, 2, 2018469, 5500, 2023969),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'soreang', 315183, 4, 4, 558670, 11000, 569670),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'sumedang2', 315203, 18, 19, 16590830, 52250, 16643080),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'supratman2', 315223, 3, 3, 711140, 8250, 719390),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'supratman3', 315413, 6, 7, 2327889, 19250, 2347139),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'ujungberung2', 315263, 4, 4, 1001204, 11000, 1012204),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'windu1', 315273, 7, 7, 2136578, 19250, 2155828),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'windu2', 315283, 12, 12, 2356724, 33000, 2389724),
('2019-12-03', '3', '315', 'D3_Kop Dadali BDG', 'lembong3', 315013, 1, 1, 59445, 5000, 64445),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'cicalengka1', 315023, 7, 7, 4987031, 19250, 5006281),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'cicalengka2', 315033, 12, 12, 4279113, 33000, 4312113),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'cijaura1', 315043, 28, 28, 7443996, 77000, 7520996),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'cijaura2', 315063, 36, 36, 19572636, 99000, 19671636),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'cimahi2', 315423, 30, 30, 8034878, 82500, 8117378),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'jatinangor', 315353, 2, 2, 348792, 5500, 354292),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'kopo1', 315123, 8, 8, 2087890, 22000, 2109890),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'kopo2', 315133, 48, 93, 73925442, 255750, 74181192),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'lembang1', 315143, 50, 52, 46672986, 143000, 46815986),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'lembong2', 315303, 50, 50, 36863175, 137500, 37000675),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'lembong3', 315013, 26, 26, 16706476, 71500, 16777976),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'padalarang', 315343, 1, 1, 3167988, 2750, 3170738),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'rajawali1', 315153, 8, 8, 3433696, 22000, 3455696),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'rajawali2', 315163, 23, 23, 10028093, 63250, 10091343),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'setiabudhi1', 315313, 12, 12, 3516875, 33000, 3549875),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'setiabudhi2', 315323, 24, 24, 9375355, 66000, 9441355),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'soreang', 315183, 5, 5, 7361739, 13750, 7375489),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'sumedang2', 315203, 22, 23, 12261476, 63250, 12324726),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'supratman2', 315223, 1, 1, 326506, 2750, 329256),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'supratman3', 315413, 5, 5, 2231037, 13750, 2244787),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'ujungberung2', 315263, 16, 16, 5869065, 44000, 5913065),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'windu1', 315273, 14, 14, 5874004, 38500, 5912504),
('2019-12-04', '3', '315', 'D3_Kop Dadali BDG', 'windu2', 315283, 12, 12, 5254995, 33000, 5287995);

-- --------------------------------------------------------

--
-- Table structure for table `rincian_sopp_input`
--

CREATE TABLE `rincian_sopp_input` (
  `tanggal` date NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `fee_finnet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rincian_sopp_input`
--

INSERT INTO `rincian_sopp_input` (`tanggal`, `lokasi`, `fee_finnet`) VALUES
('2016-01-26', 'ARCAMANIK', 1545),
('2016-01-26', 'BANJARAN', -717),
('2016-01-26', 'CIJAURA1', 13909),
('2016-01-26', 'CIMAHI 1', 3636),
('2016-01-26', 'CIMAHI 2', 2273),
('2016-01-26', 'DAGO 1', 1455),
('2016-01-26', 'JATINANGOR', 20545),
('2016-01-26', 'KOPO 2 ', 12273),
('2016-01-26', 'LEMBANG', 9273),
('2016-01-26', 'LEMBONG 2', 22455),
('2016-01-26', 'LEMBONG 3', 25727),
('2016-01-26', 'MAJALAYA', 8545),
('2016-01-26', 'PADALARANG', 1545),
('2016-01-26', 'PLASA RANCAEKEK', 7636),
('2016-01-26', 'RAJAWALI 1', 1545),
('2016-01-26', 'RAJAWALI 2', 6909),
('2016-01-26', 'RANCAEKEK / ERRI', 20091),
('2016-01-26', 'SETIABUDI 1', 21818),
('2016-01-26', 'SETIABUDI 2', 13591),
('2016-01-26', 'SOREANG', 4455),
('2016-01-26', 'SUMEDANG 2', 10636),
('2016-01-26', 'SUPRATMAN 3', 4273),
('2016-01-26', 'UJUNG BERUNG', 6182),
('2016-01-26', 'WINDU 1', 4636),
('2016-01-26', 'WINDU 2', 6182);

-- --------------------------------------------------------

--
-- Table structure for table `rk`
--

CREATE TABLE `rk` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `usser` varchar(30) NOT NULL,
  `jumlah_rk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rk_input`
--

CREATE TABLE `rk_input` (
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rk_input`
--

INSERT INTO `rk_input` (`tanggal`, `tempat`, `jumlah`) VALUES
('2019-12-03', 'CICALENGKA', 11108000),
('2019-12-03', 'CIJAURA', 48687700),
('2019-12-03', 'CIMAHI', 25463927),
('2019-12-03', 'JATINANGOR', 1190296),
('2019-12-03', 'KOPO', 89605000),
('2019-12-03', 'LEMBANG', 40759000),
('2019-12-03', 'LEMBONG', 97419000),
('2019-12-03', 'MAJALAYA', 14835500),
('2019-12-03', 'PADALARANG', 7866500),
('2019-12-03', 'PLASA RANCAEKEK', 5598718),
('2019-12-03', 'RAJAWALI', 3464100),
('2019-12-03', 'SETIABUDI', 31556634),
('2019-12-03', 'SOREANG', 21011584),
('2019-12-03', 'SUMEDANG', 28480600),
('2019-12-03', 'SUPRATMAN', 6312402),
('2019-12-03', 'UJUNG BERUNG', 11992700),
('2019-12-03', 'WINDU', 10499200),
('2019-12-04', 'CICALENGKA', 4833200),
('2019-12-04', 'CIJAURA', 92949900),
('2019-12-04', 'CIMAHI', 44544850),
('2019-12-04', 'JATINANGOR', 635000),
('2019-12-04', 'KOPO', 60461500),
('2019-12-04', 'LEMBANG', 59572000),
('2019-12-04', 'LEMBONG', 163323400),
('2019-12-04', 'MAJALAYA', 20570000),
('2019-12-04', 'PADALARANG', 5653300),
('2019-12-04', 'PLASA RANCAEKEK', 10678420),
('2019-12-04', 'RAJAWALI', 31992100),
('2019-12-04', 'SETIABUDI', 60602449),
('2019-12-04', 'SUMEDANG', 47044400),
('2019-12-04', 'SUPRATMAN', 6045939),
('2019-12-04', 'UJUNG BERUNG', 52097100),
('2019-12-04', 'WINDU', 52355600),
('2019-12-05', 'CICALENGKA', 10883355),
('2019-12-05', 'CIJAURA', 56752600),
('2019-12-05', 'CIMAHI', 49383869),
('2019-12-05', 'JATINANGOR', 2755560),
('2019-12-05', 'KOPO', 48525500),
('2019-12-05', 'LEMBANG', 28776000),
('2019-12-05', 'LEMBONG', 155298000),
('2019-12-05', 'MAJALAYA', 12662500),
('2019-12-05', 'PADALARANG', 8081955),
('2019-12-05', 'PLASA RANCAEKEK', 11265089),
('2019-12-05', 'RAJAWALI', 69114900),
('2019-12-05', 'SETIABUDI', 36364487),
('2019-12-05', 'SOREANG', 17644801),
('2019-12-05', 'SUMEDANG', 22617500),
('2019-12-05', 'SUPRATMAN', 62430778),
('2019-12-05', 'UJUNG BERUNG', 20607200),
('2019-12-05', 'WINDU', 42528600),
('2019-12-08', 'CICALENGKA', 32771500),
('2019-12-08', 'CIJAURA', 148847300),
('2019-12-08', 'CIMAHI', 65292739),
('2019-12-08', 'JATINANGOR', 4107806),
('2019-12-08', 'KOPO', 89788000),
('2019-12-08', 'LEMBANG', 39683500),
('2019-12-08', 'LEMBONG', 297881900),
('2019-12-08', 'MAJALAYA', 49112000),
('2019-12-08', 'PADALARANG', 9336500),
('2019-12-08', 'PLASA RANCAEKEK', 5776270),
('2019-12-08', 'RAJAWALI', 79670200),
('2019-12-08', 'SETIABUDI', 69135525),
('2019-12-08', 'SOREANG', 51828534),
('2019-12-08', 'SUMEDANG', 84407000),
('2019-12-08', 'SUPRATMAN', 69152536),
('2019-12-08', 'UJUNG BERUNG', 70817700),
('2019-12-08', 'WINDU', 74401000),
('2019-12-09', 'CICALENGKA', 25473500),
('2019-12-09', 'CIJAURA', 63198400),
('2019-12-09', 'CIMAHI', 42615172),
('2019-12-09', 'JATINANGOR', 4346891),
('2019-12-09', 'KOPO', 215638100),
('2019-12-09', 'LEMBANG', 84405600),
('2019-12-09', 'LEMBONG', 304438900),
('2019-12-09', 'MAJALAYA', 16716000),
('2019-12-09', 'PADALARANG', 17242200),
('2019-12-09', 'PLASA RANCAEKEK', 40039169),
('2019-12-09', 'RAJAWALI', 70531400),
('2019-12-09', 'SETIABUDI', 84370295),
('2019-12-09', 'SOREANG', 26238827),
('2019-12-09', 'SUMEDANG', 53180700),
('2019-12-09', 'SUPRATMAN', 46976716),
('2019-12-09', 'UJUNG BERUNG', 30710800),
('2019-12-09', 'WINDU', 70391000);

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `tanggal` date NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`tanggal`, `saldo`) VALUES
('2019-12-03', 529685746),
('2019-12-02', 308180284),
('2019-12-04', 678542014),
('2019-12-05', 527707988),
('2019-12-06', 527707988),
('2019-12-07', 527707988),
('2019-12-08', 923145901),
('2019-12-09', 922162369);

-- --------------------------------------------------------

--
-- Table structure for table `sopp`
--

CREATE TABLE `sopp` (
  `tanggal` date NOT NULL,
  `divre` varchar(10) NOT NULL,
  `kode_kopegtel` varchar(10) NOT NULL,
  `kopegtel` varchar(100) NOT NULL,
  `kode_loket` varchar(10) NOT NULL,
  `loket` varchar(100) NOT NULL,
  `trx` int(10) NOT NULL,
  `bill` int(10) NOT NULL,
  `amount` int(100) NOT NULL,
  `surcharge` int(100) NOT NULL,
  `fee_admin` int(100) NOT NULL,
  `total_kopeg` int(100) NOT NULL,
  `divre_bill` int(100) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sopp`
--

INSERT INTO `sopp` (`tanggal`, `divre`, `kode_kopegtel`, `kopegtel`, `kode_loket`, `loket`, `trx`, `bill`, `amount`, `surcharge`, `fee_admin`, `total_kopeg`, `divre_bill`, `user`) VALUES
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 1, 1, 45860, 0, 0, 45860, 2, 'lembong2'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 10, 10, 1887662, 30000, 5000, 1892662, 3, 'cicalengka1'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 7, 7, 3699747, 21000, 3500, 3703247, 3, 'ddl_cclengka'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 22, 22, 5882724, 66000, 11000, 5893724, 3, 'cijaura'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 22, 22, 3497305, 66000, 11000, 3508305, 3, 'cijaura2'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 46, 46, 13671734, 115000, 23000, 13694734, 3, 'cimahi2'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1098', 'D3_Geger Kalong', 16, 16, 5324224, 48000, 8000, 5332224, 3, 'gegerkalong1'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1109', 'D3_Jatinangor', 2, 2, 911620, 6000, 1000, 912620, 3, 'jatinangor'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 23, 23, 6201829, 69000, 11500, 6213329, 3, 'kopo1'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 36, 36, 8211395, 108000, 18000, 8229395, 3, 'kopo2'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1106', 'D3_Lembang', 12, 12, 2798339, 30000, 6000, 2804339, 3, 'lembang'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 46, 46, 7079968, 0, 0, 7079968, 3, 'lembong2'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 40, 40, 10920346, 0, 0, 10920346, 3, 'lembong3'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1099', 'D3_Padalarang', 19, 19, 7481982, 57000, 9500, 7491482, 3, 'padalarang1'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 2, 2, 732967, 6000, 1000, 733967, 3, 'rajawali1'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 3, 3, 558720, 9000, 1500, 560220, 3, 'rajawali2'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 9, 9, 1811094, 0, 0, 1811094, 3, 'setiabudi1'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 17, 17, 4529431, 0, 0, 4529431, 3, 'setiabudi2'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1107', 'D3_Soreang', 37, 37, 10506414, 111000, 18500, 10524914, 3, 'soreang'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 36, 36, 13388411, 108000, 18000, 13406411, 3, 'sumedang2'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 3, 3, 764398, 9000, 1500, 765898, 3, 'supratman2'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 7, 7, 1402760, 21000, 3500, 1406260, 3, 'supratman3'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 25, 25, 6855413, 75000, 12500, 6867913, 3, 'ujungberung2'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 4, 4, 465515, 12000, 2000, 467515, 3, 'windu1'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 4, 4, 161188, 12000, 2000, 163188, 3, 'windu2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 1, 1, 498368, 3000, 500, 498868, 2, 'rajawali1'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 1, 1, 509000, 0, 0, 509000, 2, 'setiabudi2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 1, 1, 343112, 3000, 500, 343612, 2, 'ujungberung2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 36, 36, 8595695, 108000, 18000, 8613695, 3, 'cicalengka1'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 17, 17, 7304059, 51000, 8500, 7312559, 3, 'ddl_cclengka'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 44, 44, 10136392, 132000, 22000, 10158392, 3, 'cijaura'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 42, 42, 10286159, 126000, 21000, 10307159, 3, 'cijaura2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 79, 79, 21120972, 197500, 39500, 21160472, 3, 'cimahi2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1098', 'D3_Geger Kalong', 16, 16, 5000547, 48000, 8000, 5008547, 3, 'gegerkalong1'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1109', 'D3_Jatinangor', 1, 1, 278000, 3000, 500, 278500, 3, 'jatinangor'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 38, 38, 13202608, 114000, 19000, 13221608, 3, 'kopo1'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 24, 24, 4145517, 72000, 12000, 4157517, 3, 'kopo2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1106', 'D3_Lembang', 43, 43, 14319287, 107500, 21500, 14340787, 3, 'lembang'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 84, 84, 20371721, 0, 0, 20371721, 3, 'lembong2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 89, 89, 21243648, 0, 0, 21243648, 3, 'lembong3'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1099', 'D3_Padalarang', 9, 9, 2455555, 27000, 4500, 2460055, 3, 'padalarang1'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 16, 16, 3778683, 48000, 8000, 3786683, 3, 'rajawali1'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 36, 36, 7970604, 108000, 18000, 7988604, 3, 'rajawali2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 34, 34, 11813728, 0, 0, 11813728, 3, 'setiabudi1'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 35, 35, 8611636, 0, 0, 8611636, 3, 'setiabudi2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1107', 'D3_Soreang', 40, 40, 11933233, 120000, 20000, 11953233, 3, 'soreang'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 45, 45, 12802301, 135000, 22500, 12824801, 3, 'sumedang2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 2, 2, 1007047, 6000, 1000, 1008047, 3, 'supratman2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 10, 10, 1364738, 30000, 5000, 1369738, 3, 'supratman3'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 102, 102, 35458171, 306000, 51000, 35509171, 3, 'ujungberung2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 10, 10, 1214290, 30000, 5000, 1219290, 3, 'windu1'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 11, 11, 2010634, 33000, 5500, 2016134, 3, 'windu2'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 1, 1, 42570, 0, 0, 42570, 4, 'lembong3');

-- --------------------------------------------------------

--
-- Table structure for table `status_tanggal`
--

CREATE TABLE `status_tanggal` (
  `tanggal` date NOT NULL,
  `status` enum('libur','masuk') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_tanggal`
--

INSERT INTO `status_tanggal` (`tanggal`, `status`) VALUES
('2016-08-01', 'masuk'),
('0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `titipan`
--

CREATE TABLE `titipan` (
  `tanggal` date NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `titipan` int(11) NOT NULL,
  `talangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titipan`
--

INSERT INTO `titipan` (`tanggal`, `tempat`, `titipan`, `talangan`) VALUES
('2019-12-03', 'BANJARAN', 0, 0),
('2019-12-03', 'BKR', 0, -10521820),
('2019-12-03', 'CICALENGKA', 6001393, 0),
('2019-12-03', 'CIJAURA', 15000121, 0),
('2019-12-03', 'CIMAHI', 11000044, 0),
('2019-12-03', 'JATINANGOR', 3975000, 0),
('2019-12-03', 'KOPO', 13000185, 0),
('2019-12-03', 'LEMBANG', 495, 0),
('2019-12-03', 'LEMBONG', 28246772, 0),
('2019-12-03', 'MAJALAYA', 0, -7080),
('2019-12-03', 'PADALARANG', 0, 0),
('2019-12-03', 'PLASA RANCAEKEK', 0, -447268),
('2019-12-03', 'RAJAWALI', 121, 0),
('2019-12-03', 'SETIABUDI', 0, 0),
('2019-12-03', 'SOREANG', 8535345, 0),
('2019-12-03', 'SUMEDANG', 25000165, 0),
('2019-12-03', 'SUPRATMAN', 20082, 0),
('2019-12-03', 'UJUNG BERUNG', 1750083, 0),
('2019-12-03', 'WINDU', 0, -254079),
('2019-12-05', 'BANJARAN', 0, 0),
('2019-12-05', 'BKR', 0, -10521820),
('2019-12-05', 'CICALENGKA', 890825, 0),
('2019-12-05', 'CIJAURA', 80000367, 0),
('2019-12-05', 'CIMAHI', 33150044, 0),
('2019-12-05', 'JATINANGOR', 3974708, 0),
('2019-12-05', 'KOPO', 45000189, 0),
('2019-12-05', 'LEMBANG', 20001359, 0),
('2019-12-05', 'LEMBONG', 141746870, 0),
('2019-12-05', 'MAJALAYA', 16993547, 0),
('2019-12-05', 'PADALARANG', 10, 0),
('2019-12-05', 'PLASA RANCAEKEK', 0, -447268),
('2019-12-05', 'RAJAWALI', 244, 0),
('2019-12-05', 'SETIABUDI', 45000000, 0),
('2019-12-05', 'SOREANG', 0, -3512974),
('2019-12-05', 'SUMEDANG', 40000178, 0),
('2019-12-05', 'SUPRATMAN', 20186, 0),
('2019-12-05', 'UJUNG BERUNG', 13650209, 0),
('2019-12-05', 'WINDU', 41746015, 0),
('2019-12-06', 'BANJARAN', 0, 0),
('2019-12-06', 'BKR', 0, -10521820),
('2019-12-06', 'CICALENGKA', 7003489, 0),
('2019-12-06', 'CIJAURA', 47000504, 0),
('2019-12-06', 'CIMAHI', 42000044, 0),
('2019-12-06', 'JATINANGOR', 3974708, 0),
('2019-12-06', 'KOPO', 36000190, 0),
('2019-12-06', 'LEMBANG', 20001488, 0),
('2019-12-06', 'LEMBONG', 108746894, 0),
('2019-12-06', 'MAJALAYA', 7993587, 0),
('2019-12-06', 'PADALARANG', 738700, 0),
('2019-12-06', 'PLASA RANCAEKEK', 0, -447268),
('2019-12-06', 'RAJAWALI', 342, 0),
('2019-12-06', 'SETIABUDI', 20000000, 0),
('2019-12-06', 'SOREANG', 0, -1692454),
('2019-12-06', 'SUMEDANG', 15000214, 0),
('2019-12-06', 'SUPRATMAN', 20289, 0),
('2019-12-06', 'UJUNG BERUNG', 4750297, 0),
('2019-12-06', 'WINDU', 11746059, 0),
('2019-12-07', 'BANJARAN', 0, 0),
('2019-12-07', 'BKR', 0, -10521820),
('2019-12-07', 'CICALENGKA', 0, -3768008),
('2019-12-07', 'CIJAURA', 0, -35668962),
('2019-12-07', 'CIMAHI', 0, -10342232),
('2019-12-07', 'JATINANGOR', 1264822, 0),
('2019-12-07', 'KOPO', 0, -19190944),
('2019-12-07', 'LEMBANG', 0, -15510420),
('2019-12-07', 'LEMBONG', 0, -61199312),
('2019-12-07', 'MAJALAYA', 0, -5118576),
('2019-12-07', 'PADALARANG', 0, -9498903),
('2019-12-07', 'PLASA RANCAEKEK', 0, -5783538),
('2019-12-07', 'RAJAWALI', 0, -60021461),
('2019-12-07', 'SETIABUDI', 0, -14135525),
('2019-12-07', 'SOREANG', 0, -15282189),
('2019-12-07', 'SUMEDANG', 0, -9512981),
('2019-12-07', 'SUPRATMAN', 0, -27467404),
('2019-12-07', 'UJUNG BERUNG', 0, -32546296),
('2019-12-07', 'WINDU', 0, -19261599),
('2019-12-08', 'BANJARAN', 0, 0),
('2019-12-08', 'BKR', 0, -10521820),
('2019-12-08', 'CICALENGKA', 0, -3768008),
('2019-12-08', 'CIJAURA', 0, -48846657),
('2019-12-08', 'CIMAHI', 0, -15292695),
('2019-12-08', 'JATINANGOR', 615893, 0),
('2019-12-08', 'KOPO', 0, -40787717),
('2019-12-08', 'LEMBANG', 0, -19681820),
('2019-12-08', 'LEMBONG', 0, -122134893),
('2019-12-08', 'MAJALAYA', 0, -5118576),
('2019-12-08', 'PADALARANG', 0, -9498903),
('2019-12-08', 'PLASA RANCAEKEK', 0, -5783538),
('2019-12-08', 'RAJAWALI', 0, -79669812),
('2019-12-08', 'SETIABUDI', 0, -14135525),
('2019-12-08', 'SOREANG', 0, -15282189),
('2019-12-08', 'SUMEDANG', 0, -14406791),
('2019-12-08', 'SUPRATMAN', 0, -69132140),
('2019-12-08', 'UJUNG BERUNG', 0, -40217371),
('2019-12-08', 'WINDU', 0, -24654882),
('2019-12-09', 'BANJARAN', 0, 0),
('2019-12-09', 'BKR', 0, -10521820),
('2019-12-09', 'CICALENGKA', 29003492, 0),
('2019-12-09', 'CIJAURA', 100000643, 0),
('2019-12-09', 'CIMAHI', 50000044, 0),
('2019-12-09', 'JATINANGOR', 3974708, 0),
('2019-12-09', 'KOPO', 49000283, 0),
('2019-12-09', 'LEMBANG', 20001680, 0),
('2019-12-09', 'LEMBONG', 175747007, 0),
('2019-12-09', 'MAJALAYA', 43993424, 0),
('2019-12-09', 'PADALARANG', 0, -162403),
('2019-12-09', 'PLASA RANCAEKEK', 0, -7268),
('2019-12-09', 'RAJAWALI', 388, 0),
('2019-12-09', 'SETIABUDI', 55000000, 0),
('2019-12-09', 'SOREANG', 36535345, 0),
('2019-12-09', 'SUMEDANG', 70000209, 0),
('2019-12-09', 'SUPRATMAN', 20396, 0),
('2019-12-09', 'UJUNG BERUNG', 30600329, 0),
('2019-12-09', 'WINDU', 49746118, 0),
('2019-12-10', 'BANJARAN', 0, 0),
('2019-12-10', 'BKR', 0, -10521820),
('2019-12-10', 'CICALENGKA', 22003504, 0),
('2019-12-10', 'CIJAURA', 50000611, 0),
('2019-12-10', 'CIMAHI', 28000044, 0),
('2019-12-10', 'JATINANGOR', 3974708, 0),
('2019-12-10', 'KOPO', 199000393, 0),
('2019-12-10', 'LEMBANG', 1698, 0),
('2019-12-10', 'LEMBONG', 233747179, 0),
('2019-12-10', 'MAJALAYA', 11993608, 0),
('2019-12-10', 'PADALARANG', 0, -162374),
('2019-12-10', 'PLASA RANCAEKEK', 0, -7268),
('2019-12-10', 'RAJAWALI', 410, 0),
('2019-12-10', 'SETIABUDI', 60000000, 0),
('2019-12-10', 'SOREANG', 22035345, 0),
('2019-12-10', 'SUMEDANG', 38000242, 0),
('2019-12-10', 'SUPRATMAN', 20442, 0),
('2019-12-10', 'UJUNG BERUNG', 9550324, 0),
('2019-12-10', 'WINDU', 28746139, 0),
('2019-12-04', 'BANJARAN', 0, 0),
('2019-12-04', 'BKR', 0, -11),
('2019-12-04', 'CICALENGKA', 2000010, 0),
('2019-12-04', 'CIJAURA', 25000122, 0),
('2019-12-04', 'CIMAHI', 7350011, 0),
('2019-12-04', 'JATINANGOR', 4, 0),
('2019-12-04', 'KOPO', 66000030, 0),
('2019-12-04', 'LEMBANG', 25000966, 0),
('2019-12-04', 'LEMBONG', 49500067, 0),
('2019-12-04', 'MAJALAYA', 12000251, 0),
('2019-12-04', 'PADALARANG', 3, 0),
('2019-12-04', 'PLASA RANCAEKEK', 0, -447),
('2019-12-04', 'RAJAWALI', 170, 0),
('2019-12-04', 'SETIABUDI', 20000000, 0),
('2019-12-04', 'SOREANG', 9000009, 0),
('2019-12-04', 'SUMEDANG', 0, -3999977),
('2019-12-04', 'SUPRATMAN', 32, 0),
('2019-12-04', 'UJUNG BERUNG', 3350061, 0),
('2019-12-04', 'WINDU', 4999791, 0);

-- --------------------------------------------------------

--
-- Table structure for table `titipan2`
--

CREATE TABLE `titipan2` (
  `tanggal` date DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titipan2`
--

INSERT INTO `titipan2` (`tanggal`, `nominal`) VALUES
('2019-12-03', 131000000),
('2019-12-05', 132000000),
('2019-12-06', 133000000),
('2019-12-07', 134000000),
('2019-12-08', 134000000),
('2019-12-09', 134000000),
('2019-12-10', 135000000),
('2019-12-04', 131000000);

-- --------------------------------------------------------

--
-- Table structure for table `total_trx`
--

CREATE TABLE `total_trx` (
  `tanggal` date NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_trx`
--

INSERT INTO `total_trx` (`tanggal`, `tempat`, `total`) VALUES
('2019-12-03', 'CIJAURA 1', 12480371),
('2019-12-03', 'CIJAURA 2', 11207222),
('2019-12-03', 'CIMAHI 1', 0),
('2019-12-03', 'CIMAHI 2', 18113927),
('2019-12-03', 'KOPO 1', 7101010),
('2019-12-03', 'KOPO 2', 16503973),
('2019-12-03', 'LEMBONG 2', 27303860),
('2019-12-03', 'LEMBONG 3', 20615101),
('2019-12-03', 'RAJAWALI 1', 1769786),
('2019-12-03', 'RAJAWALI 2', 1694265),
('2019-12-03', 'RAJAWALI 3', 0),
('2019-12-03', 'SETIABUDI 1', 3754523),
('2019-12-03', 'SETIABUDI 2', 7802111),
('2019-12-03', 'SUPRATMAN 2', 2042988),
('2019-12-03', 'SUPRATMAN 3', 4269402),
('2019-12-03', 'WINDU 1', 2841743),
('2019-12-03', 'WINDU 2', 2657412),
('2019-12-03', 'BANJARAN', 0),
('2019-12-03', 'BKR', 0),
('2019-12-03', 'CICALENGKA', 9107996),
('2019-12-03', 'CIJAURA', 23687593),
('2019-12-03', 'CIMAHI', 18113927),
('2019-12-03', 'JATINANGOR', 1190296),
('2019-12-03', 'KOPO', 23604983),
('2019-12-03', 'LEMBANG', 15758529),
('2019-12-03', 'LEMBONG', 47918961),
('2019-12-03', 'MAJALAYA', 2835242),
('2019-12-03', 'PADALARANG', 7866497),
('2019-12-03', 'PLASA RANCAEKEK', 5598718),
('2019-12-03', 'RAJAWALI', 3464051),
('2019-12-03', 'SETIABUDI', 11556634),
('2019-12-03', 'SOREANG', 12011584),
('2019-12-03', 'SUMEDANG', 32480602),
('2019-12-03', 'SUPRATMAN', 6312390),
('2019-12-03', 'UJUNG BERUNG', 8642641),
('2019-12-03', 'WINDU', 5499155),
('2019-12-04', 'CIJAURA 1', 19382344),
('2019-12-04', 'CIJAURA 2', 33567417),
('2019-12-04', 'CIMAHI 1', 0),
('2019-12-04', 'CIMAHI 2', 29744850),
('2019-12-04', 'KOPO 1', 15525498),
('2019-12-04', 'KOPO 2', 78936015),
('2019-12-04', 'LEMBONG 2', 60542949),
('2019-12-04', 'LEMBONG 3', 38780392),
('2019-12-04', 'RAJAWALI 1', 8759272),
('2019-12-04', 'RAJAWALI 2', 23232754),
('2019-12-04', 'RAJAWALI 3', 0),
('2019-12-04', 'SETIABUDI 1', 15807103),
('2019-12-04', 'SETIABUDI 2', 19795346),
('2019-12-04', 'SUPRATMAN 2', 1743708),
('2019-12-04', 'SUPRATMAN 3', 4302139),
('2019-12-04', 'WINDU 1', 7442294),
('2019-12-04', 'WINDU 2', 7913257),
('2019-12-04', 'BANJARAN', 0),
('2019-12-04', 'BKR', 0),
('2019-12-04', 'CICALENGKA', 11943772),
('2019-12-04', 'CIJAURA', 52949761),
('2019-12-04', 'CIMAHI', 29744850),
('2019-12-04', 'JATINANGOR', 635292),
('2019-12-04', 'KOPO', 94461513),
('2019-12-04', 'LEMBANG', 64571607),
('2019-12-04', 'LEMBONG', 99323341),
('2019-12-04', 'MAJALAYA', 15569631),
('2019-12-04', 'PADALARANG', 5653293),
('2019-12-04', 'PLASA RANCAEKEK', 10678420),
('2019-12-04', 'RAJAWALI', 31992026),
('2019-12-04', 'SETIABUDI', 35602449),
('2019-12-04', 'SOREANG', 21048319),
('2019-12-04', 'SUMEDANG', 28044385),
('2019-12-04', 'SUPRATMAN', 6045847),
('2019-12-04', 'UJUNG BERUNG', 43547033),
('2019-12-04', 'WINDU', 15355551),
('2019-12-05', 'CIJAURA 1', 46153827),
('2019-12-05', 'CIJAURA 2', 43598636),
('2019-12-05', 'CIMAHI 1', 0),
('2019-12-05', 'CIMAHI 2', 40533869),
('2019-12-05', 'KOPO 1', 24312034),
('2019-12-05', 'KOPO 2', 33213465),
('2019-12-05', 'LEMBONG 2', 83073976),
('2019-12-05', 'LEMBONG 3', 105224000),
('2019-12-05', 'RAJAWALI 1', 26601211),
('2019-12-05', 'RAJAWALI 2', 42513591),
('2019-12-05', 'RAJAWALI 3', 0),
('2019-12-05', 'SETIABUDI 1', 28494867),
('2019-12-05', 'SETIABUDI 2', 32869620),
('2019-12-05', 'SUPRATMAN 2', 16384597),
('2019-12-05', 'SUPRATMAN 3', 46046078),
('2019-12-05', 'WINDU 1', 46362620),
('2019-12-05', 'WINDU 2', 26165936),
('2019-12-05', 'BANJARAN', 0),
('2019-12-05', 'BKR', 0),
('2019-12-05', 'CICALENGKA', 4770691),
('2019-12-05', 'CIJAURA', 89752463),
('2019-12-05', 'CIMAHI', 40533869),
('2019-12-05', 'JATINANGOR', 2755560),
('2019-12-05', 'KOPO', 57525499),
('2019-12-05', 'LEMBANG', 28775871),
('2019-12-05', 'LEMBONG', 188297976),
('2019-12-05', 'MAJALAYA', 21662460),
('2019-12-05', 'PADALARANG', 7343265),
('2019-12-05', 'PLASA RANCAEKEK', 11265089),
('2019-12-05', 'RAJAWALI', 69114802),
('2019-12-05', 'SETIABUDI', 61364487),
('2019-12-05', 'SOREANG', 15824281),
('2019-12-05', 'SUMEDANG', 47617464),
('2019-12-05', 'SUPRATMAN', 62430675),
('2019-12-05', 'UJUNG BERUNG', 29507112),
('2019-12-05', 'WINDU', 72528556),
('2019-12-06', 'BANJARAN', 0),
('2019-12-06', 'BKR', 0),
('2019-12-06', 'CICALENGKA', 10771497),
('2019-12-06', 'CIJAURA', 82669466),
('2019-12-06', 'CIMAHI', 52342276),
('2019-12-06', 'JATINANGOR', 2709886),
('2019-12-06', 'KOPO', 55191134),
('2019-12-06', 'LEMBANG', 35511908),
('2019-12-06', 'LEMBONG', 169946206),
('2019-12-06', 'MAJALAYA', 13112163),
('2019-12-06', 'PADALARANG', 10237603),
('2019-12-06', 'PLASA RANCAEKEK', 5336270),
('2019-12-06', 'RAJAWALI', 60021803),
('2019-12-06', 'SETIABUDI', 34135525),
('2019-12-06', 'SOREANG', 13589735),
('2019-12-06', 'SUMEDANG', 24513195),
('2019-12-06', 'SUPRATMAN', 27487693),
('2019-12-06', 'UJUNG BERUNG', 37296593),
('2019-12-06', 'WINDU', 31007658),
('2019-12-07', 'BANJARAN', 0),
('2019-12-07', 'BKR', 0),
('2019-12-07', 'CICALENGKA', 0),
('2019-12-07', 'CIJAURA', 13177695),
('2019-12-07', 'CIMAHI', 4950463),
('2019-12-07', 'JATINANGOR', 648929),
('2019-12-07', 'KOPO', 21596773),
('2019-12-07', 'LEMBANG', 4171400),
('2019-12-07', 'LEMBONG', 60935581),
('2019-12-07', 'MAJALAYA', 0),
('2019-12-07', 'PADALARANG', 0),
('2019-12-07', 'PLASA RANCAEKEK', 0),
('2019-12-07', 'RAJAWALI', 19648351),
('2019-12-07', 'SETIABUDI', 0),
('2019-12-07', 'SOREANG', 0),
('2019-12-07', 'SUMEDANG', 4893810),
('2019-12-07', 'SUPRATMAN', 41664736),
('2019-12-07', 'UJUNG BERUNG', 7671075),
('2019-12-07', 'WINDU', 5393283),
('2019-12-08', 'BANJARAN', 0),
('2019-12-08', 'BKR', 0),
('2019-12-08', 'CICALENGKA', 0),
('2019-12-08', 'CIJAURA', 0),
('2019-12-08', 'CIMAHI', 0),
('2019-12-08', 'JATINANGOR', 748991),
('2019-12-08', 'KOPO', 0),
('2019-12-08', 'LEMBANG', 0),
('2019-12-08', 'LEMBONG', 0),
('2019-12-08', 'MAJALAYA', 0),
('2019-12-08', 'PADALARANG', 0),
('2019-12-08', 'PLASA RANCAEKEK', 0),
('2019-12-08', 'RAJAWALI', 0),
('2019-12-08', 'SETIABUDI', 0),
('2019-12-08', 'SOREANG', 0),
('2019-12-08', 'SUMEDANG', 0),
('2019-12-08', 'SUPRATMAN', 0),
('2019-12-08', 'UJUNG BERUNG', 0),
('2019-12-08', 'WINDU', 0),
('2019-12-09', 'CIJAURA 1', 52510397),
('2019-12-09', 'CIJAURA 2', 60688035),
('2019-12-09', 'CIMAHI 1', 0),
('2019-12-09', 'CIMAHI 2', 64615172),
('2019-12-09', 'KOPO 1', 20451426),
('2019-12-09', 'KOPO 2', 45186564),
('2019-12-09', 'LEMBONG 2', 111133020),
('2019-12-09', 'LEMBONG 3', 135305708),
('2019-12-09', 'RAJAWALI 1', 33540357),
('2019-12-09', 'RAJAWALI 2', 36991021),
('2019-12-09', 'RAJAWALI 3', 0),
('2019-12-09', 'SETIABUDI 1', 39442215),
('2019-12-09', 'SETIABUDI 2', 39928080),
('2019-12-09', 'SUPRATMAN 2', 29126954),
('2019-12-09', 'SUPRATMAN 3', 17849716),
('2019-12-09', 'WINDU 1', 36462720),
('2019-12-09', 'WINDU 2', 54928259),
('2019-12-09', 'BANJARAN', 0),
('2019-12-09', 'BKR', 0),
('2019-12-09', 'CICALENGKA', 32473488),
('2019-12-09', 'CIJAURA', 113198432),
('2019-12-09', 'CIMAHI', 64615172),
('2019-12-09', 'JATINANGOR', 4346891),
('2019-12-09', 'KOPO', 65637990),
('2019-12-09', 'LEMBANG', 104405582),
('2019-12-09', 'LEMBONG', 246438728),
('2019-12-09', 'MAJALAYA', 48715816),
('2019-12-09', 'PADALARANG', 17242171),
('2019-12-09', 'PLASA RANCAEKEK', 40039169),
('2019-12-09', 'RAJAWALI', 70531378),
('2019-12-09', 'SETIABUDI', 79370295),
('2019-12-09', 'SOREANG', 40738827),
('2019-12-09', 'SUMEDANG', 85180667),
('2019-12-09', 'SUPRATMAN', 46976670),
('2019-12-09', 'UJUNG BERUNG', 51760805),
('2019-12-09', 'WINDU', 91390979);

-- --------------------------------------------------------

--
-- Table structure for table `transvision`
--

CREATE TABLE `transvision` (
  `tanggal` date DEFAULT NULL,
  `divre` varchar(20) DEFAULT NULL,
  `kode_kopeg` varchar(20) DEFAULT NULL,
  `nama_kopeg` varchar(20) DEFAULT NULL,
  `kode_loket` varchar(20) DEFAULT NULL,
  `loket` varchar(20) DEFAULT NULL,
  `nama_biller` varchar(20) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  `customer` varchar(20) DEFAULT NULL,
  `tagihan` int(11) DEFAULT NULL,
  `surcharge` int(11) DEFAULT NULL,
  `fee_ca` int(11) DEFAULT NULL,
  `fee_finnet` int(11) DEFAULT NULL,
  `kewajiban` int(11) DEFAULT NULL,
  `kode_biller` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transvision`
--

INSERT INTO `transvision` (`tanggal`, `divre`, `kode_kopeg`, `nama_kopeg`, `kode_loket`, `loket`, `nama_biller`, `account`, `customer`, `tagihan`, `surcharge`, `fee_ca`, `fee_finnet`, `kewajiban`, `kode_biller`) VALUES
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810132742', 'H YAYAN SUBARNA', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810081650', 'ASEP SUTISNA', 101500, 2500, 2000, 500, 102000, '20'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810102222', 'RHINO NUGROHO', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura2', 'TRANSVISION P2H', '127810014958', 'INDRA PERMANA', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810109108', 'NANA KAMANA', 101500, 3000, 2000, 500, 102000, '20'),
('2019-12-05', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810048906', 'MIA MUTIYA RAHMAN', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-06', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810166468', 'EDI GUNAWAN', 221500, 2500, 2000, 500, 222000, '20'),
('2019-12-06', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali2', 'TRANSVISION P2H', '127810055635', 'BAMBANG HARTONO', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-06', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura2', 'TRANSVISION P2H', '127810088479', 'IRWAN MOCH SANTOSA', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-06', '03', '695', 'D3_Kop Dadali BDG', '1097', 'cimahi2', 'TRANSVISION P2H', '127810067678', 'HERWANTO', 221500, 2500, 2000, 500, 222000, '20'),
('2019-12-09', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali1', 'TRANSVISION P2H', '127810048004', 'SRI AGUSTIANI IRIANT', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-09', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810012570', 'ACHMAD FARIED', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-09', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810036730', 'LAMBERT FSILOOY', 324500, 2500, 2000, 500, 325000, '20'),
('2019-12-09', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810067809', 'LAMBERT F SILOOY', 404500, 2500, 2000, 500, 405000, '20'),
('2019-12-09', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810227986', 'H MASKON A DRG', 101500, 3000, 2000, 500, 102000, '20'),
('2019-12-09', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810132407', 'H DEDDY SUYUD HAMDAN', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-09', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810070187', 'FIRDA', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-09', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810104030', 'HENDRA SUMITO', 404500, 3000, 2000, 500, 405000, '20'),
('2019-12-09', '03', '695', 'D3_Kop Dadali BDG', '1099', 'padalarang1', 'TRANSVISION P2H', '127810065861', 'YULIANA', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810132742', 'H YAYAN SUBARNA', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-03', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810132742', 'H YAYAN SUBARNA', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810081650', 'ASEP SUTISNA', 101500, 2500, 2000, 500, 102000, '20'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810102222', 'RHINO NUGROHO', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura2', 'TRANSVISION P2H', '127810014958', 'INDRA PERMANA', 221500, 3000, 2000, 500, 222000, '20'),
('2019-12-04', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810109108', 'NANA KAMANA', 101500, 3000, 2000, 500, 102000, '20');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `tanggal` date NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`tanggal`, `nama`, `pen`) VALUES
('0000-00-00', 'MKMSettleLoket_03122019_D3_KopDadaliBDG(2).xlsx', 'PLN'),
('2019-12-03', 'SettlePAYTVDet_03_20(695)03-12-2019_03-12-2019.xls', 'TRANSVISION'),
('2019-12-03', 'SettleP2HSUM_03-12-2019.xlsx', 'JASTEL'),
('2019-12-03', 'Arindo 3 Des 2019.xlsx', 'ARINDO'),
('0000-00-00', 'MKMSettleLoket_04122019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-12-04', 'SettlePDAMPPOBDet(695)04-12-2019_04-12-2019.xlsx', 'PDAM'),
('2019-12-04', 'SettleTselDet_03_50000(695)04-12-2019_04-12-2019.x', 'VOUCHER'),
('2019-12-04', 'SettlePAYTVDet_03_20(695)04-12-2019_04-12-2019.xls', 'TRANSVISION'),
('2019-12-04', 'Arindo 4 Des 2019.xlsx', 'ARINDO'),
('2019-12-04', 'SettleTselDet_03_25000(695)04-12-2019_04-12-2019.x', 'VOUCHER'),
('2019-12-04', 'SettleTselDet_03_100000(695)04-12-2019_04-12-2019.', 'VOUCHER'),
('2019-12-04', 'SettleTselDet_03_0(695)04-12-2019_04-12-2019.xlsx', 'VOUCHER'),
('2019-12-04', 'SettlePAYTVDet_03_55(695)04-12-2019_04-12-2019.xls', 'INDOVISION'),
('2019-12-04', 'SettleP2HSUM_04-12-2019.xlsx', 'JASTEL'),
('0000-00-00', 'MKMSettleLoket_05122019_D3_KopDadaliBDG(2).xlsx', 'PLN'),
('2019-12-05', 'SettleTselDet_03_50000(695)05-12-2019_05-12-2019.x', 'VOUCHER'),
('2019-12-05', 'SettleTselDet_03_100000(695)05-12-2019_05-12-2019.', 'VOUCHER'),
('2019-12-05', 'SettlePAYTVDet_03_20(695)05-12-2019_05-12-2019.xls', 'TRANSVISION'),
('2019-12-05', 'SettleTselDet_03_20000(695)05-12-2019_05-12-2019.x', 'VOUCHER'),
('2019-12-05', 'SettlePAYTVDet_03_55(695)05-12-2019_05-12-2019.xls', 'INDOVISION'),
('2019-12-05', 'Arindo 5 Des 2019.xlsx', 'ARINDO'),
('2019-12-05', 'SettleTselDet_03_0(695)05-12-2019_05-12-2019.xlsx', 'VOUCHER'),
('2019-12-05', 'SettleP2HSUM_05-12-2019.xlsx', 'JASTEL'),
('2019-12-05', 'SettleTselDet_03_25000(695)05-12-2019_05-12-2019.x', 'VOUCHER'),
('2019-12-05', 'MKMSettleLoket_05122019_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2019-12-05', 'SettlePDAMPPOBDet(695)05-12-2019_05-12-2019.xlsx', 'PDAM'),
('0000-00-00', 'SettleTselDet_03_100000(695)06-12-2019_06-12-2019.', 'VOUCHER'),
('2019-12-06', 'SettleTselDet_03_0(695)06-12-2019_06-12-2019.xlsx', 'VOUCHER'),
('2019-12-06', 'Arindo 6 Des 2019.xlsx', 'ARINDO'),
('2019-12-06', 'SettlePDAMPPOBDet(695)06-12-2019_06-12-2019.xlsx', 'PDAM'),
('2019-12-06', 'SettleTselDet_03_20000(695)06-12-2019_06-12-2019.x', 'VOUCHER'),
('2019-12-06', 'MKMSettleLoket_06122019_D3_KopDadaliBDG(2).xlsx', 'PLN'),
('2019-12-06', 'SettlePAYTVDet_03_20(695)06-12-2019_06-12-2019.xls', 'TRANSVISION'),
('2019-12-06', 'SettleP2HSUM_06-12-2019.xlsx', 'JASTEL'),
('2019-12-06', 'SettleTselDet_03_25000(695)06-12-2019_06-12-2019.x', 'VOUCHER'),
('2019-12-06', 'MKMSettleLoket_06122019_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2019-12-06', 'SettleTselDet_03_50000(695)06-12-2019_06-12-2019.x', 'VOUCHER'),
('0000-00-00', 'SettleP2HSUM_07-12-2019.xlsx', 'JASTEL'),
('2019-12-07', 'Arindo 7 Des 2019.xlsx', 'ARINDO'),
('2019-12-07', 'SettleTselDet_03_20000(695)07-12-2019_07-12-2019.x', 'VOUCHER'),
('2019-12-07', 'SettlePDAMPPOBDet(695)07-12-2019_07-12-2019.xlsx', 'PDAM'),
('2019-12-07', 'MKMSettleLoket_07122019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-12-07', 'SettleTselDet_03_50000(695)07-12-2019_07-12-2019.x', 'VOUCHER'),
('2019-12-07', 'SettleTselDet_03_0(695)07-12-2019_07-12-2019.xlsx', 'VOUCHER'),
('0000-00-00', 'SettleTselDet_03_20000(695)08-12-2019_08-12-2019.x', 'VOUCHER'),
('2019-12-08', 'SettleP2HSUM_08-12-2019.xlsx', 'JASTEL'),
('0000-00-00', 'SettlePAYTVDet_03_20(695)09-12-2019_09-12-2019.xls', 'TRANSVISION'),
('2019-12-09', 'SettleP2HSUM_09-12-2019.xlsx', 'JASTEL'),
('2019-12-09', 'Arindo 9 Des 2019.xlsx', 'ARINDO'),
('2019-12-09', 'MKMSettleLoket_09122019_D3_KopDadaliBDG.xlsx', 'PLN'),
('0000-00-00', 'SettlePDAMPPOBDet(695)09-12-2019_09-12-2019.xlsx', 'PDAM'),
('0000-00-00', 'SettleTselDet_03_0(695)09-12-2019_09-12-2019.xlsx', 'VOUCHER'),
('2019-12-09', 'SettleTselDet_03_20000(695)09-12-2019_09-12-2019.x', 'VOUCHER'),
('2019-12-09', 'SettleTselDet_03_25000(695)09-12-2019_09-12-2019.x', 'VOUCHER'),
('2019-12-09', 'SettleTselDet_03_50000(695)09-12-2019_09-12-2019.x', 'VOUCHER'),
('2019-12-09', 'SettleTselDet_03_100000(695)09-12-2019_09-12-2019.', 'VOUCHER'),
('0000-00-00', 'MKMSettleLoket_03122019_D3_KopDadaliBDG(2).xlsx', 'PLN'),
('2019-12-03', 'SettlePAYTVDet_03_20(695)03-12-2019_03-12-2019.xls', 'TRANSVISION'),
('2019-12-03', 'SettleP2HSUM_03-12-2019.xlsx', 'JASTEL'),
('2019-12-03', 'Arindo 3 Des 2019.xlsx', 'ARINDO'),
('0000-00-00', 'Arindo 3 Des 2019.xlsx', 'ARINDO'),
('2019-12-03', 'MKMSettleLoket_03122019_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2019-12-03', 'MKMSettleLoket_03122019_D3_KopDadaliBDG(2).xlsx', 'PLN'),
('2019-12-03', 'SettleP2HSUM_03-12-2019.xlsx', 'JASTEL'),
('2019-12-03', 'SettlePAYTVDet_03_20(695)03-12-2019_03-12-2019.xls', 'TRANSVISION'),
('2019-12-03', 'SettlePDAMPPOBDet(695)03-12-2019_03-12-2019.xlsx', 'PDAM'),
('2019-12-03', 'SettleTselDet_03_0(695)03-12-2019_03-12-2019.xlsx', 'VOUCHER'),
('2019-12-03', 'SettleTselDet_03_100000(695)03-12-2019_03-12-2019.', 'VOUCHER'),
('2019-12-03', 'SettleTselDet_03_20000(695)03-12-2019_03-12-2019.x', 'VOUCHER'),
('2019-12-03', 'SettleTselDet_03_25000(695)03-12-2019_03-12-2019.x', 'VOUCHER'),
('2019-12-03', 'SettleTselDet_03_50000(695)03-12-2019_03-12-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 4 Des 2019.xlsx', 'ARINDO'),
('2019-12-04', 'MKMSettleLoket_04122019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-12-04', 'SettleP2HSUM_04-12-2019.xlsx', 'JASTEL'),
('2019-12-04', 'SettlePAYTVDet_03_20(695)04-12-2019_04-12-2019.xls', 'TRANSVISION'),
('2019-12-04', 'SettlePAYTVDet_03_55(695)04-12-2019_04-12-2019.xls', 'INDOVISION'),
('2019-12-04', 'SettlePDAMPPOBDet(695)04-12-2019_04-12-2019.xlsx', 'PDAM'),
('2019-12-04', 'SettleTselDet_03_0(695)04-12-2019_04-12-2019.xlsx', 'VOUCHER'),
('2019-12-04', 'SettleTselDet_03_100000(695)04-12-2019_04-12-2019.', 'VOUCHER'),
('2019-12-04', 'SettleTselDet_03_25000(695)04-12-2019_04-12-2019.x', 'VOUCHER'),
('2019-12-04', 'SettleTselDet_03_50000(695)04-12-2019_04-12-2019.x', 'VOUCHER');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tipe_user` enum('admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `tipe_user`) VALUES
(1, 'tantan', 'ED SNOWDEN', '2b3235efc1ec93e3437fdaa7a11ba212', 'admin'),
(2, 'admin', 'ADMIN APPS', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `divre` int(255) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_kopegtel` varchar(255) NOT NULL,
  `kopegtel` varchar(255) NOT NULL,
  `kode_loket` varchar(255) NOT NULL,
  `loket` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `denom` int(11) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `nama_cust` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `surcharge` int(11) NOT NULL,
  `fee_ca` int(11) NOT NULL,
  `total_kopeg` int(11) NOT NULL,
  `kode_biller` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`divre`, `tanggal`, `kode_kopegtel`, `kopegtel`, `kode_loket`, `loket`, `user`, `denom`, `no_telp`, `nama_cust`, `amount`, `surcharge`, `fee_ca`, `total_kopeg`, `kode_biller`) VALUES
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 'cimahi2', 0, '08122001161', 'SUMXXXXXXXXXXXXXXXXXINI', 101508, 0, 1500, 100008, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 'cimahi2', 0, '08112210577', 'MUHXXXXXXXXXIEF', 99638, 0, 1500, 98138, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '081321573999', 'DRSXXXXDIH', 165000, 0, 1500, 163500, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '08122158380', 'HANXXXXXXXXANG', 75438, 0, 1500, 73938, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1107', 'D3_Soreang', 'soreang', 0, '08112104300', 'EUIXXXXXXXXXXRUM', 77000, 0, 1500, 75500, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08122386657', 'ATIXXXXXXXXATI', 178354, 0, 1500, 176854, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1099', 'D3_Padalarang', 'padalarang1', 0, '08122044038', 'R XXXXXXXXXX SH', 224765, 0, 1500, 223265, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo2', 0, '08122306039', 'TJEXXXXXXXXJAY', 38500, 0, 1500, 37000, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo2', 0, '08122301899', 'YUSXXXXXXTJI', 1059484, 0, 1500, 1057984, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '082126231064', 'KOMXXXXXXXXXXXXXXXXXX W', 760798, 0, 1500, 759298, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 'ddl_cclengka', 0, '081222593651', 'RUSXXXXI', 1459756, 0, 1500, 1458256, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '081320308952', 'BAMXX', 72732, 0, 1500, 71232, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '081320261071', 'RITXXXXXXXXXXXXGDO', 143413, 0, 1500, 141913, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo1', 0, '082118144218', 'RONXXXXXXXXXX', 181731, 0, 1500, 180231, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '081313142560', 'IMAXXXXXXINI', 121154, 0, 1500, 119654, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '082123744739', 'ASTXXXXXXXXXXXYAH', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '085102128779', 'JOKXXXXXXONO', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08112224110', 'HERXXXXXXXXXRYA', 66000, 0, 1500, 64500, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 0, '08112039090', 'ANIXXXXXXAYU', 238029, 0, 1500, 236529, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 0, '08112299090', 'AHMXXXXXXNEN', 238574, 0, 1500, 237074, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '082121777911', 'ARIXXXXXXNDI', 180518, 0, 1500, 179018, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '082121557775', 'ARIXXXXXXNDI', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 0, '085222922512', 'KARXXXXXXXXXXXXXXXXXXXYAH', 72864, 0, 1500, 71364, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '085100187767', 'TAOXXXXXXXXXYAT', 146817, 0, 1500, 145317, 1001),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura', 100000, '081321165171', 'SN 0051004110643852', 99000, 0, 1600, 97400, 1002),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman2', 20000, '082126032521', 'SN 0051004109718628', 21000, 0, 900, 20100, 1002),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 'ddl_cclengka', 20000, '085102420600', 'SN 0051004110031687', 21000, 0, 900, 20100, 1002),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 20000, '081348101062', 'SN 0051004110160128', 21000, 0, 900, 20100, 1002),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 25000, '082214184866', 'SN 0051004110040021', 26000, 0, 1000, 25000, 1002),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 50000, '082214184866', 'SN 0051004110041486', 51000, 0, 1300, 49700, 1002),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 50000, '081320427274', 'SN 0051004110135507', 51000, 0, 1300, 49700, 1002),
(3, '2019-12-03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 50000, '085105790100', 'SN 0051004110188208', 51000, 0, 1300, 49700, 1002),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '081320381188', 'IWAXXXXXXXXWAN', 90145, 0, 1500, 88645, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 0, '081320780929', 'URIXXXXXXONO', 68662, 0, 1500, 67162, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali1', 0, '08112276565', 'DEWXXXXXXXXXXXXSIH', 496246, 0, 1500, 494746, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali1', 0, '08112286565', 'DEWXXXXXXXXXXXXSIH', 398079, 0, 1500, 396579, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '0811217698', 'SANXXXXXXXXXWAN', 38500, 0, 1500, 37000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '08122325878', 'SANXXXXXXXXXWAN', 38500, 0, 1500, 37000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '0811222119', 'HERXXXXXXXXXATA', 1023308, 0, 1500, 1021808, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 'windu2', 0, '08112012017', 'JAYXXXXXXKRI', 178728, 0, 1500, 177228, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '08112282804', 'BUDXXXXXXXXNTO', 38280, 0, 1500, 36780, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura', 0, '08112290201', 'DEDXXXXXXXXNDI', 165000, 0, 1500, 163500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura', 0, '0811224035', 'TB XXXXXXXXXXXXXXXXXXXX SH', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman2', 0, '0811203434', 'SJAXXXXXXXXXXXXXXXXXDR', 224066, 0, 1500, 222566, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman2', 0, '0811233634', 'KARXXXXXXXXXXXXXXXXXXXXXXXMEN', 177339, 0, 1500, 175839, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '081322514577', 'DJAXXXXXXXXXXXJAT', 323848, 0, 1500, 322348, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '08112111204', 'AHMXXXXXXANI', 66000, 0, 1500, 64500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 0, '08112288943', 'VENXXXXXXXVIA', 239602, 0, 1500, 238102, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182464', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182466', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182469', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182472', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182474', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182476', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182479', 'RABXXXXXXXXXXAYA', 110001, 0, 1500, 108501, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182483', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182484', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182489', 'RABXXXXXXXXXXAYA', 110001, 0, 1500, 108501, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182490', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182491', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182494', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182497', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182499', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182514', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182516', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182520', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182522', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182528', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182530', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182551', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '081214324423', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112292271', 'RABXXXXXXXXXXAYA', 220000, 0, 1500, 218500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209218', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 55000, 0, 1500, 53500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209219', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209226', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209227', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209231', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 28391, 0, 1500, 26891, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209235', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209236', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209239', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209240', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209241', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209242', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209245', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112293586', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112294764', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112294766', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291554', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291556', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291557', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291565', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291642', 'RABXXXXXXXXXXAYA', 20166, 0, 1500, 18666, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291643', 'RABXXXXXXXXXXAYA', 27500, 0, 1500, 26000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1107', 'D3_Soreang', 'soreang', 0, '08112208249', 'BAHXXXXXLUM', 120747, 0, 1500, 119247, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '081321545052', 'HASXXXXXXXXXXXXXXNDA', 55000, 0, 1500, 53500, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '0811229067', 'AYIXXXXXXXXXXXXXXXA D', 38500, 0, 1500, 37000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '08122022655', 'SUSXXXXXXXXXMAN', 38500, 0, 1500, 37000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '08122047735', 'NINXXXXXXXXXXX K', 265542, 0, 1500, 264042, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '08122004766', 'WATXXXXXXXXXXXXMAN', 185922, 0, 1500, 184422, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '08122022657', 'SEBXXXIAN', 88990, 0, 1500, 87490, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1106', 'D3_Lembang', 'lembang', 0, '081321167764', 'BULXXXXXXXXXXXDRS', 49500, 0, 1500, 48000, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '08112008995', 'FADXXXXXXXXXXXXXXXXARI', 84898, 0, 1500, 83398, 1001),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo1', 100000, '082126121110', 'SN 0051004113512784', 99000, 0, 1600, 97400, 1002),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 25000, '081283830621', 'SN 0051004113439456', 26000, 0, 1000, 25000, 1002),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 50000, '081223649957', 'SN 0051004113775688', 51000, 0, 1300, 49700, 1002),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 50000, '085103259973', 'SN 0051004113776879', 51000, 0, 1300, 49700, 1002),
(3, '2019-12-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 50000, '081222274452', 'SN 0051004113864628', 51000, 0, 1300, 49700, 1002);

-- --------------------------------------------------------

--
-- Table structure for table `voucher_smart`
--

CREATE TABLE `voucher_smart` (
  `divre` int(255) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_kopegtel` varchar(255) NOT NULL,
  `kopegtel` varchar(255) NOT NULL,
  `kode_loket` varchar(255) NOT NULL,
  `loket` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `denom` int(11) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `nama_cust` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `surcharge` int(11) NOT NULL,
  `fee_ca` int(11) NOT NULL,
  `total_kopeg` int(11) NOT NULL,
  `kode_biller` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_tri`
--

CREATE TABLE `voucher_tri` (
  `divre` int(255) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_kopegtel` varchar(255) NOT NULL,
  `kopegtel` varchar(255) NOT NULL,
  `kode_loket` varchar(255) NOT NULL,
  `loket` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `denom` int(11) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `nama_cust` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `surcharge` int(11) NOT NULL,
  `fee_ca` int(11) NOT NULL,
  `total_kopeg` int(11) NOT NULL,
  `kode_biller` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voucher_tsel`
--

CREATE TABLE `voucher_tsel` (
  `divre` int(255) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_kopegtel` varchar(255) NOT NULL,
  `kopegtel` varchar(255) NOT NULL,
  `kode_loket` varchar(255) NOT NULL,
  `loket` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `denom` int(11) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `nama_cust` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `surcharge` int(11) NOT NULL,
  `fee_ca` int(11) NOT NULL,
  `total_kopeg` int(11) NOT NULL,
  `kode_biller` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arindo_tempat`
--
ALTER TABLE `arindo_tempat`
  ADD PRIMARY KEY (`kode_user`);

--
-- Indexes for table `biaya_pln`
--
ALTER TABLE `biaya_pln`
  ADD PRIMARY KEY (`biaya_admin`);

--
-- Indexes for table `fax`
--
ALTER TABLE `fax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_pdam`
--
ALTER TABLE `fee_pdam`
  ADD PRIMARY KEY (`pdam`);

--
-- Indexes for table `harga_pulsa`
--
ALTER TABLE `harga_pulsa`
  ADD PRIMARY KEY (`kode_pulsa`);

--
-- Indexes for table `kaliuser`
--
ALTER TABLE `kaliuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kode_awal`
--
ALTER TABLE `kode_awal`
  ADD PRIMARY KEY (`nomor_awal`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `lokasi2`
--
ALTER TABLE `lokasi2`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `rk`
--
ALTER TABLE `rk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fax`
--
ALTER TABLE `fax`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kaliuser`
--
ALTER TABLE `kaliuser`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `lokasi2`
--
ALTER TABLE `lokasi2`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `rk`
--
ALTER TABLE `rk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
