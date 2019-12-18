-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 08:16 AM
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
('UBR1001', '2019-10-01', 2, 188274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 188274);

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
('2019-10-01', 223000);

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
(7, 'CIJAURA2', 'cijaura2', 'CIJAURA', 'CIJAURA 2', 'CJA2002', 'CIJAURA'),
(10, 'CIMAHI 1', 'cimahi1', 'CIMAHI', 'CIMAHI 1', 'CMI1001', NULL),
(11, 'CIMAHI 2', 'cimahi2', 'CIMAHI', 'CIMAHI 2', 'CMI2002', NULL),
(14, 'CICALENGKA', 'ddl_cclengka', 'CICALENGKA', 'CICALENGKA', 'CLK1001', NULL),
(16, 'PLASA RANCAEKEK', 'gegerkalong1', 'PLASA RANCAEKEK', 'PLASA RANCAEKEK', 'RCK3003', NULL),
(17, 'JATINANGOR', 'jatinangor', 'JATINANGOR', 'JATINANGOR', NULL, NULL),
(19, 'KOPO 1', 'kopo1', 'KOPO', 'KOPO 1', 'KPO1001', NULL),
(20, 'KOPO 2 ', 'kopo2', 'KOPO', 'KOPO 2', 'KPO2002', NULL),
(21, 'LEMBANG', 'lembang', 'LEMBANG', 'LEMBANG', 'LEM1001', NULL),
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
(43, 'CIJAURA1', 'cijaura1', 'CIJAURA', 'CIJAURA 1', NULL, NULL),
(44, 'PADALARANG', 'padalarang', 'PADALARANG', 'PADALARANG', NULL, NULL),
(45, 'LEMBANG 1', 'lembang1', 'LEMBANG', 'LEMBANG', NULL, NULL),
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
('2019-10-01', '00:00:00 WIB', 'D3_Kop Dadali BDG', 'windu2', 30315033, 'PDAM Kota Bandung', 2500, 2147483647, 1, 1, 52200, 2500, 54700);

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
('2019-10-01', '3', '315', 'D3_Kop Dadali BDG', 'cijaura2', 315063, 1, 1, 50000, 5000, 55000);

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
('2019-10-01', 0),
('2019-12-01', 0);

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
('2019-10-01', '03', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 10, 10, 2907958, 30000, 5000, 2912958, 3, 'ujungberung2');

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
('2019-10-02', 'ARCAMANIK', 0, 0),
('2019-10-02', 'BATUJAJAR', 0, 0),
('2019-10-02', 'CIJAURA 2', 0, -6941178),
('2019-10-02', 'CIKALONG WETAN', 0, 0),
('2019-10-02', 'CILILIN', 0, 0),
('2019-10-02', 'DAGO', 0, 0),
('2019-10-02', 'RANCAEKEK / ERRI', 0, 0),
('2019-10-02', 'RANCAEKEK 2/ LILIK', 0, 0),
('2019-10-02', 'TANJUNGSARI', 0, 0),
('2019-12-02', 'BANJARAN', 0, 0),
('2019-12-02', 'BKR', 0, 0),
('2019-12-02', 'CICALENGKA', 0, 0),
('2019-12-02', 'CIJAURA', 0, 0),
('2019-12-02', 'CIMAHI', 0, 0),
('2019-12-02', 'JATINANGOR', 0, 0),
('2019-12-02', 'KOPO', 0, 0),
('2019-12-02', 'LEMBANG', 0, 0),
('2019-12-02', 'LEMBONG', 0, 0),
('2019-12-02', 'MAJALAYA', 0, 0),
('2019-12-02', 'PADALARANG', 0, 0),
('2019-12-02', 'PLASA RANCAEKEK', 0, 0),
('2019-12-02', 'RAJAWALI', 0, 0),
('2019-12-02', 'SETIABUDI', 0, 0),
('2019-12-02', 'SOREANG', 0, 0),
('2019-12-02', 'SUMEDANG', 0, 0),
('2019-12-02', 'SUPRATMAN', 0, 0),
('2019-12-02', 'UJUNG BERUNG', 0, 0),
('2019-12-02', 'WINDU', 0, 0),
('2019-10-02', 'BANJARAN', 0, 0),
('2019-10-02', 'BKR', 0, 0),
('2019-10-02', 'CICALENGKA', 0, -1454148),
('2019-10-02', 'CIJAURA', 0, -2857004),
('2019-10-02', 'CIMAHI', 0, -3702674),
('2019-10-02', 'JATINANGOR', 0, -1197503),
('2019-10-02', 'KOPO', 0, -3700948),
('2019-10-02', 'LEMBANG', 0, -1977844),
('2019-10-02', 'LEMBONG', 0, -5545915),
('2019-10-02', 'MAJALAYA', 0, -1801939),
('2019-10-02', 'PADALARANG', 0, -49860),
('2019-10-02', 'PLASA RANCAEKEK', 0, -933220),
('2019-10-02', 'RAJAWALI', 0, -5337008),
('2019-10-02', 'SETIABUDI', 0, -1662767),
('2019-10-02', 'SOREANG', 0, -4620863),
('2019-10-02', 'SUMEDANG', 0, -4526488),
('2019-10-02', 'SUPRATMAN', 0, -1220468),
('2019-10-02', 'UJUNG BERUNG', 0, -3404481),
('2019-10-02', 'WINDU', 0, -3224466);

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
('2019-12-02', 0),
('2019-10-02', 0);

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
('2019-10-01', 'ARCAMANIK', 0),
('2019-10-01', 'BATUJAJAR', 0),
('2019-10-01', 'CIJAURA 2', 6941178),
('2019-10-01', 'CIKALONG WETAN', 0),
('2019-10-01', 'CILILIN', 0),
('2019-10-01', 'DAGO', 0),
('2019-10-01', 'RANCAEKEK / ERRI', 0),
('2019-10-01', 'RANCAEKEK 2/ LILIK', 0),
('2019-10-01', 'TANJUNGSARI', 0),
('2019-10-01', 'BANJARAN', 0),
('2019-10-01', 'BKR', 0),
('2019-10-01', 'CICALENGKA', 1454148),
('2019-10-01', 'CIJAURA', 9798182),
('2019-10-01', 'CIMAHI', 3702674),
('2019-10-01', 'JATINANGOR', 1197503),
('2019-10-01', 'KOPO', 3700948),
('2019-10-01', 'LEMBANG', 1977844),
('2019-10-01', 'LEMBONG', 5545915),
('2019-10-01', 'MAJALAYA', 1801939),
('2019-10-01', 'PADALARANG', 49860),
('2019-10-01', 'PLASA RANCAEKEK', 933220),
('2019-10-01', 'RAJAWALI', 5337008),
('2019-10-01', 'SETIABUDI', 1662767),
('2019-10-01', 'SOREANG', 4620863),
('2019-10-01', 'SUMEDANG', 4526488),
('2019-10-01', 'SUPRATMAN', 1220468),
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
('2019-10-01', 'SettleTselDet_03_50000(695)01-10-2019_01-10-2019.x', 'VOUCHER');

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
(3, '2019-10-01', '695', 'D3_Kop Dadali BDG', '1094', 'D3_Ujung Berung', 'ujungberung2', 50000, '082217259911', 'SN 0051003909044667', 51000, 0, 1300, 49700, 1002);

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
