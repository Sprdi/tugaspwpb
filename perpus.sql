-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2023 at 03:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_buku`
--

CREATE TABLE `daftar_buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `genre` varchar(255) NOT NULL,
  `sinopsis` text NOT NULL,
  `no_isbn` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_buku`
--

INSERT INTO `daftar_buku` (`id_buku`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `genre`, `sinopsis`, `no_isbn`, `foto`) VALUES
(1, 'Cinta Abadi', 'Diana Anderson', 'GagasMedia', '2023-10-09', 'Romance', 'adalah sebuah novel romantis yang mengisahkan kisah cinta abadi antara dua jiwa yang terpisah oleh waktu dan ruang. Ketika seorang arkeolog modern menemukan diary seorang wanita dari abad ke-19, dia terjebak dalam kisah cinta yang melintasi zaman. Akankah cinta ini benar-benar abadi?', '978-1234567890', '195224352_download.png'),
(3, 'Malam yang Menakutkan', 'Rika Prasetya', 'Erlangga', '2023-10-09', 'Horror', '\"Malam yang Menakutkan\" adalah sebuah novel horor yang mengisahkan sekelompok teman yang terjebak di sebuah vila tua di tengah hutan yang angker. Mereka harus berjuang untuk bertahan hidup ketika mereka mulai diserang oleh kekuatan gaib yang mengerikan.', '978-0987654321', '2048526421_download.png'),
(4, 'Cerita Lucu dari Dunia Sehari-hari', 'Andi Wibowo', 'Gramedia Pustaka Utama', '2023-10-09', 'Komedi', '\"Cerita Lucu dari Dunia Sehari-hari\" adalah kumpulan cerita pendek komedi yang menghadirkan kejadian kocak dari kehidupan sehari-hari. Dengan humor yang tajam, buku ini akan membuat Anda tertawa sepanjang hari.', '978-9876543210', '938599719_download.png'),
(5, 'Kerajaan Ajaib: Pangeran dan Naga', 'Linda Surya', 'GagasMedia', '2023-10-09', 'Fantasi', '\"Kerajaan Ajaib: Pangeran dan Naga\" adalah sebuah novel fantasi yang memikat tentang seorang pangeran yang berusaha menyelamatkan kerajaannya dari ancaman naga ganas. Petualangan epik ini penuh dengan sihir, makhluk fantastis, dan penuh dengan intrik.', '978-5678901234', '183290329_download.png'),
(6, 'Misteri di Malam Gelap', 'Aria Susanti', 'Erlangga', '2023-10-09', 'Thriller', '\"Misteri di Malam Gelap\" adalah sebuah thriller yang mengisahkan seorang detektif swasta yang terlibat dalam kasus pembunuhan misterius di sebuah kota kecil. Dia harus mengungkap rahasia gelap yang mengancam seluruh kota sebelum terlambat.', '978-2345678901', '598221713_download.png'),
(7, 'Prahara Sejarah: Kejatuhan Kerajaan Majapahit', 'Bambang Prakoso', 'Gramedia Pustaka Utama', '2023-10-09', 'Genre', '\"Prahara Sejarah: Kejatuhan Kerajaan Majapahit\" adalah sebuah buku sejarah yang mendalam yang mengungkap peristiwa dramatis yang mengakibatkan kejatuhan salah satu kerajaan terbesar di Indonesia, Majapahit.', '978-3456789012', '2137168833_download.png'),
(8, 'Rahasia Alam Gaib', 'Maya Susanti', 'GagasMedia', '2023-10-09', 'Fantasi', '\"Rahasia Alam Gaib\" adalah sebuah novel fantasi yang memadukan elemen-elemen mistik dan dunia gaib. Ketika seorang anak muda menemukan buku kuno yang berisi mantra kuno, dia tidak tahu bahwa dia akan terlibat dalam konflik antara makhluk gaib yang kuat dan kekuatan yang mengerikan.', '978-5432109876', '852279587_download.png');

-- --------------------------------------------------------

--
-- Table structure for table `data_admin`
--

CREATE TABLE `data_admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_admin`
--

INSERT INTO `data_admin` (`id_admin`, `nama`, `username`, `password`, `foto`) VALUES
(1, 'admin', 'admin', 'admin', ''),
(2, 'admin2', 'admin2', 'admin2', '1264048409_download.png');

-- --------------------------------------------------------

--
-- Table structure for table `data_operator`
--

CREATE TABLE `data_operator` (
  `id_operator` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_operator`
--

INSERT INTO `data_operator` (`id_operator`, `nama`, `username`, `password`, `foto`) VALUES
(1, 'operator', 'operator', 'operator', ''),
(2, 'operator2', 'operator2', 'operator2', '1400131407_download.png');

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id_user`, `nama`, `alamat`, `jenis_kelamin`, `gambar`, `username`, `password`) VALUES
(1, 'user', 'qweqweqweqw', 'Laki-laki', '', 'user', 'user'),
(2, 'user2', 'JL user2', 'Perempuan', '2099675680_download.png', 'user2', '$2y$10$p.JqybJp8l6XA1Dh6Lxmnulw6Z7licZG/Ser0sdo6C4nsDASc2K5K'),
(3, 'user11', 'user11', 'user11', '1564628212_download.jpeg', 'user11', '$2y$10$9bO13B2hfSTLv9ReEdfUO.WiKNOTwWNHiVywKjVsewvr8MlkRq9Xe');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `created_at`) VALUES
(1, 'Ujang telah terdaftar menjadi anggota perpustakaan', '2023-10-09 09:36:40'),
(2, 'Ujang telah terdaftar menjadi anggota perpustakaan', '2023-10-09 09:37:11'),
(3, 'Ujang telah terdaftar menjadi anggota perpustakaan', '2023-10-09 09:40:27'),
(4, 'Ujang telah terdaftar menjadi anggota perpustakaan', '2023-10-09 09:41:35'),
(5, 'Ujang telah terdaftar menjadi anggota perpustakaan', '2023-10-09 09:41:44'),
(6, 'Ujang telah terdaftar menjadi anggota perpustakaan', '2023-10-09 09:41:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_buku`
--
ALTER TABLE `daftar_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `data_operator`
--
ALTER TABLE `data_operator`
  ADD PRIMARY KEY (`id_operator`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_buku`
--
ALTER TABLE `daftar_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `data_admin`
--
ALTER TABLE `data_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_operator`
--
ALTER TABLE `data_operator`
  MODIFY `id_operator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
