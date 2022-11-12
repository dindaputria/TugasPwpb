-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Nov 2022 pada 03.19
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(9, 'Dinda Putri Aisyah', 'dindaputriaisyah177@gmail.com', 'f6a9e9720ed3eb40977385dadfa85304.jpg', '$2y$10$qoeO5.wy8vBusXmY4JWLh.dJZ93YgjlgC/FKuextbVVRw9xTHx00e', 1, 1, 1661918905),
(11, 'Acha Canci', 'achayuhu1@gmail.com', 'default1.jpg', '$2y$10$0XJhemM0S/nSWzGrEPZgqeMLw9h5MJ/iOKnR0ydJpKY6X/QKhWm8e', 2, 1, 1662510430),
(89, 'matcha', 'matchayurr@gmail.com', '6de98c4a0198da92cff3bdcb9dc3b39d.jpg', '$2y$10$SKKk4Hl97/1lPuAfEMFKY.l7/UZD86AXW1yMRSmQMr7IHejeuP5Ly', 2, 1, 1667795014);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3),
(5, 2, 4),
(18, 34, 10),
(19, 35, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(10, 'Other');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member'),
(20, 'Managerku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(7, 1, 'Youtube', 'user/youtube', 'fab fa-fw fa-youtube', 1),
(9, 4, 'FanPages', 'user/fanpage', 'fa-brands fa-facebook', 1),
(19, 1, 'Role', 'admin/role', 'fas fa-fw fa-key', 1),
(22, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-unlock', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `data_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `data_created`) VALUES
(32, 'aisyahraniww@gmail.com', 'PnZAjIT9ZBpoAoOqtwIoyc1mTKGN+i2CsN2l6Ah12fE=', 1667460142),
(33, 'aisyahraniww@gmail.com', 'ElCKygZ0QP9xW2UUyR/qvDfkMYwUBOFcMik2lYdHExY=', 1667462691),
(34, 'aisyahraniww@gmail.com', '5E5ex4LTkbNAT22B6sB1npooQR02VR29NjWbLqCWEhM=', 1667462730),
(35, 'aisyahraniww@gmail.com', 'MZWhFmZwqvupFUmbLIqD+E3399lTvfbakBvDxy+vJ9Q=', 1667462823),
(36, 'aisyahraniww@gmail.com', 'JbVAtjuEz0AgVI47uRQx3Eqqp/r41MHbBYGvVc5Jbb0=', 1667462839),
(37, 'aisyahraniww@gmail.com', 'KrZnm+1WeXZ5OMJ0dF5Uhs16m+NR+ANx81f78WDWjMM=', 1667462876),
(38, 'aisyahraniww@gmail.com', 'h5/PGw3t5acY3yRFXl6TyBaq2I8nZGgpowAZlZsTL38=', 1667463540),
(39, 'aisyahraniww@gmail.com', 'akjU9lssRlsH/Q159WRINXj8B1YM/oqk+XNvBhvLWa8=', 1667463664),
(40, 'aisyahraniww@gmail.com', '9a3il/p5fZ0DWlCeI0nc+NhnBkUWfPH816DYOMbxZpI=', 1667463815),
(41, 'aisyahraniww@gmail.com', 'CoGdGsOSyUHSasL6h+Z2oI4FQUt336xH/oXbi2PN1zs=', 1667463918),
(42, 'aisyahraniww@gmail.com', 'sLc1mA9BoE6m+aFXkZRbcvhrwqs7RoIREyuQslFvNa8=', 1667464085),
(43, 'aisyahraniww@gmail.com', '1Wacgo/aJSO569UvIjVxMFs95JorJkGpZisifSpmgRc=', 1667464287),
(44, 'aisyahraniww@gmail.com', 'ffFRhqZYIsnTPeQsw9So9Q1x7nslOzOFNiaF6pAvXkU=', 1667464410),
(45, 'aisyahraniww@gmail.com', 'mQ+ugTWiq3ZTbuNV0JxC31GwNxxqcB3rSRBagK8rpbQ=', 1667464450),
(46, 'aisyahraniww@gmail.com', 'hGa/SMcwgj35c0P5pu9qStTiAwMybyCpAey4orhfy1c=', 1667464495),
(47, 'aisyahraniww@gmail.com', 'jogYx4Os/4WmW5OAQ610f6uKPI8WkJdyPeaLlA4HsNE=', 1667464544),
(48, 'achayuhu1@gmail.com', 'PcYrslKQ0xgU+WT5/VWwZUfAWp1H11P9AdTf1wVH+GY=', 1667464579),
(49, 'achayuhu1@gmail.com', 'ok4nKWj7FREPUTv0iP3N6Ayw+xu1F8HHXH7uIVojLYY=', 1667464994),
(50, 'aisyahraniww@gmail.com', 'W2HUXsE85fV12zS78c/fPgT4spUz0ykk0/UGtXP1h2k=', 1667560100),
(51, 'aisyahraniww@gmail.com', 'G6NDHUzn2HDmun4FcIOTvGNxN+9wBvMrBoyP/WvsFwU=', 1667609954),
(52, 'aisyahraniww@gmail.com', 'FuJLDr8VECjFE+6hiM++nCWvFk8sjKvW99iiUjkvq8o=', 1667782599),
(53, 'aisyahraniww@gmail.com', '5NCQn77JGs7nlh1ipD7qUiLSsfnt/8PIqbSE8JZMYfg=', 1667783629),
(54, 'aisyahraniww@gmail.com', 'd7rnPicCWS3CZmdZNWEZ5bHr2WAgM7JO9MGB+9dmIG8=', 1667783680),
(55, 'aisyahraniww@gmail.com', '3df8SdAwWlsLKW6u66M3emWfIokIyfawadDXFSVHAOI=', 1667783726),
(56, 'aisyahraniww@gmail.com', 'geq+VVwM6VeFbQ0xOC8K/TPX6KrI2+IBzbEvFDLNjOI=', 1667790710),
(57, 'aisyahraniww@gmail.com', 'wHoEBS2DOD1wVC41pFMRaB/DcCDtocHBWz32ZXc/mJo=', 1667790732),
(58, 'aisyahraniww@gmail.com', 'c+kdyjMJXa5AwnV4V0jEGATmZElraM+dshzivdwmkUs=', 1667790775),
(59, 'aisyahraniww@gmail.com', 'uiL2bfvY/uaSmQN4bq5Yq/CpadWnz7SdfR791tEg0g0=', 1667790794),
(60, 'aisyahraniww@gmail.com', 'Pwa3ZeRjq4R8XEMM9DStcLWPDdWmS6K7lrOtmp1vT40=', 1667790811),
(61, 'aisyahraniww@gmail.com', 'Cb+Xw4NqluS056KEKqLmOH4OC5l5PJlRElT2HfR34SE=', 1667790820),
(62, 'aisyahraniww@gmail.com', 'JhMAHT6PGnrPBD9LBDu4tL8QRpU9k+N6dOrrxID3gl4=', 1667790856),
(63, 'aisyahraniww@gmail.com', '+Ymzs2Rv9igrqUth5qSiQ/pyOYiGn5Kd/m3WwidVbXs=', 1667790874),
(64, 'aisyahraniww@gmail.com', 'urpDVeQ0bDKfmPiizzt21nnqISxOylRTuZv4dZXpQbU=', 1667790884),
(65, 'aisyahraniww@gmail.com', 'BwUVP9cdSsoGDEBi2h4uzxlHcvQExKt25EEFwSz/PZQ=', 1667790899),
(66, 'aisyahraniww@gmail.com', 'GxdgjBRpA1i7u5SW3HrL3ReyN88PpPa5QRaXrJ3A/RA=', 1667790999),
(67, 'aisyahraniww@gmail.com', 'qb7AtuhAQtpQ+74xEPpEOGLzbhn8Qp1loCjoD7bOqu4=', 1667791025),
(68, 'aisyahraniww@gmail.com', 'fOE96UyY7xcV4ZxhLebKJe1Qs2uM20jiHwcFJf6Y1wM=', 1667791819),
(69, 'aisyahraniww@gmail.com', 'rIRIuEOFyDIYWhQWxQQO14RiS+5jVBmFMpELHHr4Lf4=', 1667791896),
(70, 'aisyahraniww@gmail.com', 'xv2+2L+e68RRS0kq/9XDnGlYybBVjD7X/+Jf3MLTfDA=', 1667791913),
(71, 'aisyahraniww@gmail.com', 'YtY0Hc7LbUbUCP7dX+/ZRGZ3D6UUtm9BUjTookHG590=', 1667791925),
(72, 'aisyahraniww@gmail.com', '4IJX98mu60+R9qBYIIHS38JQnTHbGz8sQr7as85xneQ=', 1667791939),
(73, 'aisyahraniww@gmail.com', 'SWXl5av0xzewfYs10n1VqM9AiFrlCbUxyGCHbaNQilw=', 1667791960),
(74, 'aisyahraniww@gmail.com', 'NDkrqpezr/yk955BLBbwZXfN+zf/J75p0wqxES+NkPs=', 1667791973),
(75, 'aisyahraniww@gmail.com', 'fpwHknKi2kwghOg7b7BrFHrL3CRQN+C9rgoBQQhG84s=', 1667792420),
(76, 'dwikhusnul632@gmail.com', 'bHsO9RF4zge7nMFZa0Q8sQA+q7/i5PdgnPdnKrrt4gQ=', 1667792792),
(77, 'dwikhusnul632@gmail.com', 'deqn62TSH+HCYD6pVcu6IEzA2+BaqX4IdnBI0aX6VlY=', 1667792971),
(80, 'matchayurr@gmail.com', 'T4Elb4JynyeNT/RBJxACuXzZKf3GUfKTuwwqrHgVwHA=', 1667795120);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
