-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 12:20 AM
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
('CJA2002', '2019-10-01', 1, 179806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 179806),
('CLK1001', '2019-10-01', 2, 477898, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 477898),
('KPO2002', '2019-10-01', 1, 408328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 102500, 0, 0, 2, 510828),
('LEM1001', '2019-10-01', 3, 397934, 1, 64860, 0, 0, 0, 0, 1, 14100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52500, 0, 0, 6, 529394),
('SMD1001', '2019-10-01', 4, 901929, 0, 0, 0, 0, 0, 0, 3, 51000, 2, 127600, 0, 0, 0, 0, 0, 0, 1, 206500, 0, 0, 0, 0, 10, 1287029),
('SPR2002', '2019-10-01', 0, 0, 0, 0, 0, 0, 0, 0, 1, 10700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 10700),
('UBR1001', '2019-10-01', 2, 188274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 188274),
('BJN0465', '2019-10-02', 1, 107472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 102500, 0, 0, 2, 209972),
('KPO2002', '2019-10-02', 2, 466590, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 466590),
('LEM1001', '2019-10-02', 5, 867766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 104500, 2, 75000, 0, 0, 8, 1047266),
('SMD1001', '2019-10-02', 1, 84903, 0, 0, 1, 79900, 0, 0, 1, 10700, 1, 165800, 0, 0, 0, 0, 0, 0, 0, 0, 1, 102500, 0, 0, 5, 443803),
('SPR2002', '2019-10-02', 0, 0, 0, 0, 0, 0, 0, 0, 3, 27100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 27100),
('CJA2002', '2019-10-03', 6, 1096698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 1096698),
('CLK1001', '2019-10-03', 11, 3872973, 0, 0, 0, 0, 0, 0, 0, 0, 1, 262000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 4134973),
('KPO2002', '2019-10-03', 3, 1500540, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 753000, 0, 0, 0, 0, 0, 0, 4, 2253540),
('LBG3003', '2019-10-03', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 53500, 0, 0, 0, 0, 1, 53500),
('LEM1001', '2019-10-03', 12, 2579537, 0, 0, 0, 0, 0, 0, 1, 49600, 0, 0, 0, 0, 0, 0, 0, 0, 3, 186000, 3, 327500, 0, 0, 19, 3142637),
('MJA1001', '2019-10-03', 5, 1047159, 0, 0, 0, 0, 0, 0, 0, 0, 1, 69200, 0, 0, 0, 0, 0, 0, 0, 0, 1, 202500, 0, 0, 7, 1318859),
('RCK3003', '2019-10-03', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 705000, 0, 0, 2, 705000),
('SMD1001', '2019-10-03', 14, 3369086, 0, 0, 1, 154900, 0, 0, 2, 99200, 8, 800300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 4423486),
('SOR1001', '2019-10-03', 0, 0, 0, 0, 0, 0, 0, 0, 1, 10700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52500, 0, 0, 2, 63200),
('UBR1001', '2019-10-03', 1, 308787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 102500, 0, 0, 2, 411287),
('BJN0465', '2019-10-04', 3, 284478, 0, 0, 0, 0, 0, 0, 1, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 314478),
('CJA2002', '2019-10-04', 8, 2050308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2050308),
('CLK1001', '2019-10-04', 9, 1437989, 0, 0, 0, 0, 0, 0, 0, 0, 1, 57000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 1494989),
('KPO2002', '2019-10-04', 1, 158214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 158214),
('LEM1001', '2019-10-04', 2, 174523, 0, 0, 0, 0, 0, 0, 1, 6150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 632500, 0, 0, 8, 813173),
('MJA1001', '2019-10-04', 6, 3455172, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1139400, 0, 0, 0, 0, 0, 0, 1, 53500, 0, 0, 0, 0, 11, 4648072),
('PDL0001', '2019-10-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 162500, 0, 0, 0, 0, 1, 162500),
('RCK3003', '2019-10-04', 4, 4697862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 104500, 1, 202500, 0, 0, 6, 5004862),
('SMD1001', '2019-10-04', 10, 2074725, 0, 0, 1, 807800, 0, 0, 1, 20200, 4, 682400, 0, 0, 0, 0, 0, 0, 2, 107000, 1, 502500, 0, 0, 19, 4194625),
('STB2002', '2019-10-04', 0, 0, 0, 0, 0, 0, 0, 0, 1, 10400, 0, 0, 0, 0, 0, 0, 0, 0, 3, 186000, 0, 0, 0, 0, 4, 196400),
('UBR1001', '2019-10-04', 3, 220838, 0, 0, 0, 0, 0, 0, 0, 0, 1, 52800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 273638),
('LEM1001', '2019-10-05', 3, 667293, 0, 0, 0, 0, 0, 0, 1, 10700, 0, 0, 0, 0, 0, 0, 0, 0, 5, 526000, 3, 657500, 0, 0, 12, 1861493),
('SMD1001', '2019-10-05', 5, 1865924, 0, 0, 0, 0, 0, 0, 1, 10700, 5, 635900, 0, 0, 0, 0, 1, 613000, 2, 405000, 4, 610000, 0, 0, 18, 4140524),
('UBR1001', '2019-10-05', 2, 701176, 0, 0, 0, 0, 0, 0, 0, 0, 2, 121800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 822976);

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
('2019-10-01', 223000),
('2019-10-02', 448500),
('2019-10-03', 1090000),
('2019-10-04', 1666500),
('2019-10-05', 871000),
('2019-10-06', 15000);

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
('2019-10-06', 2500);

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
  `user` varchar(20) DEFAULT NULL,
  `tempat_arindo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`user_id`, `lokasi`, `loket`, `tempat`, `user`, `tempat_arindo`) VALUES
(1, 'ARCAMANIK', 'arcamanik', 'ARCAMANIK', NULL, NULL),
(2, 'BATUJAJAR', 'batujajar', 'BATUJAJAR', NULL, NULL),
(3, 'BKR', 'bkr1', 'BKR', NULL, NULL),
(4, 'BANJARAN', 'bkr2', 'BANJARAN', 'BJN0465', 'BANJARAN'),
(5, 'MAJALAYA', 'cicalengka1', 'MAJALAYA', 'MJA1001', NULL),
(6, 'CIJAURA', 'cijaura', 'CIJAURA', 'CJA1001', 'CIJAURA'),
(7, 'CIJAURA2', 'cijaura2', 'CIJAURA', 'CJA2002', 'CIJAURA'),
(8, 'CIKALONG WETAN', 'cikalongwetan', 'CIKALONG WETAN', NULL, NULL),
(9, 'CILILIN', 'cililin', 'CILILIN', NULL, NULL),
(10, 'CIMAHI 1', 'cimahi1', 'CIMAHI', 'CMI1001', NULL),
(11, 'CIMAHI 2', 'cimahi2', 'CIMAHI', 'CMI2002', NULL),
(12, 'DAGO 1', 'dago1', 'DAGO', 'DGO1001', NULL),
(13, 'DAGO 2', 'dago2', 'DAGO', NULL, NULL),
(14, 'CICALENGKA', 'ddl_cclengka', 'CICALENGKA', 'CLK1001', NULL),
(15, 'RANCAEKEK 2/ LILIK', 'ddl_rckkbru', 'RANCAEKEK 2/ LILIK', NULL, NULL),
(16, 'PLASA RANCAEKEK', 'gegerkalong1', 'PLASA RANCAEKEK', 'RCK3003', NULL),
(17, 'JATINANGOR', 'jatinangor', 'JATINANGOR', NULL, NULL),
(18, 'JATINANGOR / PDL', 'ujungberung1', 'JATINANGOR', NULL, NULL),
(19, 'KOPO 1', 'kopo1', 'KOPO', 'KPO1001', NULL),
(20, 'KOPO 2 ', 'kopo2', 'KOPO', 'KPO2002', NULL),
(21, 'LEMBANG', 'lembang', 'LEMBANG', 'LEM1001', NULL),
(22, 'LEMBONG 1', 'lembong1', 'LEMBONG', 'LBG1001', NULL),
(23, 'LEMBONG 2', 'lembong2', 'LEMBONG', 'LBG2002', NULL),
(24, 'LEMBONG 3', 'lembong3', 'LEMBONG', 'LBG3003', NULL),
(25, 'PADALARANG 1', 'padalarang1', 'PADALARANG', 'PDL0001', 'PADALARANG'),
(26, 'RAJAWALI 1', 'rajawali1', 'RAJAWALI', 'RJW1001', NULL),
(27, 'RAJAWALI 2', 'rajawali2', 'RAJAWALI', 'RJW2002', NULL),
(28, 'RAJAWALI 3', 'rajawali3', 'RAJAWALI', 'RJW3003', NULL),
(29, 'RANCAEKEK / ERRI', 'rancaekek', 'RANCAEKEK / ERRI', NULL, NULL),
(30, 'SETIABUDI 1', 'setiabudi1', 'SETIABUDI', 'STB1001', NULL),
(31, 'SETIABUDI 2', 'setiabudi2', 'SETIABUDI', 'STB2002', NULL),
(32, 'SOREANG', 'soreang', 'SOREANG', 'SOR1001', NULL),
(33, 'SUMEDANG 1', 'sumedang1', 'SUMEDANG', NULL, NULL),
(34, 'SUMEDANG 2', 'sumedang2', 'SUMEDANG', 'SMD1001', NULL),
(35, 'SUPRATMAN 1', 'supratman1', 'SUPRATMAN', NULL, NULL),
(36, 'SUPRATMAN 2', 'supratman2', 'SUPRATMAN', 'SPR1001', NULL),
(37, 'SUPRATMAN 3', 'supratman3', 'SUPRATMAN', 'SPR2002', NULL),
(38, 'TANJUNGSARI', 'tanjungsari', 'TANJUNGSARI', 'TJS1001', NULL),
(39, 'UJUNG BERUNG', 'ujungberung2', 'UJUNG BERUNG', 'UBR1001', NULL),
(40, 'WINDU 1', 'windu1', 'WINDU', 'WND1001', NULL),
(41, 'WINDU 2', 'windu2', 'WINDU', 'WND2002', NULL),
(42, 'CICALENGKA 2', 'cicalengka2', 'CICALENGKA', NULL, NULL),
(43, 'CIJAURA1', 'cijaura1', 'CIJAURA', NULL, NULL),
(44, 'PADALARANG', 'padalarang', 'PADALARANG', NULL, NULL),
(45, 'LEMBANG 1', 'lembang1', 'LEMBANG', NULL, NULL),
(46, 'SETIABUDHI 1', 'setiabudhi1', 'SETIABUDI', NULL, NULL),
(47, 'SETIABUDHI 2', 'setiabudhi2', 'SETIABUDI', NULL, NULL),
(48, 'RANCAEKEK 2/ LILIK', 'rancaekek2', 'RANCAEKEK 2/ LILIK', NULL, NULL);

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
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cicalengka1', 30315013, 'PDAM Bandung', 2500, 2147483647, 1, 1, 136800, 2500, 139300),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cicalengka1', 30315013, 'PDAM Bandung', 2500, 2147483647, 1, 1, 66700, 2500, 69200),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 20300, 2500, 22800),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 185200, 2500, 187700),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 350300, 2500, 352800),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 109400, 2500, 111900),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 29000, 2500, 31500),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 30800, 2500, 33300),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40000, 2500, 42500),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 60600, 2500, 63100),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 459000, 2500, 461500),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 119400, 2500, 121900),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 62000, 2500, 64500),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 66000, 2500, 68500),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 223950, 2500, 226450),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 223950, 2500, 226450),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 80000, 2500, 82500),
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 52200, 2500, 54700),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cicalengka1', 30315013, 'PDAM Bandung', 2500, 2147483647, 1, 1, 97200, 2500, 99700),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cicalengka1', 30315013, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cicalengka1', 30315013, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 74000, 2500, 76500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 22000, 2500, 24500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 22000, 2500, 24500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 74000, 2500, 76500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 23600, 2500, 26100),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 97200, 2500, 99700),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 115500, 2500, 118000),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 369000, 2500, 371500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 35200, 2500, 37700),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 92000, 2500, 94500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 138200, 2500, 140700),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 74000, 2500, 76500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 55000, 2500, 57500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 55000, 2500, 57500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 110000, 2500, 112500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 62000, 2500, 64500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 19900, 2500, 22400),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 32600, 2500, 35100),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 175800, 2500, 178300),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 167100, 2500, 169600),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-02', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 80000, 2500, 82500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cicalengka1', 30315013, 'PDAM Bandung', 2500, 2147483647, 1, 1, 31500, 2500, 34000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 19100, 2500, 21600),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 36800, 2500, 39300),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 216600, 2500, 219100),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 19600, 2500, 22100),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 52200, 2500, 54700),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40100, 2500, 42600),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 104000, 2500, 106500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 147600, 2500, 150100),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 52200, 2500, 54700),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 66700, 2500, 69200),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'kopo1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'kopo1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'kopo2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 85100, 2500, 87600),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 109400, 2500, 111900),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 193800, 2500, 196300),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 223000, 2500, 225500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 186500, 2500, 189000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 78900, 2500, 81400),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 66700, 2500, 69200),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 122600, 2500, 125100),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 115500, 2500, 118000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 84400, 2500, 86900),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 383600, 2500, 386100),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 133800, 2500, 136300),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 104000, 2500, 106500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 80000, 2500, 82500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 200400, 2500, 202900),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40200, 2500, 42700),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 66000, 2500, 68500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 159900, 2500, 162400),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 45400, 2500, 47900),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 45400, 2500, 47900),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 62000, 2500, 64500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'soreang', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 472100, 2500, 474600),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 67600, 2500, 70100),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 32600, 2500, 35100),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'ujungberung2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 30200, 2500, 32700),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 30200, 2500, 32700),
('2019-10-03', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 185200, 2500, 187700),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 43400, 2500, 45900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 19600, 2500, 22100),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 110000, 2500, 112500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 24800, 2500, 27300),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 20300, 2500, 22800),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 184400, 2500, 186900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 36800, 2500, 39300),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 27400, 2500, 29900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 36800, 2500, 39300),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 73000, 2500, 75500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 86000, 2500, 88500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 155600, 2500, 158100),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 353000, 2500, 355500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'kopo2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 43000, 2500, 45500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'kopo2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40600, 2500, 43100),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'kopo2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 184400, 2500, 186900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 72800, 2500, 75300),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 115500, 2500, 118000),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 78500, 2500, 81000),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 328400, 2500, 330900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 158100, 2500, 160600),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 179400, 2500, 181900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 30200, 2500, 32700),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 66000, 2500, 68500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 78700, 2500, 81200),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 43400, 2500, 45900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'padalarang', 30315073, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'padalarang', 30315073, 'PDAM Bandung', 2500, 2147483647, 1, 1, 31500, 2500, 34000),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40400, 2500, 42900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 63000, 2500, 65500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 75200, 2500, 77700),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 37000, 2500, 39500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 111200, 2500, 113700),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 65800, 2500, 68300),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 46000, 2500, 48500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 68000, 2500, 70500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 61400, 2500, 63900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 70600, 2500, 73100),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'setiabudhi2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 37000, 2500, 39500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'sumedang2', 30315033, 'PDAM Kab Sumedang', 2500, 2147483647, 1, 1, 55000, 2500, 57500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 20300, 2500, 22800),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 84400, 2500, 86900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 70600, 2500, 73100),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 89000, 2500, 91500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 119400, 2500, 121900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 471600, 2500, 474100),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 37000, 2500, 39500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'ujungberung2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 58600, 2500, 61100),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 32600, 2500, 35100),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 110000, 2500, 112500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 88000, 2500, 90500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 45600, 2500, 48100),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 63000, 2500, 65500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 25100, 2500, 27600),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 282600, 2500, 285100),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 56000, 2500, 58500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 167100, 2500, 169600),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 43000, 2500, 45500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40400, 2500, 42900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40100, 2500, 42600),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 22000, 2500, 24500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 22000, 2500, 24500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 43400, 2500, 45900),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 62000, 2500, 64500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 62000, 2500, 64500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-04', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 110000, 2500, 112500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 119400, 2500, 121900),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 23600, 2500, 26100),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40100, 2500, 42600),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 128800, 2500, 131300),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 62000, 2500, 64500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 37800, 2500, 40300),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 194600, 2500, 197100),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 34400, 2500, 36900),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 68000, 2500, 70500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 80000, 2500, 82500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 68000, 2500, 70500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 216600, 2500, 219100),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 138200, 2500, 140700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 138200, 2500, 140700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cijaura2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 26900, 2500, 29400),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'cimahi2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'kopo1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 80000, 2500, 82500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'kopo1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 138200, 2500, 140700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 192000, 2500, 194500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 122600, 2500, 125100),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 51400, 2500, 53900),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembang1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 52200, 2500, 54700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 115500, 2500, 118000),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 30200, 2500, 32700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 30800, 2500, 33300),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 74000, 2500, 76500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 216600, 2500, 219100),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 40100, 2500, 42600),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 98000, 2500, 100500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 446400, 2500, 448900),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'lembong3', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 52200, 2500, 54700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Bandung', 2500, 2147483647, 1, 1, 54500, 2500, 57000),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 295200, 2500, 297700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 43000, 2500, 45500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 185200, 2500, 187700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 62200, 2500, 64700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 33000, 2500, 35500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 25700, 2500, 28200),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 68000, 2500, 70500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 204000, 2500, 206500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'rajawali2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 257400, 2500, 259900),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 156400, 2500, 158900),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 475400, 2500, 477900),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 46700, 2500, 49200),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'supratman2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'ujungberung2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 27400, 2500, 29900),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'ujungberung2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 50000, 2500, 52500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 43000, 2500, 45500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 52200, 2500, 54700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 22200, 2500, 24700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 66000, 2500, 68500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 186000, 2500, 188500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 113400, 2500, 115900),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 157000, 2500, 159500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 43000, 2500, 45500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 331400, 2500, 333900),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 390700, 2500, 393200),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 35200, 2500, 37700),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 17000, 2500, 19500),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 46700, 2500, 49200),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 128800, 2500, 131300),
('2019-10-05', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu1', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 92000, 2500, 94500);

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
(-3183929, -26903337, -23673908, 0, -15000, 0, 0, 0, 0, '2019-10-01'),
(-2194731, -65261961, -52347670, 0, -15000, 0, 0, 0, 0, '2019-10-02'),
(-163621896, -138617799, -17603180, 0, -15000, 0, 0, 0, 0, '2019-10-03'),
(-26136252, -348096328, -279961001, 0, -15000, 0, 0, 0, 0, '2019-10-06');

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
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'cicalengka1', 315023, 10, 10, 1565939, 27500, 1593439),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'cijaura1', 315043, 6, 6, 1212278, 16500, 1228778),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'cijaura2', 315063, 14, 16, 4795715, 44000, 4839715),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'cimahi2', 315423, 1, 1, 189499, 2750, 192249),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'jatinangor', 315353, 2, 2, 600000, 5500, 605500),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'lembang1', 315143, 2, 2, 636750, 5500, 642250),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'lembong2', 315303, 4, 4, 1756453, 11000, 1767453),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'lembong3', 315013, 2, 3, 473260, 8250, 481510),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'rajawali1', 315153, 4, 4, 1257682, 11000, 1268682),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'rajawali2', 315163, 7, 8, 2008908, 22000, 2030908),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'setiabudhi1', 315313, 3, 3, 1258157, 8250, 1266407),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'soreang', 315183, 4, 4, 1084467, 11000, 1095467),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'sumedang2', 315203, 3, 3, 747135, 8250, 755385),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'supratman2', 315223, 1, 1, 34662, 2750, 37412),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'supratman3', 315413, 3, 3, 435337, 8250, 443587),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'windu1', 315273, 3, 3, 1247370, 8250, 1255620),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'windu2', 315283, 3, 3, 1823396, 8250, 1831646),
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'cijaura2', 315063, 1, 1, 50000, 5000, 55000),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'cicalengka1', 315023, 6, 6, 630074, 16500, 646574),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'cijaura1', 315043, 13, 14, 2588087, 38500, 2626587),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'cijaura2', 315063, 10, 10, 3382858, 27500, 3410358),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'cimahi2', 315423, 5, 5, 495933, 13750, 509683),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'gegerkalong1', 315103, 8, 8, 5058773, 22000, 5080773),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'jatinangor', 315353, 4, 4, 473780, 11000, 484780),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'kopo2', 315133, 3, 3, 811654, 8250, 819904),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'lembang1', 315143, 18, 19, 4959854, 52250, 5012104),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'lembong2', 315303, 11, 11, 16643963, 30250, 16674213),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'lembong3', 315013, 3, 4, 1292365, 11000, 1303365),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'rajawali1', 315153, 5, 5, 670289, 13750, 684039),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'rajawali2', 315163, 5, 6, 2312494, 16500, 2328994),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'setiabudhi1', 315313, 5, 5, 1404061, 13750, 1417811),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'setiabudhi2', 315323, 2, 2, 1747285, 5500, 1752785),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'soreang', 315183, 1, 1, 116280, 2750, 119030),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'sumedang2', 315203, 6, 6, 601334, 16500, 617834),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'supratman3', 315413, 1, 1, 216346, 2750, 219096),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'ujungberung2', 315263, 2, 2, 493913, 5500, 499413),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'windu1', 315273, 7, 7, 1164536, 19250, 1183786),
('2019-10-02', '3', '315', 'D3_Kop Dadali BDG', 'windu2', 315283, 14, 14, 4754341, 38500, 4792841),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'cicalengka1', 315023, 2, 2, 2968446, 5500, 2973946),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'cijaura1', 315043, 17, 17, 5938832, 46750, 5985582),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'cijaura2', 315063, 28, 28, 17788481, 77000, 17865481),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'cimahi2', 315423, 23, 23, 7050270, 63250, 7113520),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'gegerkalong1', 315103, 2, 2, 228434, 5500, 233934),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'jatinangor', 315353, 7, 7, 685946, 19250, 705196),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'kopo1', 315123, 5, 5, 3352620, 13750, 3366370),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'kopo2', 315133, 40, 80, 63500000, 220000, 63720000),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'lembang1', 315143, 22, 23, 4760298, 63250, 4823548),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'lembong2', 315303, 29, 29, 22724631, 79750, 22804381),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'lembong3', 315013, 17, 17, 9148314, 46750, 9195064),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'rajawali1', 315153, 11, 12, 3021558, 33000, 3054558),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'rajawali2', 315163, 17, 17, 6244672, 46750, 6291422),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'setiabudhi1', 315313, 5, 5, 2140240, 13750, 2153990),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'setiabudhi2', 315323, 8, 8, 2440196, 22000, 2462196),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'soreang', 315183, 1, 1, 209456, 2750, 212206),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'sumedang2', 315203, 6, 6, 1629210, 16500, 1645710),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'supratman2', 315223, 4, 4, 406694, 11000, 417694),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'supratman3', 315413, 2, 2, 410757, 5500, 416257),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'ujungberung2', 315263, 3, 3, 200432, 8250, 208682),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'windu1', 315273, 2, 2, 467745, 5500, 473245),
('2019-10-03', '3', '315', 'D3_Kop Dadali BDG', 'windu2', 315283, 6, 6, 3238714, 16500, 3255214),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'cicalengka2', 315033, 8, 8, 10817408, 22000, 10839408),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'cijaura1', 315043, 22, 24, 13849796, 66000, 13915796),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'cijaura2', 315063, 27, 27, 9486394, 74250, 9560644),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'cimahi2', 315423, 19, 19, 3972152, 52250, 4024402),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'gegerkalong1', 315103, 1, 1, 41361, 2750, 44111),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'jatinangor', 315353, 2, 2, 281746, 5500, 287246),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'kopo1', 315123, 15, 15, 7642880, 41250, 7684130),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'kopo2', 315133, 16, 16, 9282936, 44000, 9326936),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'lembang1', 315143, 48, 48, 66134125, 132000, 66266125),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'lembong2', 315303, 30, 30, 35826743, 82500, 35909243),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'lembong3', 315013, 29, 29, 7609746, 79750, 7689496),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'padalarang', 315343, 11, 11, 5299694, 30250, 5329944),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'rajawali1', 315153, 15, 15, 4180362, 41250, 4221612),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'rajawali2', 315163, 16, 16, 2888221, 44000, 2932221),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'setiabudhi1', 315313, 13, 13, 9781720, 35750, 9817470),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'setiabudhi2', 315323, 18, 18, 7082127, 49500, 7131627),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'soreang', 315183, 12, 12, 1888208, 33000, 1921208),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'sumedang2', 315203, 8, 8, 8064921, 22000, 8086921),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'supratman2', 315223, 13, 13, 4946931, 35750, 4982681),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'ujungberung2', 315263, 7, 7, 2329878, 19250, 2349128),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'windu1', 315273, 21, 21, 11597540, 57750, 11655290),
('2019-10-04', '3', '315', 'D3_Kop Dadali BDG', 'windu2', 315283, 31, 31, 18881260, 85250, 18966510),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'cijaura2', 315063, 61, 61, 15015194, 167750, 15182944),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'cimahi2', 315423, 14, 14, 2702150, 38500, 2740650),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'jatinangor', 315353, 11, 11, 3436061, 30250, 3466311),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'kopo1', 315123, 21, 21, 6148368, 57750, 6206118),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'lembang1', 315143, 14, 14, 3091354, 38500, 3129854),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'lembong2', 315303, 18, 18, 4901569, 49500, 4951069),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'lembong3', 315013, 33, 33, 20344051, 90750, 20434801),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'rajawali2', 315163, 20, 20, 6001556, 55000, 6056556),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'sumedang2', 315203, 1, 1, 253546, 2750, 256296),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'supratman2', 315223, 15, 15, 4899996, 41250, 4941246),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'ujungberung2', 315263, 26, 26, 10096278, 71500, 10167778),
('2019-10-05', '3', '315', 'D3_Kop Dadali BDG', 'windu1', 315273, 26, 26, 10835186, 71500, 10906686),
('2019-10-06', '3', '315', 'D3_Kop Dadali BDG', 'jatinangor', 315353, 1, 1, 3879120, 2750, 3881870);

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
('2019-10-01', 'BANJARAN', 3002360),
('2019-10-01', 'BKR', 701747),
('2019-10-01', 'CIJAURA', 9798200),
('2019-10-01', 'JATINANGOR', 1197503),
('2019-10-01', 'KOPO', 6846700),
('2019-10-01', 'LEMBANG', 1988600),
('2019-10-01', 'LEMBONG', 24646000),
('2019-10-01', 'MAJALAYA', 2802000),
('2019-10-01', 'PLASA RANCAEKEK', 933220),
('2019-10-01', 'RAJAWALI', 5337100),
('2019-10-01', 'SETIABUDI', 1662767),
('2019-10-01', 'SOREANG', 4620863),
('2019-10-01', 'SUMEDANG', 4226500),
('2019-10-01', 'SUPRATMAN', 1248590),
('2019-10-01', 'UJUNG BERUNG', 5404500),
('2019-10-01', 'WINDU', 3224500),
('2019-10-02', 'CICALENGKA', 10626000),
('2019-10-02', 'CIJAURA', 13095200),
('2019-10-02', 'CIMAHI', 20190688),
('2019-10-02', 'JATINANGOR', 484780),
('2019-10-02', 'KOPO', 80943400),
('2019-10-02', 'LEMBANG', 7345600),
('2019-10-02', 'LEMBONG', 38678500),
('2019-10-02', 'MAJALAYA', 13629000),
('2019-10-02', 'PLASA RANCAEKEK', 7790835),
('2019-10-02', 'RAJAWALI', 20076400),
('2019-10-02', 'SOREANG', 9424143),
('2019-10-02', 'SUMEDANG', 10520200),
('2019-10-02', 'SUPRATMAN', 989003),
('2019-10-02', 'UJUNG BERUNG', 4263500),
('2019-10-02', 'WINDU', 7653200),
('2019-10-03', 'CICALENGKA', 17536000),
('2019-10-03', 'CIJAURA', 46710300),
('2019-10-03', 'CIMAHI', 10599535),
('2019-10-03', 'JATINANGOR', 1814994),
('2019-10-03', 'KOPO', 37121700),
('2019-10-03', 'LEMBANG', 33092000),
('2019-10-03', 'LEMBONG', 45509100),
('2019-10-03', 'MAJALAYA', 12464000),
('2019-10-03', 'PADALARANG', 2993200),
('2019-10-03', 'PLASA RANCAEKEK', 3074878),
('2019-10-03', 'RAJAWALI', 6280000),
('2019-10-03', 'SETIABUDI', 25438496),
('2019-10-03', 'SOREANG', 7358949),
('2019-10-03', 'SUMEDANG', 23791000),
('2019-10-03', 'SUPRATMAN', 2773683),
('2019-10-03', 'UJUNG BERUNG', 1153300),
('2019-10-03', 'WINDU', 24799600),
('2019-10-06', 'BANJARAN', 10139120),
('2019-10-06', 'CICALENGKA', 18519000),
('2019-10-06', 'CIJAURA', 168880780),
('2019-10-06', 'CIMAHI', 88958153),
('2019-10-06', 'JATINANGOR', 10888268),
('2019-10-06', 'KOPO', 78496200),
('2019-10-06', 'LEMBANG', 98743000),
('2019-10-06', 'LEMBONG', 307003400),
('2019-10-06', 'MAJALAYA', 30807000),
('2019-10-06', 'PADALARANG', 14607300),
('2019-10-06', 'PLASA RANCAEKEK', 12349886),
('2019-10-06', 'RAJAWALI', 32788700),
('2019-10-06', 'SETIABUDI', 83262461),
('2019-10-06', 'SUMEDANG', 107339000),
('2019-10-06', 'SUPRATMAN', 20779700),
('2019-10-06', 'UJUNG BERUNG', 63805200),
('2019-10-06', 'WINDU', 96432100);

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
('2019-09-30', 143384690),
('2019-10-01', 167249666),
('2019-10-02', 293140753),
('2019-10-03', 275793613),
('2019-10-04', 275793613),
('2019-10-05', 275793613),
('2019-10-06', 865384300);

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
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 2, 2, 949250, 6000, 1000, 950250, 3, 'ddl_cclengka'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 7, 7, 1584426, 21000, 3500, 1587926, 3, 'cijaura'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 8, 8, 1569457, 24000, 4000, 1573457, 3, 'cijaura2'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 9, 9, 3178529, 22500, 4500, 3183029, 3, 'cimahi2'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1098', 'D3_Geger Kalong', 4, 4, 921220, 12000, 2000, 923220, 3, 'gegerkalong1'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1109', 'D3_Jatinangor', 1, 1, 483000, 3000, 500, 483500, 3, 'jatinangor'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 9, 9, 2910120, 27000, 4500, 2914620, 3, 'kopo2'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1106', 'D3_Lembang', 1, 1, 339000, 2500, 500, 339500, 3, 'lembang'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 3, 3, 1573000, 0, 0, 1573000, 3, 'lembong2'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 3, 3, 659478, 0, 0, 659478, 3, 'lembong3'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1099', 'D3_Padalarang', 1, 1, 46860, 3000, 500, 47360, 3, 'padalarang1'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 8, 8, 1561206, 24000, 4000, 1565206, 3, 'rajawali1'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 3, 3, 396360, 0, 0, 396360, 3, 'setiabudi1'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1107', 'D3_Soreang', 11, 11, 3492396, 33000, 5500, 3497896, 3, 'soreang'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 5, 5, 1814070, 15000, 2500, 1816570, 3, 'sumedang2'),
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 10, 10, 2907958, 30000, 5000, 2912958, 3, 'ujungberung2'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1091', 'D3_BKR', 8, 8, 2130114, 24000, 4000, 2134114, 3, 'bkr2'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 9, 9, 2639576, 27000, 4500, 2644076, 3, 'cicalengka1'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 6, 6, 1731821, 18000, 3000, 1734821, 3, 'cijaura'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 16, 16, 4398831, 48000, 8000, 4406831, 3, 'cijaura2'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 44, 44, 14935333, 110000, 22000, 14957333, 3, 'cimahi2'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1098', 'D3_Geger Kalong', 7, 7, 2572062, 21000, 3500, 2575562, 3, 'gegerkalong1'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 10, 10, 3180099, 30000, 5000, 3185099, 3, 'kopo1'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 12, 12, 3274845, 36000, 6000, 3280845, 3, 'kopo2'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1106', 'D3_Lembang', 1, 1, 580500, 2500, 500, 581000, 3, 'lembang'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 12, 12, 3102031, 0, 0, 3102031, 3, 'lembong2'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 8, 8, 2773576, 0, 0, 2773576, 3, 'lembong3'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 4, 4, 577099, 12000, 2000, 579099, 3, 'rajawali1'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 2, 2, 1118790, 6000, 1000, 1119790, 3, 'rajawali2'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 8, 8, 2889292, 0, 0, 2889292, 3, 'setiabudi1'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 14, 14, 3132365, 0, 0, 3132365, 3, 'setiabudi2'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1107', 'D3_Soreang', 7, 7, 3082090, 21000, 3500, 3085590, 3, 'soreang'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 8, 8, 2779481, 24000, 4000, 2783481, 3, 'sumedang2'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 2, 2, 505000, 6000, 1000, 506000, 3, 'supratman2'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 18, 18, 5604196, 54000, 9000, 5613196, 3, 'ujungberung2'),
('2019-10-02', '03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 3, 3, 726635, 9000, 1500, 728135, 3, 'windu2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 1, 1, 525868, 3000, 500, 526368, 2, 'cijaura2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 1, 1, 45860, 0, 0, 45860, 2, 'lembong2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 1, 1, 323104, 3000, 500, 323604, 2, 'rajawali1'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 2, 2, 81720, 6000, 1000, 82720, 2, 'sumedang2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 27, 27, 8857992, 81000, 13500, 8871492, 3, 'cicalengka1'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 11, 11, 5367810, 33000, 5500, 5373310, 3, 'ddl_cclengka'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 31, 31, 6670731, 93000, 15500, 6686231, 3, 'cijaura'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 52, 52, 12596301, 156000, 26000, 12622301, 3, 'cijaura2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 48, 48, 12013239, 120000, 24000, 12037239, 3, 'cimahi2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1098', 'D3_Geger Kalong', 4, 4, 2102944, 12000, 2000, 2104944, 3, 'gegerkalong1'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1109', 'D3_Jatinangor', 2, 2, 1004798, 6000, 1000, 1005798, 3, 'jatinangor'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 30, 30, 9010946, 90000, 15000, 9025946, 3, 'kopo1'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 17, 17, 5373335, 51000, 8500, 5381835, 3, 'kopo2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1106', 'D3_Lembang', 16, 16, 3779602, 40000, 8000, 3787602, 3, 'lembang'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 60, 60, 11737314, 0, 0, 11737314, 3, 'lembong2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 44, 44, 9239821, 0, 0, 9239821, 3, 'lembong3'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1099', 'D3_Padalarang', 3, 3, 1167800, 9000, 1500, 1169300, 3, 'padalarang1'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 16, 16, 2600572, 48000, 8000, 2608572, 3, 'rajawali1'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 28, 28, 8421672, 84000, 14000, 8435672, 3, 'rajawali2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 22, 22, 3934185, 0, 0, 3934185, 3, 'setiabudi1'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 20, 20, 5478217, 0, 0, 5478217, 3, 'setiabudi2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1107', 'D3_Soreang', 19, 19, 5992606, 57000, 9500, 6002106, 3, 'soreang'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 33, 33, 8342244, 99000, 16500, 8358744, 3, 'sumedang2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 4, 4, 447359, 12000, 2000, 449359, 3, 'supratman2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 4, 4, 934958, 12000, 2000, 936958, 3, 'supratman3'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 19, 19, 5746827, 57000, 9500, 5756327, 3, 'ujungberung2'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 2, 2, 105202, 6000, 1000, 106202, 3, 'windu1'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 4, 4, 638714, 12000, 2000, 640714, 3, 'windu2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 1, 1, 437500, 0, 0, 437500, 2, 'lembong3'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1091', 'D3_BKR', 23, 23, 7263562, 69000, 11500, 7275062, 3, 'bkr2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 37, 37, 8047293, 111000, 18500, 8065793, 3, 'cicalengka1'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 12, 12, 5148613, 36000, 6000, 5154613, 3, 'ddl_cclengka'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 34, 34, 8176612, 102000, 17000, 8193612, 3, 'cijaura'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 44, 44, 6806223, 132000, 22000, 6828223, 3, 'cijaura2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 43, 43, 10749744, 107500, 21500, 10771244, 3, 'cimahi2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1098', 'D3_Geger Kalong', 19, 19, 7243913, 57000, 9500, 7253413, 3, 'gegerkalong1'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1109', 'D3_Jatinangor', 2, 2, 539635, 6000, 1000, 540635, 3, 'jatinangor'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 41, 41, 9340262, 123000, 20500, 9360762, 3, 'kopo1'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 43, 43, 8876828, 129000, 21500, 8898328, 3, 'kopo2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1106', 'D3_Lembang', 38, 38, 10661285, 95000, 19000, 10680285, 3, 'lembang'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 65, 65, 15814677, 0, 0, 15814677, 3, 'lembong2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 68, 68, 10474714, 0, 0, 10474714, 3, 'lembong3'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1099', 'D3_Padalarang', 22, 22, 8957836, 66000, 11000, 8968836, 3, 'padalarang1'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 15, 15, 2529763, 45000, 7500, 2537263, 3, 'rajawali1'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 16, 16, 2829817, 48000, 8000, 2837817, 3, 'rajawali2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 29, 29, 4698243, 0, 0, 4698243, 3, 'setiabudi1'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 28, 28, 5706421, 0, 0, 5706421, 3, 'setiabudi2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1107', 'D3_Soreang', 26, 26, 7964114, 78000, 13000, 7977114, 3, 'soreang'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 42, 42, 12600740, 126000, 21000, 12621740, 3, 'sumedang2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 13, 13, 5850352, 39000, 6500, 5856852, 3, 'supratman2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 40, 40, 11711575, 120000, 20000, 11731575, 3, 'ujungberung2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 30, 30, 3442914, 90000, 15000, 3457914, 3, 'windu1'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 29, 29, 5598964, 87000, 14500, 5613464, 3, 'windu2'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 1, 1, 35860, 0, 0, 35860, 4, 'lembong3'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 58, 58, 9731024, 174000, 29000, 9760024, 3, 'cijaura2'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 29, 29, 7219857, 72500, 14500, 7234357, 3, 'cimahi2'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1109', 'D3_Jatinangor', 6, 6, 1182520, 18000, 3000, 1185520, 3, 'jatinangor'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 38, 38, 7801105, 114000, 19000, 7820105, 3, 'kopo1'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1106', 'D3_Lembang', 17, 17, 4269536, 42500, 8500, 4278036, 3, 'lembang'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 51, 51, 10115148, 0, 0, 10115148, 3, 'lembong2'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 97, 97, 15460913, 0, 0, 15460913, 3, 'lembong3'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 41, 41, 8596321, 123000, 20500, 8616821, 3, 'rajawali2'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 21, 21, 5039044, 63000, 10500, 5049544, 3, 'sumedang2'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 10, 10, 2053646, 30000, 5000, 2058646, 3, 'supratman2'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 55, 55, 12302005, 165000, 27500, 12329505, 3, 'ujungberung2'),
('2019-10-05', '03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 23, 23, 3392780, 69000, 11500, 3404280, 3, 'windu1'),
('2019-10-06', '03', '695', 'D3_Kop Dadali BDG', '1109', 'D3_Jatinangor', 5, 5, 1491686, 15000, 2500, 1494186, 3, 'jatinangor');

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
('2019-10-01', 'ARCAMANIK', 0, 0),
('2019-10-01', 'BANJARAN', 0, -2775076),
('2019-10-01', 'BATUJAJAR', 0, 0),
('2019-10-01', 'BKR', 0, -12138890),
('2019-10-01', 'CICALENGKA', 0, -4254523),
('2019-10-01', 'CIJAURA', 0, -2749960),
('2019-10-01', 'CIKALONG WETAN', 0, 0),
('2019-10-01', 'CILILIN', 0, 0),
('2019-10-01', 'CIMAHI', 3100000, 0),
('2019-10-01', 'DAGO', 0, 0),
('2019-10-01', 'JATINANGOR', 3878200, 0),
('2019-10-01', 'KOPO', 0, -1145617),
('2019-10-01', 'LEMBANG', 36, 0),
('2019-10-01', 'LEMBONG', 5028129, 0),
('2019-10-01', 'MAJALAYA', 0, -2566725),
('2019-10-01', 'PADALARANG', 0, -1766490),
('2019-10-01', 'PLASA RANCAEKEK', 27, 0),
('2019-10-01', 'RAJAWALI', 93, 0),
('2019-10-01', 'RANCAEKEK / ERRI', 0, 0),
('2019-10-01', 'RANCAEKEK 2/ LILIK', 0, 0),
('2019-10-01', 'SETIABUDI', 0, 0),
('2019-10-01', 'SOREANG', 533845, 0),
('2019-10-01', 'SUMEDANG', 1500078, 0),
('2019-10-01', 'SUPRATMAN', 76, 0),
('2019-10-01', 'TANJUNGSARI', 0, 0),
('2019-10-01', 'UJUNG BERUNG', 6, 0),
('2019-10-01', 'WINDU', 0, -650655),
('2019-10-03', 'ARCAMANIK', 0, 0),
('2019-10-03', 'BANJARAN', 0, -2213802),
('2019-10-03', 'BATUJAJAR', 0, 0),
('2019-10-03', 'BKR', 0, -11437143),
('2019-10-03', 'CICALENGKA', 4917329, 0),
('2019-10-03', 'CIJAURA', 0, -2749895),
('2019-10-03', 'CIKALONG WETAN', 0, 0),
('2019-10-03', 'CILILIN', 0, 0),
('2019-10-03', 'CIMAHI', 4032998, 0),
('2019-10-03', 'DAGO', 0, 0),
('2019-10-03', 'JATINANGOR', 3878200, 0),
('2019-10-03', 'KOPO', 75000192, 0),
('2019-10-03', 'LEMBANG', 10822, 0),
('2019-10-03', 'LEMBONG', 37328319, 0),
('2019-10-03', 'MAJALAYA', 8433486, 0),
('2019-10-03', 'PADALARANG', 0, -1816350),
('2019-10-03', 'PLASA RANCAEKEK', 27, 0),
('2019-10-03', 'RAJAWALI', 15000263, 0),
('2019-10-03', 'RANCAEKEK / ERRI', 0, 0),
('2019-10-03', 'RANCAEKEK 2/ LILIK', 0, 0),
('2019-10-03', 'SETIABUDI', 0, -9424143),
('2019-10-03', 'SOREANG', 6735868, 0),
('2019-10-03', 'SUMEDANG', 7600159, 0),
('2019-10-03', 'SUPRATMAN', 28198, 0),
('2019-10-03', 'TANJUNGSARI', 0, 0),
('2019-10-03', 'UJUNG BERUNG', 72, 0),
('2019-10-03', 'WINDU', 0, -650583),
('2019-10-04', 'ARCAMANIK', 0, 0),
('2019-10-04', 'BANJARAN', 0, -2213802),
('2019-10-04', 'BATUJAJAR', 0, 0),
('2019-10-04', 'BKR', 0, -11437143),
('2019-10-04', 'CICALENGKA', 12917546, 0),
('2019-10-04', 'CIJAURA', 0, -3083196),
('2019-10-04', 'CIKALONG WETAN', 0, 0),
('2019-10-04', 'CILILIN', 0, 0),
('2019-10-04', 'CIMAHI', 0, -4947002),
('2019-10-04', 'DAGO', 0, 0),
('2019-10-04', 'JATINANGOR', 3878200, 0),
('2019-10-04', 'KOPO', 28000274, 0),
('2019-10-04', 'LEMBANG', 20011135, 0),
('2019-10-04', 'LEMBONG', 27528387, 0),
('2019-10-04', 'MAJALAYA', 7433689, 0),
('2019-10-04', 'PADALARANG', 50, 0),
('2019-10-04', 'PLASA RANCAEKEK', 27, 0),
('2019-10-04', 'RAJAWALI', 335, 0),
('2019-10-04', 'RANCAEKEK / ERRI', 0, 0),
('2019-10-04', 'RANCAEKEK 2/ LILIK', 0, 0),
('2019-10-04', 'SETIABUDI', 575857, 0),
('2019-10-04', 'SOREANG', 6735868, 0),
('2019-10-04', 'SUMEDANG', 16350183, 0),
('2019-10-04', 'SUPRATMAN', 28235, 0),
('2019-10-04', 'TANJUNGSARI', 0, 0),
('2019-10-04', 'UJUNG BERUNG', 0, -5399924),
('2019-10-04', 'WINDU', 19349458, 0),
('2019-10-05', 'ARCAMANIK', 0, 0),
('2019-10-05', 'BANJARAN', 0, -9911842),
('2019-10-05', 'BATUJAJAR', 0, 0),
('2019-10-05', 'BKR', 0, -11437143),
('2019-10-05', 'CICALENGKA', 0, -4601464),
('2019-10-05', 'CIJAURA', 0, -45161079),
('2019-10-05', 'CIKALONG WETAN', 0, 0),
('2019-10-05', 'CILILIN', 0, 0),
('2019-10-05', 'CIMAHI', 0, -20465148),
('2019-10-05', 'DAGO', 0, 0),
('2019-10-05', 'JATINANGOR', 3045319, 0),
('2019-10-05', 'KOPO', 0, -9088935),
('2019-10-05', 'LEMBANG', 0, -58886148),
('2019-10-05', 'LEMBONG', 0, -44239302),
('2019-10-05', 'MAJALAYA', 0, -5372676),
('2019-10-05', 'PADALARANG', 0, -14607230),
('2019-10-05', 'PLASA RANCAEKEK', 0, -12349859),
('2019-10-05', 'RAJAWALI', 0, -16822880),
('2019-10-05', 'RANCAEKEK / ERRI', 0, 0),
('2019-10-05', 'RANCAEKEK 2/ LILIK', 0, 0),
('2019-10-05', 'SETIABUDI', 0, -27686604),
('2019-10-05', 'SOREANG', 0, -3357694),
('2019-10-05', 'SUMEDANG', 0, -8889843),
('2019-10-05', 'SUPRATMAN', 0, -12727984),
('2019-10-05', 'TANJUNGSARI', 0, 0),
('2019-10-05', 'UJUNG BERUNG', 0, -19941365),
('2019-10-05', 'WINDU', 0, -21932620),
('2019-10-06', 'ARCAMANIK', 0, 0),
('2019-10-06', 'BANJARAN', 0, -9911842),
('2019-10-06', 'BATUJAJAR', 0, 0),
('2019-10-06', 'BKR', 0, -11437143),
('2019-10-06', 'CICALENGKA', 0, -4601464),
('2019-10-06', 'CIJAURA', 0, -72222779),
('2019-10-06', 'CIKALONG WETAN', 0, 0),
('2019-10-06', 'CILILIN', 0, 0),
('2019-10-06', 'CIMAHI', 0, -30669155),
('2019-10-06', 'DAGO', 0, 0),
('2019-10-06', 'JATINANGOR', 0, -1621512),
('2019-10-06', 'KOPO', 0, -23495779),
('2019-10-06', 'LEMBANG', 0, -68731731),
('2019-10-06', 'LEMBONG', 0, -96474823),
('2019-10-06', 'MAJALAYA', 0, -5372676),
('2019-10-06', 'PADALARANG', 0, -14607230),
('2019-10-06', 'PLASA RANCAEKEK', 0, -12349859),
('2019-10-06', 'RAJAWALI', 0, -32788282),
('2019-10-06', 'RANCAEKEK / ERRI', 0, 0),
('2019-10-06', 'RANCAEKEK 2/ LILIK', 0, 0),
('2019-10-06', 'SETIABUDI', 0, -27686604),
('2019-10-06', 'SOREANG', 0, -3357694),
('2019-10-06', 'SUMEDANG', 0, -18388707),
('2019-10-06', 'SUPRATMAN', 0, -20751276),
('2019-10-06', 'TANJUNGSARI', 0, 0),
('2019-10-06', 'UJUNG BERUNG', 0, -44205006),
('2019-10-06', 'WINDU', 0, -38082686),
('2019-10-07', 'ARCAMANIK', 0, 0),
('2019-10-07', 'BANJARAN', 227278, 0),
('2019-10-07', 'BATUJAJAR', 0, 0),
('2019-10-07', 'BKR', 0, -11437143),
('2019-10-07', 'CICALENGKA', 13917536, 0),
('2019-10-07', 'CIJAURA', 96658001, 0),
('2019-10-07', 'CIKALONG WETAN', 0, 0),
('2019-10-07', 'CILILIN', 0, 0),
('2019-10-07', 'CIMAHI', 58288998, 0),
('2019-10-07', 'DAGO', 0, 0),
('2019-10-07', 'JATINANGOR', 3878200, 0),
('2019-10-07', 'KOPO', 55000421, 0),
('2019-10-07', 'LEMBANG', 30011269, 0),
('2019-10-07', 'LEMBONG', 210528577, 0),
('2019-10-07', 'MAJALAYA', 25434324, 0),
('2019-10-07', 'PADALARANG', 70, 0),
('2019-10-07', 'PLASA RANCAEKEK', 27, 0),
('2019-10-07', 'RAJAWALI', 418, 0),
('2019-10-07', 'RANCAEKEK / ERRI', 0, 0),
('2019-10-07', 'RANCAEKEK 2/ LILIK', 0, 0),
('2019-10-07', 'SETIABUDI', 55575857, 0),
('2019-10-07', 'SOREANG', 0, -3357694),
('2019-10-07', 'SUMEDANG', 88950293, 0),
('2019-10-07', 'SUPRATMAN', 28424, 0),
('2019-10-07', 'TANJUNGSARI', 0, 0),
('2019-10-07', 'UJUNG BERUNG', 19600194, 0),
('2019-10-07', 'WINDU', 58349414, 0),
('2019-10-02', 'CIMAHI2', 0, 0),
('2019-10-02', 'RANCAEKEK 2/LILIK', 0, 0),
('2019-10-02', 'ARCAMANIK', 0, 0),
('2019-10-02', 'BANJARAN', 227284, 0),
('2019-10-02', 'BATUJAJAR', 0, 0),
('2019-10-02', 'BKR', 0, -11437143),
('2019-10-02', 'CICALENGKA', 0, -5708671),
('2019-10-02', 'CIJAURA', 0, -2749942),
('2019-10-02', 'CIKALONG WETAN', 0, 0),
('2019-10-02', 'CILILIN', 0, 0),
('2019-10-02', 'CIMAHI', 0, -602674),
('2019-10-02', 'DAGO', 0, 0),
('2019-10-02', 'JATINANGOR', 3878200, 0),
('2019-10-02', 'KOPO', 2000135, 0),
('2019-10-02', 'LEMBANG', 10792, 0),
('2019-10-02', 'LEMBONG', 24128214, 0),
('2019-10-02', 'MAJALAYA', 0, -1566664),
('2019-10-02', 'PADALARANG', 0, -1816350),
('2019-10-02', 'PLASA RANCAEKEK', 27, 0),
('2019-10-02', 'RAJAWALI', 185, 0),
('2019-10-02', 'RANCAEKEK / ERRI', 0, 0),
('2019-10-02', 'RANCAEKEK 2/ LILIK', 0, 0),
('2019-10-02', 'SETIABUDI', 0, 0),
('2019-10-02', 'SOREANG', 533845, 0),
('2019-10-02', 'SUMEDANG', 1200090, 0),
('2019-10-02', 'SUPRATMAN', 28198, 0),
('2019-10-02', 'TANJUNGSARI', 0, 0),
('2019-10-02', 'UJUNG BERUNG', 2000025, 0),
('2019-10-02', 'WINDU', 0, -650621);

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
('2019-10-01', 105000000),
('2019-10-03', 105000000),
('2019-10-04', 106000000),
('2019-10-05', 107000000),
('2019-10-06', 107000000),
('2019-10-07', 107000000),
('2019-10-02', 105000000);

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
('2019-10-02', 'ARCAMANIK', 0),
('2019-10-02', 'BANJARAN', 2441086),
('2019-10-02', 'BATUJAJAR', 0),
('2019-10-02', 'BKR', 0),
('2019-10-02', 'CICALENGKA', 0),
('2019-10-02', 'CIJAURA', 13095153),
('2019-10-02', 'CIKALONG WETAN', 0),
('2019-10-02', 'CILILIN', 0),
('2019-10-02', 'CIMAHI', 15555016),
('2019-10-02', 'DAGO', 0),
('2019-10-02', 'JATINANGOR', 484780),
('2019-10-02', 'KOPO', 7943343),
('2019-10-02', 'LEMBANG', 7345570),
('2019-10-02', 'LEMBONG', 25478395),
('2019-10-02', 'MAJALAYA', 3628850),
('2019-10-02', 'PADALARANG', 0),
('2019-10-02', 'PLASA RANCAEKEK', 7790835),
('2019-10-02', 'RAJAWALI', 5076322),
('2019-10-02', 'RANCAEKEK / ERRI', 0),
('2019-10-02', 'RANCAEKEK 2/ LILIK', 0),
('2019-10-02', 'SETIABUDI', 9424143),
('2019-10-02', 'SOREANG', 3222120),
('2019-10-02', 'SUMEDANG', 4120131),
('2019-10-02', 'SUPRATMAN', 989003),
('2019-10-02', 'TANJUNGSARI', 0),
('2019-10-02', 'UJUNG BERUNG', 6263453),
('2019-10-02', 'WINDU', 7653162),
('2019-10-03', 'ARCAMANIK', 0),
('2019-10-03', 'BANJARAN', 0),
('2019-10-03', 'BATUJAJAR', 0),
('2019-10-03', 'BKR', 0),
('2019-10-03', 'CICALENGKA', 9535783),
('2019-10-03', 'CIJAURA', 47043601),
('2019-10-03', 'CIKALONG WETAN', 0),
('2019-10-03', 'CILILIN', 0),
('2019-10-03', 'CIMAHI', 19579535),
('2019-10-03', 'DAGO', 0),
('2019-10-03', 'JATINANGOR', 1814994),
('2019-10-03', 'KOPO', 84121618),
('2019-10-03', 'LEMBANG', 13091687),
('2019-10-03', 'LEMBONG', 55309032),
('2019-10-03', 'MAJALAYA', 13463797),
('2019-10-03', 'PADALARANG', 1176800),
('2019-10-03', 'PLASA RANCAEKEK', 3074878),
('2019-10-03', 'RAJAWALI', 21279928),
('2019-10-03', 'RANCAEKEK / ERRI', 0),
('2019-10-03', 'RANCAEKEK 2/ LILIK', 0),
('2019-10-03', 'SETIABUDI', 15438496),
('2019-10-03', 'SOREANG', 7358949),
('2019-10-03', 'SUMEDANG', 15040976),
('2019-10-03', 'SUPRATMAN', 2773646),
('2019-10-03', 'TANJUNGSARI', 0),
('2019-10-03', 'UJUNG BERUNG', 6553296),
('2019-10-03', 'WINDU', 4799559),
('2019-10-04', 'ARCAMANIK', 0),
('2019-10-04', 'BANJARAN', 7698040),
('2019-10-04', 'BATUJAJAR', 0),
('2019-10-04', 'BKR', 0),
('2019-10-04', 'CICALENGKA', 17519010),
('2019-10-04', 'CIJAURA', 42077883),
('2019-10-04', 'CIKALONG WETAN', 0),
('2019-10-04', 'CILILIN', 0),
('2019-10-04', 'CIMAHI', 15518146),
('2019-10-04', 'DAGO', 0),
('2019-10-04', 'JATINANGOR', 832881),
('2019-10-04', 'KOPO', 37089209),
('2019-10-04', 'LEMBANG', 78897283),
('2019-10-04', 'LEMBONG', 71767689),
('2019-10-04', 'MAJALAYA', 12806365),
('2019-10-04', 'PADALARANG', 14607280),
('2019-10-04', 'PLASA RANCAEKEK', 12349886),
('2019-10-04', 'RAJAWALI', 16823215),
('2019-10-04', 'RANCAEKEK / ERRI', 0),
('2019-10-04', 'RANCAEKEK 2/ LILIK', 0),
('2019-10-04', 'SETIABUDI', 28262461),
('2019-10-04', 'SOREANG', 10093562),
('2019-10-04', 'SUMEDANG', 25240026),
('2019-10-04', 'SUPRATMAN', 12756219),
('2019-10-04', 'TANJUNGSARI', 0),
('2019-10-04', 'UJUNG BERUNG', 14541441),
('2019-10-04', 'WINDU', 41282078),
('2019-10-05', 'ARCAMANIK', 0),
('2019-10-05', 'BANJARAN', 0),
('2019-10-05', 'BATUJAJAR', 0),
('2019-10-05', 'BKR', 0),
('2019-10-05', 'CICALENGKA', 0),
('2019-10-05', 'CIJAURA', 27061700),
('2019-10-05', 'CIKALONG WETAN', 0),
('2019-10-05', 'CILILIN', 0),
('2019-10-05', 'CIMAHI', 10204007),
('2019-10-05', 'DAGO', 0),
('2019-10-05', 'JATINANGOR', 4666831),
('2019-10-05', 'KOPO', 14406844),
('2019-10-05', 'LEMBANG', 9845583),
('2019-10-05', 'LEMBONG', 52235521),
('2019-10-05', 'MAJALAYA', 0),
('2019-10-05', 'PADALARANG', 0),
('2019-10-05', 'PLASA RANCAEKEK', 0),
('2019-10-05', 'RAJAWALI', 15965402),
('2019-10-05', 'RANCAEKEK / ERRI', 0),
('2019-10-05', 'RANCAEKEK 2/ LILIK', 0),
('2019-10-05', 'SETIABUDI', 0),
('2019-10-05', 'SOREANG', 0),
('2019-10-05', 'SUMEDANG', 9498864),
('2019-10-05', 'SUPRATMAN', 8023292),
('2019-10-05', 'TANJUNGSARI', 0),
('2019-10-05', 'UJUNG BERUNG', 24263641),
('2019-10-05', 'WINDU', 16150066),
('2019-10-06', 'ARCAMANIK', 0),
('2019-10-06', 'BANJARAN', 0),
('2019-10-06', 'BATUJAJAR', 0),
('2019-10-06', 'BKR', 0),
('2019-10-06', 'CICALENGKA', 0),
('2019-10-06', 'CIJAURA', 0),
('2019-10-06', 'CIKALONG WETAN', 0),
('2019-10-06', 'CILILIN', 0),
('2019-10-06', 'CIMAHI', 0),
('2019-10-06', 'DAGO', 0),
('2019-10-06', 'JATINANGOR', 5388556),
('2019-10-06', 'KOPO', 0),
('2019-10-06', 'LEMBANG', 0),
('2019-10-06', 'LEMBONG', 0),
('2019-10-06', 'MAJALAYA', 0),
('2019-10-06', 'PADALARANG', 0),
('2019-10-06', 'PLASA RANCAEKEK', 0),
('2019-10-06', 'RAJAWALI', 0),
('2019-10-06', 'RANCAEKEK / ERRI', 0),
('2019-10-06', 'RANCAEKEK 2/ LILIK', 0),
('2019-10-06', 'SETIABUDI', 0),
('2019-10-06', 'SOREANG', 0),
('2019-10-06', 'SUMEDANG', 0),
('2019-10-06', 'SUPRATMAN', 0),
('2019-10-06', 'TANJUNGSARI', 0),
('2019-10-06', 'UJUNG BERUNG', 0),
('2019-10-06', 'WINDU', 0),
('2019-10-01', 'ARCAMANIK', 0),
('2019-10-01', 'BANJARAN', 0),
('2019-10-01', 'BATUJAJAR', 0),
('2019-10-01', 'BKR', 0),
('2019-10-01', 'CICALENGKA', 1454148),
('2019-10-01', 'CIJAURA', 9798182),
('2019-10-01', 'CIKALONG WETAN', 0),
('2019-10-01', 'CILILIN', 0),
('2019-10-01', 'CIMAHI', 3702674),
('2019-10-01', 'DAGO', 0),
('2019-10-01', 'JATINANGOR', 1197503),
('2019-10-01', 'KOPO', 3700948),
('2019-10-01', 'LEMBANG', 1977844),
('2019-10-01', 'LEMBONG', 5545915),
('2019-10-01', 'MAJALAYA', 1801939),
('2019-10-01', 'PADALARANG', 49860),
('2019-10-01', 'PLASA RANCAEKEK', 933220),
('2019-10-01', 'RAJAWALI', 5337008),
('2019-10-01', 'RANCAEKEK / ERRI', 0),
('2019-10-01', 'RANCAEKEK 2/ LILIK', 0),
('2019-10-01', 'SETIABUDI', 1662767),
('2019-10-01', 'SOREANG', 4620863),
('2019-10-01', 'SUMEDANG', 4526488),
('2019-10-01', 'SUPRATMAN', 1220468),
('2019-10-01', 'TANJUNGSARI', 0),
('2019-10-01', 'UJUNG BERUNG', 3404481),
('2019-10-01', 'WINDU', 3224466);

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
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810102222', 'RHINO NUGROHO', 221500, 3000, 2000, 500, 222000, '20'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura2', 'TRANSVISION P2H', '127810014958', 'INDRA PERMANA', 221500, 3000, 2000, 500, 222000, '20'),
('2019-10-03', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810132742', 'H YAYAN SUBARNA', 221500, 3000, 2000, 500, 222000, '20'),
('2019-10-04', '03', '695', 'D3_Kop Dadali BDG', '1097', 'cimahi2', 'TRANSVISION P2H', '127810067678', 'HERWANTO', 221500, 2500, 2000, 500, 222000, '20');

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
('0000-00-00', 'Arindo 1 Okt 2019.xlsx', 'ARINDO'),
('2019-10-01', 'MKMSettleLoket_01102019_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2019-10-01', 'MKMSettleLoket_01102019_D3_KopDadaliBDG(2).xlsx', 'PLN'),
('2019-10-01', 'SettleP2HSUM_01-10-2019.xlsx', 'JASTEL'),
('2019-10-01', 'SettlePDAMPPOBDet(695)01-10-2019_01-10-2019.xlsx', 'PDAM'),
('2019-10-01', 'SettleTselDet_03_0(695)01-10-2019_01-10-2019.xlsx', 'VOUCHER'),
('2019-10-01', 'SettleTselDet_03_20000(695)01-10-2019_01-10-2019.x', 'VOUCHER'),
('2019-10-01', 'SettleTselDet_03_25000(695)01-10-2019_01-10-2019.x', 'VOUCHER'),
('2019-10-01', 'SettleTselDet_03_50000(695)01-10-2019_01-10-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 2 Okt 2019.xlsx', 'ARINDO'),
('2019-10-02', 'MKMSettleLoket_02102019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-10-02', 'SettleP2HSUM_02-10-2019.xlsx', 'JASTEL'),
('2019-10-02', 'SettlePDAMPPOBDet(695)02-10-2019_02-10-2019.xlsx', 'PDAM'),
('2019-10-02', 'SettleTselDet_03_0(695)02-10-2019_02-10-2019.xlsx', 'VOUCHER'),
('2019-10-02', 'SettleTselDet_03_100000(695)02-10-2019_02-10-2019.', 'VOUCHER'),
('2019-10-02', 'SettleTselDet_03_20000(695)02-10-2019_02-10-2019.x', 'VOUCHER'),
('2019-10-02', 'SettleTselDet_03_25000(695)02-10-2019_02-10-2019.x', 'VOUCHER'),
('2019-10-02', 'SettleTselDet_03_50000(695)02-10-2019_02-10-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 3 Okt 2019.xlsx', 'ARINDO'),
('2019-10-03', 'MKMSettleLoket_03102019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-10-03', 'SettleP2HSUM_03-10-2019.xlsx', 'JASTEL'),
('2019-10-03', 'SettlePAYTVDet_03_20(695)03-10-2019_03-10-2019.xls', 'TRANSVISION'),
('2019-10-03', 'SettlePDAMPPOBDet(695)03-10-2019_03-10-2019.xlsx', 'PDAM'),
('2019-10-03', 'SettleTselDet_03_0(695)03-10-2019_03-10-2019.xlsx', 'VOUCHER'),
('2019-10-03', 'SettleTselDet_03_100000(695)03-10-2019_03-10-2019.', 'VOUCHER'),
('2019-10-03', 'SettleTselDet_03_20000(695)03-10-2019_03-10-2019.x', 'VOUCHER'),
('2019-10-03', 'SettleTselDet_03_25000(695)03-10-2019_03-10-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 4 Okt 2019.xlsx', 'ARINDO'),
('2019-10-04', 'MKMSettleLoket_04102019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-10-04', 'SettleP2HSUM_04-10-2019.xlsx', 'JASTEL'),
('2019-10-04', 'SettlePAYTVDet_03_20(695)04-10-2019_04-10-2019.xls', 'TRANSVISION'),
('2019-10-04', 'SettlePDAMPPOBDet(695)04-10-2019_04-10-2019.xlsx', 'PDAM'),
('2019-10-04', 'SettleTselDet_03_0(695)04-10-2019_04-10-2019.xlsx', 'VOUCHER'),
('2019-10-04', 'SettleTselDet_03_20000(695)04-10-2019_04-10-2019.x', 'VOUCHER'),
('2019-10-04', 'SettleTselDet_03_25000(695)04-10-2019_04-10-2019.x', 'VOUCHER'),
('2019-10-04', 'SettleTselDet_03_50000(695)04-10-2019_04-10-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 5 Okt 2019.xlsx', 'ARINDO'),
('2019-10-05', 'MKMSettleLoket_05102019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-10-05', 'SettleP2HSUM_05-10-2019.xlsx', 'JASTEL'),
('2019-10-05', 'SettlePDAMPPOBDet(695)05-10-2019_05-10-2019.xlsx', 'PDAM'),
('2019-10-05', 'SettleTselDet_03_0(695)05-10-2019_05-10-2019.xlsx', 'VOUCHER'),
('2019-10-05', 'SettleTselDet_03_20000(695)05-10-2019_05-10-2019.x', 'VOUCHER'),
('0000-00-00', 'MKMSettleLoket_06102019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-10-06', 'SettleP2HSUM_06-10-2019.xlsx', 'JASTEL');

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
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 'cimahi2', 0, '08122001162', 'SUMXXXXXXXXXXXXXXXXXXXXXXXXH S', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 'cimahi2', 0, '08122001161', 'SUMXXXXXXXXXXXXXXXXXINI', 82896, 0, 1500, 81396, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '082115460496', 'SALXXXXXXXNJI', 111411, 0, 1500, 109911, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '081313154966', 'AGUXXXXXXXXXADI', 197312, 0, 1500, 195812, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08122355788', 'VIVXXXXXXXXXARA', 60500, 0, 1500, 59000, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08112486699', 'YUDXXXXXXXNTO', 3892, 0, 1500, 2392, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura2', 0, '081322061597', 'LULXXXXXXANA', 66000, 0, 1500, 64500, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman2', 0, '081221218870', 'RSXXXXXX', 277266, 0, 1500, 275766, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 'cimahi2', 0, '085222095268', 'HERXXXXXXONO', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo2', 0, '085102802830', 'HIDXXXXXXXXXXJAT', 88000, 0, 1500, 86500, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '081320308952', 'BAMXX', 67716, 0, 1500, 66216, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo2', 0, '081320139525', 'RD XXXXXXXXXXXWAN', 165000, 0, 1500, 163500, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 0, '081322332377', 'ESTXXXXXXXXXXXXSIH', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1109', 'D3_Jatinangor', 'jatinangor', 0, '08112162668', 'SOEXXXXXXXDIT', 80003, 0, 1500, 78503, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '081321295395', 'YUSXXXX', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 0, '081268337748', 'JAYXXXXXXXXXXXXXXXXSTH', 413003, 0, 1500, 411503, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 0, '0811209354', 'HRXXXXXXXXXXNDI', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '081223486965', 'MARXXXXXXXXXXXXXXXXXXXRTA', 66055, 0, 1500, 64555, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '085100187767', 'TAOXXXXXXXXXYAT', 82500, 0, 1500, 81000, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '08112287789', 'DINXXXXXXXXXXARI', 107734, 0, 1500, 106234, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '08112220984', 'KEMXXXXXXXXXXEIN', 81015, 0, 1500, 79515, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 0, '085222922512', 'KARXXXXXXXXXXXXXXXXXXXYAH', 71104, 0, 1500, 69604, 1001),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 'ddl_cclengka', 20000, '082216426867', 'SN 0051003908776341', 21000, 0, 900, 20100, 1002),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 'cimahi2', 20000, '085102119069', 'SN 0051003909586677', 21000, 0, 900, 20100, 1002),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 20000, '081386255079', 'SN 0051003910173247', 21000, 0, 900, 20100, 1002),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 20000, '082117342283', 'SN 0051003910290973', 21000, 0, 900, 20100, 1002),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1109', 'D3_Jatinangor', 'jatinangor', 25000, '082311311107', 'SN 0051003908941128', 26000, 0, 1000, 25000, 1002),
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 50000, '082217259911', 'SN 0051003909044667', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '08112431199', 'MOHXXXXXXXXXXXXXXDIQ', 93478, 0, 1500, 91978, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 0, '085107087723', 'NENXXXXXXXXXXXXXXXXXRIA', 140013, 0, 1500, 138513, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '082316993922', 'OTOXXXXXXXXXXMAN', 287760, 0, 1500, 286260, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 0, '082117444709', 'SUGXXXXXXXOTO', 66649, 0, 1500, 65149, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '081394602437', 'NURXXXXXXH', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '082126403215', 'HERXXXXXXXXA', 66000, 0, 1500, 64500, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 'windu1', 0, '085220726970', 'SUSXXXXXXXORO', 165000, 0, 1500, 163500, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08112205142', 'EDYXXXXXXXNTO', 118921, 0, 1500, 117421, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo2', 0, '081321473205', 'LILXXXXXXXXXXXXXXXXXXX HJ', 135905, 0, 1500, 134405, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '082126605617', 'SRIXXXANI', 105844, 0, 1500, 104344, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '08112282804', 'BUDXXXXXXXXNTO', 38390, 0, 1500, 36890, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '081222682466', 'TITXXXXXXXATI', 161755, 0, 1500, 160255, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 0, '08112231971', 'DUDXXXXXWAN', 114158, 0, 1500, 112658, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '0811228766', 'ENDXXXXXXXXXXINI', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura2', 0, '08122152279', 'PASXXXXEDY', 613956, 0, 1500, 612456, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08112092211', 'ADEXXXXHAN', 192264, 0, 1500, 190764, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08112224110', 'HERXXXXXXXXXRYA', 66000, 0, 1500, 64500, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '0811208605', 'YAYXXXXXXAYU', 332745, 0, 1500, 331245, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1098', 'D3_Geger Kalong', 'gegerkalong1', 0, '08112231124', 'WAHXXXXXXXXXXXXXXX PD', 66000, 0, 1500, 64500, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08112433233', 'HAIXXXXXXISA', 65787, 0, 1500, 64287, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08112158405', 'DEDXXXXXXXRDI', 66000, 0, 1500, 64500, 1001),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 100000, '08122469658', 'SN 0051003913593417', 99000, 0, 1600, 97400, 1002),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi1', 20000, '085221993299', 'SN 0051003913906693', 21000, 0, 900, 20100, 1002),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi1', 20000, '085221993299', 'SN 0051003913907714', 21000, 0, 900, 20100, 1002),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1091', 'D3_BKR', 'bkr2', 25000, '085105655000', 'SN 0051003913196544', 26000, 0, 1000, 25000, 1002),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 25000, '081223418000', 'SN 0051003913637592', 26000, 0, 1000, 25000, 1002),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 'cicalengka1', 50000, '081320371962', 'SN 0051003913204268', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1091', 'D3_BKR', 'bkr2', 50000, '085100644948', 'SN 0051003913224182', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 50000, '085101870563', 'SN 0051003913242315', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1098', 'D3_Geger Kalong', 'gegerkalong1', 50000, '085101796464', 'SN 0051003913244459', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-02', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 'cicalengka1', 50000, '085105172333', 'SN 0051003914579505', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura', 0, '08112331171', 'KANXXXXXXXXXXXXXXXXXXXXATU', 909038, 0, 1500, 907538, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 'windu2', 0, '081320424910', 'DEDXXXXXXADI', 59020, 0, 1500, 57520, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1097', 'D3_Cimahi', 'cimahi2', 0, '08112210577', 'MUHXXXXXXXXXIEF', 92576, 0, 1500, 91076, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08112031282', 'GUNXXXXXXXXXXXXXXXXXX RA', 78208, 0, 1500, 76708, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 'windu2', 0, '08112012017', 'JAYXXXXXXKRI', 165264, 0, 1500, 163764, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '081320381188', 'IWAXXXXXXXXWAN', 95777, 0, 1500, 94277, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura2', 0, '082126729372', 'GINXXXXXXXXXXINI', 70202, 0, 1500, 68702, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1107', 'D3_Soreang', 'soreang', 0, '081321415999', 'DRSXXXXXXXXXXXXXNRY', 334837, 0, 1500, 333337, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '0811206521', 'RONXXXXXXXMAN', 92620, 0, 1500, 91120, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '08112317882', 'ARIXXXXXXXXNTO', 169224, 0, 1500, 167724, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08112160300', 'ARIXXXXPIN', 112266, 0, 1500, 110766, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '081222720672', 'ENDXXXXXXXXXXXXXXWAN', 84190, 0, 1500, 82690, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08122158380', 'HANXXXXXXXXANG', 67287, 0, 1500, 65787, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '082317371933', 'DIDXXXXXXXXXI', 109413, 0, 1500, 107913, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo1', 0, '081321996656', 'HJXXXXXXXXXXXXXXXXXX IR', 54827, 0, 1500, 53327, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08122322888', 'BUDXXXXXXXXXXXXXWAN', 119504, 0, 1500, 118004, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1106', 'D3_Lembang', 'lembang', 0, '081321167764', 'BULXXXXXXXXXXXDRS', 49500, 0, 1500, 48000, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 0, '08112355111', 'USU', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '081322923754', 'MAIXXXXXXXXXA', 198000, 0, 1500, 196500, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '08112027474', 'ASEXXXXXXMAT', 170500, 0, 1500, 169000, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman2', 0, '082119446003', 'PEPXXXXXXXXXXXXXXXXXXXNDI', 66000, 0, 1500, 64500, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '081321428762', 'YAYXXXXXXXXXXXYAT', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 0, '0811203434', 'SJAXXXXXXXXXXXXXXXXXDR', 282095, 0, 1500, 280595, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 0, '0811233634', 'KARXXXXXXXXXXXXXXXXXXXXXXXMEN', 150183, 0, 1500, 148683, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '085220660666', 'MUGXXXXXXXITO', 104896, 0, 1500, 103396, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 0, '08122126809', 'TINXXXXXXXXXXXINI', 67716, 0, 1500, 66216, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '081223761932', 'ASEXXXXXMAT', 80522, 0, 1500, 79022, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '08112287210', 'HIRXXXXXXXXXXXXAWA', 638566, 0, 1500, 637066, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '081313142560', 'IMAXXXXXXINI', 123527, 0, 1500, 122027, 1001),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1109', 'D3_Jatinangor', 'jatinangor', 100000, '085240100676', 'SN 0051003917036733', 99000, 0, 1600, 97400, 1002),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 'cicalengka1', 100000, '081224662801', 'SN 0051003917696082', 99000, 0, 1600, 97400, 1002),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1100', 'D3_Cicalengka', 'cicalengka1', 100000, '082119812536', 'SN 0051003917697535', 99000, 0, 1600, 97400, 1002),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 100000, '081217807036', 'SN 0051003918451875', 99000, 0, 1600, 97400, 1002),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 100000, '081217807036', 'SN 0051003918453427', 99000, 0, 1600, 97400, 1002),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 20000, '081222580019', 'SN 0051003918243871', 21000, 0, 900, 20100, 1002),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 20000, '081323595100', 'SN 0051003918245213', 21000, 0, 900, 20100, 1002),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1098', 'D3_Geger Kalong', 'gegerkalong1', 20000, '085104654310', 'SN 0051003918303646', 21000, 0, 900, 20100, 1002),
(3, '2019-10-03', '695', 'D3_Kop Dadali BDG', '1106', 'D3_Lembang', 'lembang', 25000, '085100284598', 'SN 0051003917039047', 26000, 0, 1000, 25000, 1002),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman2', 0, '0811224041', 'HRSXXXXXXXXXXUMO', 122056, 0, 1500, 120556, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi1', 0, '0811217698', 'SANXXXXXXXXXWAN', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi1', 0, '08122325878', 'SANXXXXXXXXXWAN', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1107', 'D3_Soreang', 'soreang', 0, '08122341414', 'LELXXXXXXXANA', 130240, 0, 1500, 128740, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 'windu2', 0, '08122015054', 'DRSXXXXXXXXXXXXDJI', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1092', 'D3_Windu', 'windu1', 0, '08122035514', 'WIEXXXXXXXANI', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 0, '08122011014', 'ENDXXXXXXXXXXXX HJ', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '082128403005', 'IINXXXXXINI', 115148, 0, 1500, 113648, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '082126832422', 'USMXXXXXMAN', 69003, 0, 1500, 67503, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '08112231869', 'DADXXX', 169455, 0, 1500, 167955, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1104', 'D3_Sumedang', 'sumedang2', 0, '081394329177', 'DARXXXXXXXXXELI', 135740, 0, 1500, 134240, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi2', 0, '081320261071', 'RITXXXXXXXXXXXXGDO', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura2', 0, '082320401693', 'HJ XXXXXXXXXXNTI', 66000, 0, 1500, 64500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08122036055', 'ADEXXXXXAGA', 401299, 0, 1500, 399799, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182464', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182466', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182469', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182472', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182474', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182476', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182479', 'RABXXXXXXXXXXAYA', 110001, 0, 1500, 108501, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182483', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182484', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182489', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182490', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182491', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182494', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182497', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182499', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182514', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182516', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182520', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182522', 'RABXXXXXXXXXXAYA', 110001, 0, 1500, 108501, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182528', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182530', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112182551', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '081214324423', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112292271', 'RABXXXXXXXXXXAYA', 220000, 0, 1500, 218500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209218', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 41250, 0, 1500, 39750, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209219', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209226', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209227', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209231', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209235', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 68750, 0, 1500, 67250, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209236', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209239', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209240', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209241', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209242', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112209245', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112293586', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112294764', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112294766', 'RABXXXXXXXXXXXXXXXXXXXXXXXE G', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291554', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291556', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291557', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291565', 'RABXXXXXXXXXXAYA', 110000, 0, 1500, 108500, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291642', 'RABXXXXXXXXXXAYA', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08112291643', 'RABXXXXXXXXXXAYA', 27500, 0, 1500, 26000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo2', 0, '08122306039', 'TJEXXXXXXXXJAY', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo2', 0, '08122301899', 'YUSXXXXXXTJI', 1115839, 0, 1500, 1114339, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '081220276515', 'TEDXXXXXXXXXXXXXADI', 136917, 0, 1500, 135417, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '0811217813', 'I  XXXXXRTO', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '08122105226', 'BOAXXXXXXXXXXXXXXXXXXXXXSH', 115577, 0, 1500, 114077, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman2', 0, '081220581313', 'YULXXXXXXIAH', 620350, 0, 1500, 618850, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman2', 0, '08112441992', 'IBRXXXXXXXAMA', 98480, 0, 1500, 96980, 1001),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo2', 20000, '081320119926', 'SN 0051003920860302', 21000, 0, 900, 20100, 1002),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 20000, '082214901116', 'SN 0051003921165983', 21000, 0, 900, 20100, 1002),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 20000, '082321232350', 'SN 0051003921180609', 21000, 0, 900, 20100, 1002),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi1', 25000, '081223649947', 'SN 0051003921175321', 26000, 0, 1000, 25000, 1002),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 25000, '085221350830', 'SN 0051003921934891', 26000, 0, 1000, 25000, 1002),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi1', 50000, '081223649957', 'SN 0051003921171912', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1089', 'D3_Setia Budi', 'setiabudi1', 50000, '085103259973', 'SN 0051003921173644', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 50000, '081281831739', 'SN 0051003922137177', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1091', 'D3_BKR', 'bkr2', 50000, '081224544360', 'SN 0051003922286647', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura2', 50000, '082216854669', 'SN 0051003922306447', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-04', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura2', 50000, '081310005468', 'SN 0051003922308214', 51000, 0, 1300, 49700, 1002),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '08122013061', 'SAYXXXXXXXALI', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '081322656688', 'HASXXXXXSAN', 65725, 0, 1500, 64225, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo1', 0, '081322191961', 'EMUXXXXXXXADI', 41421, 0, 1500, 39921, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 0, '08112008475', 'RUDXXXXXXXXXXXXXF', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura2', 0, '082117496902', 'SRIXXXXXEKI', 114430, 0, 1500, 112930, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 0, '081322509877', 'MARXXXXXXXXXXXXXXATI', 70290, 0, 1500, 68790, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '081321545052', 'HASXXXXXXXXXXXXXXNDA', 55000, 0, 1500, 53500, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '0811229067', 'AYIXXXXXXXXXXXXXXXA D', 67382, 0, 1500, 65882, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '08122022655', 'SUSXXXXXXXXXMAN', 38500, 0, 1500, 37000, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '08122047735', 'NINXXXXXXXXXXX K', 236604, 0, 1500, 235104, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '08122004766', 'WATXXXXXXXXXXXXMAN', 237138, 0, 1500, 235638, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 0, '08122022657', 'SEBXXXIAN', 88858, 0, 1500, 87358, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura2', 0, '08122227394', 'HJXXXXXXXXXXXENI', 49500, 0, 1500, 48000, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 0, '08122350422', 'INNX', 49500, 0, 1500, 48000, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1095', 'D3_Cijaura', 'cijaura2', 0, '081221883716', 'MIMXXXXXXXINI', 119702, 0, 1500, 118202, 1001),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1096', 'D3_Kopo', 'kopo1', 20000, '085222222187', 'SN 0051003924938827', 21000, 0, 900, 20100, 1002),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 20000, '082120639836', 'SN 0051003924940853', 21000, 0, 900, 20100, 1002),
(3, '2019-10-05', '695', 'D3_Kop Dadali BDG', '1090', 'D3_Rajawali', 'rajawali2', 20000, '082120639836', 'SN 0051003924941751', 21000, 0, 900, 20100, 1002);

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
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
