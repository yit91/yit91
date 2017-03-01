-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07 Jan 2017 pada 03.07
-- Versi Server: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `biodata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE IF NOT EXISTS `absensi` (
  `no` int(11) NOT NULL,
  `nim` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `hadir` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `alasan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `matkul` varchar(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`no`, `nim`, `hadir`, `alasan`, `matkul`) VALUES
(1, '111333', 'YA', '.', 'MK01'),
(2, '3333111', 'TIDAK', 'rawat jalan di rumah karena sakit demam', 'MK02'),
(3, '3333111', 'TIDAK', 'sakit', 'MK01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `no_anggota` int(5) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `pos` varchar(1) NOT NULL,
  `mulai` time NOT NULL,
  `selesai` time NOT NULL,
  `tgl` date NOT NULL,
  `hari` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`no_anggota`, `nik`, `nama`, `alamat`, `pos`, `mulai`, `selesai`, `tgl`, `hari`) VALUES
(19, '110', 'Admin', 'RT 1', '1', '21:00:00', '04:00:00', '2016-12-25', 'Senin'),
(25, '111', 'Edi Prayitno', 'RT 1', '1', '21:00:00', '04:00:00', '2016-12-25', 'Selasa'),
(26, '112', 'David Bery Santoso', 'RT 1', '1', '21:00:00', '04:00:00', '2016-12-25', 'Rabu'),
(27, '113', 'Nurhadi', 'RT 2', '2', '21:00:00', '04:00:00', '2016-12-25', 'Kamis'),
(28, '114', 'Dede A Subhi', 'RT 2', '2', '21:00:00', '04:00:00', '2016-12-25', 'Jumat'),
(29, '115', 'Dicky Dirgantara', 'RT 3', '3', '21:00:00', '04:00:00', '2016-12-25', 'Sabtu'),
(30, '116', 'M Khairul Rozikin', 'RT 3', '3', '21:00:00', '04:00:00', '2016-12-25', 'Minggu'),
(31, '117', 'Joko Wijayanto', 'RT 1', '1', '21:00:00', '04:00:00', '2017-01-01', 'Kamis'),
(32, '118', 'Rahman', 'RT 1', '1', '21:00:00', '21:00:00', '2017-01-01', 'Jumat'),
(33, '119', 'Riko', 'RT 1', '1', '21:00:00', '04:00:00', '2017-01-01', 'Sabtu'),
(34, '120', 'Rohman', 'RT 1', '1', '21:00:00', '04:00:00', '2017-01-01', 'Minggu'),
(35, '121', 'Riki', 'RT 2', '2', '21:00:00', '04:00:00', '2017-01-01', 'Rabu'),
(36, '122', 'Robi', 'RT 2', '2', '21:00:00', '04:00:00', '2017-01-01', 'Selasa'),
(37, '123', 'Rozak', 'RT 2', '2', '21:00:00', '04:00:00', '2017-01-01', 'Senin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buah`
--

CREATE TABLE IF NOT EXISTS `buah` (
  `id` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buah`
--

INSERT INTO `buah` (`id`, `nama`, `satuan`, `harga`) VALUES
('1', 'pear', 'kg', '15000'),
('2', 'mangga', 'kg', '10000'),
('3', 'apel', 'kg', '25000'),
('4	', 'pepaya', 'bh', '30000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datalog`
--

CREATE TABLE IF NOT EXISTS `datalog` (
  `username` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `IP` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detil`
--

CREATE TABLE IF NOT EXISTS `detil` (
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detil`
--

INSERT INTO `detil` (`kode`, `nama`, `harga`, `satuan`, `tanggal`, `gambar`) VALUES
('B00001', 'kiwi', '15000', NULL, '01/07/2017', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `Doc_id` int(11) NOT NULL,
  `FileName` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` mediumblob NOT NULL,
  `upload_by` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `documents`
--

INSERT INTO `documents` (`Doc_id`, `FileName`, `type`, `upload_time`, `content`, `upload_by`) VALUES
(5, 'sempurna', 'pdf', '2016-11-05 18:38:31', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `nip` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(60) DEFAULT NULL,
  `pendidikan` varchar(2) DEFAULT NULL,
  `alamat` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE IF NOT EXISTS `harga` (
  `kode` varchar(50) DEFAULT NULL,
  `harga` varchar(50) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`kode`, `harga`, `satuan`, `nama`) VALUES
('B0001', 'Kiwi', 'kg', '15000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `nim` varchar(16) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`nim`, `username`, `password`, `level`) VALUES
('110', 'admin', 'admin', '0'),
('111', 'yit91', 'edi', '1'),
('112', 'david', 'david', '1'),
('113', 'nurhadi', 'nurhadi', '1'),
('114', 'dede', 'dede', '1'),
('115', 'dicky', 'dicky', '1'),
('116', 'zikin', 'zikin', '1'),
('117', 'joko', 'joko', '1'),
('118', 'Rahman', 'rahman', '1'),
('119', 'Riko', 'riko', '1'),
('120', 'Rohman', 'rohman', '1'),
('121', 'Riki', 'riki', '1'),
('122', 'Robi', 'robi', '1'),
('123', 'Rozak', 'rozak', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`) VALUES
('', '', ''),
('12', '124334', '212'),
('1411510264', 'Edi Prayitno', 'Jagaraga kec. sukau'),
('1411510265', 'David B. Santoso', 'Lebak Buluss');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `nip` varchar(11) NOT NULL DEFAULT '',
  `nama` varchar(255) DEFAULT NULL,
  `gol` varchar(255) DEFAULT NULL,
  `semarang` int(2) DEFAULT '0',
  `jakarta` int(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama`, `gol`, `semarang`, `jakarta`) VALUES
('00', 'l', 'IB', 0, 1),
('0411500237', 'inuyasa', 'IB', 1, 0),
('1011500223', 'Bima', 'IB', 1, 1),
('1011500345', 'Kiki', 'IIB', 1, 0),
('101150347', 'June', 'IB', 1, 0),
('8', 'l', 'IB', 1, 0),
('1411510264', 'edi prayitno', 'IIB', 1, 0),
('12', 'se', 'IB', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE IF NOT EXISTS `pengaduan` (
  `no_aduan` int(5) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `keluhan` varchar(1000) NOT NULL,
  `privasi` varchar(5) NOT NULL,
  `waktu` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`no_aduan`, `nik`, `nama`, `alamat`, `keluhan`, `privasi`, `waktu`) VALUES
(1, '112', 'David', 'RT2', 'Petugas kurang agresif', 'ya', 'Fri Jan 06 20:30:21 ICT 2017'),
(2, '112', 'David', 'RT 2', 'Petugas Minum obat', 'ya', 'Fri Jan 06 20:31:01 ICT 2017');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE IF NOT EXISTS `pesanan` (
  `kode` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`kode`, `jumlah`, `satuan`) VALUES
('B0001', '12', 'kg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` int(10) NOT NULL DEFAULT '0',
  `nama` varchar(30) NOT NULL DEFAULT '',
  `foto` text NOT NULL,
  `pekerjaanortu` varchar(255) DEFAULT '',
  `agama` varchar(10) NOT NULL DEFAULT '',
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `foto`, `pekerjaanortu`, `agama`, `alamat`) VALUES
(1411510264, 'edi prayitno', '', 'buruh', 'Islam', '                       ciledug         ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `no` int(5) NOT NULL,
  `nik_pengadu` varchar(16) NOT NULL,
  `status` varchar(10) NOT NULL,
  `waktu` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`no`, `nik_pengadu`, `status`, `waktu`) VALUES
(1, '112', 'Proses', 'Fri Jan 06 21:22:09 ICT 2017'),
(2, '112', 'Proses', 'Fri Jan 06 21:22:09 ICT 2017');

-- --------------------------------------------------------

--
-- Struktur dari tabel `woro`
--

CREATE TABLE IF NOT EXISTS `woro` (
  `id` int(11) NOT NULL,
  `pembunuhan` varchar(25) NOT NULL,
  `waktu` varchar(50) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uraian` varchar(200) NOT NULL,
  `korban` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `woro`
--

INSERT INTO `woro` (`id`, `pembunuhan`, `waktu`, `uraian`, `korban`, `lokasi`, `gambar`) VALUES
(12, 'Pembunuhan', 'Sun Jan 01 11:37:44 ICT 2017', 'Telah terjadi pembunuhan di sebelah RT 1', 'Sumardi', 'Dekat RT 1', 'pbnhn.jpg'),
(13, 'Perampokan', 'Sun Jan 01 11:39:27 ICT 2017', 'Terjadi Perampokan dirumah Pak Lurah', 'Pak Lurah', 'RT1', 'prmpkn.jpg'),
(14, 'Kebakaran', 'Sun Jan 01 12:21:32 ICT 2017', 'Telah terjadi kebakaran di sebelah Masjid Al Iman RT2', 'Rumah Ibu Samiran', 'Sebelah Masjid Al Iman', 'kbkrn.jpg'),
(15, 'Bencana Alam', 'Sun Jan 01 12:24:21 ICT 2017', 'Disebelah POS Ronda RT 2 terjadi Longsor', 'Bapak Wagimin', 'RT2', 'longsr.jpg'),
(16, 'Pencurian Hewan', 'Sun Jan 01 12:27:26 ICT 2017', 'Terjadi pencurian hewan didekat rumah Bp.Sadikin', 'Pak Sadikin', 'RT3', 'curi.jpg'),
(17, 'Pencurian Hewan', 'Mon Jan 02 19:49:31 ICT 2017', 'Pencurian', 'david', 'lb bulus', 'bl.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`no_anggota`), ADD UNIQUE KEY `nik` (`nik`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`Doc_id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`no_aduan`), ADD KEY `FK_pengaduan_login` (`nik`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`no`), ADD KEY `FK_status_login` (`nik_pengadu`);

--
-- Indexes for table `woro`
--
ALTER TABLE `woro`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `gambar` (`gambar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `no_anggota` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `Doc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `no_aduan` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `woro`
--
ALTER TABLE `woro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
ADD CONSTRAINT `FK_anggota_login` FOREIGN KEY (`nik`) REFERENCES `login` (`nim`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
ADD CONSTRAINT `FK_pengaduan_login` FOREIGN KEY (`nik`) REFERENCES `login` (`nim`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `status`
--
ALTER TABLE `status`
ADD CONSTRAINT `FK_status_login` FOREIGN KEY (`nik_pengadu`) REFERENCES `login` (`nim`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
