-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Jan 2017 pada 04.33
-- Versi Server: 10.1.12-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_library`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `courses`
--

INSERT INTO `courses` (`id`, `name`) VALUES
(1, 'Jaringan Komputer'),
(2, 'Sistem Basis Data'),
(3, 'Sistem Informasi Manajemen'),
(4, 'Aljabar Linear'),
(5, 'Kalkulus I'),
(6, 'Kalkulus II'),
(7, 'Sistem Penunjang Keputusan'),
(8, 'Web Programming');

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses_students`
--

CREATE TABLE `courses_students` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `courses_students`
--

INSERT INTO `courses_students` (`student_id`, `course_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 3),
(3, 5),
(4, 6),
(5, 2),
(6, 2),
(6, 3),
(6, 7),
(7, 1),
(7, 5),
(8, 3),
(9, 1),
(9, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pagination`
--

CREATE TABLE `pagination` (
  `nim` bigint(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pagination`
--

INSERT INTO `pagination` (`nim`, `nama`, `jurusan`, `alamat`) VALUES
(111999014, 'Muhammad Arsaniyanto', 'PGSD', 'Kp. Mekarsari RT.15/03 No.33'),
(111999021, 'Muhammad Yusuf Hamdani', 'Teknik Informatika', 'Jln. Cipaku Haji RT.02/07 No.15'),
(111999023, 'Putri Andini', 'Sistem Informasi', 'Kp. Mekarsari RT/RW 22/55 No.34'),
(111999025, 'Muhammad Anggra Triawan Skom', 'Teknik Infirmatika S2', 'Kp. Buntar RT.02 / RW.09 Kel. Ciawi Kec.Bogor Selatan'),
(111999027, 'Muhammad Rahmadan', 'PGBK', 'Perumahan Pakuan Hill, Monte carlo, Ciawi Bogor Selatan'),
(111999029, 'Muhammad Afnan', 'Hukum', 'Perumahan Pakuan Hill, Monte carlo, Ciawi Bogor Selatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`) VALUES
(1, 'Vidic'),
(2, 'Ferdinand'),
(3, 'O''Shea'),
(4, 'Evra'),
(5, 'Carrick'),
(6, 'Ronaldo'),
(7, 'Hargreaves'),
(8, 'Rooney'),
(9, 'Tevez');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_books`
--

CREATE TABLE `tbl_books` (
  `id` int(8) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(30) NOT NULL,
  `isbn` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_books`
--

INSERT INTO `tbl_books` (`id`, `name`, `author`, `isbn`) VALUES
(1, 'Learning PHP, MySQL & JavaScript', 'Robin Nixon', 'ISBN-13: 978-1491918661'),
(2, 'PHP and MySQL for Dynamic Web Sites', 'Larry Ullman', 'ISBN-13: 978-0321784070'),
(3, 'PHP Cookbook', 'David Sklar', 'ISBN-13: 978-1449363758'),
(4, 'Programming PHP', 'Kevin Tatroe', 'ISBN-13: 978-1449392772'),
(5, 'Modern PHP: New Features and Good Practices', 'Josh Lockhart', 'ISBN-13: 978-1491905012'),
(6, 'Modern PHP New Features and Good Practices', 'Josh Lockhart', 'ISBN-13: 978-1491905012'),
(7, 'Learning PHP MySQL & JavaScript', 'Robin Nixon', 'ISBN-13: 978-1491918661'),
(8, 'PHP and MySQL for Dynamic Web Sites', 'Larry Ullman', 'ISBN-13: 978-0321784070'),
(9, 'PHP Cookbook', 'David Sklar', 'ISBN-13: 978-1449363758'),
(10, 'Programming PHP', 'Kevin Tatroe', 'ISBN-13: 978-1449392772'),
(11, 'Modern PHP New Features and Good Practices', 'Josh Lockhart', 'ISBN-13: 978-1491905012'),
(12, 'Learning PHP MySQL & JavaScript', 'Robin Nixon', 'ISBN-13: 978-1491918661'),
(13, 'PHP and MySQL for Dynamic Web Sites', 'Larry Ullman', 'ISBN-13: 978-0321784070'),
(14, 'PHP Cookbook', 'David Sklar', 'ISBN-13: 978-1449363758'),
(15, 'Programming PHP', 'Kevin Tatroe', 'ISBN-13: 978-1449392772'),
(16, 'Modern PHP New Features and Good Practices', 'Josh Lockhart', 'ISBN-13: 978-1491905012'),
(17, 'Learning PHP MySQL & JavaScript', 'Robin Nixon', 'ISBN-13: 978-1491918661'),
(18, 'PHP and MySQL for Dynamic Web Sites', 'Larry Ullman', 'ISBN-13: 978-0321784070'),
(19, 'PHP Cookbook', 'David Sklar', 'ISBN-13: 978-1449363758'),
(20, 'Programming PHP', 'Kevin Tatroe', 'ISBN-13: 978-1449392772');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dept`
--

CREATE TABLE `tbl_dept` (
  `int_id` int(4) NOT NULL,
  `var_dept_name` varchar(50) NOT NULL,
  `int_hod` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_dept`
--

INSERT INTO `tbl_dept` (`int_id`, `var_dept_name`, `int_hod`) VALUES
(1, 'Marketing', 1),
(2, 'Operational', 2),
(3, 'Purchasing', 3),
(4, 'Market Development', 4),
(5, 'Quality Asurance', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_emp`
--

CREATE TABLE `tbl_emp` (
  `int_id` int(5) NOT NULL,
  `var_emp_name` varchar(50) NOT NULL,
  `int_dept_id` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_emp`
--

INSERT INTO `tbl_emp` (`int_id`, `var_emp_name`, `int_dept_id`) VALUES
(1, 'Mr Johanesburg', 1),
(2, 'Mr Themoment, Jr', 1),
(3, 'Mr Moh Tamudimedja', 3),
(4, 'Mr Roemroenjambgt, Jr', 5),
(5, 'Mr Tanhookgie, Sr', 2),
(6, 'Mr Ahmadiredja, Jr', 3),
(7, 'Mr Goenawantoeklas', 3),
(8, 'Mr Abdullahmuntaha, Jr', 4),
(9, 'Mr Horeamsyury, Jr', 1),
(10, 'Goembloehisabnurjaman', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_students`
--
ALTER TABLE `courses_students`
  ADD PRIMARY KEY (`student_id`,`course_id`);

--
-- Indexes for table `pagination`
--
ALTER TABLE `pagination`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_books`
--
ALTER TABLE `tbl_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dept`
--
ALTER TABLE `tbl_dept`
  ADD KEY `int_id` (`int_id`);

--
-- Indexes for table `tbl_emp`
--
ALTER TABLE `tbl_emp`
  ADD PRIMARY KEY (`int_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pagination`
--
ALTER TABLE `pagination`
  MODIFY `nim` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111999030;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_books`
--
ALTER TABLE `tbl_books`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_dept`
--
ALTER TABLE `tbl_dept`
  MODIFY `int_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_emp`
--
ALTER TABLE `tbl_emp`
  MODIFY `int_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
