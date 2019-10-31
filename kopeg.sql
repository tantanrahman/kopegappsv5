-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2019 pada 06.55
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 5.6.34

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
-- Struktur dari tabel `aora`
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
-- Struktur dari tabel `arindo_input`
--

CREATE TABLE `arindo_input` (
  `tanggal` date NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `fee` int(11) NOT NULL,
  `pen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `arindo_tempat`
--

CREATE TABLE `arindo_tempat` (
  `user` varchar(25) DEFAULT NULL,
  `kode_user` varchar(25) NOT NULL,
  `tempat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `arindo_tempat`
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
-- Struktur dari tabel `arindo_trx`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya_pln`
--

CREATE TABLE `biaya_pln` (
  `biaya_admin` int(11) NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biaya_pln`
--

INSERT INTO `biaya_pln` (`biaya_admin`, `fee`) VALUES
(2700, 2000),
(3000, 2000),
(5000, 3300);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya_voucher`
--

CREATE TABLE `biaya_voucher` (
  `denom` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `fee_kopegtel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biaya_voucher`
--

INSERT INTO `biaya_voucher` (`denom`, `harga_jual`, `fee_kopegtel`) VALUES
(10000, 11000, 800),
(20000, 21000, 10000),
(25000, 25500, 1000),
(50000, 50000, 1500),
(100000, 99000, 3000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `coba`
--

CREATE TABLE `coba` (
  `a` varchar(20) NOT NULL,
  `b` int(20) NOT NULL,
  `c` int(20) NOT NULL,
  `d` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `coba`
--

INSERT INTO `coba` (`a`, `b`, `c`, `d`) VALUES
('a', 2, 0, 0),
('a', 0, 3, 0),
('a', 0, 0, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fax`
--

CREATE TABLE `fax` (
  `id` int(255) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `fax` int(255) NOT NULL,
  `lainlain` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fax`
--

INSERT INTO `fax` (`id`, `tanggal`, `lokasi`, `fax`, `lainlain`) VALUES
(1, '2016-04-25', 'ARCAMANIK', 10000, 100001);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fee_admin`
--

CREATE TABLE `fee_admin` (
  `tanggal` date NOT NULL,
  `fee_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fee_admin`
--

INSERT INTO `fee_admin` (`tanggal`, `fee_admin`) VALUES
('2016-11-01', 736500),
('2016-11-02', 453500),
('2016-11-03', 483000),
('2016-11-04', 2942500),
('2016-11-05', 1236500),
('2016-11-06', 3000),
('2016-11-07', 7563500),
('2016-11-08', 5196000),
('2016-11-09', 4215500),
('2016-11-10', 4111000),
('2016-11-11', 3558000),
('2016-11-12', 778000),
('2016-11-13', 12000),
('2016-11-14', 5231500),
('2016-11-15', 5346000),
('2016-11-16', 4984000),
('2016-11-17', 4930000),
('2016-11-18', 8557500),
('2016-11-19', 3029000),
('2016-11-20', 57000),
('2016-11-21', 5351500),
('2016-11-22', 1861000),
('2016-11-23', 1321500),
('2016-11-24', 772000),
('2016-11-25', 1012500),
('2016-11-26', 139500),
('2016-11-27', 0),
('2016-11-28', 1670000),
('2016-11-29', 1007500),
('2016-11-30', 746000),
('2016-12-01', 887500),
('2016-12-02', 532000),
('2016-12-03', 129000),
('2016-12-05', 5247000),
('2016-12-04', 0),
('2016-12-06', 5307000),
('2016-12-07', 4951500),
('2016-12-08', 3990000),
('2016-12-09', 3888000),
('2016-12-10', 1182500),
('2016-12-11', 0),
('2016-12-12', 15000),
('2016-12-13', 5344500),
('2016-12-14', 5196000),
('2016-12-27', 2210500),
('2016-12-28', 1014500),
('2017-05-16', 4703000),
('2017-05-17', 5586500),
('2017-05-18', 5946500),
('2017-07-12', 3890000),
('2017-07-05', 3692500),
('2018-03-01', 341500),
('2018-03-02', 307500),
('2018-05-03', 270000),
('2018-10-01', 600500),
('2019-08-01', 159500),
('0000-00-00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fee_akses`
--

CREATE TABLE `fee_akses` (
  `tanggal` date NOT NULL,
  `fee_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fee_akses`
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
('0000-00-00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fee_arindo`
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
-- Struktur dari tabel `fee_pdam`
--

CREATE TABLE `fee_pdam` (
  `pdam` varchar(50) NOT NULL,
  `regional` varchar(50) NOT NULL,
  `biaya_admin` int(11) NOT NULL,
  `fee_mitra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fee_pdam`
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
-- Struktur dari tabel `harga_pulsa`
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
-- Dumping data untuk tabel `harga_pulsa`
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
-- Struktur dari tabel `indovision`
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
-- Dumping data untuk tabel `indovision`
--

INSERT INTO `indovision` (`tanggal`, `divre`, `kode_kopeg`, `nama_kopeg`, `kode_loket`, `loket`, `nama_biller`, `account`, `customer`, `tagihan`, `surcharge`, `fee_ca`, `fee_finnet`, `kewajiban`, `kode_biller`) VALUES
('2016-11-12', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'INDOVISION P2H', '401003070381', 'CAHYA  NINGRUM', 179900, 0, 1500, 1500, 178400, '55'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'INDOVISION P2H', '401002860700', 'AGUS	SOLEHUDIN', 226965, 0, 1500, 1500, 225465, '55'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'INDOVISION P2H', '401002729780', 'ANDRI  JOHANNES', 344800, 0, 1500, 1500, 343300, '55'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'INDOVISION P2H', '401001596979', 'ARIYANTO', 429900, 0, 1500, 1500, 428400, '55'),
('2016-12-10', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'INDOVISION P2H', '401003070381', 'CAHYA  NINGRUM', 179900, 0, 1500, 1500, 178400, '55'),
('2017-07-05', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'INDOVISION P2H', '401003844663', 'DIAN	WAHYUDI', 374900, 0, 1500, 1500, 373400, '55'),
('2017-07-05', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'INDOVISION P2H', '401001596979', 'ARIYANTO', 439900, 0, 1500, 1500, 438400, '55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kaliuser`
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
-- Dumping data untuk tabel `kaliuser`
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
-- Struktur dari tabel `kinerja_user`
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
-- Struktur dari tabel `kode_awal`
--

CREATE TABLE `kode_awal` (
  `nomor_awal` varchar(10) NOT NULL,
  `produk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kode_awal`
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
-- Struktur dari tabel `konpensasi`
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
-- Struktur dari tabel `k_aoratv`
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
-- Struktur dari tabel `k_arindo`
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
-- Struktur dari tabel `k_arindo_adira`
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
-- Struktur dari tabel `k_arindo_adiratv`
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
-- Struktur dari tabel `k_arindo_baf`
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
-- Struktur dari tabel `k_arindo_bigtv`
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
-- Struktur dari tabel `k_arindo_bpjs`
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
-- Struktur dari tabel `k_arindo_fif`
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
-- Struktur dari tabel `k_arindo_indovision`
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
-- Struktur dari tabel `k_arindo_pdam`
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
-- Struktur dari tabel `k_arindo_pln`
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
-- Struktur dari tabel `k_arindo_toptv`
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
-- Struktur dari tabel `k_arindo_voucher`
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
-- Struktur dari tabel `k_arindo_wom`
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
-- Struktur dari tabel `k_indovision`
--

CREATE TABLE `k_indovision` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `k_indovision`
--

INSERT INTO `k_indovision` (`tanggal_masalah`, `tanggal_konpensasi`, `loket`, `lokasi`, `nominal`) VALUES
('2016-12-10', '2016-12-14', 'lembong3', 'LEMBONG', 178400),
('2016-12-06', '2016-12-15', 'lembong3', 'LEMBONG', 429900);

-- --------------------------------------------------------

--
-- Struktur dari tabel `k_pdam`
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
-- Struktur dari tabel `k_pln`
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
-- Struktur dari tabel `k_sopp`
--

CREATE TABLE `k_sopp` (
  `tanggal_masalah` date DEFAULT NULL,
  `tanggal_konpensasi` date DEFAULT NULL,
  `loket` varchar(30) DEFAULT NULL,
  `lokasi` varchar(30) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `k_sopp`
--

INSERT INTO `k_sopp` (`tanggal_masalah`, `tanggal_konpensasi`, `loket`, `lokasi`, `nominal`) VALUES
('2016-12-06', '2016-12-15', 'cimahi2', 'CIMAHI', 34070);

-- --------------------------------------------------------

--
-- Struktur dari tabel `k_transvision`
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
-- Struktur dari tabel `k_voucher_smart`
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
-- Struktur dari tabel `k_voucher_tri`
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
-- Struktur dari tabel `k_voucher_tsel`
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
-- Struktur dari tabel `lokasi`
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
-- Dumping data untuk tabel `lokasi`
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
-- Struktur dari tabel `loket`
--

CREATE TABLE `loket` (
  `loket` varchar(20) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `loket`
--

INSERT INTO `loket` (`loket`, `nama_user`, `tanggal`) VALUES
('arcamanik', '', '2016-12-01'),
('batujajar', 'Hani', '2016-12-01'),
('bkr1', 'Heriyadi', '2016-12-01'),
('bkr2', 'Rita', '2016-12-01'),
('cicalengka1', 'Mila', '2016-12-01'),
('cijaura', 'Eded', '2016-12-01'),
('cijaura2', 'Tety', '2016-12-01'),
('cikalongwetan', '', '2016-12-01'),
('cililin', '', '2016-12-01'),
('cimahi1', 'Yuli', '2016-12-01'),
('cimahi2', 'Nandang', '2016-12-01'),
('dago1', 'Budiar', '2016-12-01'),
('dago2', '', '2016-12-01'),
('ddl_cclengka', 'Mety', '2016-12-01'),
('ddl_rckkbru', 'Pa Lili', '2016-12-01'),
('gegerkalong1', 'Herlina', '2016-12-01'),
('jatinangor', 'Sugar', '2016-12-01'),
('ujungberung1', '', '2016-12-01'),
('kopo1', 'Desy', '2016-12-01'),
('kopo2', 'Ilyas', '2016-12-01'),
('lembang', 'Dadang Supriyadi', '2016-12-01'),
('lembong1', '', '2016-12-01'),
('lembong2', 'Chandra', '2016-12-01'),
('lembong3', 'Rika', '2016-12-01'),
('padalarang1', 'Irwan', '2016-12-01'),
('rajawali1', 'Ati P', '2016-12-01'),
('rajawali2', 'Nugraha adi', '2016-12-01'),
('rajawali3', '', '2016-12-01'),
('rancaekek', '', '2016-12-01'),
('setiabudi1', 'Asep Ahmad', '2016-12-01'),
('setiabudi2', 'Suryani', '2016-12-01'),
('soreang', 'Ayu', '2016-12-01'),
('sumedang1', '', '2016-12-01'),
('sumedang2', 'Dimroh', '2016-12-01'),
('supratman1', '', '2016-12-01'),
('supratman2', 'Dodi', '2016-12-01'),
('supratman3', 'Rahmat', '2016-12-01'),
('tanjungsari', 'Maulana', '2016-12-01'),
('ujungberung2', 'Asep Hidayat', '2016-12-01'),
('windu1', 'Dadang Junaedi', '2016-12-01'),
('windu2', 'Erniyati', '2016-12-01'),
('cicalengka2', 'Mety', '2016-12-01'),
('cijaura1', 'Eded', '2016-12-01'),
('padalarang', 'Irwan', '2016-12-01'),
('lembang1', 'Dadang Supriyadi', '2016-12-01'),
('setiabudhi1', 'Asep Ahmad', '2016-12-01'),
('setiabudhi2', 'Suryani', '2016-12-01'),
('rancaekek2', 'Pa Lili', '2016-12-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nomor`
--

CREATE TABLE `nomor` (
  `nomor` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nomor`
--

INSERT INTO `nomor` (`nomor`) VALUES
('852');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pdam`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengawasan`
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
-- Dumping data untuk tabel `pengawasan`
--

INSERT INTO `pengawasan` (`transfer1`, `transfer2`, `transfer3`, `transfer4`, `biaya`, `tarik_tunai`, `jasa giro`, `pph`, `kel giro`, `tanggal`) VALUES
(-30966012, -101492476, -2061317, 0, -15000, 0, 0, 0, 0, '2016-12-01'),
(0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-02'),
(0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-03'),
(-90002425, -54041567, -1831500, 0, -15000, 0, 0, 0, 0, '2016-12-04'),
(-5154374, -483799745, -526747293, 0, -15000, 0, 0, 0, 0, '2016-12-05'),
(-571000754, -645675080, -9108756, 0, -15000, -30954593, 0, 0, 0, '2016-12-06'),
(-4323805, -610050265, -586113718, 0, -15000, 0, 0, 0, 0, '2016-12-07'),
(-2581920, -507668709, -447629577, 0, -15000, 0, 0, 0, 0, '2016-12-08'),
(0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-09'),
(0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-10'),
(0, 0, 0, 0, 0, 0, 0, 0, 0, '2016-12-11'),
(-518113174, -648627138, -4078120, 0, -15000, 0, 0, 0, 0, '2016-12-12'),
(-3779210, -84567415, -22911505, 0, -15000, 0, 0, 0, 0, '2018-10-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pln`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_sopp_input`
--

CREATE TABLE `rincian_sopp_input` (
  `tanggal` date NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `fee_finnet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rincian_sopp_input`
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
-- Struktur dari tabel `rk`
--

CREATE TABLE `rk` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(10) NOT NULL,
  `usser` varchar(30) NOT NULL,
  `jumlah_rk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rk`
--

INSERT INTO `rk` (`id`, `tanggal`, `usser`, `jumlah_rk`) VALUES
(5, '07-10-2015', 'bkr1', 479337),
(6, '07-10-2015', 'bkr2', 16993669),
(7, '07-10-2015', 'cicalengka1', 22545300),
(8, '07-10-2015', 'cijaura', 73420700),
(9, '07-10-2015', 'cimahi1', 47666200),
(10, '07-10-2015', 'dago1', 38680170),
(11, '07-10-2015', 'ddl_cclengka', 23595300),
(12, '07-10-2015', 'ddl_rckkbru', 5954991),
(13, '07-10-2015', 'gegerkalong1', 22981000),
(14, '07-10-2015', 'jatinangor', 10747407),
(15, '07-10-2015', 'kopo1', 76202900),
(16, '07-10-2015', 'lembang', 45019500),
(17, '07-10-2015', 'lembong1', 161158200),
(18, '07-10-2015', 'padalarang1', 88000000),
(19, '07-10-2015', 'rajawali1', 116259000),
(20, '07-10-2015', 'setiabudi1', 121170500),
(21, '07-10-2015', 'soreang', 21886500),
(22, '07-10-2015', 'sumedang1', 25924200),
(23, '07-10-2015', 'supratman1', 82504514),
(24, '07-10-2015', 'ujungberung2', 48674400),
(25, '07-10-2015', 'windu1', 89574600);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rk_input`
--

CREATE TABLE `rk_input` (
  `tanggal` date NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rk_input`
--

INSERT INTO `rk_input` (`tanggal`, `tempat`, `jumlah`) VALUES
('2016-12-01', 'BANJARAN', 1151956),
('2016-12-01', 'BATUJAJAR', 0),
('2016-12-01', 'CICALENGKA', 0),
('2016-12-01', 'CIJAURA', 12972000),
('2016-12-01', 'CIMAHI', 5229100),
('2016-12-01', 'DAGO', 1229485),
('2016-12-01', 'JATINANGOR', 611539),
('2016-12-01', 'KOPO', 11367500),
('2016-12-01', 'LEMBANG', 4785000),
('2016-12-01', 'LEMBONG', 14233900),
('2016-12-01', 'PADALARANG', 0),
('2016-12-01', 'PLASA RANCAEKEK', 0),
('2016-12-01', 'RAJAWALI', 14537046),
('2016-12-01', 'RANCAEKEK 2/ LILIK', 400000),
('2016-12-01', 'SETIABUDI', 6995200),
('2016-12-01', 'SOREANG', 5286500),
('2016-12-01', 'SUMEDANG', 3834000),
('2016-12-01', 'SUPRATMAN', 6221973),
('2016-12-01', 'TANJUNGSARI', 981000),
('2016-12-01', 'UJUNG BERUNG', 11427200),
('2016-12-01', 'WINDU', 8844500),
('2016-12-01', 'MAJALAYA', 5442000),
('2016-12-01', 'ARCAMANIK', 0),
('2016-12-01', 'BKR', 0),
('2016-12-01', 'CIKALONG WETAN', 0),
('2016-12-01', 'CILILIN', 0),
('2016-12-01', 'RANCAEKEK / ERRI', 0),
('2016-12-02', 'RANCAEKEK 2/ LILIK', 400000),
('2016-12-03', 'RANCAEKEK 2/ LILIK', 1000000),
('2016-12-04', 'BATUJAJAR', 4826200),
('2016-12-04', 'BKR', 369464),
('2016-12-04', 'CICALENGKA', 13700500),
('2016-12-04', 'CIJAURA', 67358200),
('2016-12-04', 'CIMAHI', 74077600),
('2016-12-04', 'DAGO', 1818657),
('2016-12-04', 'JATINANGOR', 1307711),
('2016-12-04', 'KOPO', 64826700),
('2016-12-04', 'LEMBANG', 60506600),
('2016-12-04', 'LEMBONG', 117403800),
('2016-12-04', 'MAJALAYA', 15591600),
('2016-12-04', 'PADALARANG', 2059300),
('2016-12-04', 'PLASA RANCAEKEK', 9252000),
('2016-12-04', 'RAJAWALI', 7485810),
('2016-12-04', 'RANCAEKEK 2/ LILIK', 1000000),
('2016-12-04', 'SETIABUDI', 6419200),
('2016-12-04', 'SOREANG', 5355000),
('2016-12-04', 'SUMEDANG', 27715700),
('2016-12-04', 'SUPRATMAN', 8032873),
('2016-12-04', 'TANJUNGSARI', 1302000),
('2016-12-04', 'UJUNG BERUNG', 30901100),
('2016-12-04', 'WINDU', 72365800),
('2016-12-05', 'BANJARAN', 10711210),
('2016-12-05', 'BATUJAJAR', 11642500),
('2016-12-05', 'CICALENGKA', 7967500),
('2016-12-05', 'CIJAURA', 86631300),
('2016-12-05', 'CIMAHI', 76552000),
('2016-12-05', 'JATINANGOR', 5380371),
('2016-12-05', 'KOPO', 91281200),
('2016-12-05', 'LEMBANG', 84968000),
('2016-12-05', 'LEMBONG', 202404700),
('2016-12-05', 'MAJALAYA', 26752000),
('2016-12-05', 'PADALARANG', 9136700),
('2016-12-05', 'PLASA RANCAEKEK', 12055500),
('2016-12-05', 'RAJAWALI', 83036913),
('2016-12-05', 'RANCAEKEK 2/ LILIK', 2000000),
('2016-12-05', 'SETIABUDI', 76159300),
('2016-12-05', 'SOREANG', 34430800),
('2016-12-05', 'SUMEDANG', 41500000),
('2016-12-05', 'SUPRATMAN', 69341636),
('2016-12-05', 'TANJUNGSARI', 15870000),
('2016-12-05', 'UJUNG BERUNG', 96801300),
('2016-12-05', 'WINDU', 177280900),
('2016-12-06', 'BANJARAN', 14920808),
('2016-12-06', 'BATUJAJAR', 7053000),
('2016-12-06', 'CIJAURA', 88553100),
('2016-12-06', 'CIMAHI', 38664000),
('2016-12-06', 'DAGO', 32487984),
('2016-12-06', 'JATINANGOR', 8597883),
('2016-12-06', 'KOPO', 88576800),
('2016-12-06', 'LEMBANG', 58221000),
('2016-12-06', 'LEMBONG', 207448100),
('2016-12-06', 'MAJALAYA', 19044200),
('2016-12-06', 'PADALARANG', 10943300),
('2016-12-06', 'PLASA RANCAEKEK', 36036500),
('2016-12-06', 'RAJAWALI', 108347531),
('2016-12-06', 'RANCAEKEK 2/ LILIK', 6000000),
('2016-12-06', 'SETIABUDI', 117719500),
('2016-12-06', 'SOREANG', 26130000),
('2016-12-06', 'SUMEDANG', 47678600),
('2016-12-06', 'SUPRATMAN', 76257005),
('2016-12-06', 'TANJUNGSARI', 3284000),
('2016-12-06', 'UJUNG BERUNG', 17333800),
('2016-12-06', 'WINDU', 69879800),
('2016-12-07', 'BATUJAJAR', 18553000),
('2016-12-07', 'CIJAURA', 71241100),
('2016-12-07', 'CIMAHI', 72036900),
('2016-12-07', 'DAGO', 21929878),
('2016-12-07', 'JATINANGOR', 2811495),
('2016-12-07', 'KOPO', 68468500),
('2016-12-07', 'LEMBANG', 23516400),
('2016-12-07', 'LEMBONG', 178185200),
('2016-12-07', 'MAJALAYA', 16765800),
('2016-12-07', 'PADALARANG', 37570000),
('2016-12-07', 'PLASA RANCAEKEK', 15425000),
('2016-12-07', 'RAJAWALI', 119634735),
('2016-12-07', 'RANCAEKEK 2/ LILIK', 2000000),
('2016-12-07', 'SETIABUDI', 123643600),
('2016-12-07', 'SOREANG', 7026000),
('2016-12-07', 'SUMEDANG', 39558200),
('2016-12-07', 'SUPRATMAN', 149756521),
('2016-12-07', 'TANJUNGSARI', 1668000),
('2016-12-07', 'UJUNG BERUNG', 58765400),
('2016-12-07', 'WINDU', 51291100),
('2016-12-06', 'CICALENGKA', 8938000),
('2016-12-08', 'BANJARAN', 15077133),
('2016-12-08', 'BATUJAJAR', 14564000),
('2016-12-08', 'CICALENGKA', 7785000),
('2016-12-08', 'CIJAURA', 40465500),
('2016-12-08', 'CIMAHI', 45132400),
('2016-12-08', 'DAGO', 41563368),
('2016-12-08', 'JATINANGOR', 4280502),
('2016-12-08', 'KOPO', 31183800),
('2016-12-08', 'LEMBANG', 41958000),
('2016-12-08', 'LEMBONG', 324720500),
('2016-12-08', 'MAJALAYA', 24752700),
('2016-12-08', 'PADALARANG', 7555300),
('2016-12-08', 'RAJAWALI', 81013117),
('2016-12-08', 'RANCAEKEK 2/ LILIK', 2000000),
('2016-12-08', 'SETIABUDI', 98748800),
('2016-12-08', 'SOREANG', 9646000),
('2016-12-08', 'SUMEDANG', 18456800),
('2016-12-08', 'SUPRATMAN', 108634305),
('2016-12-08', 'TANJUNGSARI', 1262000),
('2016-12-08', 'UJUNG BERUNG', 51756200),
('2016-12-08', 'WINDU', 59958500),
('2016-12-09', 'RANCAEKEK 2/ LILIK', 2000000),
('2016-12-07', 'CICALENGKA', 3445000),
('2016-12-10', 'RANCAEKEK 2/ LILIK', 2000000),
('2016-12-11', 'RANCAEKEK 2/ LILIK', 2000000),
('2016-12-12', 'CICALENGKA', 20886000),
('2016-12-12', 'CIJAURA', 81310900),
('2016-12-12', 'CIMAHI', 71954300),
('2016-12-12', 'DAGO', 113267379),
('2016-12-12', 'JATINANGOR', 7689927),
('2016-12-12', 'KOPO', 95113500),
('2016-12-12', 'LEMBANG', 73843000),
('2016-12-12', 'LEMBONG', 230019100),
('2016-12-12', 'MAJALAYA', 24753400),
('2016-12-12', 'PLASA RANCAEKEK', 29966500),
('2016-12-12', 'RAJAWALI', 117967034),
('2016-12-12', 'RANCAEKEK 2/ LILIK', 2000000),
('2016-12-12', 'SETIABUDI', 74174800),
('2016-12-12', 'SOREANG', 42571000),
('2016-12-12', 'SUMEDANG', 45346100),
('2016-12-12', 'SUPRATMAN', 131653674),
('2016-12-12', 'TANJUNGSARI', 3299000),
('2016-12-12', 'UJUNG BERUNG', 27186300),
('2016-12-12', 'WINDU', 76962700),
('2016-12-12', 'BATUJAJAR', 13443000),
('2018-10-01', 'CICALENGKA', 2428000),
('2018-10-01', 'CIJAURA', 12376800),
('2018-10-01', 'CIMAHI', 4890800),
('2018-10-01', 'JATINANGOR', 464500),
('2018-10-01', 'KOPO', 6158800),
('2018-10-01', 'LEMBANG', 10707000),
('2018-10-01', 'LEMBONG', 10569200),
('2018-10-01', 'MAJALAYA', 2180000),
('2018-10-01', 'PADALARANG', 3859000),
('2018-10-01', 'PLASA RANCAEKEK', 2589300),
('2018-10-01', 'RAJAWALI', 6446151),
('2018-10-01', 'SETIABUDI', 7548700),
('2018-10-01', 'SUMEDANG', 4680300),
('2018-10-01', 'SUPRATMAN', 2659264),
('2018-10-01', 'UJUNG BERUNG', 5965500),
('2018-10-01', 'WINDU', 4169700);

-- --------------------------------------------------------

--
-- Struktur dari tabel `saldo`
--

CREATE TABLE `saldo` (
  `tanggal` date NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `saldo`
--

INSERT INTO `saldo` (`tanggal`, `saldo`) VALUES
('2019-08-01', 178520832),
('2019-07-31', 178520832);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sopp`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_tanggal`
--

CREATE TABLE `status_tanggal` (
  `tanggal` date NOT NULL,
  `status` enum('libur','masuk') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_tanggal`
--

INSERT INTO `status_tanggal` (`tanggal`, `status`) VALUES
('2016-08-01', 'masuk'),
('0000-00-00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `titipan`
--

CREATE TABLE `titipan` (
  `tanggal` date NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `titipan` int(11) NOT NULL,
  `talangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `titipan`
--

INSERT INTO `titipan` (`tanggal`, `tempat`, `titipan`, `talangan`) VALUES
('2016-11-02', 'ARCAMANIK', 0, 0),
('2016-11-02', 'BANJARAN', 0, -412004523),
('2016-11-02', 'BATUJAJAR', 0, -167604162),
('2016-11-02', 'BKR', 0, -5489633),
('2016-11-02', 'CICALENGKA', 0, -204923226),
('2016-11-02', 'CIJAURA', 0, -1215298887),
('2016-11-02', 'CIKALONG WETAN', 0, 0),
('2016-11-02', 'CILILIN', 0, 0),
('2016-11-02', 'CIMAHI', 0, -1039699907),
('2016-11-02', 'DAGO', 0, -362116350),
('2016-11-02', 'JATINANGOR', 0, -142564278),
('2016-11-02', 'KOPO', 0, -1897050740),
('2016-11-02', 'LEMBANG', 0, -724400258),
('2016-11-02', 'LEMBONG', 0, -2147483647),
('2016-11-02', 'MAJALAYA', 0, -565218737),
('2016-11-02', 'PADALARANG', 0, -238058329),
('2016-11-02', 'PLASA RANCAEKEK', 0, -672362498),
('2016-11-02', 'RAJAWALI', 0, -2012864243),
('2016-11-02', 'RANCAEKEK / ERRI', 0, 0),
('2016-11-02', 'RANCAEKEK 2/ LILIK', 0, -71238793),
('2016-11-02', 'SETIABUDI', 0, -1681031882),
('2016-11-02', 'SOREANG', 0, -325092021),
('2016-11-02', 'SUMEDANG', 0, -727549517),
('2016-11-02', 'SUPRATMAN', 0, -1599036363),
('2016-11-02', 'TANJUNGSARI', 0, -81945440),
('2016-11-02', 'UJUNG BERUNG', 0, -709959791),
('2016-11-02', 'WINDU', 0, -1377698733),
('2016-12-14', 'ARCAMANIK', 0, 0),
('2016-12-14', 'BANJARAN', 0, 0),
('2016-12-14', 'BATUJAJAR', 0, 0),
('2016-12-14', 'BKR', 0, 0),
('2016-12-14', 'CICALENGKA', 0, 0),
('2016-12-14', 'CIJAURA', 0, 0),
('2016-12-14', 'CIKALONG WETAN', 0, 0),
('2016-12-14', 'CILILIN', 0, 0),
('2016-12-14', 'CIMAHI', 0, 0),
('2016-12-14', 'DAGO', 0, 0),
('2016-12-14', 'JATINANGOR', 0, 0),
('2016-12-14', 'KOPO', 0, 0),
('2016-12-14', 'LEMBANG', 0, 0),
('2016-12-14', 'LEMBONG', 0, 0),
('2016-12-14', 'MAJALAYA', 0, 0),
('2016-12-14', 'PADALARANG', 0, 0),
('2016-12-14', 'PLASA RANCAEKEK', 0, 0),
('2016-12-14', 'RAJAWALI', 0, 0),
('2016-12-14', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-14', 'RANCAEKEK 2/ LILIK', 0, 0),
('2016-12-14', 'SETIABUDI', 0, 0),
('2016-12-14', 'SOREANG', 0, 0),
('2016-12-14', 'SUMEDANG', 0, 0),
('2016-12-14', 'SUPRATMAN', 0, 0),
('2016-12-14', 'TANJUNGSARI', 0, 0),
('2016-12-14', 'UJUNG BERUNG', 0, 0),
('2016-12-14', 'WINDU', 0, 0),
('2016-12-15', 'ARCAMANIK', 0, 0),
('2016-12-15', 'BANJARAN', 0, 0),
('2016-12-15', 'BATUJAJAR', 0, 0),
('2016-12-15', 'BKR', 0, 0),
('2016-12-15', 'CICALENGKA', 0, 0),
('2016-12-15', 'CIJAURA', 0, 0),
('2016-12-15', 'CIKALONG WETAN', 0, 0),
('2016-12-15', 'CILILIN', 0, 0),
('2016-12-15', 'CIMAHI', 0, 0),
('2016-12-15', 'DAGO', 0, 0),
('2016-12-15', 'JATINANGOR', 0, 0),
('2016-12-15', 'KOPO', 0, 0),
('2016-12-15', 'LEMBANG', 0, 0),
('2016-12-15', 'LEMBONG', 0, 0),
('2016-12-15', 'MAJALAYA', 0, 0),
('2016-12-15', 'PADALARANG', 0, 0),
('2016-12-15', 'PLASA RANCAEKEK', 0, 0),
('2016-12-15', 'RAJAWALI', 0, 0),
('2016-12-15', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-15', 'RANCAEKEK 2/ LILIK', 0, 0),
('2016-12-15', 'SETIABUDI', 0, 0),
('2016-12-15', 'SOREANG', 0, 0),
('2016-12-15', 'SUMEDANG', 0, 0),
('2016-12-15', 'SUPRATMAN', 0, 0),
('2016-12-15', 'TANJUNGSARI', 0, 0),
('2016-12-15', 'UJUNG BERUNG', 0, 0),
('2016-12-15', 'WINDU', 0, 0),
('2016-12-01', 'ARCAMANIK', 0, 0),
('2016-12-01', 'BANJARAN', 892132, 0),
('2016-12-01', 'BATUJAJAR', 3131, 0),
('2016-12-01', 'BKR', 0, -886705),
('2016-12-01', 'CICALENGKA', 0, -202492),
('2016-12-01', 'CIJAURA', 1994704, 0),
('2016-12-01', 'CIKALONG WETAN', 0, 0),
('2016-12-01', 'CILILIN', 0, 0),
('2016-12-01', 'CIMAHI', 4831101, 0),
('2016-12-01', 'DAGO', 0, -2500),
('2016-12-01', 'JATINANGOR', 0, -48000),
('2016-12-01', 'KOPO', 0, -6790074),
('2016-12-01', 'LEMBANG', 3528352, 0),
('2016-12-01', 'LEMBONG', 9388779, 0),
('2016-12-01', 'MAJALAYA', 0, -4423444),
('2016-12-01', 'PADALARANG', 910, 0),
('2016-12-01', 'PLASA RANCAEKEK', 332046, 0),
('2016-12-01', 'RAJAWALI', 0, -504971),
('2016-12-01', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-01', 'RANCAEKEK 2/ LILIK', 5471102, 0),
('2016-12-01', 'SETIABUDI', 0, -15918),
('2016-12-01', 'SOREANG', 950, 0),
('2016-12-01', 'SUMEDANG', 12409, 0),
('2016-12-01', 'SUPRATMAN', 21320, 0),
('2016-12-01', 'TANJUNGSARI', 0, -8312),
('2016-12-01', 'UJUNG BERUNG', 1500707, 0),
('2016-12-01', 'WINDU', 1785584, 0),
('2016-12-03', 'ARCAMANIK', 0, 0),
('2016-12-03', 'BANJARAN', 0, -559337),
('2016-12-03', 'BATUJAJAR', 0, -4822970),
('2016-12-03', 'BKR', 0, -886705),
('2016-12-03', 'CICALENGKA', 0, -3903011),
('2016-12-03', 'CIJAURA', 0, -12303404),
('2016-12-03', 'CIKALONG WETAN', 0, 0),
('2016-12-03', 'CILILIN', 0, 0),
('2016-12-03', 'CIMAHI', 0, -10564375),
('2016-12-03', 'DAGO', 0, -1821157),
('2016-12-03', 'JATINANGOR', 0, -1333711),
('2016-12-03', 'KOPO', 0, -15321239),
('2016-12-03', 'LEMBANG', 0, -5576965),
('2016-12-03', 'LEMBONG', 0, -7108682),
('2016-12-03', 'MAJALAYA', 0, -6161630),
('2016-12-03', 'PADALARANG', 0, -2058384),
('2016-12-03', 'PLASA RANCAEKEK', 0, -8919378),
('2016-12-03', 'RAJAWALI', 0, -4085535),
('2016-12-03', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-03', 'RANCAEKEK 2/ LILIK', 5015014, 0),
('2016-12-03', 'SETIABUDI', 0, -6435002),
('2016-12-03', 'SOREANG', 0, -6353849),
('2016-12-03', 'SUMEDANG', 0, -2703173),
('2016-12-03', 'SUPRATMAN', 0, -4327823),
('2016-12-03', 'TANJUNGSARI', 0, -1053517),
('2016-12-03', 'UJUNG BERUNG', 0, -8375072),
('2016-12-03', 'WINDU', 0, -1468927),
('2016-12-04', 'ARCAMANIK', 0, 0),
('2016-12-04', 'BANJARAN', 0, -559337),
('2016-12-04', 'BATUJAJAR', 0, -4822970),
('2016-12-04', 'BKR', 0, -886705),
('2016-12-04', 'CICALENGKA', 0, -3903011),
('2016-12-04', 'CIJAURA', 0, -20363359),
('2016-12-04', 'CIKALONG WETAN', 0, 0),
('2016-12-04', 'CILILIN', 0, 0),
('2016-12-04', 'CIMAHI', 0, -11146486),
('2016-12-04', 'DAGO', 0, -1821157),
('2016-12-04', 'JATINANGOR', 0, -1355711),
('2016-12-04', 'KOPO', 0, -16616553),
('2016-12-04', 'LEMBANG', 0, -10978165),
('2016-12-04', 'LEMBONG', 0, -11414848),
('2016-12-04', 'MAJALAYA', 0, -6161630),
('2016-12-04', 'PADALARANG', 0, -2058384),
('2016-12-04', 'PLASA RANCAEKEK', 0, -8919378),
('2016-12-04', 'RAJAWALI', 0, -8010779),
('2016-12-04', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-04', 'RANCAEKEK 2/ LILIK', 1440013, 0),
('2016-12-04', 'SETIABUDI', 0, -6435002),
('2016-12-04', 'SOREANG', 0, -6353849),
('2016-12-04', 'SUMEDANG', 0, -2703173),
('2016-12-04', 'SUPRATMAN', 0, -8011426),
('2016-12-04', 'TANJUNGSARI', 0, -1312199),
('2016-12-04', 'UJUNG BERUNG', 0, -13900316),
('2016-12-04', 'WINDU', 0, -2366662),
('2016-12-05', 'ARCAMANIK', 0, 0),
('2016-12-05', 'BANJARAN', 0, -559337),
('2016-12-05', 'BATUJAJAR', 3230, 0),
('2016-12-05', 'BKR', 0, -539741),
('2016-12-05', 'CICALENGKA', 9797489, 0),
('2016-12-05', 'CIJAURA', 46994841, 0),
('2016-12-05', 'CIKALONG WETAN', 0, 0),
('2016-12-05', 'CILILIN', 0, 0),
('2016-12-05', 'CIMAHI', 62931114, 0),
('2016-12-05', 'DAGO', 0, -2500),
('2016-12-05', 'JATINANGOR', 0, -48000),
('2016-12-05', 'KOPO', 48210147, 0),
('2016-12-05', 'LEMBANG', 49528435, 0),
('2016-12-05', 'LEMBONG', 105988952, 0),
('2016-12-05', 'MAJALAYA', 9429970, 0),
('2016-12-05', 'PADALARANG', 916, 0),
('2016-12-05', 'PLASA RANCAEKEK', 332622, 0),
('2016-12-05', 'RAJAWALI', 0, -524969),
('2016-12-05', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-05', 'RANCAEKEK 2/ LILIK', 2440013, 0),
('2016-12-05', 'SETIABUDI', 0, -15802),
('2016-12-05', 'SOREANG', 0, -998849),
('2016-12-05', 'SUMEDANG', 25012527, 0),
('2016-12-05', 'SUPRATMAN', 21447, 0),
('2016-12-05', 'TANJUNGSARI', 0, -10199),
('2016-12-05', 'UJUNG BERUNG', 17000784, 0),
('2016-12-05', 'WINDU', 69999138, 0),
('2016-12-02', 'ARCAMANIK', 0, 0),
('2016-12-02', 'BANJARAN', 892132, 0),
('2016-12-02', 'BATUJAJAR', 0, -3249887),
('2016-12-02', 'BKR', 0, -886705),
('2016-12-02', 'CICALENGKA', 0, -2211436),
('2016-12-02', 'CIJAURA', 994737, 0),
('2016-12-02', 'CIKALONG WETAN', 0, 0),
('2016-12-02', 'CILILIN', 0, 0),
('2016-12-02', 'CIMAHI', 1731112, 0),
('2016-12-02', 'DAGO', 0, -2500),
('2016-12-02', 'JATINANGOR', 0, -48000),
('2016-12-02', 'KOPO', 0, -7789884),
('2016-12-02', 'LEMBANG', 528411, 0),
('2016-12-02', 'LEMBONG', 7288851, 0),
('2016-12-02', 'MAJALAYA', 0, -570048),
('2016-12-02', 'PADALARANG', 0, -729200),
('2016-12-02', 'PLASA RANCAEKEK', 0, -8919378),
('2016-12-02', 'RAJAWALI', 0, -504971),
('2016-12-02', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-02', 'RANCAEKEK 2/ LILIK', 5310414, 0),
('2016-12-02', 'SETIABUDI', 0, -15862),
('2016-12-02', 'SOREANG', 1017, 0),
('2016-12-02', 'SUMEDANG', 12527, 0),
('2016-12-02', 'SUPRATMAN', 21343, 0),
('2016-12-02', 'TANJUNGSARI', 0, -8651),
('2016-12-02', 'UJUNG BERUNG', 1500715, 0),
('2016-12-02', 'WINDU', 3502868, 0),
('2016-12-06', 'ARCAMANIK', 0, 0),
('2016-12-06', 'BANJARAN', 892132, 0),
('2016-12-06', 'BATUJAJAR', 3263, 0),
('2016-12-06', 'BKR', 0, -1515108),
('2016-12-06', 'CICALENGKA', 3797489, 0),
('2016-12-06', 'CIJAURA', 44994905, 0),
('2016-12-06', 'CIKALONG WETAN', 0, 0),
('2016-12-06', 'CILILIN', 0, 0),
('2016-12-06', 'CIMAHI', 55231177, 0),
('2016-12-06', 'DAGO', 0, -32490484),
('2016-12-06', 'JATINANGOR', 0, -48000),
('2016-12-06', 'KOPO', 32210170, 0),
('2016-12-06', 'LEMBANG', 79528449, 0),
('2016-12-06', 'LEMBONG', 145989074, 0),
('2016-12-06', 'MAJALAYA', 20429987, 0),
('2016-12-06', 'PADALARANG', 929, 0),
('2016-12-06', 'PLASA RANCAEKEK', 332626, 0),
('2016-12-06', 'RAJAWALI', 0, -524969),
('2016-12-06', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-06', 'RANCAEKEK 2/ LILIK', 1165160, 0),
('2016-12-06', 'SETIABUDI', 0, -15693),
('2016-12-06', 'SOREANG', 11001151, 0),
('2016-12-06', 'SUMEDANG', 30012504, 0),
('2016-12-06', 'SUPRATMAN', 21559, 0),
('2016-12-06', 'TANJUNGSARI', 0, -10227),
('2016-12-06', 'UJUNG BERUNG', 81000872, 0),
('2016-12-06', 'WINDU', 171999180, 0),
('2016-12-07', 'ARCAMANIK', 0, 0),
('2016-12-07', 'BANJARAN', 892132, 0),
('2016-12-07', 'BATUJAJAR', 3354, 0),
('2016-12-07', 'BKR', 0, -1515108),
('2016-12-07', 'CICALENGKA', 5797624, 0),
('2016-12-07', 'CIJAURA', 49994999, 0),
('2016-12-07', 'CIKALONG WETAN', 0, 0),
('2016-12-07', 'CILILIN', 0, 0),
('2016-12-07', 'CIMAHI', 28665323, 0),
('2016-12-07', 'DAGO', 0, -2500),
('2016-12-07', 'JATINANGOR', 0, -48000),
('2016-12-07', 'KOPO', 60210232, 0),
('2016-12-07', 'LEMBANG', 49528572, 0),
('2016-12-07', 'LEMBONG', 168419123, 0),
('2016-12-07', 'MAJALAYA', 11430066, 0),
('2016-12-07', 'PADALARANG', 943, 0),
('2016-12-07', 'PLASA RANCAEKEK', 332577, 0),
('2016-12-07', 'RAJAWALI', 0, -524969),
('2016-12-07', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-07', 'RANCAEKEK 2/ LILIK', 4123851, 0),
('2016-12-07', 'SETIABUDI', 0, -15444),
('2016-12-07', 'SOREANG', 13001044, 0),
('2016-12-07', 'SUMEDANG', 35012502, 0),
('2016-12-07', 'SUPRATMAN', 21654, 0),
('2016-12-07', 'TANJUNGSARI', 0, -11419),
('2016-12-07', 'UJUNG BERUNG', 11000947, 0),
('2016-12-07', 'WINDU', 66999164, 0),
('2016-12-08', 'ARCAMANIK', 0, 0),
('2016-12-08', 'BANJARAN', 0, -7708564),
('2016-12-08', 'BATUJAJAR', 3487, 0),
('2016-12-08', 'BKR', 0, -1515108),
('2016-12-08', 'CICALENGKA', 0, -201838),
('2016-12-08', 'CIJAURA', 39995059, 0),
('2016-12-08', 'CIKALONG WETAN', 0, 0),
('2016-12-08', 'CILILIN', 0, 0),
('2016-12-08', 'CIMAHI', 37565403, 0),
('2016-12-08', 'DAGO', 0, -2500),
('2016-12-08', 'JATINANGOR', 0, -48000),
('2016-12-08', 'KOPO', 43210360, 0),
('2016-12-08', 'LEMBANG', 14528595, 0),
('2016-12-08', 'LEMBONG', 128419217, 0),
('2016-12-08', 'MAJALAYA', 11430122, 0),
('2016-12-08', 'PADALARANG', 1023, 0),
('2016-12-08', 'PLASA RANCAEKEK', 333134, 0),
('2016-12-08', 'RAJAWALI', 0, -524969),
('2016-12-08', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-08', 'RANCAEKEK 2/ LILIK', 3298745, 0),
('2016-12-08', 'SETIABUDI', 0, -15426),
('2016-12-08', 'SOREANG', 0, -1203867),
('2016-12-08', 'SUMEDANG', 25012499, 0),
('2016-12-08', 'SUPRATMAN', 21820, 0),
('2016-12-08', 'TANJUNGSARI', 0, -11764),
('2016-12-08', 'UJUNG BERUNG', 45000950, 0),
('2016-12-08', 'WINDU', 42102930, 0),
('2016-12-09', 'ARCAMANIK', 0, 0),
('2016-12-09', 'BANJARAN', 892132, 0),
('2016-12-09', 'BATUJAJAR', 3792, 0),
('2016-12-09', 'BKR', 0, -1515108),
('2016-12-09', 'CICALENGKA', 0, -201463),
('2016-12-09', 'CIJAURA', 18995139, 0),
('2016-12-09', 'CIKALONG WETAN', 0, 0),
('2016-12-09', 'CILILIN', 0, 0),
('2016-12-09', 'CIMAHI', 31765441, 0),
('2016-12-09', 'DAGO', 19997500, 0),
('2016-12-09', 'JATINANGOR', 0, -48000),
('2016-12-09', 'KOPO', 5669206, 0),
('2016-12-09', 'LEMBANG', 34528763, 0),
('2016-12-09', 'LEMBONG', 219419247, 0),
('2016-12-09', 'MAJALAYA', 18430191, 0),
('2016-12-09', 'PADALARANG', 1030, 0),
('2016-12-09', 'PLASA RANCAEKEK', 0, -16550091),
('2016-12-09', 'RAJAWALI', 0, -524969),
('2016-12-09', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-09', 'RANCAEKEK 2/ LILIK', 2500767, 0),
('2016-12-09', 'SETIABUDI', 0, -15368),
('2016-12-09', 'SOREANG', 0, -998939),
('2016-12-09', 'SUMEDANG', 14012518, 0),
('2016-12-09', 'SUPRATMAN', 21914, 0),
('2016-12-09', 'TANJUNGSARI', 0, -12235),
('2016-12-09', 'UJUNG BERUNG', 44501008, 0),
('2016-12-09', 'WINDU', 56097952, 0),
('2016-12-10', 'ARCAMANIK', 0, 0),
('2016-12-10', 'BANJARAN', 0, -9058262),
('2016-12-10', 'BATUJAJAR', 0, -13438921),
('2016-12-10', 'BKR', 0, -1515108),
('2016-12-10', 'CICALENGKA', 0, -4087391),
('2016-12-10', 'CIJAURA', 0, -25433525),
('2016-12-10', 'CIKALONG WETAN', 0, 0),
('2016-12-10', 'CILILIN', 0, 0),
('2016-12-10', 'CIMAHI', 0, -13588804),
('2016-12-10', 'DAGO', 0, -3269879),
('2016-12-10', 'JATINANGOR', 0, -5183148),
('2016-12-10', 'KOPO', 0, -31407900),
('2016-12-10', 'LEMBANG', 0, -21805858),
('2016-12-10', 'LEMBONG', 0, -50567845),
('2016-12-10', 'MAJALAYA', 0, -6323150),
('2016-12-10', 'PADALARANG', 0, -9845780),
('2016-12-10', 'PLASA RANCAEKEK', 0, -29633512),
('2016-12-10', 'RAJAWALI', 0, -93769986),
('2016-12-10', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-10', 'RANCAEKEK 2/ LILIK', 3400173, 0),
('2016-12-10', 'SETIABUDI', 0, -74190098),
('2016-12-10', 'SOREANG', 0, -23569735),
('2016-12-10', 'SUMEDANG', 0, -10354085),
('2016-12-10', 'SUPRATMAN', 0, -58248186),
('2016-12-10', 'TANJUNGSARI', 0, -3290160),
('2016-12-10', 'UJUNG BERUNG', 0, -6314984),
('2016-12-10', 'WINDU', 0, -2917770),
('2016-12-11', 'ARCAMANIK', 0, 0),
('2016-12-11', 'BANJARAN', 0, -9058262),
('2016-12-11', 'BATUJAJAR', 0, -13438921),
('2016-12-11', 'BKR', 0, -1515108),
('2016-12-11', 'CICALENGKA', 0, -4087391),
('2016-12-11', 'CIJAURA', 0, -51315578),
('2016-12-11', 'CIKALONG WETAN', 0, 0),
('2016-12-11', 'CILILIN', 0, 0),
('2016-12-11', 'CIMAHI', 0, -13588804),
('2016-12-11', 'DAGO', 0, -3269879),
('2016-12-11', 'JATINANGOR', 0, -6401278),
('2016-12-11', 'KOPO', 0, -49945950),
('2016-12-11', 'LEMBANG', 0, -24314062),
('2016-12-11', 'LEMBONG', 0, -110419808),
('2016-12-11', 'MAJALAYA', 0, -6323150),
('2016-12-11', 'PADALARANG', 0, -9845780),
('2016-12-11', 'PLASA RANCAEKEK', 0, -29633512),
('2016-12-11', 'RAJAWALI', 0, -118492003),
('2016-12-11', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-11', 'RANCAEKEK 2/ LILIK', 1900197, 0),
('2016-12-11', 'SETIABUDI', 0, -74190098),
('2016-12-11', 'SOREANG', 0, -23569735),
('2016-12-11', 'SUMEDANG', 0, -14333591),
('2016-12-11', 'SUPRATMAN', 0, -131631656),
('2016-12-11', 'TANJUNGSARI', 0, -3290160),
('2016-12-11', 'UJUNG BERUNG', 0, -17185231),
('2016-12-11', 'WINDU', 0, -8963603),
('2016-12-12', 'ARCAMANIK', 0, 0),
('2016-12-12', 'BANJARAN', 0, -9058262),
('2016-12-12', 'BATUJAJAR', 0, -13438921),
('2016-12-12', 'BKR', 0, -2411198),
('2016-12-12', 'CICALENGKA', 0, -4087391),
('2016-12-12', 'CIJAURA', 0, -51315578),
('2016-12-12', 'CIKALONG WETAN', 0, 0),
('2016-12-12', 'CILILIN', 0, 0),
('2016-12-12', 'CIMAHI', 0, -13588804),
('2016-12-12', 'DAGO', 0, -3269879),
('2016-12-12', 'JATINANGOR', 0, -6401278),
('2016-12-12', 'KOPO', 0, -49945950),
('2016-12-12', 'LEMBANG', 0, -24314062),
('2016-12-12', 'LEMBONG', 0, -110419808),
('2016-12-12', 'MAJALAYA', 0, -6323150),
('2016-12-12', 'PADALARANG', 0, -9845780),
('2016-12-12', 'PLASA RANCAEKEK', 0, -29633512),
('2016-12-12', 'RAJAWALI', 0, -118492003),
('2016-12-12', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-12', 'RANCAEKEK 2/ LILIK', 3823197, 0),
('2016-12-12', 'SETIABUDI', 0, -74190098),
('2016-12-12', 'SOREANG', 0, -23569735),
('2016-12-12', 'SUMEDANG', 0, -14333591),
('2016-12-12', 'SUPRATMAN', 0, -131631656),
('2016-12-12', 'TANJUNGSARI', 0, -3290160),
('2016-12-12', 'UJUNG BERUNG', 0, -17185231),
('2016-12-12', 'WINDU', 0, -8963603),
('2016-12-13', 'ARCAMANIK', 0, 0),
('2016-12-13', 'BANJARAN', 0, -9058262),
('2016-12-13', 'BATUJAJAR', 4079, 0),
('2016-12-13', 'BKR', 0, -2782579),
('2016-12-13', 'CICALENGKA', 16798609, 0),
('2016-12-13', 'CIJAURA', 29995322, 0),
('2016-12-13', 'CIKALONG WETAN', 0, 0),
('2016-12-13', 'CILILIN', 0, 0),
('2016-12-13', 'CIMAHI', 58365496, 0),
('2016-12-13', 'DAGO', 109997500, 0),
('2016-12-13', 'JATINANGOR', 0, -48001),
('2016-12-13', 'KOPO', 45167550, 0),
('2016-12-13', 'LEMBANG', 49528938, 0),
('2016-12-13', 'LEMBONG', 119599292, 0),
('2016-12-13', 'MAJALAYA', 18430250, 0),
('2016-12-13', 'PADALARANG', 0, -9845780),
('2016-12-13', 'PLASA RANCAEKEK', 332988, 0),
('2016-12-13', 'RAJAWALI', 0, -524969),
('2016-12-13', 'RANCAEKEK / ERRI', 0, 0),
('2016-12-13', 'RANCAEKEK 2/ LILIK', 5050976, 0),
('2016-12-13', 'SETIABUDI', 0, -15298),
('2016-12-13', 'SOREANG', 19001265, 0),
('2016-12-13', 'SUMEDANG', 31012509, 0),
('2016-12-13', 'SUPRATMAN', 22018, 0),
('2016-12-13', 'TANJUNGSARI', 0, -13160),
('2016-12-13', 'UJUNG BERUNG', 10001069, 0),
('2016-12-13', 'WINDU', 67999097, 0),
('2017-05-17', 'ARCAMANIK', 0, 0),
('2017-05-17', 'BANJARAN', 0, -9697136),
('2017-05-17', 'BATUJAJAR', 0, -12934524),
('2017-05-17', 'BKR', 0, -187582),
('2017-05-17', 'CICALENGKA', 0, -25041783),
('2017-05-17', 'CIJAURA', 0, -134807412),
('2017-05-17', 'CIKALONG WETAN', 0, 0),
('2017-05-17', 'CILILIN', 0, 0),
('2017-05-17', 'CIMAHI', 0, -48330400),
('2017-05-17', 'DAGO', 0, 0),
('2017-05-17', 'JATINANGOR', 0, -8074528),
('2017-05-17', 'KOPO', 0, -134955093),
('2017-05-17', 'LEMBANG', 0, -30959314),
('2017-05-17', 'LEMBONG', 0, -225216011),
('2017-05-17', 'MAJALAYA', 0, -37486919),
('2017-05-17', 'PADALARANG', 0, -9987479),
('2017-05-17', 'PLASA RANCAEKEK', 0, -70994907),
('2017-05-17', 'RAJAWALI', 0, -151420751),
('2017-05-17', 'RANCAEKEK / ERRI', 0, 0),
('2017-05-17', 'RANCAEKEK 2/ LILIK', 0, -10926893),
('2017-05-17', 'SETIABUDI', 0, -155362216),
('2017-05-17', 'SOREANG', 0, -15080884),
('2017-05-17', 'SUMEDANG', 0, -155398933),
('2017-05-17', 'SUPRATMAN', 0, -143232782),
('2017-05-17', 'TANJUNGSARI', 0, -6073753),
('2017-05-17', 'UJUNG BERUNG', 0, -46632020),
('2017-05-17', 'WINDU', 0, -122701950),
('2018-05-04', 'ARCAMANIK', 0, 0),
('2018-05-04', 'BANJARAN', 0, -1240784),
('2018-05-04', 'BATUJAJAR', 0, 0),
('2018-05-04', 'BKR', 0, 0),
('2018-05-04', 'CICALENGKA', 0, -558677),
('2018-05-04', 'CIJAURA', 0, -13376175),
('2018-05-04', 'CIKALONG WETAN', 0, 0),
('2018-05-04', 'CILILIN', 0, 0),
('2018-05-04', 'CIMAHI', 0, -2912429),
('2018-05-04', 'DAGO', 0, 0),
('2018-05-04', 'JATINANGOR', 0, -43000),
('2018-05-04', 'KOPO', 0, -52004204),
('2018-05-04', 'LEMBANG', 0, -9890991),
('2018-05-04', 'LEMBONG', 0, -8996331),
('2018-05-04', 'MAJALAYA', 0, -5167252),
('2018-05-04', 'PADALARANG', 0, 0),
('2018-05-04', 'PLASA RANCAEKEK', 0, -3998498),
('2018-05-04', 'RAJAWALI', 0, -9182098),
('2018-05-04', 'RANCAEKEK / ERRI', 0, 0),
('2018-05-04', 'RANCAEKEK 2/ LILIK', 0, 0),
('2018-05-04', 'SETIABUDI', 0, -13409475),
('2018-05-04', 'SOREANG', 0, 0),
('2018-05-04', 'SUMEDANG', 0, -10961962),
('2018-05-04', 'SUPRATMAN', 0, -3297809),
('2018-05-04', 'TANJUNGSARI', 0, 0),
('2018-05-04', 'UJUNG BERUNG', 0, -4583398),
('2018-05-04', 'WINDU', 0, -4815312),
('2018-10-01', 'ARCAMANIK', 0, 0),
('2018-10-01', 'BANJARAN', 0, -146197),
('2018-10-01', 'BATUJAJAR', 1810000, 0),
('2018-10-01', 'BKR', 0, -3548453),
('2018-10-01', 'CICALENGKA', 0, -5465923),
('2018-10-01', 'CIJAURA', 92086, 0),
('2018-10-01', 'CIKALONG WETAN', 0, 0),
('2018-10-01', 'CILILIN', 0, 0),
('2018-10-01', 'CIMAHI', 9996149, 0),
('2018-10-01', 'DAGO', 0, 0),
('2018-10-01', 'JATINANGOR', 4227311, 0),
('2018-10-01', 'KOPO', 4643407, 0),
('2018-10-01', 'LEMBANG', 571135, 0),
('2018-10-01', 'LEMBONG', 6931283, 0),
('2018-10-01', 'MAJALAYA', 0, -2131295),
('2018-10-01', 'PADALARANG', 103911, 0),
('2018-10-01', 'PLASA RANCAEKEK', 2010106, 0),
('2018-10-01', 'RAJAWALI', 0, 0),
('2018-10-01', 'RANCAEKEK / ERRI', 0, 0),
('2018-10-01', 'RANCAEKEK 2/ LILIK', 0, -1421207),
('2018-10-01', 'SETIABUDI', 326907, 0),
('2018-10-01', 'SOREANG', 0, -399921),
('2018-10-01', 'SUMEDANG', 4730369, 0),
('2018-10-01', 'SUPRATMAN', 210963, 0),
('2018-10-01', 'TANJUNGSARI', 0, -2264255),
('2018-10-01', 'UJUNG BERUNG', 3001305, 0),
('2018-10-01', 'WINDU', 0, -2836839),
('2018-10-02', 'ARCAMANIK', 0, 0),
('2018-10-02', 'BANJARAN', 0, -2932283),
('2018-10-02', 'BATUJAJAR', 1810000, 0),
('2018-10-02', 'BKR', 0, -3548453),
('2018-10-02', 'CICALENGKA', 0, -3037923),
('2018-10-02', 'CIJAURA', 92423, 0),
('2018-10-02', 'CIKALONG WETAN', 0, 0),
('2018-10-02', 'CILILIN', 0, 0),
('2018-10-02', 'CIMAHI', 3996205, 0),
('2018-10-02', 'DAGO', 0, 0),
('2018-10-02', 'JATINANGOR', 4227673, 0),
('2018-10-02', 'KOPO', 143488, 0),
('2018-10-02', 'LEMBANG', 571159, 0),
('2018-10-02', 'LEMBONG', 3631348, 0),
('2018-10-02', 'MAJALAYA', 48705, 0),
('2018-10-02', 'PADALARANG', 103911, 0),
('2018-10-02', 'PLASA RANCAEKEK', 1118, 0),
('2018-10-02', 'RAJAWALI', 0, 0),
('2018-10-02', 'RANCAEKEK / ERRI', 0, 0),
('2018-10-02', 'RANCAEKEK 2/ LILIK', 0, -1421207),
('2018-10-02', 'SETIABUDI', 326939, 0),
('2018-10-02', 'SOREANG', 0, -6099935),
('2018-10-02', 'SUMEDANG', 3130416, 0),
('2018-10-02', 'SUPRATMAN', 210978, 0),
('2018-10-02', 'TANJUNGSARI', 0, -2264255),
('2018-10-02', 'UJUNG BERUNG', 1362, 0),
('2018-10-02', 'WINDU', 0, -2836842),
('2019-08-02', 'ARCAMANIK', 0, 0),
('2019-08-02', 'BANJARAN', 0, -37000),
('2019-08-02', 'BATUJAJAR', 0, 0),
('2019-08-02', 'BKR', 0, -202750),
('2019-08-02', 'CICALENGKA', 0, -493767),
('2019-08-02', 'CIJAURA', 0, -7823354),
('2019-08-02', 'CIKALONG WETAN', 0, 0),
('2019-08-02', 'CILILIN', 0, 0),
('2019-08-02', 'CIMAHI', 0, -5966489),
('2019-08-02', 'DAGO', 0, 0),
('2019-08-02', 'JATINANGOR', 0, 0),
('2019-08-02', 'KOPO', 0, -4319954),
('2019-08-02', 'LEMBANG', 0, -3873628),
('2019-08-02', 'LEMBONG', 0, -1539544),
('2019-08-02', 'MAJALAYA', 0, -3013102),
('2019-08-02', 'PADALARANG', 0, 0),
('2019-08-02', 'PLASA RANCAEKEK', 0, -1187032),
('2019-08-02', 'RAJAWALI', 0, -3996747),
('2019-08-02', 'RANCAEKEK / ERRI', 0, 0),
('2019-08-02', 'RANCAEKEK 2/ LILIK', 0, 0),
('2019-08-02', 'SETIABUDI', 0, -3730308),
('2019-08-02', 'SOREANG', 0, -3665417),
('2019-08-02', 'SUMEDANG', 0, -1915843),
('2019-08-02', 'SUPRATMAN', 0, -548984),
('2019-08-02', 'TANJUNGSARI', 0, 0),
('2019-08-02', 'UJUNG BERUNG', 0, -1981849),
('2019-08-02', 'WINDU', 0, -2971155);

-- --------------------------------------------------------

--
-- Struktur dari tabel `titipan2`
--

CREATE TABLE `titipan2` (
  `tanggal` date DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `titipan2`
--

INSERT INTO `titipan2` (`tanggal`, `nominal`) VALUES
('2016-12-01', 74500000),
('2016-12-03', 74500000),
('2016-12-04', 74500000),
('2016-12-02', 74500000),
('2016-12-05', 74500000),
('2016-12-06', 75500000),
('2016-12-07', 76500000),
('2016-12-08', 77500000),
('2016-12-09', 78500000),
('2016-12-10', 79500000),
('2016-12-11', 80500000),
('2016-12-12', 80000000),
('2016-12-13', 80000000),
('2017-05-17', 1000000),
('2018-05-04', 0),
('2018-10-01', 114000000),
('2018-10-02', 114000000),
('2019-08-02', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `total_trx`
--

CREATE TABLE `total_trx` (
  `tanggal` date NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `total_trx`
--

INSERT INTO `total_trx` (`tanggal`, `tempat`, `total`) VALUES
('2016-11-01', 'ARCAMANIK', 0),
('2016-11-01', 'BANJARAN', 412004523),
('2016-11-01', 'BATUJAJAR', 167604162),
('2016-11-01', 'BKR', 5489633),
('2016-11-01', 'CICALENGKA', 204923226),
('2016-11-01', 'CIJAURA', 1215298887),
('2016-11-01', 'CIKALONG WETAN', 0),
('2016-11-01', 'CILILIN', 0),
('2016-11-01', 'CIMAHI', 1039699907),
('2016-11-01', 'DAGO', 362116350),
('2016-11-01', 'JATINANGOR', 142564278),
('2016-11-01', 'KOPO', 1897050740),
('2016-11-01', 'LEMBANG', 724400258),
('2016-11-01', 'LEMBONG', 2147483647),
('2016-11-01', 'MAJALAYA', 565218737),
('2016-11-01', 'PADALARANG', 238058329),
('2016-11-01', 'PLASA RANCAEKEK', 672362498),
('2016-11-01', 'RAJAWALI', 2012864243),
('2016-11-01', 'RANCAEKEK / ERRI', 0),
('2016-11-01', 'RANCAEKEK 2/ LILIK', 71238793),
('2016-11-01', 'SETIABUDI', 1681031882),
('2016-11-01', 'SOREANG', 325092021),
('2016-11-01', 'SUMEDANG', 727549517),
('2016-11-01', 'SUPRATMAN', 1599036363),
('2016-11-01', 'TANJUNGSARI', 81945440),
('2016-11-01', 'UJUNG BERUNG', 709959791),
('2016-11-01', 'WINDU', 1377698733),
('2016-12-04', 'ARCAMANIK', 0),
('2016-12-04', 'BANJARAN', 0),
('2016-12-04', 'BATUJAJAR', 0),
('2016-12-04', 'BKR', 22500),
('2016-12-04', 'CICALENGKA', 0),
('2016-12-04', 'CIJAURA', 0),
('2016-12-04', 'CIKALONG WETAN', 0),
('2016-12-04', 'CILILIN', 0),
('2016-12-04', 'CIMAHI', 0),
('2016-12-04', 'DAGO', 0),
('2016-12-04', 'JATINANGOR', 0),
('2016-12-04', 'KOPO', 0),
('2016-12-04', 'LEMBANG', 0),
('2016-12-04', 'LEMBONG', 0),
('2016-12-04', 'MAJALAYA', 0),
('2016-12-04', 'PADALARANG', 0),
('2016-12-04', 'PLASA RANCAEKEK', 0),
('2016-12-04', 'RAJAWALI', 0),
('2016-12-04', 'RANCAEKEK / ERRI', 0),
('2016-12-04', 'RANCAEKEK 2/ LILIK', 0),
('2016-12-04', 'SETIABUDI', 0),
('2016-12-04', 'SOREANG', 0),
('2016-12-04', 'SUMEDANG', 0),
('2016-12-04', 'SUPRATMAN', 0),
('2016-12-04', 'TANJUNGSARI', 0),
('2016-12-04', 'UJUNG BERUNG', 0),
('2016-12-04', 'WINDU', 0),
('2016-12-03', 'ARCAMANIK', 0),
('2016-12-03', 'BANJARAN', 0),
('2016-12-03', 'BATUJAJAR', 0),
('2016-12-03', 'BKR', 0),
('2016-12-03', 'CICALENGKA', 0),
('2016-12-03', 'CIJAURA', 8059955),
('2016-12-03', 'CIKALONG WETAN', 0),
('2016-12-03', 'CILILIN', 0),
('2016-12-03', 'CIMAHI', 582111),
('2016-12-03', 'DAGO', 0),
('2016-12-03', 'JATINANGOR', 22000),
('2016-12-03', 'KOPO', 1295314),
('2016-12-03', 'LEMBANG', 5401200),
('2016-12-03', 'LEMBONG', 4306166),
('2016-12-03', 'MAJALAYA', 0),
('2016-12-03', 'PADALARANG', 0),
('2016-12-03', 'PLASA RANCAEKEK', 0),
('2016-12-03', 'RAJAWALI', 3925244),
('2016-12-03', 'RANCAEKEK / ERRI', 0),
('2016-12-03', 'RANCAEKEK 2/ LILIK', 4575001),
('2016-12-03', 'SETIABUDI', 0),
('2016-12-03', 'SOREANG', 0),
('2016-12-03', 'SUMEDANG', 0),
('2016-12-03', 'SUPRATMAN', 3683603),
('2016-12-03', 'TANJUNGSARI', 258682),
('2016-12-03', 'UJUNG BERUNG', 5525244),
('2016-12-03', 'WINDU', 897735),
('2016-12-01', 'ARCAMANIK', 0),
('2016-12-01', 'BANJARAN', 1151956),
('2016-12-01', 'BATUJAJAR', 3253018),
('2016-12-01', 'BKR', 0),
('2016-12-01', 'CICALENGKA', 2008944),
('2016-12-01', 'CIJAURA', 13971967),
('2016-12-01', 'CIKALONG WETAN', 0),
('2016-12-01', 'CILILIN', 0),
('2016-12-01', 'CIMAHI', 8329089),
('2016-12-01', 'DAGO', 1229485),
('2016-12-01', 'JATINANGOR', 611539),
('2016-12-01', 'KOPO', 12367310),
('2016-12-01', 'LEMBANG', 7784941),
('2016-12-01', 'LEMBONG', 16333828),
('2016-12-01', 'MAJALAYA', 1588604),
('2016-12-01', 'PADALARANG', 730110),
('2016-12-01', 'PLASA RANCAEKEK', 9251424),
('2016-12-01', 'RAJAWALI', 14537046),
('2016-12-01', 'RANCAEKEK / ERRI', 0),
('2016-12-01', 'RANCAEKEK 2/ LILIK', 560688),
('2016-12-01', 'SETIABUDI', 6995144),
('2016-12-01', 'SOREANG', 5286433),
('2016-12-01', 'SUMEDANG', 3833882),
('2016-12-01', 'SUPRATMAN', 6221950),
('2016-12-01', 'TANJUNGSARI', 981339),
('2016-12-01', 'UJUNG BERUNG', 11427192),
('2016-12-01', 'WINDU', 7127216),
('2016-12-02', 'ARCAMANIK', 0),
('2016-12-02', 'BANJARAN', 1451469),
('2016-12-02', 'BATUJAJAR', 1573083),
('2016-12-02', 'BKR', 22500),
('2016-12-02', 'CICALENGKA', 1691575),
('2016-12-02', 'CIJAURA', 21358096),
('2016-12-02', 'CIKALONG WETAN', 0),
('2016-12-02', 'CILILIN', 0),
('2016-12-02', 'CIMAHI', 12877598),
('2016-12-02', 'DAGO', 1818657),
('2016-12-02', 'JATINANGOR', 1307711),
('2016-12-02', 'KOPO', 8826669),
('2016-12-02', 'LEMBANG', 11506576),
('2016-12-02', 'LEMBONG', 18703699),
('2016-12-02', 'MAJALAYA', 5591582),
('2016-12-02', 'PADALARANG', 1329184),
('2016-12-02', 'PLASA RANCAEKEK', 0),
('2016-12-02', 'RAJAWALI', 7505808),
('2016-12-02', 'RANCAEKEK / ERRI', 0),
('2016-12-02', 'RANCAEKEK 2/ LILIK', 5270401),
('2016-12-02', 'SETIABUDI', 6419140),
('2016-12-02', 'SOREANG', 6354866),
('2016-12-02', 'SUMEDANG', 2715700),
('2016-12-02', 'SUPRATMAN', 8032769),
('2016-12-02', 'TANJUNGSARI', 1303548),
('2016-12-02', 'UJUNG BERUNG', 15401031),
('2016-12-02', 'WINDU', 5865530),
('2016-12-05', 'ARCAMANIK', 0),
('2016-12-05', 'BANJARAN', 9259741),
('2016-12-05', 'BATUJAJAR', 11642467),
('2016-12-05', 'BKR', 975367),
('2016-12-05', 'CICALENGKA', 13967500),
('2016-12-05', 'CIJAURA', 88631236),
('2016-12-05', 'CIKALONG WETAN', 0),
('2016-12-05', 'CILILIN', 0),
('2016-12-05', 'CIMAHI', 84251937),
('2016-12-05', 'DAGO', 32487984),
('2016-12-05', 'JATINANGOR', 5380371),
('2016-12-05', 'KOPO', 107281177),
('2016-12-05', 'LEMBANG', 54967986),
('2016-12-05', 'LEMBONG', 162404578),
('2016-12-05', 'MAJALAYA', 15751983),
('2016-12-05', 'PADALARANG', 9136687),
('2016-12-05', 'PLASA RANCAEKEK', 12055496),
('2016-12-05', 'RAJAWALI', 83036913),
('2016-12-05', 'RANCAEKEK / ERRI', 0),
('2016-12-05', 'RANCAEKEK 2/ LILIK', 3274853),
('2016-12-05', 'SETIABUDI', 76159191),
('2016-12-05', 'SOREANG', 22430800),
('2016-12-05', 'SUMEDANG', 36500023),
('2016-12-05', 'SUPRATMAN', 69341524),
('2016-12-05', 'TANJUNGSARI', 15870028),
('2016-12-05', 'UJUNG BERUNG', 32801212),
('2016-12-05', 'WINDU', 75280858),
('2016-12-07', 'ARCAMANIK', 0),
('2016-12-07', 'BANJARAN', 8600696),
('2016-12-07', 'BATUJAJAR', 18552867),
('2016-12-07', 'BKR', 0),
('2016-12-07', 'CICALENGKA', 9444462),
('2016-12-07', 'CIJAURA', 81241040),
('2016-12-07', 'CIKALONG WETAN', 0),
('2016-12-07', 'CILILIN', 0),
('2016-12-07', 'CIMAHI', 63136820),
('2016-12-07', 'DAGO', 21929878),
('2016-12-07', 'JATINANGOR', 2811495),
('2016-12-07', 'KOPO', 85468372),
('2016-12-07', 'LEMBANG', 58516377),
('2016-12-07', 'LEMBONG', 218185106),
('2016-12-07', 'MAJALAYA', 16765744),
('2016-12-07', 'PADALARANG', 37569920),
('2016-12-07', 'PLASA RANCAEKEK', 15424443),
('2016-12-07', 'RAJAWALI', 119634735),
('2016-12-07', 'RANCAEKEK / ERRI', 0),
('2016-12-07', 'RANCAEKEK 2/ LILIK', 2825106),
('2016-12-07', 'SETIABUDI', 123643582),
('2016-12-07', 'SOREANG', 21230911),
('2016-12-07', 'SUMEDANG', 49558203),
('2016-12-07', 'SUPRATMAN', 149756355),
('2016-12-07', 'TANJUNGSARI', 1668345),
('2016-12-07', 'UJUNG BERUNG', 24765397),
('2016-12-07', 'WINDU', 76187334),
('2016-12-06', 'ARCAMANIK', 0),
('2016-12-06', 'BANJARAN', 14920808),
('2016-12-06', 'BATUJAJAR', 7052909),
('2016-12-06', 'BKR', 0),
('2016-12-06', 'CICALENGKA', 6937865),
('2016-12-06', 'CIJAURA', 83553006),
('2016-12-06', 'CIKALONG WETAN', 0),
('2016-12-06', 'CILILIN', 0),
('2016-12-06', 'CIMAHI', 65229854),
('2016-12-06', 'DAGO', 0),
('2016-12-06', 'JATINANGOR', 8597883),
('2016-12-06', 'KOPO', 60576738),
('2016-12-06', 'LEMBANG', 88220877),
('2016-12-06', 'LEMBONG', 185018051),
('2016-12-06', 'MAJALAYA', 28044121),
('2016-12-06', 'PADALARANG', 10943286),
('2016-12-06', 'PLASA RANCAEKEK', 36036549),
('2016-12-06', 'RAJAWALI', 108347531),
('2016-12-06', 'RANCAEKEK / ERRI', 0),
('2016-12-06', 'RANCAEKEK 2/ LILIK', 3041309),
('2016-12-06', 'SETIABUDI', 117719251),
('2016-12-06', 'SOREANG', 24130107),
('2016-12-06', 'SUMEDANG', 42678602),
('2016-12-06', 'SUPRATMAN', 76256910),
('2016-12-06', 'TANJUNGSARI', 3285192),
('2016-12-06', 'UJUNG BERUNG', 87333725),
('2016-12-06', 'WINDU', 174879816),
('2016-12-08', 'ARCAMANIK', 0),
('2016-12-08', 'BANJARAN', 6476437),
('2016-12-08', 'BATUJAJAR', 14563695),
('2016-12-08', 'BKR', 0),
('2016-12-08', 'CICALENGKA', 7784625),
('2016-12-08', 'CIJAURA', 61465420),
('2016-12-08', 'CIKALONG WETAN', 0),
('2016-12-08', 'CILILIN', 0),
('2016-12-08', 'CIMAHI', 50932362),
('2016-12-08', 'DAGO', 21563368),
('2016-12-08', 'JATINANGOR', 4280502),
('2016-12-08', 'KOPO', 68724954),
('2016-12-08', 'LEMBANG', 21957832),
('2016-12-08', 'LEMBONG', 233720470),
('2016-12-08', 'MAJALAYA', 17752631),
('2016-12-08', 'PADALARANG', 7555293),
('2016-12-08', 'PLASA RANCAEKEK', 16883225),
('2016-12-08', 'RAJAWALI', 81013117),
('2016-12-08', 'RANCAEKEK / ERRI', 0),
('2016-12-08', 'RANCAEKEK 2/ LILIK', 2797978),
('2016-12-08', 'SETIABUDI', 98748742),
('2016-12-08', 'SOREANG', 9441072),
('2016-12-08', 'SUMEDANG', 29456781),
('2016-12-08', 'SUPRATMAN', 108634211),
('2016-12-08', 'TANJUNGSARI', 1262471),
('2016-12-08', 'UJUNG BERUNG', 52256142),
('2016-12-08', 'WINDU', 45963478),
('2016-12-09', 'ARCAMANIK', 0),
('2016-12-09', 'BANJARAN', 9950394),
('2016-12-09', 'BATUJAJAR', 13442713),
('2016-12-09', 'BKR', 0),
('2016-12-09', 'CICALENGKA', 3885928),
('2016-12-09', 'CIJAURA', 44428664),
('2016-12-09', 'CIKALONG WETAN', 0),
('2016-12-09', 'CILILIN', 0),
('2016-12-09', 'CIMAHI', 45354245),
('2016-12-09', 'DAGO', 23267379),
('2016-12-09', 'JATINANGOR', 5135148),
('2016-12-09', 'KOPO', 37077106),
('2016-12-09', 'LEMBANG', 56334621),
('2016-12-09', 'LEMBONG', 269987092),
('2016-12-09', 'MAJALAYA', 24753341),
('2016-12-09', 'PADALARANG', 9846810),
('2016-12-09', 'PLASA RANCAEKEK', 13083421),
('2016-12-09', 'RAJAWALI', 93245017),
('2016-12-09', 'RANCAEKEK / ERRI', 0),
('2016-12-09', 'RANCAEKEK 2/ LILIK', 1100594),
('2016-12-09', 'SETIABUDI', 74174730),
('2016-12-09', 'SOREANG', 22570796),
('2016-12-09', 'SUMEDANG', 24366603),
('2016-12-09', 'SUPRATMAN', 58270100),
('2016-12-09', 'TANJUNGSARI', 3277925),
('2016-12-09', 'UJUNG BERUNG', 50815992),
('2016-12-09', 'WINDU', 59015722),
('2016-12-11', 'ARCAMANIK', 0),
('2016-12-11', 'BANJARAN', 0),
('2016-12-11', 'BATUJAJAR', 0),
('2016-12-11', 'BKR', 896090),
('2016-12-11', 'CICALENGKA', 0),
('2016-12-11', 'CIJAURA', 0),
('2016-12-11', 'CIKALONG WETAN', 0),
('2016-12-11', 'CILILIN', 0),
('2016-12-11', 'CIMAHI', 0),
('2016-12-11', 'DAGO', 0),
('2016-12-11', 'JATINANGOR', 0),
('2016-12-11', 'KOPO', 0),
('2016-12-11', 'LEMBANG', 0),
('2016-12-11', 'LEMBONG', 0),
('2016-12-11', 'MAJALAYA', 0),
('2016-12-11', 'PADALARANG', 0),
('2016-12-11', 'PLASA RANCAEKEK', 0),
('2016-12-11', 'RAJAWALI', 0),
('2016-12-11', 'RANCAEKEK / ERRI', 0),
('2016-12-11', 'RANCAEKEK 2/ LILIK', 77000),
('2016-12-11', 'SETIABUDI', 0),
('2016-12-11', 'SOREANG', 0),
('2016-12-11', 'SUMEDANG', 0),
('2016-12-11', 'SUPRATMAN', 0),
('2016-12-11', 'TANJUNGSARI', 0),
('2016-12-11', 'UJUNG BERUNG', 0),
('2016-12-11', 'WINDU', 0),
('2016-12-12', 'ARCAMANIK', 0),
('2016-12-12', 'BANJARAN', 0),
('2016-12-12', 'BATUJAJAR', 0),
('2016-12-12', 'BKR', 371381),
('2016-12-12', 'CICALENGKA', 0),
('2016-12-12', 'CIJAURA', 0),
('2016-12-12', 'CIKALONG WETAN', 0),
('2016-12-12', 'CILILIN', 0),
('2016-12-12', 'CIMAHI', 0),
('2016-12-12', 'DAGO', 0),
('2016-12-12', 'JATINANGOR', 1336650),
('2016-12-12', 'KOPO', 0),
('2016-12-12', 'LEMBANG', 0),
('2016-12-12', 'LEMBONG', 0),
('2016-12-12', 'MAJALAYA', 0),
('2016-12-12', 'PADALARANG', 0),
('2016-12-12', 'PLASA RANCAEKEK', 0),
('2016-12-12', 'RAJAWALI', 0),
('2016-12-12', 'RANCAEKEK / ERRI', 0),
('2016-12-12', 'RANCAEKEK 2/ LILIK', 772221),
('2016-12-12', 'SETIABUDI', 0),
('2016-12-12', 'SOREANG', 0),
('2016-12-12', 'SUMEDANG', 0),
('2016-12-12', 'SUPRATMAN', 0),
('2016-12-12', 'TANJUNGSARI', 22000),
('2016-12-12', 'UJUNG BERUNG', 0),
('2016-12-12', 'WINDU', 0),
('2016-12-10', 'ARCAMANIK', 0),
('2016-12-10', 'BANJARAN', 0),
('2016-12-10', 'BATUJAJAR', 0),
('2016-12-10', 'BKR', 0),
('2016-12-10', 'CICALENGKA', 0),
('2016-12-10', 'CIJAURA', 25882053),
('2016-12-10', 'CIKALONG WETAN', 0),
('2016-12-10', 'CILILIN', 0),
('2016-12-10', 'CIMAHI', 0),
('2016-12-10', 'DAGO', 0),
('2016-12-10', 'JATINANGOR', 1218130),
('2016-12-10', 'KOPO', 18538050),
('2016-12-10', 'LEMBANG', 2508204),
('2016-12-10', 'LEMBONG', 59853463),
('2016-12-10', 'MAJALAYA', 0),
('2016-12-10', 'PADALARANG', 0),
('2016-12-10', 'PLASA RANCAEKEK', 0),
('2016-12-10', 'RAJAWALI', 24722017),
('2016-12-10', 'RANCAEKEK / ERRI', 0),
('2016-12-10', 'RANCAEKEK 2/ LILIK', 3499976),
('2016-12-10', 'SETIABUDI', 0),
('2016-12-10', 'SOREANG', 0),
('2016-12-10', 'SUMEDANG', 3979506),
('2016-12-10', 'SUPRATMAN', 73383470),
('2016-12-10', 'TANJUNGSARI', 0),
('2016-12-10', 'UJUNG BERUNG', 10870247),
('2016-12-10', 'WINDU', 6045833),
('2016-12-14', 'ARCAMANIK', 0),
('2016-12-14', 'BANJARAN', 9939695),
('2016-12-14', 'BATUJAJAR', 3371220),
('2016-12-14', 'BKR', 233311),
('2016-12-14', 'CICALENGKA', 55867435),
('2016-12-14', 'CIJAURA', 69252706),
('2016-12-14', 'CIKALONG WETAN', 0),
('2016-12-14', 'CILILIN', 0),
('2016-12-14', 'CIMAHI', 68026433),
('2016-12-14', 'DAGO', 18900320),
('2016-12-14', 'JATINANGOR', 4598319),
('2016-12-14', 'KOPO', 203603163),
('2016-12-14', 'LEMBANG', 27028060),
('2016-12-14', 'LEMBONG', 297404416),
('2016-12-14', 'MAJALAYA', 72964182),
('2016-12-14', 'PADALARANG', 23504863),
('2016-12-14', 'PLASA RANCAEKEK', 69159138),
('2016-12-14', 'RAJAWALI', 398568060),
('2016-12-14', 'RANCAEKEK / ERRI', 0),
('2016-12-14', 'RANCAEKEK 2/ LILIK', 2090761),
('2016-12-14', 'SETIABUDI', 135466039),
('2016-12-14', 'SOREANG', 10731953),
('2016-12-14', 'SUMEDANG', 139248854),
('2016-12-14', 'SUPRATMAN', 84874449),
('2016-12-14', 'TANJUNGSARI', 2574831),
('2016-12-14', 'UJUNG BERUNG', 34588896),
('2016-12-14', 'WINDU', 56030582),
('2016-12-27', 'ARCAMANIK', 0),
('2016-12-27', 'BANJARAN', 8683179),
('2016-12-27', 'BATUJAJAR', 10315659),
('2016-12-27', 'BKR', 106641),
('2016-12-27', 'CICALENGKA', 6525912),
('2016-12-27', 'CIJAURA', 31105549),
('2016-12-27', 'CIKALONG WETAN', 0),
('2016-12-27', 'CILILIN', 0),
('2016-12-27', 'CIMAHI', 35372351),
('2016-12-27', 'DAGO', 8440958),
('2016-12-27', 'JATINANGOR', 4647732),
('2016-12-27', 'KOPO', 42723553),
('2016-12-27', 'LEMBANG', 9964261),
('2016-12-27', 'LEMBONG', 35064356),
('2016-12-27', 'MAJALAYA', 10404887),
('2016-12-27', 'PADALARANG', 4917888),
('2016-12-27', 'PLASA RANCAEKEK', 15462816),
('2016-12-27', 'RAJAWALI', 32295669),
('2016-12-27', 'RANCAEKEK / ERRI', 0),
('2016-12-27', 'RANCAEKEK 2/ LILIK', 879226),
('2016-12-27', 'SETIABUDI', 35869291),
('2016-12-27', 'SOREANG', 15861090),
('2016-12-27', 'SUMEDANG', 16774132),
('2016-12-27', 'SUPRATMAN', 6263729),
('2016-12-27', 'TANJUNGSARI', 3087895),
('2016-12-27', 'UJUNG BERUNG', 35867995),
('2016-12-27', 'WINDU', 4863050),
('2016-12-28', 'ARCAMANIK', 0),
('2016-12-28', 'BANJARAN', 3690016),
('2016-12-28', 'BATUJAJAR', 4074090),
('2016-12-28', 'BKR', 0),
('2016-12-28', 'CICALENGKA', 2240296),
('2016-12-28', 'CIJAURA', 10449913),
('2016-12-28', 'CIKALONG WETAN', 0),
('2016-12-28', 'CILILIN', 0),
('2016-12-28', 'CIMAHI', 18909454),
('2016-12-28', 'DAGO', 2193703),
('2016-12-28', 'JATINANGOR', 1304278),
('2016-12-28', 'KOPO', 17451739),
('2016-12-28', 'LEMBANG', 3102404),
('2016-12-28', 'LEMBONG', 19400893),
('2016-12-28', 'MAJALAYA', 3591860),
('2016-12-28', 'PADALARANG', 6528433),
('2016-12-28', 'PLASA RANCAEKEK', 5042538),
('2016-12-28', 'RAJAWALI', 9671332),
('2016-12-28', 'RANCAEKEK / ERRI', 0),
('2016-12-28', 'RANCAEKEK 2/ LILIK', 0),
('2016-12-28', 'SETIABUDI', 12363278),
('2016-12-28', 'SOREANG', 6231417),
('2016-12-28', 'SUMEDANG', 8044243),
('2016-12-28', 'SUPRATMAN', 4438351),
('2016-12-28', 'TANJUNGSARI', 2522092),
('2016-12-28', 'UJUNG BERUNG', 11759059),
('2016-12-28', 'WINDU', 4335734),
('2017-05-16', 'ARCAMANIK', 0),
('2017-05-16', 'BANJARAN', 9697136),
('2017-05-16', 'BATUJAJAR', 12934524),
('2017-05-16', 'BKR', 187582),
('2017-05-16', 'CICALENGKA', 25041783),
('2017-05-16', 'CIJAURA', 134807412),
('2017-05-16', 'CIKALONG WETAN', 0),
('2017-05-16', 'CILILIN', 0),
('2017-05-16', 'CIMAHI', 48330400),
('2017-05-16', 'DAGO', 0),
('2017-05-16', 'JATINANGOR', 8074528),
('2017-05-16', 'KOPO', 134955093),
('2017-05-16', 'LEMBANG', 30959314),
('2017-05-16', 'LEMBONG', 225216011),
('2017-05-16', 'MAJALAYA', 37486919),
('2017-05-16', 'PADALARANG', 9987479),
('2017-05-16', 'PLASA RANCAEKEK', 70994907),
('2017-05-16', 'RAJAWALI', 151420751),
('2017-05-16', 'RANCAEKEK / ERRI', 0),
('2017-05-16', 'RANCAEKEK 2/ LILIK', 10926893),
('2017-05-16', 'SETIABUDI', 155362216),
('2017-05-16', 'SOREANG', 15080884),
('2017-05-16', 'SUMEDANG', 155398933),
('2017-05-16', 'SUPRATMAN', 143232782),
('2017-05-16', 'TANJUNGSARI', 6073753),
('2017-05-16', 'UJUNG BERUNG', 46632020),
('2017-05-16', 'WINDU', 122701950),
('2017-05-17', 'ARCAMANIK', 0),
('2017-05-17', 'BANJARAN', 24039231),
('2017-05-17', 'BATUJAJAR', 6769615),
('2017-05-17', 'BKR', 410800),
('2017-05-17', 'CICALENGKA', 15263536),
('2017-05-17', 'CIJAURA', 69747039),
('2017-05-17', 'CIKALONG WETAN', 0),
('2017-05-17', 'CILILIN', 0),
('2017-05-17', 'CIMAHI', 62603019),
('2017-05-17', 'DAGO', 0),
('2017-05-17', 'JATINANGOR', 7858341),
('2017-05-17', 'KOPO', 189640169),
('2017-05-17', 'LEMBANG', 50692344),
('2017-05-17', 'LEMBONG', 306532111),
('2017-05-17', 'MAJALAYA', 107031398),
('2017-05-17', 'PADALARANG', 14715396),
('2017-05-17', 'PLASA RANCAEKEK', 59948194),
('2017-05-17', 'RAJAWALI', 191476868),
('2017-05-17', 'RANCAEKEK / ERRI', 0),
('2017-05-17', 'RANCAEKEK 2/ LILIK', 1621678),
('2017-05-17', 'SETIABUDI', 153723095),
('2017-05-17', 'SOREANG', 39432834),
('2017-05-17', 'SUMEDANG', 78692545),
('2017-05-17', 'SUPRATMAN', 212591859),
('2017-05-17', 'TANJUNGSARI', 4132873),
('2017-05-17', 'UJUNG BERUNG', 24146859),
('2017-05-17', 'WINDU', 115014342),
('2017-05-18', 'ARCAMANIK', 0),
('2017-05-18', 'BANJARAN', 24684300),
('2017-05-18', 'BATUJAJAR', 21484562),
('2017-05-18', 'BKR', 1208150),
('2017-05-18', 'CICALENGKA', 17540720),
('2017-05-18', 'CIJAURA', 154527025),
('2017-05-18', 'CIKALONG WETAN', 0),
('2017-05-18', 'CILILIN', 0),
('2017-05-18', 'CIMAHI', 47629984),
('2017-05-18', 'DAGO', 48297672),
('2017-05-18', 'JATINANGOR', 9319099),
('2017-05-18', 'KOPO', 357115865),
('2017-05-18', 'LEMBANG', 58951384),
('2017-05-18', 'LEMBONG', 554151803),
('2017-05-18', 'MAJALAYA', 35365876),
('2017-05-18', 'PADALARANG', 73111468),
('2017-05-18', 'PLASA RANCAEKEK', 43482530),
('2017-05-18', 'RAJAWALI', 176143738),
('2017-05-18', 'RANCAEKEK / ERRI', 0),
('2017-05-18', 'RANCAEKEK 2/ LILIK', 4194059),
('2017-05-18', 'SETIABUDI', 146061969),
('2017-05-18', 'SOREANG', 26703122),
('2017-05-18', 'SUMEDANG', 68326704),
('2017-05-18', 'SUPRATMAN', 88586018),
('2017-05-18', 'TANJUNGSARI', 5063593),
('2017-05-18', 'UJUNG BERUNG', 164255729),
('2017-05-18', 'WINDU', 174472412),
('2018-03-01', 'ARCAMANIK', 0),
('2018-03-01', 'BANJARAN', 136984),
('2018-03-01', 'BATUJAJAR', 1819728),
('2018-03-01', 'BKR', 52500),
('2018-03-01', 'CICALENGKA', 1213944),
('2018-03-01', 'CIJAURA', 4988411),
('2018-03-01', 'CIKALONG WETAN', 0),
('2018-03-01', 'CILILIN', 0),
('2018-03-01', 'CIMAHI', 5860893),
('2018-03-01', 'DAGO', 0),
('2018-03-01', 'JATINANGOR', 1164396),
('2018-03-01', 'KOPO', 3182539),
('2018-03-01', 'LEMBANG', 6085226),
('2018-03-01', 'LEMBONG', 3939078),
('2018-03-01', 'MAJALAYA', 0),
('2018-03-01', 'PADALARANG', 1240759),
('2018-03-01', 'PLASA RANCAEKEK', 6992282),
('2018-03-01', 'RAJAWALI', 3693199),
('2018-03-01', 'RANCAEKEK / ERRI', 0),
('2018-03-01', 'RANCAEKEK 2/ LILIK', 0),
('2018-03-01', 'SETIABUDI', 5664693),
('2018-03-01', 'SOREANG', 5283348),
('2018-03-01', 'SUMEDANG', 942354),
('2018-03-01', 'SUPRATMAN', 1281164),
('2018-03-01', 'TANJUNGSARI', 0),
('2018-03-01', 'UJUNG BERUNG', 5253711),
('2018-03-01', 'WINDU', 1289901),
('2018-05-03', 'ARCAMANIK', 0),
('2018-05-03', 'BANJARAN', 1240784),
('2018-05-03', 'BATUJAJAR', 0),
('2018-05-03', 'BKR', 0),
('2018-05-03', 'CICALENGKA', 558677),
('2018-05-03', 'CIJAURA', 13376175),
('2018-05-03', 'CIKALONG WETAN', 0),
('2018-05-03', 'CILILIN', 0),
('2018-05-03', 'CIMAHI', 2912429),
('2018-05-03', 'DAGO', 0),
('2018-05-03', 'JATINANGOR', 43000),
('2018-05-03', 'KOPO', 52004204),
('2018-05-03', 'LEMBANG', 9890991),
('2018-05-03', 'LEMBONG', 8996331),
('2018-05-03', 'MAJALAYA', 5167252),
('2018-05-03', 'PADALARANG', 0),
('2018-05-03', 'PLASA RANCAEKEK', 3998498),
('2018-05-03', 'RAJAWALI', 9182098),
('2018-05-03', 'RANCAEKEK / ERRI', 0),
('2018-05-03', 'RANCAEKEK 2/ LILIK', 0),
('2018-05-03', 'SETIABUDI', 13409475),
('2018-05-03', 'SOREANG', 0),
('2018-05-03', 'SUMEDANG', 10961962),
('2018-05-03', 'SUPRATMAN', 3297809),
('2018-05-03', 'TANJUNGSARI', 0),
('2018-05-03', 'UJUNG BERUNG', 4583398),
('2018-05-03', 'WINDU', 4815312),
('2018-11-01', 'ARCAMANIK', 0),
('2018-11-01', 'BANJARAN', 0),
('2018-11-01', 'BATUJAJAR', 0),
('2018-11-01', 'BKR', 0),
('2018-11-01', 'CICALENGKA', 0),
('2018-11-01', 'CIJAURA', 0),
('2018-11-01', 'CIKALONG WETAN', 0),
('2018-11-01', 'CILILIN', 0),
('2018-11-01', 'CIMAHI', 0),
('2018-11-01', 'DAGO', 0),
('2018-11-01', 'JATINANGOR', 0),
('2018-11-01', 'KOPO', 0),
('2018-11-01', 'LEMBANG', 0),
('2018-11-01', 'LEMBONG', 0),
('2018-11-01', 'MAJALAYA', 0),
('2018-11-01', 'PADALARANG', 0),
('2018-11-01', 'PLASA RANCAEKEK', 0),
('2018-11-01', 'RAJAWALI', 0),
('2018-11-01', 'RANCAEKEK / ERRI', 0),
('2018-11-01', 'RANCAEKEK 2/ LILIK', 0),
('2018-11-01', 'SETIABUDI', 0),
('2018-11-01', 'SOREANG', 0),
('2018-11-01', 'SUMEDANG', 0),
('2018-11-01', 'SUPRATMAN', 0),
('2018-11-01', 'TANJUNGSARI', 0),
('2018-11-01', 'UJUNG BERUNG', 0),
('2018-11-01', 'WINDU', 0),
('2018-10-01', 'ARCAMANIK', 0),
('2018-10-01', 'BANJARAN', 2786086),
('2018-10-01', 'BATUJAJAR', 0),
('2018-10-01', 'BKR', 0),
('2018-10-01', 'CICALENGKA', 0),
('2018-10-01', 'CIJAURA', 12376463),
('2018-10-01', 'CIKALONG WETAN', 0),
('2018-10-01', 'CILILIN', 0),
('2018-10-01', 'CIMAHI', 10890744),
('2018-10-01', 'DAGO', 0),
('2018-10-01', 'JATINANGOR', 464138),
('2018-10-01', 'KOPO', 10658719),
('2018-10-01', 'LEMBANG', 10706976),
('2018-10-01', 'LEMBONG', 13869135),
('2018-10-01', 'MAJALAYA', 0),
('2018-10-01', 'PADALARANG', 3859000),
('2018-10-01', 'PLASA RANCAEKEK', 4598288),
('2018-10-01', 'RAJAWALI', 6446151),
('2018-10-01', 'RANCAEKEK / ERRI', 0),
('2018-10-01', 'RANCAEKEK 2/ LILIK', 0),
('2018-10-01', 'SETIABUDI', 7548668),
('2018-10-01', 'SOREANG', 5700014),
('2018-10-01', 'SUMEDANG', 6280253),
('2018-10-01', 'SUPRATMAN', 2659249),
('2018-10-01', 'TANJUNGSARI', 0),
('2018-10-01', 'UJUNG BERUNG', 8965443),
('2018-10-01', 'WINDU', 4169703),
('2019-08-01', 'ARCAMANIK', 0),
('2019-08-01', 'BANJARAN', 37000),
('2019-08-01', 'BATUJAJAR', 0),
('2019-08-01', 'BKR', 202750),
('2019-08-01', 'CICALENGKA', 493767),
('2019-08-01', 'CIJAURA', 7823354),
('2019-08-01', 'CIKALONG WETAN', 0),
('2019-08-01', 'CILILIN', 0),
('2019-08-01', 'CIMAHI', 5966489),
('2019-08-01', 'DAGO', 0),
('2019-08-01', 'JATINANGOR', 0),
('2019-08-01', 'KOPO', 4319954),
('2019-08-01', 'LEMBANG', 3873628),
('2019-08-01', 'LEMBONG', 1539544),
('2019-08-01', 'MAJALAYA', 3013102),
('2019-08-01', 'PADALARANG', 0),
('2019-08-01', 'PLASA RANCAEKEK', 1187032),
('2019-08-01', 'RAJAWALI', 3996747),
('2019-08-01', 'RANCAEKEK / ERRI', 0),
('2019-08-01', 'RANCAEKEK 2/ LILIK', 0),
('2019-08-01', 'SETIABUDI', 3730308),
('2019-08-01', 'SOREANG', 3665417),
('2019-08-01', 'SUMEDANG', 1915843),
('2019-08-01', 'SUPRATMAN', 548984),
('2019-08-01', 'TANJUNGSARI', 0),
('2019-08-01', 'UJUNG BERUNG', 1981849),
('2019-08-01', 'WINDU', 2971155);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transvision`
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
-- Dumping data untuk tabel `transvision`
--

INSERT INTO `transvision` (`tanggal`, `divre`, `kode_kopeg`, `nama_kopeg`, `kode_loket`, `loket`, `nama_biller`, `account`, `customer`, `tagihan`, `surcharge`, `fee_ca`, `fee_finnet`, `kewajiban`, `kode_biller`) VALUES
('2016-11-09', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810134886', 'KOKO KOKO', 144500, 3000, 0, 0, 144500, '20'),
('2016-11-09', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810056730', 'DIDIH PURNAMA ALAM', 144500, 3000, 0, 0, 144500, '20'),
('2016-11-09', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810011978', 'ASEP PAHRUDIN', 174500, 3000, 0, 0, 174500, '20'),
('2016-11-09', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810083944', 'RDENNY SUKARDINI', 144500, 3000, 0, 0, 144500, '20'),
('2016-11-09', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali1', 'TRANSVISION P2H', '127810163266', 'AUDY REVOLLY KAWENGI', 144500, 3000, 0, 0, 144500, '20'),
('2016-11-09', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810106343', 'JOELIANTI NASOWIDJAY', 196500, 0, 0, 0, 196500, '20'),
('2016-11-09', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali2', 'TRANSVISION P2H', '127810048004', 'SRI AGUSTIANI IRIANT', 174499, 3000, 0, 0, 174499, '20'),
('2016-11-09', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810012808', 'YACUB DJOHANSYAH', 171500, 0, 0, 0, 171500, '20'),
('2016-11-09', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810109108', 'NANA KAMANA', 174500, 3000, 0, 0, 174500, '20'),
('2016-11-09', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810016690', 'LING HIE PING', 171499, 0, 0, 0, 171499, '20'),
('2016-11-09', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810080840', 'MOCHAMAD ALIHASYIM', 274500, 0, 0, 0, 274500, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810086997', 'DEWI ENOK DEALER MOB', 174500, 3000, 0, 0, 174500, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810013373', 'SUDIRMAN', 174500, 3000, 0, 0, 174500, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810056549', 'LIA KANIA YULIAWATI', 174500, 3000, 0, 0, 174500, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810051170', 'TJOKRO YUDIANTO', 207500, 3000, 0, 0, 207500, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810153897', 'JACHJA SUTISNA', 144500, 3000, 0, 0, 144500, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810080576', 'ROSMANA SPD', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810046935', 'NETI TAMBUNAN', 174500, 3000, 0, 0, 174500, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810017393', 'WIDI WIDODO DECODER ', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810017706', 'WIDI WIDODO DECODER ', 173999, 2500, 0, 0, 173999, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810019860', 'WIDI WIDODO DECODER3', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810020005', 'WIDI WIDODO DECODER ', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810020208', 'WIDI WIDODO DECODER ', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810022423', 'WIDI WIDODO', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810034521', 'WIDI WIDODO 7', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810034412', 'WIDI WIDODO 8', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810034541', 'WIDI WIDODO  9', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810016977', 'WIDI WIDODO  10', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810034648', 'WIDI WIDODO  11', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810034106', 'WIDI WIDODO  12', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810016396', 'WIDI WIDODO', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810034093', 'WIDI WIDODO DEC 14', 174000, 2500, 0, 0, 174000, '20'),
('2016-11-10', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali2', 'TRANSVISION P2H', '127810106291', 'WILLY KOMARA', 144500, 3000, 0, 0, 144500, '20'),
('2016-11-11', '03', '695', 'D3_Kop Dadali BDG', '1097', 'cimahi1', 'TRANSVISION P2H', '127810034687', 'HIRSAN FIRRA KANAR', 173999, 2500, 0, 0, 173999, '20'),
('2016-11-11', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi1', 'TRANSVISION P2H', '127810047395', 'IIS AISYAH', 141500, 0, 0, 0, 141500, '20'),
('2016-11-11', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810092899', 'MAKO PUSDIKIF BANDUN', 174500, 3000, 0, 0, 174500, '20'),
('2016-11-11', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810146223', 'MAKO PUSDIKIF BANDUN', 174499, 3000, 0, 0, 174499, '20'),
('2016-11-11', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810091178', 'MUJIONO', 174500, 3000, 0, 0, 174500, '20'),
('2016-11-11', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810030705', 'DENY KRISTANDI', 8500, 3000, 0, 0, 8500, '20'),
('2016-11-11', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810050570', 'LILIS SUKMAYATI', 174500, 3000, 0, 0, 174500, '20'),
('2016-11-12', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810075799', 'H JOKO SURANTOSHMHUM', 304500, 0, 0, 0, 304500, '20'),
('2016-11-12', '03', '695', 'D3_Kop Dadali BDG', '1096', 'kopo1', 'TRANSVISION P2H', '127810056483', 'BAGUS INDRAJANA', 199500, 3000, 0, 0, 199500, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810112349', 'UJANG SUNARYA', 144800, 3000, 0, 500, 144800, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810091037', 'TEDDI', 174500, 3000, 0, 500, 174500, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810049407', 'ELSE MARIA', 177499, 3000, 0, 500, 177499, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810170475', 'KOST BJ 26', 1202500, 0, 0, 500, 1202500, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1096', 'kopo1', 'TRANSVISION P2H', '127810038061', 'LUTHFI HARIZ', 174499, 3000, 0, 500, 174499, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810070187', 'FIRDA', 174500, 3000, 0, 500, 174500, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810033028', 'GASIM ALKATIRIE', 407000, 2500, 0, 500, 407000, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810093307', 'BALAI LPSE PROV JABA', 144500, 3000, 0, 500, 144500, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali2', 'TRANSVISION P2H', '127810079462', 'YOYO', 174500, 3000, 0, 500, 174500, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810067912', 'ANGGA MARDITAMA SULT', 171500, 0, 0, 500, 171500, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1094', 'ujungberung2', 'TRANSVISION P2H', '127810092436', 'RUSI KOMALASARI', 174500, 3000, 0, 500, 174500, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810017506', 'EVIE MARIANI', 407500, 3000, 0, 500, 407500, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810050969', 'EVIE MARIANI', 407500, 3000, 0, 500, 407500, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810052026', 'EVIE MARIANI', 407500, 3000, 0, 500, 407500, '20'),
('2016-11-14', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali1', 'TRANSVISION P2H', '127810048716', 'RADIMAN', 174500, 3000, 0, 500, 174500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810134756', 'GUNAWAN SIMON RIO JO', 173999, 2500, 2000, 500, 171999, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810089301', 'ENDANG JULIASTUTI M', 171500, 0, 2000, 500, 169500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman2', 'TRANSVISION P2H', '127810104089', 'AFRIZA', 174500, 3000, 2000, 500, 172500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810038025', 'TITA GARNITA', 304500, 0, 2000, 500, 302500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810099704', 'PARLINDUNGAN SIHOMBI', 171500, 0, 2000, 500, 169500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810066959', 'RACHMAT', 174500, 3000, 2000, 500, 172500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810060474', 'KECAMATAN LENGKONG', 407500, 3000, 2000, 500, 405500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810056093', 'GIANTI RESMANI', 174499, 3000, 2000, 500, 172499, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810038726', 'KKEJAKSAAN TINGGI  M', 174500, 3000, 2000, 500, 172500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810079128', 'FLORENCE RUKTI HAYAT', 171500, 0, 2000, 500, 169500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810056361', 'R HETI NURHAYATI', 174500, 3000, 2000, 500, 172500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1099', 'padalarang1', 'TRANSVISION P2H', '127810087961', 'RD HAGUS SUYADHANA', 407500, 3000, 2000, 500, 405500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810037596', 'ROBERT SETIAWAN', 404500, 0, 2000, 500, 402500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810134753', 'EIDY SANDRA SH MH', 141500, 0, 2000, 500, 139500, '20'),
('2016-11-15', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi1', 'TRANSVISION P2H', '127810034433', 'SIGIT SETIAWAN', 171499, 0, 2000, 500, 169499, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810052074', 'SANTI WANGSA KARTA', 174000, 2500, 2000, 500, 172000, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali1', 'TRANSVISION P2H', '127810104067', 'RONI WIHARJA', 144500, 3000, 2000, 500, 142500, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1093', 'dago1', 'TRANSVISION P2H', '127810163125', 'BONDAN PUDJADI KARTO', 144000, 2500, 2000, 500, 142000, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810092783', 'NANA SUKARNA', 144500, 3000, 2000, 500, 142500, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810047830', 'MIEKE CECILIA SILOOY', 174499, 3000, 2000, 500, 172499, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810026645', 'BUDI PRAYITNO', 174499, 3000, 2000, 500, 172499, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura2', 'TRANSVISION P2H', '127810088479', 'IRWAN MOCH SANTOSA', 177500, 3000, 2000, 500, 175500, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810035666', 'FREDERIK ALBERT M', 174500, 3000, 2000, 500, 172500, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810044464', 'DENI KOMARA  DIKLAT ', 407500, 3000, 2000, 500, 405500, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura2', 'TRANSVISION P2H', '127810014958', 'INDRA PERMANA', 174500, 3000, 2000, 500, 172500, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman2', 'TRANSVISION P2H', '127810037020', 'RDIDA HIDAYAT', 174499, 3000, 2000, 500, 172499, '20'),
('2016-11-16', '03', '695', 'D3_Kop Dadali BDG', '1096', 'kopo1', 'TRANSVISION P2H', '127810051409', 'ASEP SOEBROTO', 144500, 3000, 2000, 500, 142500, '20'),
('2016-11-17', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810056711', 'CECENG C GANDAWIJAYA', 304500, 3000, 2000, 500, 305000, '20'),
('2016-11-17', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810139156', 'WINA WAHYUNI', 171499, 3000, 2000, 500, 171999, '20'),
('2016-11-17', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura2', 'TRANSVISION P2H', '127810107343', 'SURJADI DHARMADI', 171500, 3000, 2000, 500, 172000, '20'),
('2016-11-17', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810073403', 'DODYANDRA TUNAS TOYO', 171500, 3000, 2000, 500, 172000, '20'),
('2016-11-17', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810048869', 'PERMADI', 404500, 3000, 2000, 500, 405000, '20'),
('2016-11-17', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810071587', 'ASTUTISSIMSE', 404500, 3000, 2000, 500, 405000, '20'),
('2016-11-17', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810056054', 'IDRIS', 171499, 3000, 2000, 500, 171999, '20'),
('2016-11-17', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127102204468', 'VICTORY FUTURES', 255500, 3000, 2000, 500, 256000, '20'),
('2016-11-17', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali1', 'TRANSVISION P2H', '127102200288', 'SUWARDJOKO', 217000, 3000, 2000, 500, 217500, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810090361', 'DADI', 171500, 3000, 2000, 500, 172000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi1', 'TRANSVISION P2H', '127810113798', 'DRIRHTBLILY SATARIMS', 171500, 0, 2000, 500, 172000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi1', 'TRANSVISION P2H', '127810123736', 'AGUS DJUMHANA SOEPAR', 171500, 0, 2000, 500, 172000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810057378', 'MUHYI', 171500, 0, 2000, 500, 172000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi1', 'TRANSVISION P2H', '127810069696', 'DRSKUSWONDO', 171500, 0, 2000, 500, 172000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1100', 'ddl_cclengka', 'TRANSVISION P2H', '127810100069', 'AGUNG', 171500, 3000, 2000, 500, 172000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810073071', 'ABDUL WAHAB', 171500, 0, 2000, 500, 172000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1100', 'cicalengka1', 'TRANSVISION P2H', '127810106312', 'KARSAM', 171500, 3000, 2000, 500, 172000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali2', 'TRANSVISION P2H', '127810104063', 'SHENDY SUMARLI', 404500, 3000, 2000, 500, 405000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1091', 'bkr2', 'TRANSVISION P2H', '127810106317', 'KANDA MARTANAGARA', 171500, 3000, 2000, 500, 172000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810111496', 'STEVANI VALENCI', 141500, 3000, 2000, 500, 142000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1100', 'ddl_cclengka', 'TRANSVISION P2H', '127810102164', 'AHMAD FARIZI', 404500, 3000, 2000, 500, 405000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810087481', 'SULYANA KARTIKA', 171500, 3000, 2000, 500, 172000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810084035', 'EDDY KURNIA', 441500, 0, 2000, 500, 442000, '20'),
('2016-11-18', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810163630', 'RUMAH THE PRIANGAN', 662500, 0, 2000, 500, 663000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '5546', 'ddl_rckkbru', 'TRANSVISION P2H', '127810104032', 'ENNY BASTIAN', 284800, 3000, 2000, 500, 285300, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810050379', 'AGUS GANJAR', 141500, 3000, 2000, 500, 142000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810145673', 'VINCENTSIUS  YANUAR ', 201500, 2500, 2000, 500, 202000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810145672', 'VINCENTSIUS  YANUAR ', 201500, 2500, 2000, 500, 202000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127225151432', 'PTINDOSENTOSA TRADA ', 201500, 0, 0, 0, 201500, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810048244', 'H WUKIR KARTIKO', 171499, 3000, 2000, 500, 171999, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810092167', 'BACHTI ALISJAHBANA', 171500, 3000, 2000, 500, 172000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810102168', 'DIDIN SARIFUDIN', 141500, 2500, 2000, 500, 142000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810058886', 'DRAHJ IKA CANDRAWULA', 246500, 3000, 2000, 500, 247000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '5546', 'ddl_rckkbru', 'TRANSVISION P2H', '127810104032', 'ENNY BASTIAN', 284800, 3000, 2000, 500, 285300, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810050379', 'AGUS GANJAR', 141500, 3000, 2000, 500, 142000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810145673', 'VINCENTSIUS  YANUAR ', 201500, 2500, 2000, 500, 202000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810145672', 'VINCENTSIUS  YANUAR ', 201500, 2500, 2000, 500, 202000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127225151432', 'PTINDOSENTOSA TRADA ', 201500, 0, 2000, 500, 202000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810048244', 'H WUKIR KARTIKO', 171499, 3000, 2000, 500, 171999, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810092167', 'BACHTI ALISJAHBANA', 171500, 3000, 2000, 500, 172000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810102168', 'DIDIN SARIFUDIN', 141500, 2500, 2000, 500, 142000, '20'),
('2016-11-19', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810058886', 'DRAHJ IKA CANDRAWULA', 246500, 3000, 2000, 500, 247000, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura2', 'TRANSVISION P2H', '127810074283', 'NUR I SUYADI', 191500, 3000, 2000, 500, 192000, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810005782', 'DRS HERRI HUDAYA MSI', 324500, 3000, 2000, 500, 325000, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810062710', 'HERMANSYAH', 221500, 3000, 2000, 500, 222000, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810113210', 'INTANIA SETIATI WAHY', 840500, 0, 2000, 500, 841000, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1091', 'bkr2', 'TRANSVISION P2H', '127810024833', 'R KURNIA PERMANA', 191499, 3000, 2000, 500, 191999, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810106292', 'SMP N 37 BANDUNG', 191500, 3000, 2000, 500, 192000, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman2', 'TRANSVISION P2H', '127810096533', 'KUSUMAWATI', 191500, 3000, 2000, 500, 192000, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1097', 'cimahi2', 'TRANSVISION P2H', '127810135222', 'TIMOTHY LENI', 324500, 2500, 2000, 500, 325000, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman2', 'TRANSVISION P2H', '127810047377', 'HERMAN YUSUF', 191499, 3000, 2000, 500, 191999, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1093', 'dago1', 'TRANSVISION P2H', '127810170303', 'HOTEL WIRTON', 2477500, 2500, 2000, 500, 2478000, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127102213529', 'SUGIHARTO', 250000, 0, 2000, 500, 250500, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810108264', 'M FAHRUROZI', 294000, 0, 2000, 500, 294500, '20'),
('2016-11-21', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810113801', 'HENI', 191500, 0, 2000, 500, 192000, '20'),
('2016-11-24', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810113797', 'DANI SYAHLANI', 161500, 0, 0, 0, 161500, '20'),
('2016-11-25', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali2', 'TRANSVISION P2H', '127810083389', 'DADANG', 161500, 3000, 2000, 500, 162000, '20'),
('2016-11-25', '03', '695', 'D3_Kop Dadali BDG', '1100', 'cicalengka1', 'TRANSVISION P2H', '127810205612', 'DELLY YULIA', 301500, 3000, 2000, 500, 302000, '20'),
('2016-12-01', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura', 'TRANSVISION P2H', '127810012809', 'INDRA FIRMANSYAH', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-01', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810075799', 'H JOKO SURANTOSHMHUM', 304500, 0, 0, 0, 304500, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi1', 'TRANSVISION P2H', '127810074822', 'CECEP N AZIZ', 171499, 0, 0, 0, 171499, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi1', 'TRANSVISION P2H', '127810013637', 'TATIK WIRYASTUTI', 141501, 0, 0, 0, 141501, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810083626', 'MARZAID FACHRY', 171499, 2500, 2000, 500, 171999, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810012739', 'DR REGGY M PANGABEAN', 141501, 0, 0, 0, 141501, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810163262', 'PANGGABEAN DJONGGI P', 141501, 0, 0, 0, 141501, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810013373', 'SUDIRMAN', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810132742', 'H YAYAN SUBARNA', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1094', 'ujungberung2', 'TRANSVISION P2H', '127810084754', 'LUCYA WIDYANTI', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810086777', 'HANAFI ANAS MUFTI', 171499, 0, 0, 0, 171499, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810055865', 'MIN HERMINAWATI', 171500, 0, 0, 0, 171500, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810137259', 'PT AGRABUDI KOMUNIKA', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810130100', 'MAMAN SURACHMAN', 171500, 0, 0, 0, 171500, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810048906', 'MIA MUTIYA RAHMAN', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810132407', 'H DEDDY SUYUD HAMDAN', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810036730', 'LAMBERT FSILOOY', 304500, 2500, 2000, 500, 305000, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810067809', 'LAMBERT F SILOOY', 404500, 2500, 2000, 500, 405000, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810088704', 'LAMBERT FSILOOY', 171499, 2500, 2000, 500, 171999, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810081650', 'ASEP SUTISNA', 171499, 2500, 2000, 500, 171999, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1100', 'ddl_cclengka', 'TRANSVISION P2H', '127810083767', 'DEDI SUPTANDI', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810048461', 'MUHAMAD RAMADHAN', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810057684', 'DDAMAYANTI', 171500, 2500, 2000, 500, 172000, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1097', 'cimahi1', 'TRANSVISION P2H', '127810084039', 'IMAS AGUSTINA', 196500, 2500, 2000, 500, 197000, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810012598', 'LILIS ROSTINI', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-05', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810056074', 'IDA FARIDA', 141501, 2500, 2000, 500, 142001, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1097', 'cimahi1', 'TRANSVISION P2H', '127810047254', 'SRI PUSPASARI', 171500, 2500, 2000, 500, 172000, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1097', 'cimahi1', 'TRANSVISION P2H', '127810049971', 'SRI PUSPA IVANA', 171500, 2500, 2000, 500, 172000, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810055630', 'ERRI RUSTANDI', 171500, 0, 0, 0, 171500, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810046220', 'YOVI HERDIAN', 404500, 3000, 2000, 500, 405000, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1096', 'kopo2', 'TRANSVISION P2H', '127810055603', 'HENCU SAHURI', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810111445', 'DEDE SUWARMAN', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810047001', 'DIAH KOMALA DEWI', 404500, 3000, 2000, 500, 405000, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810057353', 'SUYATNOTO', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1096', 'kopo1', 'TRANSVISION P2H', '127810104051', 'DEWI PRASETYO', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810136440', 'DINAS PEMUKIMAN', 803500, 0, 0, 0, 803500, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810069851', 'URAWAN', 171499, 0, 0, 0, 171499, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810081747', 'NURLELA KABAN', 171499, 2500, 2000, 500, 171999, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810124979', 'NURLELA SILVIA FRANS', 171500, 2500, 2000, 500, 172000, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810068023', 'NURLELA', 171499, 2500, 2000, 500, 171999, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810061397', 'NURLELA', 201500, 2500, 2000, 500, 202000, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810006481', 'EKARINA BR KARO', 201500, 2500, 2000, 500, 202000, '20'),
('2016-12-06', '03', '695', 'D3_Kop Dadali BDG', '1097', 'cimahi1', 'TRANSVISION P2H', '127810067678', 'HERWANTO', 171499, 2500, 2000, 500, 171999, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali1', 'TRANSVISION P2H', '127810073760', 'MARIA RICARDA SALIM', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi1', 'TRANSVISION P2H', '127810103994', 'RIANA MUTIA PUTRI', 196499, 0, 0, 0, 196499, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman2', 'TRANSVISION P2H', '127810093307', 'BALAI LPSE PROV JABA', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810049274', 'HERDIYANTI BBA', 171500, 0, 0, 0, 171500, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810083944', 'RDENNY SUKARDINI', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810153526', 'RIZKY PRATAMA PUTRA', 201500, 3000, 2000, 500, 202000, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810058249', 'YOS SOENTORO', 171500, 0, 0, 0, 171500, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810012126', 'RADIANI BERLINA', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810106292', 'SMP N 37 BANDUNG', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810062793', 'HSUHERMAN AMURASA SA', 201500, 0, 0, 0, 201500, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali1', 'TRANSVISION P2H', '127810106291', 'WILLY KOMARA', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-07', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810047965', 'NINING NURAENI', 141501, 0, 0, 0, 141501, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810080576', 'ROSMANA SPD', 171499, 2500, 2000, 500, 171999, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura', 'TRANSVISION P2H', '127810088479', 'IRWAN MOCH SANTOSA', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810022618', 'HILDA FARIDA', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810066877', 'VIDI ARGA UTAMA', 171499, 2500, 2000, 500, 171999, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810060430', 'PRIE SUPRIADI', 174500, 3000, 2000, 500, 175000, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura2', 'TRANSVISION P2H', '127810059878', 'LILI HIDAYAT BA', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '1100', 'ddl_cclengka', 'TRANSVISION P2H', '127810056712', 'ASEP TATA', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810104030', 'HENDRA SUMITO', 404500, 3000, 2000, 500, 405000, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '1094', 'ujungberung2', 'TRANSVISION P2H', '127810135135', 'EDWAR HARDIANA', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810079128', 'FLORENCE RUKTI HAYAT', 171499, 0, 0, 0, 171499, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '5546', 'ddl_rckkbru', 'TRANSVISION P2H', '127810083445', 'MAMAN', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-08', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura2', 'TRANSVISION P2H', '127810081662', 'SUPRIHATI', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-09', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman2', 'TRANSVISION P2H', '127810027984', 'I MADE TISNA JATMIKA', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-09', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali1', 'TRANSVISION P2H', '127810048004', 'SRI AGUSTIANI IRIANT', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-09', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura2', 'TRANSVISION P2H', '127810014958', 'INDRA PERMANA', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-09', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810050570', 'LILIS SUKMAYATI', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-09', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810017253', 'IRH IRWIN AYUB RAIS', 171500, 0, 0, 0, 171500, '20'),
('2016-12-09', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810055551', 'GARNIWA', 196500, 0, 0, 0, 196500, '20'),
('2016-12-09', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman2', 'TRANSVISION P2H', '127810104089', 'AFRIZA', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-09', '03', '695', 'D3_Kop Dadali BDG', '1097', 'cimahi1', 'TRANSVISION P2H', '127810135222', 'TIMOTHY LENI', 473934, 2500, 2000, 500, 474434, '20'),
('2016-12-09', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810102222', 'RHINO NUGROHO', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-10', '03', '695', 'D3_Kop Dadali BDG', '1096', 'kopo1', 'TRANSVISION P2H', '127810056486', 'ITA LATIFAH', 196500, 3000, 2000, 500, 197000, '20'),
('2016-12-10', '03', '695', 'D3_Kop Dadali BDG', '1095', 'cijaura', 'TRANSVISION P2H', '127810056623', 'ADNA KARIM', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-10', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127102213529', 'SUGIHARTO', 250000, 0, 0, 0, 250000, '20'),
('2016-12-10', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810108264', 'M FAHRUROZI', 274000, 0, 0, 0, 274000, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi1', 'TRANSVISION P2H', '127810013987', 'SUDARDJA', 171500, 0, 0, 0, 171500, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810109108', 'NANA KAMANA', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810170044', 'BATIK KERIS', 662500, 0, 0, 0, 662500, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1093', 'dago1', 'TRANSVISION P2H', '127810067858', 'TUGIMAN', 141501, 2500, 2000, 500, 142001, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810066959', 'RACHMAT', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810134756', 'GUNAWAN SIMON RIO JO', 171500, 2500, 2000, 500, 172000, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810038726', 'KKEJAKSAAN TINGGI  M', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810056093', 'GIANTI RESMANI', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810146097', 'HERDA M GANIKONI', 5500, 3000, 2000, 500, 6000, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1100', 'cicalengka1', 'TRANSVISION P2H', '127810106312', 'KARSAM', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1093', 'dago1', 'TRANSVISION P2H', '127810170303', 'HOTEL WIRTON', 2477500, 2500, 2000, 500, 2478000, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1096', 'kopo2', 'TRANSVISION P2H', '127810051409', 'ASEP SOEBROTO', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810067912', 'ANGGA MARDITAMA SULT', 171499, 0, 0, 0, 171499, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810153897', 'JACHJA SUTISNA', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810086997', 'DEWI ENOK DEALER MOB', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-13', '03', '695', 'D3_Kop Dadali BDG', '1096', 'kopo2', 'TRANSVISION P2H', '127810048716', 'RADIMAN', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810123747', 'IVAN ZUBEIL BAIEZT', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1097', 'cimahi2', 'TRANSVISION P2H', '127810034687', 'HIRSAN FIRRA KANAR', 171500, 2500, 2000, 500, 172000, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810134886', 'KOKO KOKO', 141501, 3000, 2000, 500, 142001, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810011978', 'ASEP PAHRUDIN', 171499, 3000, 2000, 500, 171999, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810089301', 'ENDANG JULIASTUTI M', 171499, 0, 0, 0, 171499, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman2', 'TRANSVISION P2H', '127810051514', 'IRIANA', 274500, 3000, 2000, 500, 275000, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1093', 'dago1', 'TRANSVISION P2H', '127810163125', 'BONDAN PUDJADI KARTO', 141501, 2500, 2000, 500, 142001, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810012808', 'YACUB DJOHANSYAH', 171499, 0, 0, 0, 171499, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1091', 'bkr2', 'TRANSVISION P2H', '127810024833', 'R KURNIA PERMANA', 171500, 3000, 2000, 500, 172000, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu2', 'TRANSVISION P2H', '127810051170', 'TJOKRO YUDIANTO', 201500, 3000, 2000, 500, 202000, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1099', 'padalarang1', 'TRANSVISION P2H', '127810087961', 'RD HAGUS SUYADHANA', 404500, 3000, 2000, 500, 405000, '20'),
('2016-12-14', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127225151432', 'PTINDOSENTOSA TRADA ', 201500, 0, 0, 0, 201500, '20'),
('2016-12-02', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810059487', 'AGNES R INDARTI', 171500, 0, 0, 0, 171500, '20'),
('2016-12-02', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810011648', 'YANI WIDIAWATIE DECO', 404500, 3000, 2000, 500, 405000, '20'),
('2016-12-02', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810011597', 'YANI WIDIAWATIE', 404500, 3000, 2000, 500, 405000, '20'),
('2016-12-27', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi1', 'TRANSVISION P2H', '127102200171', 'JIMMYMONIKA R K', 646000, 0, 0, 0, 646000, '20'),
('2017-05-16', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810037020', 'RDIDA HIDAYAT', 201500, 3000, 2000, 500, 202000, '20'),
('2017-05-16', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810050570', 'LILIS SUKMAYATI', 201500, 3000, 2000, 500, 202000, '20'),
('2017-05-16', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810056202', 'WAWANG SULAETY', 226500, 0, 0, 0, 226500, '20'),
('2017-05-16', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810108264', 'M FAHRUROZI', 304000, 2500, 2000, 500, 304500, '20'),
('2017-05-16', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127102213529', 'SUGIHARTO', 250000, 2500, 2000, 500, 250500, '20'),
('2017-05-16', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810070187', 'FIRDA', 201500, 3000, 2000, 500, 202000, '20'),
('2017-05-16', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman2', 'TRANSVISION P2H', '127810026645', 'BUDI PRAYITNO', 201500, 3000, 2000, 500, 202000, '20'),
('2017-05-16', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127102200288', 'SUWARDJOKO', 217000, 2500, 2000, 500, 217500, '20'),
('2017-05-16', '03', '695', 'D3_Kop Dadali BDG', '1099', 'padalarang1', 'TRANSVISION P2H', '127810087961', 'RD HAGUS SUYADHANA', 404500, 3000, 2000, 500, 405000, '20'),
('2017-05-16', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali2', 'TRANSVISION P2H', '127810104067', 'RONI WIHARJA', 171500, 3000, 2000, 500, 172000, '20'),
('2017-05-17', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810145673', 'VINCENTSIUS  YANUAR ', 221500, 2500, 2000, 500, 222000, '20'),
('2017-05-17', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810145672', 'VINCENTSIUS  YANUAR ', 221500, 2500, 2000, 500, 222000, '20'),
('2017-05-17', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810103994', 'RIANA MUTIA PUTRI', 226500, 0, 0, 0, 226500, '20'),
('2017-05-17', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810033028', 'GASIM ALKATIRIE', 404500, 2500, 2000, 500, 405000, '20'),
('2017-05-17', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810072822', 'HENGKI TOBING', 101500, 0, 0, 0, 101500, '20'),
('2017-05-17', '03', '695', 'D3_Kop Dadali BDG', '1096', 'kopo2', 'TRANSVISION P2H', '127810051409', 'ASEP SOEBROTO', 171500, 3000, 2000, 500, 172000, '20'),
('2017-05-17', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810047001', 'DIAH KOMALA DEWI', 404500, 3000, 2000, 500, 405000, '20'),
('2017-05-17', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong3', 'TRANSVISION P2H', '127810106343', 'JOELIANTI NASOWIDJAY', 226500, 2500, 2000, 500, 227000, '20'),
('2017-05-17', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali1', 'TRANSVISION P2H', '127810104063', 'SHENDY SUMARLI', 404500, 3000, 2000, 500, 405000, '20'),
('2017-05-18', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810056054', 'IDRIS', 201500, 3000, 2000, 500, 202000, '20'),
('2017-05-18', '03', '695', 'D3_Kop Dadali BDG', '1115', 'lembong2', 'TRANSVISION P2H', '127810170044', 'BATIK KERIS', 662500, 2500, 2000, 500, 663000, '20'),
('2017-05-18', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman3', 'TRANSVISION P2H', '127810057353', 'SUYATNOTO', 201500, 3000, 2000, 500, 202000, '20'),
('2017-05-18', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810050379', 'AGUS GANJAR', 171500, 3000, 2000, 500, 172000, '20'),
('2017-05-18', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810038025', 'TITA GARNITA', 324500, 0, 0, 0, 324500, '20'),
('2017-05-18', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810089280', 'EDIH KUSNADI', 284800, 3000, 2000, 500, 285300, '20'),
('2017-07-12', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali1', 'TRANSVISION P2H', '127810073760', 'MARIA RICARDA SALIM', 201500, 3000, 2000, 500, 202000, '20'),
('2017-07-12', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman2', 'TRANSVISION P2H', '127810057353', 'SUYATNOTO', 201500, 3000, 2000, 500, 202000, '20'),
('2017-07-12', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810134886', 'KOKO KOKO', 201500, 3000, 2000, 500, 202000, '20'),
('2017-07-12', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810072822', 'HENGKI TOBING', 101500, 0, 0, 0, 101500, '20'),
('2017-07-12', '03', '695', 'D3_Kop Dadali BDG', '1089', 'setiabudi2', 'TRANSVISION P2H', '127810049274', 'HERDIYANTI BBA', 221500, 0, 0, 0, 221500, '20'),
('2017-07-12', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810102222', 'RHINO NUGROHO', 201500, 3000, 2000, 500, 202000, '20'),
('2017-07-05', '03', '695', 'D3_Kop Dadali BDG', '1087', 'supratman2', 'TRANSVISION P2H', '127810062793', 'HSUHERMAN AMURASA SA', 221500, 3000, 2000, 500, 222000, '20'),
('2017-07-05', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810121913', 'DIAN WAHYUDI', 221500, 3000, 2000, 500, 222000, '20'),
('2017-07-05', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810057684', 'DDAMAYANTI', 201500, 2500, 2000, 500, 202000, '20'),
('2017-07-05', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810012598', 'LILIS ROSTINI', 201500, 3000, 2000, 500, 202000, '20'),
('2017-07-05', '03', '695', 'D3_Kop Dadali BDG', '1104', 'sumedang2', 'TRANSVISION P2H', '127810137259', 'PT AGRABUDI KOMUNIKA', 201500, 3000, 2000, 500, 202000, '20'),
('2017-07-05', '03', '695', 'D3_Kop Dadali BDG', '1092', 'windu1', 'TRANSVISION P2H', '127810123747', 'IVAN ZUBEIL BAIEZT', 201500, 3000, 2000, 500, 202000, '20'),
('2017-07-05', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810166468', 'EDI GUNAWAN', 201500, 2500, 2000, 500, 202000, '20'),
('2017-07-05', '03', '695', 'D3_Kop Dadali BDG', '1090', 'rajawali1', 'TRANSVISION P2H', '127810048004', 'SRI AGUSTIANI IRIANT', 221500, 3000, 2000, 500, 222000, '20'),
('2018-03-01', '03', '695', 'D3_Kop Dadali BDG', '1106', 'lembang', 'TRANSVISION P2H', '127810066877', 'VIDI ARGA UTAMA', 460500, 2500, 2000, 500, 461000, '20'),
('2018-10-01', '03', '695', 'D3_Kop Dadali BDG', '1107', 'soreang', 'TRANSVISION P2H', '127810132742', 'H YAYAN SUBARNA', 221500, 3000, 2000, 500, 222000, '20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload`
--

CREATE TABLE `upload` (
  `tanggal` date NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `upload`
--

INSERT INTO `upload` (`tanggal`, `nama`, `pen`) VALUES
('0000-00-00', 'Arindo 1 Nop 2016.xlsx', 'ARINDO'),
('2016-11-01', 'MKMSettleLoket_01112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-01', 'SettleP2HSUM_01-11-2016.xlsx', 'JASTEL'),
('2016-11-01', 'SettlePDAMPPOBDet(695)01-11-2016_01-11-2016.xlsx', 'PDAM'),
('2016-11-01', 'SettleTselDet_03_0(695)01-11-2016_01-11-2016.xlsx', 'VOUCHER'),
('2016-11-01', 'SettleTselDet_03_10000(695)01-11-2016_01-11-2016.x', 'VOUCHER'),
('2016-11-01', 'SettleTselDet_03_100000(695)01-11-2016_01-11-2016.', 'VOUCHER'),
('2016-11-01', 'SettleTselDet_03_20000(695)01-11-2016_01-11-2016.x', 'VOUCHER'),
('2016-11-01', 'SettleTselDet_03_25000(695)01-11-2016_01-11-2016.x', 'VOUCHER'),
('2016-11-01', 'SettleTselDet_03_50000(695)01-11-2016_01-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 2 Nop 2016.xlsx', 'ARINDO'),
('2016-11-02', 'MKMSettleLoket_02112016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-11-02', 'MKMSettleLoket_02112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-02', 'SettleP2HSUM_02-11-2016.xlsx', 'JASTEL'),
('2016-11-02', 'SettlePDAMPPOBDet(695)02-11-2016_02-11-2016.xlsx', 'PDAM'),
('2016-11-02', 'SettleTselDet_03_0(695)02-11-2016_02-11-2016.xlsx', 'VOUCHER'),
('2016-11-02', 'SettleTselDet_03_10000(695)02-11-2016_02-11-2016.x', 'VOUCHER'),
('2016-11-02', 'SettleTselDet_03_100000(695)02-11-2016_02-11-2016.', 'VOUCHER'),
('2016-11-02', 'SettleTselDet_03_20000(695)02-11-2016_02-11-2016.x', 'VOUCHER'),
('2016-11-02', 'SettleTselDet_03_25000(695)02-11-2016_02-11-2016.x', 'VOUCHER'),
('2016-11-02', 'SettleTselDet_03_50000(695)02-11-2016_02-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 3 Nop 2016.xlsx', 'ARINDO'),
('2016-11-03', 'MKMSettleLoket_03112016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-11-03', 'MKMSettleLoket_03112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-03', 'SettleP2HSUM_03-11-2016.xlsx', 'JASTEL'),
('2016-11-03', 'SettlePDAMPPOBDet(695)03-11-2016_03-11-2016.xlsx', 'PDAM'),
('2016-11-03', 'SettleTselDet_03_0(695)03-11-2016_03-11-2016.xlsx', 'VOUCHER'),
('2016-11-03', 'SettleTselDet_03_10000(695)03-11-2016_03-11-2016.x', 'VOUCHER'),
('2016-11-03', 'SettleTselDet_03_20000(695)03-11-2016_03-11-2016.x', 'VOUCHER'),
('2016-11-03', 'SettleTselDet_03_25000(695)03-11-2016_03-11-2016.x', 'VOUCHER'),
('2016-11-03', 'SettleTselDet_03_50000(695)03-11-2016_03-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 4 Nop 2016.xlsx', 'ARINDO'),
('2016-11-04', 'MKMSettleLoket_04112016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-11-04', 'MKMSettleLoket_04112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-04', 'SettleP2HSUM_04-11-2016.xlsx', 'JASTEL'),
('2016-11-04', 'SettlePDAMPPOBDet(695)04-11-2016_04-11-2016.xlsx', 'PDAM'),
('2016-11-04', 'SettleTselDet_03_0(695)04-11-2016_04-11-2016.xlsx', 'VOUCHER'),
('2016-11-04', 'SettleTselDet_03_10000(695)04-11-2016_04-11-2016.x', 'VOUCHER'),
('2016-11-04', 'SettleTselDet_03_20000(695)04-11-2016_04-11-2016.x', 'VOUCHER'),
('2016-11-04', 'SettleTselDet_03_25000(695)04-11-2016_04-11-2016.x', 'VOUCHER'),
('2016-11-04', 'SettleTselDet_03_50000(695)04-11-2016_04-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 5 Nop 2016.xlsx', 'ARINDO'),
('2016-11-05', 'MKMSettleLoket_05112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-05', 'SettleP2HSUM_05-11-2016.xlsx', 'JASTEL'),
('2016-11-05', 'SettlePDAMPPOBDet(695)05-11-2016_05-11-2016(1).xls', 'PDAM'),
('2016-11-05', 'SettlePDAMPPOBDet(695)05-11-2016_05-11-2016.xlsx', 'PDAM'),
('2016-11-05', 'SettleTselDet_03_0(695)05-11-2016_05-11-2016.xlsx', 'VOUCHER'),
('2016-11-05', 'SettleTselDet_03_10000(695)05-11-2016_05-11-2016.x', 'VOUCHER'),
('2016-11-05', 'SettleTselDet_03_20000(695)05-11-2016_05-11-2016.x', 'VOUCHER'),
('2016-11-05', 'SettleTselDet_03_25000(695)05-11-2016_05-11-2016.x', 'VOUCHER'),
('2016-11-05', 'SettleTselDet_03_50000(695)05-11-2016_05-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 6 Nop 2016.xlsx', 'ARINDO'),
('2016-11-06', 'SettleP2HSUM_06-11-2016.xlsx', 'JASTEL'),
('2016-11-06', 'SettlePDAMPPOBDet(695)06-11-2016_06-11-2016.xlsx', 'PDAM'),
('2016-11-06', 'SettleTselDet_03_10000(695)06-11-2016_06-11-2016.x', 'VOUCHER'),
('2016-11-06', 'SettleTselDet_03_20000(695)06-11-2016_06-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 7 Nop 2016.xlsx', 'ARINDO'),
('2016-11-07', 'MKMSettleLoket_07112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-07', 'SettleP2HSUM_07-11-2016.xlsx', 'JASTEL'),
('2016-11-07', 'SettlePDAMPPOBDet(695)07-11-2016_07-11-2016(1).xls', 'PDAM'),
('2016-11-07', 'SettlePDAMPPOBDet(695)07-11-2016_07-11-2016.xlsx', 'PDAM'),
('2016-11-07', 'SettleTselDet_03_0(695)07-11-2016_07-11-2016.xlsx', 'VOUCHER'),
('2016-11-07', 'SettleTselDet_03_10000(695)07-11-2016_07-11-2016.x', 'VOUCHER'),
('2016-11-07', 'SettleTselDet_03_100000(695)07-11-2016_07-11-2016.', 'VOUCHER'),
('2016-11-07', 'SettleTselDet_03_20000(695)07-11-2016_07-11-2016.x', 'VOUCHER'),
('2016-11-07', 'SettleTselDet_03_25000(695)07-11-2016_07-11-2016.x', 'VOUCHER'),
('2016-11-07', 'SettleTselDet_03_50000(695)07-11-2016_07-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 8 Nop 2016.xlsx', 'ARINDO'),
('2016-11-08', 'MKMSettleLoket_08112016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-11-08', 'MKMSettleLoket_08112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-08', 'SettleP2HSUM_08-11-2016.xlsx', 'JASTEL'),
('2016-11-08', 'SettlePDAMPPOBDet(695)08-11-2016_08-11-2016(1).xls', 'PDAM'),
('2016-11-08', 'SettlePDAMPPOBDet(695)08-11-2016_08-11-2016.xlsx', 'PDAM'),
('2016-11-08', 'SettleTselDet_03_0(695)08-11-2016_08-11-2016.xlsx', 'VOUCHER'),
('2016-11-08', 'SettleTselDet_03_10000(695)08-11-2016_08-11-2016.x', 'VOUCHER'),
('2016-11-08', 'SettleTselDet_03_20000(695)08-11-2016_08-11-2016.x', 'VOUCHER'),
('2016-11-08', 'SettleTselDet_03_25000(695)08-11-2016_08-11-2016.x', 'VOUCHER'),
('2016-11-08', 'SettleTselDet_03_50000(695)08-11-2016_08-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 9 Nop 2016.xlsx', 'ARINDO'),
('2016-11-09', 'MKMSettleLoket_09112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-09', 'SettleP2HSUM_09-11-2016.xlsx', 'JASTEL'),
('2016-11-09', 'SettlePAYTVDet_03_20(695)09-11-2016_09-11-2016.xls', 'TRANSVISION'),
('2016-11-09', 'SettlePDAMPPOBDet(695)09-11-2016_09-11-2016(1).xls', 'PDAM'),
('2016-11-09', 'SettlePDAMPPOBDet(695)09-11-2016_09-11-2016.xlsx', 'PDAM'),
('2016-11-09', 'SettleTselDet_03_0(695)09-11-2016_09-11-2016.xlsx', 'VOUCHER'),
('2016-11-09', 'SettleTselDet_03_10000(695)09-11-2016_09-11-2016.x', 'VOUCHER'),
('2016-11-09', 'SettleTselDet_03_100000(695)09-11-2016_09-11-2016.', 'VOUCHER'),
('2016-11-09', 'SettleTselDet_03_20000(695)09-11-2016_09-11-2016.x', 'VOUCHER'),
('2016-11-09', 'SettleTselDet_03_50000(695)09-11-2016_09-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 10 Nop 2016.xlsx', 'ARINDO'),
('2016-11-10', 'MKMSettleLoket_10112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-10', 'SettleP2HSUM_10-11-2016.xlsx', 'JASTEL'),
('2016-11-10', 'SettlePAYTVDet_03_20(695)10-11-2016_10-11-2016.xls', 'TRANSVISION'),
('2016-11-10', 'SettlePDAMPPOBDet(695)10-11-2016_10-11-2016(1).xls', 'PDAM'),
('2016-11-10', 'SettlePDAMPPOBDet(695)10-11-2016_10-11-2016(2).xls', 'PDAM'),
('2016-11-10', 'SettlePDAMPPOBDet(695)10-11-2016_10-11-2016.xlsx', 'PDAM'),
('2016-11-10', 'SettleTselDet_03_0(695)10-11-2016_10-11-2016.xlsx', 'VOUCHER'),
('2016-11-10', 'SettleTselDet_03_10000(695)10-11-2016_10-11-2016.x', 'VOUCHER'),
('2016-11-10', 'SettleTselDet_03_100000(695)10-11-2016_10-11-2016.', 'VOUCHER'),
('2016-11-10', 'SettleTselDet_03_20000(695)10-11-2016_10-11-2016.x', 'VOUCHER'),
('2016-11-10', 'SettleTselDet_03_25000(695)10-11-2016_10-11-2016.x', 'VOUCHER'),
('2016-11-10', 'SettleTselDet_03_50000(695)10-11-2016_10-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 11 Nop 2016.xlsx', 'ARINDO'),
('2016-11-12', 'MKMSettleLoket_11112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-11', 'SettleP2HSUM_11-11-2016.xlsx', 'JASTEL'),
('2016-11-11', 'SettlePAYTVDet_03_20(695)11-11-2016_11-11-2016.xls', 'TRANSVISION'),
('2016-11-11', 'SettlePDAMPPOBDet(695)11-11-2016_11-11-2016(1).xls', 'PDAM'),
('2016-11-11', 'SettlePDAMPPOBDet(695)11-11-2016_11-11-2016(2).xls', 'PDAM'),
('2016-11-11', 'SettlePDAMPPOBDet(695)11-11-2016_11-11-2016.xlsx', 'PDAM'),
('2016-11-11', 'SettleTselDet_03_0(695)11-11-2016_11-11-2016.xlsx', 'VOUCHER'),
('2016-11-11', 'SettleTselDet_03_10000(695)11-11-2016_11-11-2016.x', 'VOUCHER'),
('2016-11-11', 'SettleTselDet_03_20000(695)11-11-2016_11-11-2016.x', 'VOUCHER'),
('2016-11-11', 'SettleTselDet_03_25000(695)11-11-2016_11-11-2016.x', 'VOUCHER'),
('2016-11-11', 'SettleTselDet_03_50000(695)11-11-2016_11-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 12 Nop 2016.xlsx', 'ARINDO'),
('2016-11-12', 'MKMSettleLoket_12112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-12', 'SettleP2HSUM_12-11-2016.xlsx', 'JASTEL'),
('2016-11-12', 'SettlePAYTVDet_03_20(695)12-11-2016_12-11-2016.xls', 'TRANSVISION'),
('2016-11-12', 'SettlePAYTVDet_03_55(695)12-11-2016_12-11-2016.xls', 'INDOVISION'),
('2016-11-12', 'SettlePDAMPPOBDet(695)12-07-2016_12-07-2016(1).xls', 'PDAM'),
('2016-07-12', 'SettlePDAMPPOBDet(695)12-07-2016_12-07-2016.xlsx', 'PDAM'),
('2016-07-12', 'SettlePDAMPPOBDet(695)12-11-2016_12-11-2016(1).xls', 'PDAM'),
('2016-11-12', 'SettlePDAMPPOBDet(695)12-11-2016_12-11-2016.xlsx', 'PDAM'),
('2016-11-12', 'SettleTselDet_03_0(695)12-11-2016_12-11-2016.xlsx', 'VOUCHER'),
('2016-11-12', 'SettleTselDet_03_10000(695)12-11-2016_12-11-2016.x', 'VOUCHER'),
('2016-11-12', 'SettleTselDet_03_100000(695)12-11-2016_12-11-2016.', 'VOUCHER'),
('2016-11-12', 'SettleTselDet_03_20000(695)12-11-2016_12-11-2016.x', 'VOUCHER'),
('2016-11-12', 'SettleTselDet_03_25000(695)12-11-2016_12-11-2016.x', 'VOUCHER'),
('2016-11-12', 'SettleTselDet_03_50000(695)12-11-2016_12-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 13 Nop 2016.xlsx', 'ARINDO'),
('0000-00-00', 'SettleP2HSUM_13-11-2016.xlsx', 'JASTEL'),
('0000-00-00', 'Arindo 14 Nop 2016.xlsx', 'ARINDO'),
('2016-11-14', 'MKMSettleLoket_14112016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-11-14', 'MKMSettleLoket_14112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-14', 'SettleP2HSUM_14-11-2016.xlsx', 'JASTEL'),
('2016-11-14', 'SettlePAYTVDet_03_20(695)14-11-2016_14-11-2016.xls', 'TRANSVISION'),
('2016-11-14', 'SettlePDAMPPOBDet(695)14-11-2016_14-11-2016(1).xls', 'PDAM'),
('2016-11-14', 'SettlePDAMPPOBDet(695)14-11-2016_14-11-2016.xlsx', 'PDAM'),
('2016-11-14', 'SettleTselDet_03_0(695)14-11-2016_14-11-2016.xlsx', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_10000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_100000(695)14-11-2016_14-11-2016.', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_20000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_25000(695)14-11-2016_14-11-2016(1', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_25000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_50000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 15 Nop 2016.xlsx', 'ARINDO'),
('2016-11-15', 'MKMSettleLoket_15112016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-11-15', 'MKMSettleLoket_15112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-15', 'SettleP2HSUM_15-11-2016.xlsx', 'JASTEL'),
('2016-11-15', 'SettlePAYTVDet_03_20(695)15-11-2016_15-11-2016.xls', 'TRANSVISION'),
('2016-11-15', 'SettlePDAMPPOBDet(695)15-11-2016_15-11-2016(1).xls', 'PDAM'),
('2016-11-15', 'SettlePDAMPPOBDet(695)15-11-2016_15-11-2016.xlsx', 'PDAM'),
('2016-11-15', 'SettleTselDet_03_0(695)15-11-2016_15-11-2016.xlsx', 'VOUCHER'),
('2016-11-15', 'SettleTselDet_03_10000(695)15-11-2016_15-11-2016.x', 'VOUCHER'),
('2016-11-15', 'SettleTselDet_03_100000(695)15-11-2016_15-11-2016.', 'VOUCHER'),
('2016-11-15', 'SettleTselDet_03_20000(695)15-11-2016_15-11-2016.x', 'VOUCHER'),
('2016-11-15', 'SettleTselDet_03_50000(695)15-11-2016_15-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 16 Nop 2016.xlsx', 'ARINDO'),
('2016-11-16', 'MKMSettleLoket_16112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-16', 'SettleP2HSUM_16-11-2016.xlsx', 'JASTEL'),
('2016-11-16', 'SettlePAYTVDet_03_20(695)16-11-2016_16-11-2016.xls', 'TRANSVISION'),
('2016-11-16', 'SettlePDAMPPOBDet(695)16-11-2016_16-11-2016(1).xls', 'PDAM'),
('2016-11-16', 'SettlePDAMPPOBDet(695)16-11-2016_16-11-2016.xlsx', 'PDAM'),
('2016-11-16', 'SettleTselDet_03_0(695)16-11-2016_16-11-2016.xlsx', 'VOUCHER'),
('2016-11-16', 'SettleTselDet_03_10000(695)16-11-2016_16-11-2016.x', 'VOUCHER'),
('2016-11-16', 'SettleTselDet_03_100000(695)16-11-2016_16-11-2016.', 'VOUCHER'),
('2016-11-16', 'SettleTselDet_03_20000(695)16-11-2016_16-11-2016.x', 'VOUCHER'),
('2016-11-16', 'SettleTselDet_03_25000(695)16-11-2016_16-11-2016.x', 'VOUCHER'),
('2016-11-16', 'SettleTselDet_03_50000(695)16-11-2016_16-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 17 Nop 2016.xlsx', 'ARINDO'),
('2016-11-17', 'MKMSettleLoket_17112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-17', 'SettleP2HSUM_17-11-2016.xlsx', 'JASTEL'),
('2016-11-17', 'SettlePAYTVDet_03_20(695)17-11-2016_17-11-2016.xls', 'TRANSVISION'),
('2016-11-17', 'SettlePDAMPPOBDet(695)17-11-2016_17-11-2016(1).xls', 'PDAM'),
('2016-11-17', 'SettlePDAMPPOBDet(695)17-11-2016_17-11-2016(2).xls', 'PDAM'),
('2016-11-17', 'SettlePDAMPPOBDet(695)17-11-2016_17-11-2016.xlsx', 'PDAM'),
('2016-11-17', 'SettleTselDet_03_0(695)17-11-2016_17-11-2016.xlsx', 'VOUCHER'),
('2016-11-17', 'SettleTselDet_03_10000(695)17-11-2016_17-11-2016.x', 'VOUCHER'),
('2016-11-17', 'SettleTselDet_03_100000(695)17-11-2016_17-11-2016.', 'VOUCHER'),
('2016-11-17', 'SettleTselDet_03_20000(695)17-11-2016_17-11-2016.x', 'VOUCHER'),
('2016-11-17', 'SettleTselDet_03_25000(695)17-11-2016_17-11-2016.x', 'VOUCHER'),
('2016-11-17', 'SettleTselDet_03_50000(695)17-11-2016_17-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 18 Nop 2016.xlsx', 'ARINDO'),
('2016-11-18', 'MKMSettleLoket_18112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-18', 'SettleP2HSUM_18-11-2016.xlsx', 'JASTEL'),
('2016-11-18', 'SettlePAYTVDet_03_20(695)18-11-2016_18-11-2016.xls', 'TRANSVISION'),
('2016-11-18', 'SettlePAYTVDet_03_55(695)18-11-2016_18-11-2016.xls', 'INDOVISION'),
('2016-11-18', 'SettlePDAMPPOBDet(695)18-11-2016_18-11-2016(1).xls', 'PDAM'),
('2016-11-18', 'SettlePDAMPPOBDet(695)18-11-2016_18-11-2016.xlsx', 'PDAM'),
('2016-11-18', 'SettleTselDet_03_0(695)18-11-2016_18-11-2016.xlsx', 'VOUCHER'),
('2016-11-18', 'SettleTselDet_03_10000(695)18-11-2016_18-11-2016.x', 'VOUCHER'),
('2016-11-18', 'SettleTselDet_03_100000(695)18-11-2016_18-11-2016.', 'VOUCHER'),
('2016-11-18', 'SettleTselDet_03_20000(695)18-11-2016_18-11-2016.x', 'VOUCHER'),
('2016-11-18', 'SettleTselDet_03_25000(695)18-11-2016_18-11-2016.x', 'VOUCHER'),
('2016-11-18', 'SettleTselDet_03_50000(695)18-11-2016_18-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 19 Nop 2016.xlsx', 'ARINDO'),
('2016-11-19', 'MKMSettleLoket_19112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-19', 'SettleP2HSUM_19-11-2016.xlsx', 'JASTEL'),
('2016-11-19', 'SettlePAYTVDet_03_20(695)19-11-2016_19-11-2016(1).', 'TRANSVISION'),
('2016-11-19', 'SettlePAYTVDet_03_20(695)19-11-2016_19-11-2016.xls', 'TRANSVISION'),
('2016-11-19', 'SettlePDAMPPOBDet(695)19-11-2016_19-11-2016(1).xls', 'PDAM'),
('2016-11-19', 'SettlePDAMPPOBDet(695)19-11-2016_19-11-2016.xlsx', 'PDAM'),
('2016-11-19', 'SettleTselDet_03_0(695)19-11-2016_19-11-2016.xlsx', 'VOUCHER'),
('2016-11-19', 'SettleTselDet_03_10000(695)19-11-2016_19-11-2016.x', 'VOUCHER'),
('2016-11-19', 'SettleTselDet_03_20000(695)19-11-2016_19-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 20 Nop 2016.xlsx', 'ARINDO'),
('2016-11-20', 'SettleP2HSUM_20-11-2016.xlsx', 'JASTEL'),
('2016-11-20', 'SettlePDAMPPOBDet(695)20-11-2016_20-11-2016.xlsx', 'PDAM'),
('2016-11-20', 'SettleTselDet_03_10000(695)20-11-2016_20-11-2016.x', 'VOUCHER'),
('2016-11-20', 'SettleTselDet_03_100000(695)20-11-2016_20-11-2016.', 'VOUCHER'),
('2016-11-20', 'SettleTselDet_03_20000(695)20-11-2016_20-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 21 Nop 2016.xlsx', 'ARINDO'),
('2016-11-21', 'MKMSettleLoket_21112016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-11-21', 'MKMSettleLoket_21112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-21', 'SettleP2HSUM_21-11-2016.xlsx', 'JASTEL'),
('2016-11-21', 'SettlePAYTVDet_03_20(695)21-11-2016_21-11-2016.xls', 'TRANSVISION'),
('2016-11-21', 'SettlePDAMPPOBDet(695)21-11-2016_21-11-2016(1).xls', 'PDAM'),
('2016-11-21', 'SettlePDAMPPOBDet(695)21-11-2016_21-11-2016.xlsx', 'PDAM'),
('2016-11-21', 'SettleTselDet_03_0(695)21-11-2016_21-11-2016.xlsx', 'VOUCHER'),
('2016-11-21', 'SettleTselDet_03_10000(695)21-11-2016_21-11-2016.x', 'VOUCHER'),
('2016-11-21', 'SettleTselDet_03_100000(695)21-11-2016_21-11-2016.', 'VOUCHER'),
('2016-11-21', 'SettleTselDet_03_20000(695)21-11-2016_21-11-2016.x', 'VOUCHER'),
('2016-11-21', 'SettleTselDet_03_25000(695)21-11-2016_21-11-2016.x', 'VOUCHER'),
('2016-11-21', 'SettleTselDet_03_50000(695)21-11-2016_21-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 22 Nop 2016.xlsx', 'ARINDO'),
('0000-00-00', 'Arindo 23 Nop 2016.xlsx', 'ARINDO'),
('2016-11-23', 'SettleThreeDet_03_10000(695)01-11-2016_30-11-2016.', 'VOUCHER'),
('0000-00-00', 'Arindo 24 Nop 2016.xlsx', 'ARINDO'),
('2016-11-24', 'MKMSettleLoket_24112016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-11-24', 'MKMSettleLoket_24112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-24', 'SettleP2HSUM_24-11-2016.xlsx', 'JASTEL'),
('2016-11-24', 'SettlePAYTVDet_03_20(695)24-11-2016_24-11-2016.xls', 'TRANSVISION'),
('2016-11-24', 'SettlePDAMPPOBDet(695)24-11-2016_24-11-2016(1).xls', 'PDAM'),
('2016-11-24', 'SettlePDAMPPOBDet(695)24-11-2016_24-11-2016.xlsx', 'PDAM'),
('2016-11-24', 'SettleTselDet_03_0(695)24-11-2016_24-11-2016.xlsx', 'VOUCHER'),
('2016-11-24', 'SettleTselDet_03_10000(695)24-11-2016_24-11-2016.x', 'VOUCHER'),
('2016-11-24', 'SettleTselDet_03_100000(695)24-11-2016_24-11-2016.', 'VOUCHER'),
('2016-11-24', 'SettleTselDet_03_20000(695)24-11-2016_24-11-2016.x', 'VOUCHER'),
('2016-11-24', 'SettleTselDet_03_25000(695)24-11-2016_24-11-2016.x', 'VOUCHER'),
('2016-11-24', 'SettleTselDet_03_50000(695)24-11-2016_24-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 25 Nop 2016.xlsx', 'ARINDO'),
('2016-11-25', 'MKMSettleLoket_25112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-25', 'SettleP2HSUM_25-11-2016.xlsx', 'JASTEL'),
('2016-11-25', 'SettlePAYTVDet_03_20(695)25-11-2016_25-11-2016.xls', 'TRANSVISION'),
('2016-11-25', 'SettlePDAMPPOBDet(695)25-11-2016_25-11-2016.xlsx', 'PDAM'),
('2016-11-25', 'SettleTselDet_03_0(695)25-11-2016_25-11-2016.xlsx', 'VOUCHER'),
('2016-11-25', 'SettleTselDet_03_10000(695)25-11-2016_25-11-2016.x', 'VOUCHER'),
('2016-11-25', 'SettleTselDet_03_100000(695)25-11-2016_25-11-2016.', 'VOUCHER'),
('2016-11-25', 'SettleTselDet_03_20000(695)25-11-2016_25-11-2016.x', 'VOUCHER'),
('2016-11-25', 'SettleTselDet_03_25000(695)25-11-2016_25-11-2016.x', 'VOUCHER'),
('2016-11-25', 'SettleTselDet_03_50000(695)25-11-2016_25-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 26 Nop 2016.xlsx', 'ARINDO'),
('2016-11-26', 'MKMSettleLoket_26112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-26', 'SettleP2HSUM_26-11-2016.xlsx', 'JASTEL'),
('2016-11-26', 'SettleTselDet_03_0(695)26-11-2016_26-11-2016.xlsx', 'VOUCHER'),
('2016-11-26', 'SettleTselDet_03_10000(695)26-11-2016_26-11-2016.x', 'VOUCHER'),
('2016-11-26', 'SettleTselDet_03_20000(695)26-11-2016_26-11-2016.x', 'VOUCHER'),
('2016-11-26', 'SettleTselDet_03_50000(695)26-11-2016_26-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 27 Nop 2016.xlsx', 'ARINDO'),
('0000-00-00', 'Arindo 28 Nop 2016.xlsx', 'ARINDO'),
('2016-11-28', 'MKMSettleLoket_28112016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-11-28', 'MKMSettleLoket_28112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-28', 'SettleP2HSUM_28-11-2016.xlsx', 'JASTEL'),
('2016-11-28', 'SettlePDAMPPOBDet(695)28-11-2016_28-11-2016(1).xls', 'PDAM'),
('2016-11-28', 'SettlePDAMPPOBDet(695)28-11-2016_28-11-2016.xlsx', 'PDAM'),
('2016-11-28', 'SettleTselDet_03_0(695)28-11-2016_28-11-2016.xlsx', 'VOUCHER'),
('2016-11-28', 'SettleTselDet_03_10000(695)28-11-2016_28-11-2016.x', 'VOUCHER'),
('2016-11-28', 'SettleTselDet_03_100000(695)28-11-2016_28-11-2016.', 'VOUCHER'),
('2016-11-28', 'SettleTselDet_03_20000(695)28-11-2016_28-11-2016.x', 'VOUCHER'),
('2016-11-28', 'SettleTselDet_03_25000(695)28-11-2016_28-11-2016.x', 'VOUCHER'),
('2016-11-28', 'SettleTselDet_03_50000(695)28-11-2016_28-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 29 Nop 2016.xlsx', 'ARINDO'),
('2016-11-29', 'MKMSettleLoket_29112016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-11-29', 'MKMSettleLoket_29112016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-11-29', 'SettleP2HSUM_29-11-2016.xlsx', 'JASTEL'),
('2016-11-29', 'SettlePDAMPPOBDet(695)29-11-2016_29-11-2016(1).xls', 'PDAM'),
('2016-11-29', 'SettlePDAMPPOBDet(695)29-11-2016_29-11-2016.xlsx', 'PDAM'),
('2016-11-29', 'SettleTselDet_03_0(695)29-11-2016_29-11-2016.xlsx', 'VOUCHER'),
('2016-11-29', 'SettleTselDet_03_10000(695)29-11-2016_29-11-2016.x', 'VOUCHER'),
('2016-11-29', 'SettleTselDet_03_100000(695)29-11-2016_29-11-2016.', 'VOUCHER'),
('2016-11-29', 'SettleTselDet_03_20000(695)29-11-2016_29-11-2016.x', 'VOUCHER'),
('2016-11-29', 'SettleTselDet_03_25000(695)29-11-2016_29-11-2016.x', 'VOUCHER'),
('2016-11-29', 'SettleTselDet_03_50000(695)29-11-2016_29-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 30 Nop 2016.xlsx', 'ARINDO'),
('2016-11-30', 'SettleP2HSUM_30-11-2016.xlsx', 'JASTEL'),
('2016-11-30', 'SettlePDAMPPOBDet(695)30-11-2016_30-11-2016.xlsx', 'PDAM'),
('2016-11-30', 'SettleTselDet_03_0(695)30-11-2016_30-11-2016.xlsx', 'VOUCHER'),
('2016-11-30', 'SettleTselDet_03_10000(695)30-11-2016_30-11-2016.x', 'VOUCHER'),
('2016-11-30', 'SettleTselDet_03_100000(695)30-11-2016_30-11-2016.', 'VOUCHER'),
('2016-11-30', 'SettleTselDet_03_20000(695)30-11-2016_30-11-2016.x', 'VOUCHER'),
('2016-11-30', 'SettleTselDet_03_25000(695)30-11-2016_30-11-2016.x', 'VOUCHER'),
('0000-00-00', 'SettleTselDet_03_0(695)14-11-2016_14-11-2016.xlsx', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_10000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_100000(695)14-11-2016_14-11-2016.', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_20000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_25000(695)14-11-2016_14-11-2016(1', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_25000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_50000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('0000-00-00', 'SettleTselDet_03_0(695)14-11-2016_14-11-2016.xlsx', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_10000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_100000(695)14-11-2016_14-11-2016.', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_20000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_25000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('2016-11-14', 'SettleTselDet_03_50000(695)14-11-2016_14-11-2016.x', 'VOUCHER'),
('2016-11-23', 'SettleP2HSUM_22-11-2016.xlsx', 'JASTEL'),
('2016-11-23', 'SettlePDAMPPOBDet(695)05-12-2016_05-12-2016(1).xls', 'PDAM'),
('2016-11-23', 'SettlePDAMPPOBDet(695)22-11-2016_23-11-2016.xlsx', 'PDAM'),
('2016-11-23', 'SettleTselDet_03_0(695)22-11-2016_23-11-2016.xlsx', 'VOUCHER'),
('2016-11-23', 'SettleTselDet_03_10000(695)22-11-2016_23-11-2016.x', 'VOUCHER'),
('2016-11-23', 'SettleTselDet_03_100000(695)22-11-2016_23-11-2016.', 'VOUCHER'),
('2016-11-23', 'SettleTselDet_03_20000(695)22-11-2016_23-11-2016.x', 'VOUCHER'),
('2016-11-23', 'SettleTselDet_03_25000(695)22-11-2016_23-11-2016.x', 'VOUCHER'),
('2016-11-23', 'SettleTselDet_03_50000(695)22-11-2016_23-11-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 1 Des 2016.xlsx', 'ARINDO'),
('2016-12-01', 'MKMSettleLoket_01122016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-12-01', 'SettleP2HSUM_01-12-2016.xlsx', 'JASTEL'),
('2016-12-01', 'SettlePAYTVDet_03_20(695)01-12-2016_01-12-2016.xls', 'TRANSVISION'),
('2016-12-01', 'SettlePDAMPPOBDet(695)01-12-2016_01-12-2016(1).xls', 'PDAM'),
('2016-12-01', 'SettlePDAMPPOBDet(695)01-12-2016_01-12-2016.xlsx', 'PDAM'),
('2016-12-01', 'SettleTselDet_03_0(695)01-12-2016_01-12-2016.xlsx', 'VOUCHER'),
('2016-12-01', 'SettleTselDet_03_10000(695)01-12-2016_01-12-2016.x', 'VOUCHER'),
('2016-12-01', 'SettleTselDet_03_100000(695)01-12-2016_01-12-2016.', 'VOUCHER'),
('2016-12-01', 'SettleTselDet_03_20000(695)01-12-2016_01-12-2016.x', 'VOUCHER'),
('2016-12-01', 'SettleTselDet_03_25000(695)01-12-2016_01-12-2016.x', 'VOUCHER'),
('2016-12-01', 'SettleTselDet_03_50000(695)01-12-2016_01-12-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 2 Des 2016.xlsx', 'ARINDO'),
('2016-12-02', 'SettleP2HSUM_02-12-2016.xlsx', 'JASTEL'),
('2016-12-02', 'SettlePAYTVDet_03_20(695)02-12-2016_02-12-2016.xls', 'TRANSVISION'),
('0000-00-00', 'Arindo 3 Des 2016.xlsx', 'ARINDO'),
('2016-12-03', 'SettleP2HSUM_03-12-2016.xlsx', 'JASTEL'),
('0000-00-00', 'Arindo 5 Des 2016.xlsx', 'ARINDO'),
('2016-12-05', 'MKMSettleLoket_05122016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-12-05', 'MKMSettleLoket_05122016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-12-05', 'SettleP2HSUM_05-12-2016.xlsx', 'JASTEL'),
('2016-12-05', 'SettlePAYTVDet_03_20(695)05-12-2016_05-12-2016.xls', 'TRANSVISION'),
('2016-12-05', 'SettleTselDet_03_0(695)05-12-2016_05-12-2016.xlsx', 'VOUCHER'),
('2016-12-05', 'SettleTselDet_03_10000(695)05-12-2016_05-12-2016.x', 'VOUCHER'),
('2016-12-05', 'SettleTselDet_03_100000(695)05-12-2016_05-12-2016.', 'VOUCHER'),
('2016-12-05', 'SettleTselDet_03_20000(695)05-12-2016_05-12-2016.x', 'VOUCHER'),
('2016-12-05', 'SettleTselDet_03_25000(695)05-12-2016_05-12-2016.x', 'VOUCHER'),
('2016-12-05', 'SettleTselDet_03_50000(695)05-12-2016_05-12-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 6 Des 2016.xlsx', 'ARINDO'),
('2016-12-06', 'MKMSettleLoket_06122016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-12-06', 'SettleP2HSUM_06-12-2016.xlsx', 'JASTEL'),
('2016-12-06', 'SettlePAYTVDet_03_20(695)06-12-2016_06-12-2016.xls', 'TRANSVISION'),
('2016-12-06', 'SettlePAYTVDet_03_55(695)06-12-2016_06-12-2016.xls', 'INDOVISION'),
('2016-12-06', 'SettlePDAMPPOBDet(695)06-12-2016_06-12-2016(1).xls', 'PDAM'),
('2016-12-06', 'SettlePDAMPPOBDet(695)06-12-2016_06-12-2016.xlsx', 'PDAM'),
('2016-12-06', 'SettleTselDet_03_0(695)06-12-2016_06-12-2016.xlsx', 'VOUCHER'),
('2016-12-06', 'SettleTselDet_03_10000(695)06-12-2016_06-12-2016.x', 'VOUCHER'),
('2016-12-06', 'SettleTselDet_03_100000(695)06-12-2016_06-12-2016.', 'VOUCHER'),
('2016-12-06', 'SettleTselDet_03_20000(695)06-12-2016_06-12-2016.x', 'VOUCHER'),
('2016-12-06', 'SettleTselDet_03_25000(695)06-12-2016_06-12-2016.x', 'VOUCHER'),
('2016-12-06', 'SettleTselDet_03_50000(695)06-12-2016_06-12-2016.x', 'VOUCHER'),
('2016-12-07', 'SettleP2HSUM_07-12-2016.xlsx', 'JASTEL'),
('2016-12-07', 'SettlePAYTVDet_03_20(695)07-12-2016_07-12-2016.xls', 'TRANSVISION'),
('2016-12-07', 'SettlePDAMPPOBDet(695)07-12-2016_07-12-2016(1).xls', 'PDAM'),
('2016-12-07', 'SettlePDAMPPOBDet(695)07-12-2016_07-12-2016.xlsx', 'PDAM'),
('2016-12-07', 'SettleTselDet_03_0(695)07-12-2016_07-12-2016.xlsx', 'VOUCHER'),
('2016-12-07', 'SettleTselDet_03_10000(695)07-12-2016_07-12-2016.x', 'VOUCHER'),
('2016-12-07', 'SettleTselDet_03_100000(695)07-12-2016_07-12-2016.', 'VOUCHER'),
('2016-12-07', 'SettleTselDet_03_20000(695)07-12-2016_07-12-2016.x', 'VOUCHER'),
('2016-12-07', 'SettleTselDet_03_25000(695)07-12-2016_07-12-2016.x', 'VOUCHER'),
('2016-12-07', 'SettleTselDet_03_50000(695)07-12-2016_07-12-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 7 Des 2016.xlsx', 'ARINDO'),
('0000-00-00', 'SettlePDAMPPOBDet(695)05-12-2016_05-12-2016(1).xls', 'PDAM'),
('2016-12-05', 'SettlePDAMPPOBDet(695)05-12-2016_05-12-2016(2).xls', 'PDAM'),
('2016-12-05', 'SettlePDAMPPOBDet(695)05-12-2016_05-12-2016.xlsx', 'PDAM'),
('0000-00-00', 'Arindo 8 Des 2016.xlsx', 'ARINDO'),
('2016-12-08', 'MKMSettleLoket_08122016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-12-08', 'MKMSettleLoket_08122016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-12-08', 'SettleP2HSUM_08-12-2016.xlsx', 'JASTEL'),
('2016-12-08', 'SettlePAYTVDet_03_20(695)08-12-2016_08-12-2016.xls', 'TRANSVISION'),
('2016-12-08', 'SettlePDAMPPOBDet(695)08-12-2016_08-12-2016(1).xls', 'PDAM'),
('2016-12-08', 'SettlePDAMPPOBDet(695)08-12-2016_08-12-2016.xlsx', 'PDAM'),
('2016-12-08', 'SettleTselDet_03_0(695)08-12-2016_08-12-2016.xlsx', 'VOUCHER'),
('2016-12-08', 'SettleTselDet_03_10000(695)08-12-2016_08-12-2016.x', 'VOUCHER'),
('2016-12-08', 'SettleTselDet_03_100000(695)08-12-2016_08-12-2016.', 'VOUCHER'),
('2016-12-08', 'SettleTselDet_03_20000(695)08-12-2016_08-12-2016.x', 'VOUCHER'),
('2016-12-08', 'SettleTselDet_03_25000(695)08-12-2016_08-12-2016.x', 'VOUCHER'),
('2016-12-08', 'SettleTselDet_03_50000(695)08-12-2016_08-12-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 9 Des 2016.xlsx', 'ARINDO'),
('2016-12-09', 'MKMSettleLoket_09122016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-12-09', 'PAYTVP2HSUM__09-12-2016_.xlsx', 'JASTEL'),
('0000-00-00', 'SettleP2HSUM_09-12-2016.xlsx', 'JASTEL'),
('2016-12-09', 'SettlePAYTVDet_03_20(695)09-12-2016_09-12-2016(1).', 'TRANSVISION'),
('2016-12-09', 'SettlePDAMPPOBDet(695)09-12-2016_09-12-2016(1).xls', 'PDAM'),
('2016-12-09', 'SettlePDAMPPOBDet(695)09-12-2016_09-12-2016(2).xls', 'PDAM'),
('2016-12-09', 'SettleTselDet_03_0(695)09-12-2016_09-12-2016(1).xl', 'VOUCHER'),
('2016-12-09', 'SettleTselDet_03_10000(695)09-12-2016_09-12-2016(1', 'VOUCHER'),
('2016-12-09', 'SettleTselDet_03_100000(695)09-12-2016_09-12-2016(', 'VOUCHER'),
('2016-12-09', 'SettleTselDet_03_20000(695)09-12-2016_09-12-2016.x', 'VOUCHER'),
('2016-12-09', 'SettleTselDet_03_25000(695)09-12-2016_09-12-2016.x', 'VOUCHER'),
('2016-12-09', 'SettleTselDet_03_50000(695)09-12-2016_09-12-2016(1', 'VOUCHER'),
('0000-00-00', 'Arindo 10 Des 2016.xlsx', 'ARINDO'),
('2016-12-10', 'MKMSettleLoket_10122016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-12-10', 'SettleP2HSUM_10-12-2016.xlsx', 'JASTEL'),
('2016-12-10', 'SettlePAYTVDet_03_20(695)10-12-2016_10-12-2016.xls', 'TRANSVISION'),
('2016-12-10', 'SettlePAYTVDet_03_55(695)10-12-2016_10-12-2016.xls', 'INDOVISION'),
('2016-12-10', 'SettlePDAMPPOBDet(695)10-12-2016_10-12-2016(1).xls', 'PDAM'),
('2016-12-10', 'SettlePDAMPPOBDet(695)10-12-2016_10-12-2016.xlsx', 'PDAM'),
('2016-12-10', 'SettleTselDet_03_0(695)10-12-2016_10-12-2016.xlsx', 'VOUCHER'),
('2016-12-10', 'SettleTselDet_03_10000(695)10-12-2016_10-12-2016.x', 'VOUCHER'),
('2016-12-10', 'SettleTselDet_03_20000(695)10-12-2016_10-12-2016.x', 'VOUCHER'),
('2016-12-10', 'SettleTselDet_03_50000(695)10-12-2016_10-12-2016.x', 'VOUCHER'),
('2016-12-11', 'SettlePDAMPPOBDet(695)11-12-2016_11-12-2016.xlsx', 'PDAM'),
('2016-12-12', 'SettleP2HSUM_12-12-2016.xlsx', 'JASTEL'),
('2016-12-12', 'SettleTselDet_03_10000(695)12-12-2016_12-12-2016(1', 'VOUCHER'),
('0000-00-00', 'Arindo 13 Des 2016.xlsx', 'ARINDO'),
('2016-12-13', 'MKMSettleLoket_13122016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-12-13', 'MKMSettleLoket_13122016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-12-13', 'SettleP2HSUM_13-12-2016.xlsx', 'JASTEL'),
('2016-12-13', 'SettlePAYTVDet_03_20(695)13-12-2016_13-12-2016.xls', 'TRANSVISION'),
('2016-12-13', 'SettlePDAMPPOBDet(695)13-12-2016_13-12-2016(1).xls', 'PDAM'),
('2016-12-13', 'SettlePDAMPPOBDet(695)13-12-2016_13-12-2016.xlsx', 'PDAM'),
('2016-12-13', 'SettleThreeDet_03_10000(695)13-12-2016_13-12-2016.', 'VOUCHER'),
('2016-12-13', 'SettleTselDet_03_0(695)13-12-2016_13-12-2016.xlsx', 'VOUCHER'),
('2016-12-13', 'SettleTselDet_03_10000(695)13-12-2016_13-12-2016.x', 'VOUCHER'),
('2016-12-13', 'SettleTselDet_03_100000(695)13-12-2016_13-12-2016.', 'VOUCHER'),
('2016-12-13', 'SettleTselDet_03_20000(695)13-12-2016_13-12-2016.x', 'VOUCHER'),
('2016-12-13', 'SettleTselDet_03_25000(695)13-12-2016_13-12-2016.x', 'VOUCHER'),
('2016-12-13', 'SettleTselDet_03_50000(695)13-12-2016_13-12-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 14 Des 2016.xlsx', 'ARINDO'),
('2016-12-14', 'MKMSettleLoket_14122016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-12-14', 'MKMSettleLoket_14122016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-12-14', 'SettleP2HSUM_14-12-2016.xlsx', 'JASTEL'),
('2016-12-14', 'SettlePAYTVDet_03_20(695)14-12-2016_14-12-2016.xls', 'TRANSVISION'),
('2016-12-14', 'SettlePDAMPPOBDet(695)14-12-2016_14-12-2016(1).xls', 'PDAM'),
('2016-12-14', 'SettlePDAMPPOBDet(695)14-12-2016_14-12-2016.xlsx', 'PDAM'),
('2016-12-14', 'SettleTselDet_03_0(695)14-12-2016_14-12-2016.xlsx', 'VOUCHER'),
('2016-12-14', 'SettleTselDet_03_10000(695)14-12-2016_14-12-2016.x', 'VOUCHER'),
('2016-12-14', 'SettleTselDet_03_100000(695)14-12-2016_14-12-2016.', 'VOUCHER'),
('2016-12-14', 'SettleTselDet_03_20000(695)14-12-2016_14-12-2016.x', 'VOUCHER'),
('2016-12-14', 'SettleTselDet_03_25000(695)14-12-2016_14-12-2016.x', 'VOUCHER'),
('2016-12-14', 'SettleTselDet_03_50000(695)14-12-2016_14-12-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 2 Des 2016.xlsx', 'ARINDO'),
('2016-12-02', 'MKMSettleLoket_02122016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-12-02', 'MKMSettleLoket_02122016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-12-02', 'SettleP2HSUM_02-12-2016.xlsx', 'JASTEL'),
('2016-12-02', 'SettlePAYTVDet_03_20(695)02-12-2016_02-12-2016.xls', 'TRANSVISION'),
('2016-12-02', 'SettlePDAMPPOBDet(695)02-12-2016_02-12-2016(1).xls', 'PDAM'),
('2016-12-02', 'SettlePDAMPPOBDet(695)02-12-2016_02-12-2016.xlsx', 'PDAM'),
('2016-12-02', 'SettleTselDet_03_0(695)02-12-2016_02-12-2016.xlsx', 'VOUCHER'),
('2016-12-02', 'SettleTselDet_03_10000(695)02-12-2016_02-12-2016.x', 'VOUCHER'),
('2016-12-02', 'SettleTselDet_03_20000(695)02-12-2016_02-12-2016.x', 'VOUCHER'),
('2016-12-02', 'SettleTselDet_03_25000(695)02-12-2016_02-12-2016.x', 'VOUCHER'),
('2016-12-02', 'SettleTselDet_03_50000(695)02-12-2016_02-12-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 3 Des 2016.xlsx', 'ARINDO'),
('2016-12-03', 'MKMSettleLoket_03122016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-12-03', 'SettleP2HSUM_03-12-2016.xlsx', 'JASTEL'),
('2016-12-03', 'SettlePDAMPPOBDet(695)03-12-2016_03-12-2016(1).xls', 'PDAM'),
('2016-12-03', 'SettlePDAMPPOBDet(695)03-12-2016_03-12-2016.xlsx', 'PDAM'),
('2016-12-03', 'SettleTselDet_03_0(695)03-12-2016_03-12-2016.xlsx', 'VOUCHER'),
('2016-12-03', 'SettleTselDet_03_10000(695)03-12-2016_03-12-2016.x', 'VOUCHER'),
('2016-12-03', 'SettleTselDet_03_50000(695)03-12-2016_03-12-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 2 Des 2016.xlsx', 'ARINDO'),
('0000-00-00', 'Arindo 2 Des 2016.xlsx', 'ARINDO'),
('0000-00-00', 'Arindo 3 Des 2016.xlsx', 'ARINDO'),
('0000-00-00', 'SettlePAYTVDet_03_20(695)02-12-2016_02-12-2016.xls', 'TRANSVISION'),
('0000-00-00', 'Arindo 27 Des 2016.xlsx', 'ARINDO'),
('2016-12-20', 'MKMSettleLoket_27122016_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2016-12-27', 'MKMSettleLoket_27122016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-12-27', 'SettleP2HSUM_27-12-2016.xlsx', 'JASTEL'),
('2016-12-27', 'SettlePAYTVDet_03_20(695)27-12-2016_27-12-2016.xls', 'TRANSVISION'),
('2016-12-27', 'SettlePDAMPPOBDet(695)27-12-2016_27-12-2016(1).xls', 'PDAM'),
('2016-12-27', 'SettlePDAMPPOBDet(695)27-12-2016_27-12-2016.xlsx', 'PDAM'),
('2016-12-27', 'SettleTselDet_03_0(695)27-12-2016_27-12-2016.xlsx', 'VOUCHER'),
('2016-12-27', 'SettleTselDet_03_10000(695)27-12-2016_27-12-2016.x', 'VOUCHER'),
('2016-12-27', 'SettleTselDet_03_20000(695)27-12-2016_27-12-2016.x', 'VOUCHER'),
('2016-12-27', 'SettleTselDet_03_50000(695)27-12-2016_27-12-2016.x', 'VOUCHER'),
('0000-00-00', 'Arindo 27 Des 2016.xlsx', 'ARINDO'),
('0000-00-00', 'Arindo 28 Des 2016.xlsx', 'ARINDO'),
('2016-12-28', 'MKMSettleLoket_28122016_D3_KopDadaliBDG.xlsx', 'PLN'),
('2016-12-28', 'SettleP2HSUM_28-12-2016.xlsx', 'JASTEL'),
('2016-12-28', 'SettlePDAMPPOBDet(695)28-12-2016_28-12-2016(1).xls', 'PDAM'),
('2016-12-28', 'SettlePDAMPPOBDet(695)28-12-2016_28-12-2016.xlsx', 'PDAM'),
('2016-12-28', 'SettleTselDet_03_0(695)28-12-2016_28-12-2016.xlsx', 'VOUCHER'),
('2016-12-28', 'SettleTselDet_03_10000(695)28-12-2016_28-12-2016.x', 'VOUCHER'),
('2016-12-28', 'SettleTselDet_03_100000(695)28-12-2016_28-12-2016.', 'VOUCHER'),
('2016-12-28', 'SettleTselDet_03_20000(695)28-12-2016_28-12-2016.x', 'VOUCHER'),
('2016-12-28', 'SettleTselDet_03_25000(695)28-12-2016_28-12-2016.x', 'VOUCHER'),
('2016-12-28', 'SettleTselDet_03_50000(695)28-12-2016_28-12-2016.x', 'VOUCHER'),
('0000-00-00', 'SettlePDAMPPOBDet(695)16-05-2017_16-05-2017(1).xls', 'PDAM'),
('2017-05-16', 'SettlePDAMPPOBDet(695)16-05-2017_16-05-2017.xlsx', 'PDAM'),
('0000-00-00', 'Arindo 16 Mei  2017.xlsx', 'ARINDO'),
('2017-05-16', 'MKMSettleLoket_16052017_D3_KopDadaliBDG.xlsx', 'PLN'),
('2017-05-16', 'SettleP2HSUM_16-05-2017.xlsx', 'JASTEL'),
('2017-05-16', 'SettlePAYTVDet_03_20(695)16-05-2017_16-05-2017.xls', 'TRANSVISION'),
('2017-05-16', 'SettleTselDet_03_0(695)16-05-2017_16-05-2017.xlsx', 'VOUCHER'),
('2017-05-16', 'SettleTselDet_03_10000(695)16-05-2017_16-05-2017.x', 'VOUCHER'),
('2017-05-16', 'SettleTselDet_03_20000(695)16-05-2017_16-05-2017.x', 'VOUCHER'),
('2017-05-16', 'SettleTselDet_03_25000(695)16-05-2017_16-05-2017.x', 'VOUCHER'),
('2017-05-16', 'SettleTselDet_03_50000(695)16-05-2017_16-05-2017.x', 'VOUCHER'),
('0000-00-00', 'Arindo 17 Mei  2017.xlsx', 'ARINDO'),
('2017-05-17', 'MKMSettleLoket_17052017_D3_KopDadaliBDG.xlsx', 'PLN'),
('2017-05-17', 'SettleP2HSUM_17-05-2017.xlsx', 'JASTEL'),
('2017-05-17', 'SettlePAYTVDet_03_20(695)17-05-2017_17-05-2017.xls', 'TRANSVISION'),
('2017-05-17', 'SettleTselDet_03_0(695)17-05-2017_17-05-2017.xlsx', 'VOUCHER'),
('2017-05-17', 'SettleTselDet_03_10000(695)17-05-2017_17-05-2017.x', 'VOUCHER'),
('2017-05-17', 'SettleTselDet_03_100000(695)17-05-2017_17-05-2017.', 'VOUCHER'),
('2017-05-17', 'SettleTselDet_03_20000(695)17-05-2017_17-05-2017.x', 'VOUCHER'),
('2017-05-17', 'SettleTselDet_03_25000(695)17-05-2017_17-05-2017.x', 'VOUCHER'),
('2017-05-17', 'SettleTselDet_03_50000(695)17-05-2017_17-05-2017.x', 'VOUCHER'),
('0000-00-00', 'Arindo 18 Mei  2017.xlsx', 'ARINDO'),
('2017-05-18', 'MKMSettleLoket_18052017_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2017-05-18', 'MKMSettleLoket_18052017_D3_KopDadaliBDG.xlsx', 'PLN'),
('2017-05-18', 'SettleP2HSUM_18-05-2017.xlsx', 'JASTEL'),
('2017-05-18', 'SettlePAYTVDet_03_20(695)18-05-2017_18-05-2017.xls', 'TRANSVISION'),
('2017-05-18', 'SettleTselDet_03_0(695)18-05-2017_18-05-2017.xlsx', 'VOUCHER'),
('2017-05-18', 'SettleTselDet_03_10000(695)18-05-2017_18-05-2017.x', 'VOUCHER'),
('2017-05-18', 'SettleTselDet_03_100000(695)18-05-2017_18-05-2017.', 'VOUCHER'),
('2017-05-18', 'SettleTselDet_03_20000(695)18-05-2017_18-05-2017.x', 'VOUCHER'),
('2017-05-18', 'SettleTselDet_03_25000(695)18-05-2017_18-05-2017.x', 'VOUCHER'),
('2017-05-18', 'SettleTselDet_03_50000(695)18-05-2017_18-05-2017.x', 'VOUCHER'),
('0000-00-00', 'SettlePDAMPPOBDet(695)17-05-2017_17-05-2017.xlsx', 'PDAM'),
('0000-00-00', 'SettlePDAMPPOBDet(695)17-05-2017_17-05-2017.xlsx', 'PDAM'),
('0000-00-00', 'SettlePDAMPPOBDet(695)17-05-2017_17-05-2017.xlsx', 'PDAM'),
('0000-00-00', 'SettlePDAMPPOBDet(695)17-05-2017_17-05-2017.xlsx', 'PDAM'),
('0000-00-00', 'SettlePDAMPPOBDet(695)17-05-2017_17-05-2017.xlsx', 'PDAM'),
('0000-00-00', 'SettlePDAMPPOBDet(695)17-05-2017_17-05-2017.xlsx', 'PDAM'),
('0000-00-00', 'SettlePDAMPPOBDet(695)17-05-2017_17-05-2017.xlsx', 'PDAM'),
('0000-00-00', 'SettlePDAMPPOBDet(695)18-05-2017_18-05-2017.xlsx', 'PDAM'),
('0000-00-00', 'arindo 12 Juli 2017.xlsx', 'ARINDO'),
('2017-07-12', 'MKMSettleLoket_12072017_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2017-07-12', 'MKMSettleLoket_12072017_D3_KopDadaliBDG.xlsx', 'PLN'),
('2017-07-12', 'SettleP2HSUM_12-07-2017.xlsx', 'JASTEL'),
('2017-07-12', 'SettlePAYTVDet_03_20(695)12-07-2017_12-07-2017.xls', 'TRANSVISION'),
('2017-07-12', 'SettlePDAMPPOBDet(695)12-07-2017_12-07-2017.xlsx', 'PDAM'),
('2017-07-12', 'SettleThreeDet_03_10000(695)12-07-2017_12-07-2017.', 'VOUCHER'),
('2017-07-12', 'SettleTselDet_03_0(695)12-07-2017_12-07-2017.xlsx', 'VOUCHER'),
('2017-07-12', 'SettleTselDet_03_10000(695)12-07-2017_12-07-2017.x', 'VOUCHER'),
('2017-07-12', 'SettleTselDet_03_100000(695)12-07-2017_12-07-2017.', 'VOUCHER'),
('2017-07-12', 'SettleTselDet_03_20000(695)12-07-2017_12-07-2017.x', 'VOUCHER'),
('2017-07-12', 'SettleTselDet_03_25000(695)12-07-2017_12-07-2017.x', 'VOUCHER'),
('2017-07-12', 'SettleTselDet_03_50000(695)12-07-2017_12-07-2017.x', 'VOUCHER'),
('0000-00-00', 'arindo 5 Juli 2017.xlsx', 'ARINDO'),
('2017-07-05', 'MKMSettleLoket_05072017_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2017-07-05', 'MKMSettleLoket_05072017_D3_KopDadaliBDG.xlsx', 'PLN'),
('2017-07-05', 'SettleP2HSUM_05-07-2017.xlsx', 'JASTEL'),
('2017-07-05', 'SettlePAYTVDet_03_20(695)05-07-2017_05-07-2017.xls', 'TRANSVISION'),
('2017-07-05', 'SettlePAYTVDet_03_55(695)05-07-2017_05-07-2017.xls', 'INDOVISION'),
('2017-07-05', 'SettlePDAMPPOBDet(695)05-07-2017_05-07-2017.xlsx', 'PDAM'),
('2017-07-05', 'SettleThreeDet_03_10000(695)05-07-2017_05-07-2017.', 'VOUCHER'),
('2017-07-05', 'SettleTselDet_03_0(695)05-07-2017_05-07-2017.xlsx', 'VOUCHER'),
('2017-07-05', 'SettleTselDet_03_10000(695)05-07-2017_05-07-2017.x', 'VOUCHER'),
('2017-07-05', 'SettleTselDet_03_100000(695)05-07-2017_05-07-2017.', 'VOUCHER'),
('2017-07-05', 'SettleTselDet_03_20000(695)05-07-2017_05-07-2017.x', 'VOUCHER'),
('2017-07-05', 'SettleTselDet_03_25000(695)05-07-2017_05-07-2017.x', 'VOUCHER'),
('2017-07-05', 'SettleTselDet_03_50000(695)05-07-2017_05-07-2017.x', 'VOUCHER'),
('0000-00-00', 'Arindo 1 Mar 2018.xlsx', 'ARINDO'),
('2018-03-01', 'MKMSettleLoket_01032018_D3_KopDadaliBDG.xlsx', 'PLN'),
('2018-03-01', 'SettleP2HSUM_01-03-2018.xlsx', 'JASTEL'),
('2018-03-01', 'SettlePAYTVDet_03_20(695)01-03-2018_01-03-2018.xls', 'TRANSVISION'),
('2018-03-01', 'SettlePDAMPPOBDet(695)01-03-2018_01-03-2018.xlsx', 'PDAM'),
('2018-03-01', 'SettleThreeDet_03_10000(695)01-03-2018_01-03-2018.', 'VOUCHER'),
('2018-03-01', 'SettleTselDet_03_0(695)01-03-2018_01-03-2018.xlsx', 'VOUCHER'),
('2018-03-01', 'SettleTselDet_03_10000(695)01-03-2018_01-03-2018.x', 'VOUCHER'),
('2018-03-01', 'SettleTselDet_03_20000(695)01-03-2018_01-03-2018.x', 'VOUCHER'),
('2018-03-01', 'SettleTselDet_03_25000(695)01-03-2018_01-03-2018.x', 'VOUCHER'),
('2018-03-01', 'SettleTselDet_03_50000(695)01-03-2018_01-03-2018.x', 'VOUCHER'),
('0000-00-00', 'Arindo 2 Mar 2018.xlsx', 'ARINDO'),
('2018-03-02', 'MKMSettleLoket_02032018_D3_KopDadaliBDG.xlsx', 'PLN'),
('2018-03-02', 'SettleP2HSUM_02-03-2018.xlsx', 'JASTEL'),
('2018-03-02', 'SettlePDAMPPOBDet(695)02-03-2018_02-03-2018.xlsx', 'PDAM'),
('2018-03-02', 'SettleTselDet_03_0(695)02-03-2018_02-03-2018.xlsx', 'VOUCHER'),
('2018-03-02', 'SettleTselDet_03_10000(695)02-03-2018_02-03-2018.x', 'VOUCHER'),
('2018-03-02', 'SettleTselDet_03_20000(695)02-03-2018_02-03-2018.x', 'VOUCHER'),
('2018-03-02', 'SettleTselDet_03_50000(695)02-03-2018_02-03-2018.x', 'VOUCHER'),
('0000-00-00', 'Arindo 3 Mei  2018.xlsx', 'ARINDO'),
('2018-05-03', 'SettleP2HSUM_03-05-2018.xlsx', 'JASTEL'),
('2018-05-03', 'SettlePDAMPPOBDet(695)03-05-2018_03-05-2018.xlsx', 'PDAM'),
('2018-05-03', 'SettleThreeDet_03_10000(695)03-05-2018_03-05-2018.', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_0(695)03-05-2018_03-05-2018.xlsx', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_10000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_100000(695)03-05-2018_03-05-2018.', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_20000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_25000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_50000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('0000-00-00', 'Arindo 3 Mei  2018.xlsx', 'ARINDO'),
('2018-05-03', 'SettleP2HSUM_03-05-2018.xlsx', 'JASTEL'),
('2018-05-03', 'SettlePDAMPPOBDet(695)03-05-2018_03-05-2018.xlsx', 'PDAM'),
('2018-05-03', 'SettleThreeDet_03_10000(695)03-05-2018_03-05-2018.', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_0(695)03-05-2018_03-05-2018.xlsx', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_10000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_100000(695)03-05-2018_03-05-2018.', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_20000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_25000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_50000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('0000-00-00', 'Arindo 3 Mei  2018.xlsx', 'ARINDO'),
('2018-05-03', 'MKMSettleLoket_03052018_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2018-05-03', 'MKMSettleLoket_03052018_D3_KopDadaliBDG.xlsx', 'PLN'),
('2018-05-03', 'SettleP2HSUM_03-05-2018.xlsx', 'JASTEL'),
('2018-05-03', 'SettlePDAMPPOBDet(695)03-05-2018_03-05-2018.xlsx', 'PDAM'),
('2018-05-03', 'SettleThreeDet_03_10000(695)03-05-2018_03-05-2018.', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_0(695)03-05-2018_03-05-2018.xlsx', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_10000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_100000(695)03-05-2018_03-05-2018.', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_20000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_25000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_50000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('0000-00-00', 'Arindo 3 Mei  2018.xlsx', 'ARINDO'),
('2018-05-03', 'MKMSettleLoket_03052018_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2018-05-03', 'SettleP2HSUM_03-05-2018.xlsx', 'JASTEL'),
('2018-05-03', 'SettlePDAMPPOBDet(695)03-05-2018_03-05-2018.xlsx', 'PDAM'),
('2018-05-03', 'SettleThreeDet_03_10000(695)03-05-2018_03-05-2018.', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_0(695)03-05-2018_03-05-2018.xlsx', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_10000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_100000(695)03-05-2018_03-05-2018.', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_20000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_25000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_50000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'MKMSettleLoket_03052018_D3_KopDadaliBDG.xlsx', 'PLN'),
('2018-05-03', 'MKMSettleLoket_03052018_D3_KopDadaliBDG.xlsx', 'PLN'),
('2018-05-03', 'MKMSettleLoket_03052018_D3_KopDadaliBDG.xlsx', 'PLN'),
('0000-00-00', 'Arindo 3 Mei  2018.xlsx', 'ARINDO'),
('2018-05-03', 'MKMSettleLoket_03052018_D3_KopDadaliBDG(1).xlsx', 'PLN'),
('2018-05-03', 'MKMSettleLoket_03052018_D3_KopDadaliBDG.xlsx', 'PLN'),
('2018-05-03', 'SettleP2HSUM_03-05-2018.xlsx', 'JASTEL'),
('2018-05-03', 'SettlePDAMPPOBDet(695)03-05-2018_03-05-2018.xlsx', 'PDAM'),
('2018-05-03', 'SettleThreeDet_03_10000(695)03-05-2018_03-05-2018.', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_0(695)03-05-2018_03-05-2018.xlsx', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_10000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_100000(695)03-05-2018_03-05-2018.', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_20000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_25000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('2018-05-03', 'SettleTselDet_03_50000(695)03-05-2018_03-05-2018.x', 'VOUCHER'),
('0000-00-00', 'Arindo 1 Okt 2018.xlsx', 'ARINDO'),
('2018-10-01', 'MKMSettleLoket_01102018_D3_KopDadaliBDG (1).xlsx', 'PLN'),
('2018-10-01', 'MKMSettleLoket_01102018_D3_KopDadaliBDG (2).xlsx', 'PLN'),
('2018-10-01', 'SettleP2HSUM_01-10-2018.xlsx', 'JASTEL'),
('2018-10-01', 'SettlePAYTVDet_03_20(695)01-10-2018_01-10-2018.xls', 'TRANSVISION'),
('2018-10-01', 'SettlePDAMPPOBDet(695)01-10-2018_01-10-2018.xlsx', 'PDAM'),
('2018-10-01', 'SettleTselDet_03_0(695)01-10-2018_01-10-2018.xlsx', 'VOUCHER'),
('2018-10-01', 'SettleTselDet_03_10000(695)01-10-2018_01-10-2018.x', 'VOUCHER'),
('2018-10-01', 'SettleTselDet_03_100000(695)01-10-2018_01-10-2018.', 'VOUCHER'),
('2018-10-01', 'SettleTselDet_03_20000(695)01-10-2018_01-10-2018.x', 'VOUCHER'),
('2018-10-01', 'SettleTselDet_03_25000(695)01-10-2018_01-10-2018.x', 'VOUCHER'),
('0000-00-00', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('0000-00-00', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('0000-00-00', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('0000-00-00', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('0000-00-00', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER');
INSERT INTO `upload` (`tanggal`, `nama`, `pen`) VALUES
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('2019-08-01', 'MKMSettleLoket_01082019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('2019-08-01', 'MKMSettleLoket_01082019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('0000-00-00', 'MKMSettleLoket_01082019_D3_KopDadaliBDG.xlsx', 'PLN'),
('0000-00-00', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('0000-00-00', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('0000-00-00', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('0000-00-00', 'MKMSettleLoket_01082019_D3_KopDadaliBDG.xlsx', 'PLN'),
('0000-00-00', 'MKMSettleLoket_01082019_D3_KopDadaliBDG.xlsx', 'PLN'),
('0000-00-00', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('2019-08-01', 'MKMSettleLoket_01082019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('2019-08-01', 'MKMSettleLoket_01082019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('2019-08-01', 'MKMSettleLoket_01082019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('2019-08-01', 'MKMSettleLoket_01082019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('0000-00-00', 'Arindo 1 Agust 2019.xlsx', 'ARINDO'),
('2019-08-01', 'MKMSettleLoket_01082019_D3_KopDadaliBDG.xlsx', 'PLN'),
('2019-08-01', 'SettleP2HSUM_01-08-2019.xlsx', 'JASTEL'),
('2019-08-01', 'SettlePDAMPPOBDet(695)01-08-2019_01-08-2019.xlsx', 'PDAM'),
('2019-08-01', 'SettleTselDet_03_0(695)01-08-2019_01-08-2019.xlsx', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_10000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_100000(695)01-08-2019_01-08-2019.', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_20000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_25000(695)01-08-2019_01-08-2019.x', 'VOUCHER'),
('2019-08-01', 'SettleTselDet_03_50000(695)01-08-2019_01-08-2019.x', 'VOUCHER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tipe_user` enum('admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `tipe_user`) VALUES
(1, 'tantan', 'ED SNOWDEN', '2b3235efc1ec93e3437fdaa7a11ba212', 'admin'),
(2, 'admin', 'ADMIN APPS', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `voucher`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `voucher_smart`
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
-- Struktur dari tabel `voucher_tri`
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

--
-- Dumping data untuk tabel `voucher_tri`
--

INSERT INTO `voucher_tri` (`divre`, `tanggal`, `kode_kopegtel`, `kopegtel`, `kode_loket`, `loket`, `user`, `denom`, `no_telp`, `nama_cust`, `amount`, `surcharge`, `fee_ca`, `total_kopeg`, `kode_biller`) VALUES
(3, '2016-11-23', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 10000, '089647083626', 'SN 20161123151734054695', 11000, 0, 900, 10100, 66),
(3, '2016-12-13', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 10000, '089647083626', 'SN 20161213100611371568', 11000, 0, 900, 10100, 66),
(3, '2017-07-12', '695', 'D3_Kop Dadali BDG', '1106', 'D3_Lembang', 'lembang', 10000, '089685080365', 'SN 20170712092227147248', 11000, 0, 900, 10100, 66),
(3, '2017-07-05', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong2', 10000, '089514351967', 'SN 20170705091549949324', 11000, 0, 900, 10100, 66),
(3, '2018-03-01', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 10000, '089673786578', 'SN 20180301141759679190', 11000, 0, 900, 10100, 66),
(3, '2018-03-01', '695', 'D3_Kop Dadali BDG', '1087', 'D3_Supratman', 'supratman3', 10000, '0895330800473', 'SN 20180301142526126021', 11000, 0, 900, 10100, 66),
(3, '2018-05-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 10000, '0895332561901', 'SN 20180503081017817132', 11000, 0, 900, 10100, 66),
(3, '2018-05-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 10000, '0895635368223', 'SN 20180503081042842816', 11000, 0, 900, 10100, 66),
(3, '2018-05-03', '695', 'D3_Kop Dadali BDG', '1115', 'D3_Lembong', 'lembong3', 10000, '089529036355', 'SN 20180503081107867712', 11000, 0, 900, 10100, 66);

-- --------------------------------------------------------

--
-- Struktur dari tabel `voucher_tsel`
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
-- Indeks untuk tabel `arindo_tempat`
--
ALTER TABLE `arindo_tempat`
  ADD PRIMARY KEY (`kode_user`);

--
-- Indeks untuk tabel `biaya_pln`
--
ALTER TABLE `biaya_pln`
  ADD PRIMARY KEY (`biaya_admin`);

--
-- Indeks untuk tabel `fax`
--
ALTER TABLE `fax`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fee_pdam`
--
ALTER TABLE `fee_pdam`
  ADD PRIMARY KEY (`pdam`);

--
-- Indeks untuk tabel `harga_pulsa`
--
ALTER TABLE `harga_pulsa`
  ADD PRIMARY KEY (`kode_pulsa`);

--
-- Indeks untuk tabel `kaliuser`
--
ALTER TABLE `kaliuser`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kode_awal`
--
ALTER TABLE `kode_awal`
  ADD PRIMARY KEY (`nomor_awal`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `rk`
--
ALTER TABLE `rk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `fax`
--
ALTER TABLE `fax`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kaliuser`
--
ALTER TABLE `kaliuser`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `rk`
--
ALTER TABLE `rk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
