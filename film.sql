-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Des 2022 pada 07.08
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `film`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `genres`
--

INSERT INTO `genres` (`id`, `genre`, `created_at`, `updated_at`) VALUES
(1, 'Action', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(2, 'Adventure', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(3, 'Comedy', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(4, 'Drama', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(5, 'Horror', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(6, 'Romance', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(7, 'Animation', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(8, 'Thriller', '2022-12-18 18:56:03', '2022-12-18 18:56:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_25_015401_create_movies_table', 1),
(6, '2022_11_25_015643_create_genres_table', 1),
(7, '2022_11_25_015659_create_statuses_table', 1),
(8, '2022_11_25_055942_create_movie_genres_table', 1),
(9, '2022_11_27_014802_create_types_table', 1),
(10, '2022_11_27_142546_create_videolinks_table', 1),
(11, '2022_11_27_164605_create_visitors_table', 1),
(12, '2022_11_29_114453_create_sessions_table', 1),
(13, '2022_12_01_084547_create_ratings_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinopsis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `movies`
--

INSERT INTO `movies` (`id`, `status_id`, `type_id`, `judul`, `cover_img`, `sinopsis`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'KKN di Desa Penari', 'https://m.media-amazon.com/images/M/MV5BMGUwYzdjYTAtNzg4ZC00NzkyLTg0YTktYjg1ZjBjNjQwYWM2XkEyXkFqcGdeQXVyNzEzNjU1NDg@._V1_FMjpg_UX1000_.jpg', 'KKN Di Desa Penari diadaptasi dari salah satu cerita horror yang telah viral di tahun 2019 melalui Twitter, menurut sang penulis, cerita ini diambil dari sebuah kisah nyata sekelompok mahasiswa yang tengah melakukan program KKN (Kuliah Kerja Nyata) di Desa Penari. Tak berjalan mulus, serentetan pengalaman horror pun menghantui mereka hingga program KKN tersebut berakhir tragis.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(2, 1, 1, 'Dilan 1990', 'https://m.media-amazon.com/images/M/MV5BYzM0NmQ2YzgtZWZkNC00N2JhLThjYzUtMDNlZDczMzJiMGY1XkEyXkFqcGdeQXVyNzkzODk2Mzc@._V1_FMjpg_UX1000_.jpg', 'Milea (Vanesha Prescilla) bertemu dengan Dilan (Iqbaal Ramadhan) di sebuah SMA di Bandung. Itu adalah tahun 1990, saat Milea pindah dari Jakarta ke Bandung. Perkenalan yang tidak biasa kemudian membawa Milea mulai mengenal keunikan Dilan lebih jauh. Dilan yang pintar, baik hati dan romantis... semua dengan caranya sendiri. Cara Dilan mendekati Milea tidak sama dengan teman-teman lelakinya yang lain, bahkan Beni, pacar Milea di Jakarta. Bahkan cara berbicara Dilan yang terdengar kaku, lambat laun justru membuat Milea kerap merindukannya jika sehari saja ia tak mendengar suara itu. Perjalanan hubungan mereka tak selalu mulus. Beni, gank motor, tawuran, Anhar, Kang Adi, semua mewarnai perjalanan itu. Dan Dilan... dengan caranya sendiri...selalu bisa membuat Milea percaya ia bisa tiba di tujuan dengan selamat. Tujuan dari perjalanan ini. Perjalanan mereka berdua. Katanya, dunia SMA adalah dunia paling indah. Dunia Milea dan Dilan satu tingkat lebih indah daripada itu.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(3, 1, 1, 'Dilan 1991', 'https://m.media-amazon.com/images/M/MV5BYzNhNGY1YjItMDhmOS00ODc0LWI0NTYtNGM3ODdmODM1ZjdhXkEyXkFqcGdeQXVyNzEzNjU1NDg@._V1_.jpg', 'Kisah cinta Dilan dan Milea akan kembali berlanjut. Di film Dilan 1991 ini kisah cinta mereka akan mulai diuji. Banyak rintangan yang harus Dilan dan Milea lalui, mampukah cinta mereka bertahan ?', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(4, 1, 1, 'Laskar Pelangi', 'https://m.media-amazon.com/images/M/MV5BMDc5ZTBkNjYtMzk0OS00MDQwLTgyMWUtMWU2YzhmNjJmNjIxXkEyXkFqcGdeQXVyNjQ4ODY4NzU@._V1_FMjpg_UX426_.jpg', 'Laskar Pelangi menceritakan kisah anak-anak dari Desa Belitung yang dikategorikan sebagai anak-anak miskin di Belitung. Anak-anak tersebut tidak berhenti berusaha untuk memperbaiki masa depan mereka. Mereka merupakan siswa SD Muhammadiyah, SD tertua di desa Belitung.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(5, 1, 1, 'Habibie & Ainun', 'https://m.media-amazon.com/images/M/MV5BM2EyYTc4OGUtOWFmMC00ZWIyLTlkODQtZjdiMGRkZjNmOTFiXkEyXkFqcGdeQXVyNjc2NDg5OTg@._V1_FMjpg_UX750_.jpg', 'Habibie & Ainun adalah sebuah waralaba film drama yang diproduksi oleh Manoj Punjabi dari MD Pictures. Waralaba tersebut dimulai dengan film Habibie & Ainun, prekuel Rudy Habibie, dan Habibie & Ainun 3. Disusul dengan 3 judul film lainnya.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(6, 1, 1, 'Pengabdi Setan', 'https://m.media-amazon.com/images/M/MV5BYjU5NjYyNzQtZDQ3Ny00Y2FkLWIyZGYtNzM5YzM3NDdjMjUxXkEyXkFqcGdeQXVyMzYzOTYxNzM@._V1_.jpg', 'Setelah sakit aneh selama 3 tahun, Ibu akhirnya meninggal dunia. Bapak lalu memutuskan untuk kerja di luar kota meninggalkan anak-anak. Tak lama kemudian, anak-anak merasa bahwa Ibu kembali berada di rumah. Situasi semakin menyeramkan ketika mereka mengetahui bahwa Ibu datang lagi tidak sekedar untuk menjenguk, tapi untuk menjemput mereka.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(7, 1, 1, 'Ayat Ayat Cinta', 'https://m.media-amazon.com/images/M/MV5BNGI1Zjk4NTItOTYyMi00ZTNhLTg5N2QtNmVjMTJhMGYyNjE3XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_FMjpg_UX426_.jpg', 'Ini adalah kisah cinta. Tapi bukan cuma sekadar kisah cinta yang biasa. Ini tentang bagaimana menghadapi turun-naiknya persoalan hidup dengan cara Islam. Fahri bin Abdillah adalah pelajar Indonesia yang berusaha menggapai gelar masternya di Al-Azhar. Berjibaku dengan panas-debu Mesir. Berkutat dengan berbagai macam target dan kesederhanaan hidup.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(8, 1, 1, 'Ada Apa Dengan Cinta', 'https://m.media-amazon.com/images/M/MV5BN2QwMzIxN2UtMWVlNS00NjJmLWI4ZTMtM2U4NTdhZTRiMDE1XkEyXkFqcGdeQXVyNjYxNDc5MzU@._V1_FMjpg_UX511_.jpg', 'Seorang gadis SMA populer harus memilih apakah ia ingin tetap menjadi bagian dari gengnya atau jatuh cinta pada anak lelaki yang mencintai sastra di sekolahnya.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(9, 1, 1, 'Serigala Terakhir', 'https://m.media-amazon.com/images/M/MV5BNmNkOWQzOTItMGU2Yi00NzJiLWJkMTYtZDdlOGVjYjAzZGI2XkEyXkFqcGdeQXVyNDM5MjIyMzk@._V1_FMjpg_UX659_.jpg', 'Jarot dan Ale adalah teman baik, tumbuh bersama sejak kecil. Keduanya memiliki banyak kesamaan, tapi tidak dengan karakter. Mereka membentuk geng Srigala Terakhir, dan bermimpi menjadi mafia terbesar.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(10, 1, 1, 'Kukira Kau Rumah', 'https://m.media-amazon.com/images/M/MV5BYzk0MGVlNzktMjczOS00ODI2LThhY2YtZWJhNGUzNWYxMWNlXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg', 'Bercerita tentang pengidap bipolar disorder yang diderita karakter Niskala (Prilly Latuconsina). Kita akan diajak melihat kehidupan Niskala yang berusaha untuk bisa berkuliah dan bergaul dengan normal. Sampai akhirnya ia jatuh cinta dengan musisi penyendiri bernama Pram (Jourdy Pranata).', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(11, 2, 1, 'Thor', 'https://m.media-amazon.com/images/M/MV5BOGE4NzU1YTAtNzA3Mi00ZTA2LTg2YmYtMDJmMThiMjlkYjg2XkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_FMjpg_UX1000_.jpg', 'Thor ini mengisahkan tentang seorang Raja Asgard bernama Odin yang berperang melawan Frost Giants dan pemimpin mereka, Laufey. Odin berusaha untuk mencegah Laufey dan pasukannya menaklukkan sembilan wilayah yang sangat besar termasuk Bumi. Anak Odin, Thor, telah bersiap untuk naik takhta sebagai Raja Asgard namun hal tersebut menjadi kacau saat Frost Giants mengambil sebuah peti mati. Atas perintah dari ayahnya, Thor pun pergi ke Jotunheim untuk berperang melawan Laufey dengan didampingi oleh adiknya yang bernama Loki.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(12, 2, 1, 'Moana', 'https://m.media-amazon.com/images/M/MV5BMjI4MzU5NTExNF5BMl5BanBnXkFtZTgwNzY1MTEwMDI@._V1_FMjpg_UX1086_.jpg', 'Gadis muda menggunakan bakat navigasinya untuk berlayar ke pulau dongeng. Pahlawannya ikut dalam pertualangannya, Maui setengah dewa yang legendaris.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(13, 2, 1, 'Avangers: Endgame', 'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg', 'Terombang-ambing di luar angkasa tanpa makanan atau air, Tony Stark mengirim pesan ke Pepper Potts saat suplai oksigennya mulai berkurang. Sementara itu, para Avengers yang tersisa -- Thor, Black Widow, Captain America, dan Bruce Banner -- harus mencari cara untuk mengembalikan sekutu mereka yang ditaklukkan untuk pertarungan epik dengan Thanos -- demigod jahat yang menghancurkan planet dan alam semesta.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(14, 2, 1, 'Home Alone', 'https://m.media-amazon.com/images/M/MV5BMzFkM2YwOTQtYzk2Mi00N2VlLWE3NTItN2YwNDg1YmY0ZDNmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 'Kevin, seorang anak laki-laki yang tertinggal dirumah, sementara seluruh keluarganya pergi berlibur. Mainan, kecerdasan, dan pemikiran cepatnya adalah mimpi buruk bagi sepasang pencuri yang memutuskan untuk merampok rumahnya.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(15, 2, 1, 'Beauty and The Beast', 'https://m.media-amazon.com/images/M/MV5BMTUwNjUxMTM4NV5BMl5BanBnXkFtZTgwODExMDQzMTI@._V1_.jpg', 'Film Beauty and the Beast diawali dengan cerita pada suatu pesta kerajaan. Di tengah keasikan orang berpesta, datanglah pengemis tua untuk menawarkan sesuatau. Tapi, pangeran muda menolaknya. Seketika pengemis itu mengubah pengeran menjadi binatang Beast,dan budaknya sebagai benda rumah tangga. Kepada sang pangeran, penyihir mengatakan bahwa mantra kutukannya akan musnah saat dirinya mendapatkan cinta tulus dari seorang wanita.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(16, 2, 1, 'Remember the Titans', 'https://m.media-amazon.com/images/M/MV5BYThkMzgxNjEtMzFiOC00MTI0LWI5MDItNDVmYjA4NzY5MDQ2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_FMjpg_UX816_.jpg', 'Di Virginia, sepak bola sekolah menengah adalah cara hidup, sebuah institusi yang dihormati, setiap pertandingan dirayakan lebih mewah daripada Natal, setiap playoff dibedakan lebih megah daripada hari libur nasional mana pun. Dan dengan pengakuan seperti itu, muncullah emosi yang kuat. Pada tahun 1971 sepak bola sekolah menengah adalah segalanya bagi masyarakat Alexandria. Tapi ketika dewan sekolah setempat dipaksa untuk mengintegrasikan sekolah serba hitam dengan sekolah serba putih, fondasi tradisi sepak bola yang hebat diuji.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(17, 2, 1, 'Ice Age: Collision Course', 'https://m.media-amazon.com/images/M/MV5BMTUwMTk2ODc1OV5BMl5BanBnXkFtZTgwMzU4MzgzOTE@._V1_FMjpg_UX1000_.jpg', 'Manny si raksasa mulai khawatir saat putrinya, Peaches, mengumumkan pertunangannya. Masih kurang beruntung dalam cinta, Sid si pemalas dengan sukarela merencanakan pernikahan pasangan itu. Yang membuat Manny kecewa, tidak ada yang bisa menghentikan pernikahan yang akan datang, kecuali mungkin akhir dunia. Ketika Scrat secara tidak sengaja meluncurkan dirinya ke luar angkasa, dia memicu reaksi berantai yang mengirimkan asteroid meluncur ke Bumi. Sekarang, seluruh kawanan harus meninggalkan rumah untuk menjelajahi tanah baru dan menyelamatkan diri dari kesalahan kosmik Scrat.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(18, 2, 1, 'Ready or Not', 'https://m.media-amazon.com/images/M/MV5BYzBkMzAyMDUtZTFkZS00OWUyLTgwM2ItNGI3MTQ5NzA3NTVkXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_FMjpg_UX1006_.jpg', 'Grace sangat bahagia setelah menikah dengan pria impiannya di rumah mewah milik keluarganya. Hanya ada satu tangkapan - dia sekarang harus bersembunyi dari tengah malam sampai subuh sementara mertua barunya memburunya dengan senjata, busur dan senjata lainnya. Saat Grace mati-matian berusaha bertahan malam itu, dia segera menemukan cara untuk membalikkan keadaan pada kerabatnya yang tidak terlalu dicintai.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(19, 2, 1, 'Captain Marvel', 'https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_.jpg', 'Captain Marvel adalah pejuang Kree luar angkasa yang mendapati dirinya terjebak di tengah pertempuran intergalaksi antara rakyatnya dan Skrull. Hidup di Bumi pada tahun 1995, dia terus mengingat kembali kehidupan lain sebagai pilot Angkatan Udara A.S. Carol Danvers. Dengan bantuan dari Nick Fury, Captain Marvel mencoba mengungkap rahasia masa lalunya sambil memanfaatkan kekuatan supernya untuk mengakhiri perang dengan Skrulls yang jahat.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(20, 2, 1, 'The Night House', 'https://m.media-amazon.com/images/M/MV5BZmIwNjJhOGYtNDcyNi00Yjc4LThiNTktMDM2ZjFhM2YxMTljXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UX1067_.jpg', 'Terguncang oleh kematian suaminya yang tak terduga, Beth (Rebecca Hall) ditinggalkan sendirian di rumah tepi danau yang dia bangun untuknya. Dia berusaha sebaik mungkin untuk tetap bersama-tapi kemudian mimpi itu datang. Penglihatan yang mengganggu tentang kehadiran di rumah memanggilnya, memberi isyarat dengan daya pikat hantu. Tapi cahaya siang yang keras menghapus semua bukti yang menghantui. Terhadap nasihat teman-temannya, dia mulai menggali barang-barang miliknya, merindukan jawaban.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(21, 2, 2, 'Stranger Things', 'https://m.media-amazon.com/images/M/MV5BNjBlN2U1ZWUtODgzYy00ODY3LWFhODUtZGRlYzZhM2U4NWU4XkEyXkFqcGdeQXVyODExNTExMTM@._V1_FMjpg_UX1259_.jpg', 'Stranger Things berlatar pada tahun 1980-an, di kota fiksi Hawkins, Indiana. Serial ini berfokus di sekitar banyak peristiwa supernatural yang terjadi di kota, khususnya hubungan mereka dengan realitas alternatif yang disebut Upside Down. Hal itu muncul karena fasilitas eksperimen anak pemerintah Amerika Serikat.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(22, 2, 2, 'Money Heist', 'https://m.media-amazon.com/images/M/MV5BODI0ZTljYTMtODQ1NC00NmI0LTk1YWUtN2FlNDM1MDExMDlhXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_FMjpg_UX824_.jpg', 'Money Heist mengisahkan seorang pria yang disebut The Profesor (Alvaro Morte) yang merekrut sekelompok orang dengan kemampuan khusus untuk melakukan pencurian.', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(23, 2, 1, 'Midnight', 'https://m.media-amazon.com/images/M/MV5BNGNlMDZjYmMtNjhiYy00ZGViLWFhODItY2FkMDk3NGVhYzJlXkEyXkFqcGdeQXVyMTM1MTE1NDMx._V1_.jpg', 'Midnight adalah film cerita seru Korea Selatan tahun 2021, ditulis dan disutradarai oleh Kwon Oh-seung. Film ini dibintangi oleh Jin Ki-joo, Wi Ha-joon dan Kim Hye-yoon, menggambarkan skenario petak umpet yang mengancam jiwa antara seorang pembunuh psikopat dan seorang wanita tuli.', '2022-12-18 19:17:07', '2022-12-18 19:17:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `movie_genres`
--

CREATE TABLE `movie_genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `movie_genres`
--

INSERT INTO `movie_genres` (`id`, `genre_id`, `movie_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(2, 5, 1, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(3, 4, 2, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(4, 6, 2, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(5, 4, 3, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(6, 6, 3, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(7, 2, 4, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(8, 3, 4, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(9, 4, 5, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(10, 6, 5, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(11, 4, 6, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(12, 5, 6, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(13, 2, 7, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(14, 6, 7, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(15, 4, 8, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(16, 6, 8, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(17, 1, 9, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(18, 2, 9, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(19, 4, 10, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(20, 6, 10, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(21, 1, 11, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(22, 2, 11, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(23, 2, 12, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(24, 4, 12, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(25, 1, 13, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(26, 2, 13, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(27, 3, 14, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(28, 4, 14, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(29, 2, 15, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(30, 5, 15, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(31, 2, 16, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(32, 4, 16, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(33, 2, 17, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(34, 3, 17, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(35, 7, 17, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(36, 1, 18, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(37, 8, 18, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(38, 1, 19, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(39, 2, 19, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(40, 4, 20, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(41, 5, 20, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(42, 1, 21, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(43, 2, 21, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(44, 3, 21, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(45, 1, 22, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(46, 2, 22, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(47, 6, 22, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(48, 1, 23, '2022-12-18 19:17:07', '2022-12-18 19:17:07'),
(49, 8, 23, '2022-12-18 19:17:07', '2022-12-18 19:17:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `score` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ratings`
--

INSERT INTO `ratings` (`id`, `movie_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 1, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(2, 2, 7.09, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(3, 3, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(4, 4, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(5, 5, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(6, 6, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(7, 7, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(8, 8, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(9, 9, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(10, 10, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(11, 11, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(12, 12, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(13, 13, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(14, 14, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(15, 15, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(16, 16, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(17, 17, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(18, 18, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(19, 19, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(20, 20, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(21, 21, 8.75, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(22, 22, 8.85, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(23, 23, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(24, 24, 8.05, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(25, 25, 8.35, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(26, 26, 8.05, '2022-12-18 18:56:04', '2022-12-18 18:56:04'),
(27, 4, 10.00, '2022-12-18 19:13:35', '2022-12-18 19:13:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ongoing', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(2, 'Completed', '2022-12-18 18:56:03', '2022-12-18 18:56:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Film', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(2, 'Series', '2022-12-18 18:56:03', '2022-12-18 18:56:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdurrahman Ziyad', 'abdu20232ti@student.nurulfikri.ac.id', NULL, '$2y$10$OZBTJ4ACv2V0OdDm0yJ3YuslKQXLJkvOsFjypfJJaNNkCVtGDBgQu', NULL, '2022-12-18 18:56:04', '2022-12-18 18:56:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `videolinks`
--

CREATE TABLE `videolinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `episode` int(11) NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `videolinks`
--

INSERT INTO `videolinks` (`id`, `movie_id`, `episode`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'https://drive.google.com/file/d/1uYiDexHzDHeQeLW9ASRjX40TPjm1MNuP/preview', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(2, 2, 1, 'https://drive.google.com/file/d/1FU49lURO7RtrDwD4J9Ykor-Cr_Fhr6_d/preview', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(3, 3, 1, 'https://drive.google.com/file/d/13jtN1B-I-y9xqGsuomU_9Ez61yvpcvmZ/preview', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(4, 4, 1, 'https://drive.google.com/file/d/1v5zBQRisMLeFsZOhfp1uO4ZYxeap7MH1/preview', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(5, 5, 1, 'https://drive.google.com/file/d/1y7vS4a77ydpCeZ6CbfN1IOkWY0tKD3Co/preview', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(6, 6, 1, 'https://www.youtube.com/embed/0hSptYxWB3E', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(7, 7, 1, 'https://www.youtube.com/embed/YlYlbpXt6Bc', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(8, 8, 1, 'https://www.youtube.com/embed/8BE8Qq56WA0', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(9, 9, 1, 'https://www.youtube.com/embed/obrcymImnpM', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(10, 10, 1, 'https://www.youtube.com/embed/yLIY-yaF9tE', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(11, 11, 1, 'https://www.youtube.com/embed/JOddp-nlNvQ', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(12, 12, 1, 'https://www.youtube.com/embed/LKFuXETZUsI', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(13, 13, 1, 'https://www.youtube.com/embed/AMSITikqKiM', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(14, 14, 1, 'https://www.youtube.com/embed/jEDaVHmw7r4', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(15, 15, 1, 'https://www.youtube.com/embed/RDDM_Cky9M8', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(16, 16, 1, 'https://www.youtube.com/embed/35MvdHBWjwU', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(17, 17, 1, 'https://www.youtube.com/embed/I_f4859Vjhs', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(18, 18, 1, 'https://www.youtube.com/embed/ZtYTwUxhAoI', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(19, 19, 1, 'https://www.youtube.com/embed/0LHxvxdRnYc', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(20, 20, 1, 'https://www.youtube.com/embed/W8WQGXkif_s', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(21, 21, 1, 'https://www.youtube.com/embed/b9EkMc79ZSU', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(22, 21, 2, 'https://www.youtube.com/embed/R1ZXOOLMJ8s', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(23, 21, 3, 'https://www.youtube.com/embed/e4XvO7DItmc', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(24, 22, 1, 'https://www.youtube.com/embed/_InqQJRqGW4', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(25, 22, 2, 'https://www.youtube.com/embed/ZAXA1DV4dtI', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(26, 22, 3, 'https://www.youtube.com/embed/TFJwUwnShnA', '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(27, 23, 1, 'https://www.youtube.com/embed/3Ap4ww9Ap-0', '2022-12-18 19:18:13', '2022-12-18 19:18:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `sum` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `visitors`
--

INSERT INTO `visitors` (`id`, `movie_id`, `sum`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2022-12-18 18:56:03', '2022-12-25 19:47:27'),
(2, 2, 3, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(3, 3, 1, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(4, 4, 5, '2022-12-18 18:56:03', '2022-12-18 19:13:35'),
(5, 5, 1, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(6, 6, 1, '2022-12-18 18:56:03', '2022-12-18 18:56:03'),
(7, 8, 5, '2022-12-18 19:10:47', '2022-12-18 19:10:54'),
(8, 23, 1, '2022-12-18 19:18:28', '2022-12-18 19:18:28'),
(9, 21, 3, '2022-12-18 19:18:47', '2022-12-25 19:48:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movies_judul_unique` (`judul`);

--
-- Indeks untuk tabel `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `videolinks`
--
ALTER TABLE `videolinks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `movie_genres`
--
ALTER TABLE `movie_genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `videolinks`
--
ALTER TABLE `videolinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
