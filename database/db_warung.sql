-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2022 pada 17.46
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_warung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akses_user`
--

CREATE TABLE `akses_user` (
  `id_akses` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akses_user`
--

INSERT INTO `akses_user` (`id_akses`, `nama`, `ket`) VALUES
(1, 'admin', 'Administrator'),
(2, 'pimpinan', 'pimpinan perusahaan'),
(3, 'Kasir', 'Kasir'),
(4, 'Pelanggan', 'Pelanggan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `kd_customer` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `id_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `kd_customer`, `username`, `password`, `nama`, `notelp`, `alamat`, `id_akses`) VALUES
(3, 'tes', 'tes', '28b662d883b6d76fd96e4ddc5e9ba780', 'tes', '123123', 'tes', 4),
(4, 'CUS00001', 'tes2', '7a8a80e50f6ff558f552079cefe2715d', 'tes2', '123123', 'tes', 4),
(5, 'CUS00001', 'atta', '6175602e1163102318272b77a8e4be6d', 'atta', '08123456789', 'Duren Sawit', 4),
(6, 'CUS00001', 'jul', 'f05c8652de134d5c50729fa1b31d355b', 'Jul', '08123456789', 'Duren Sawit', 4),
(7, 'CUS00001', 'cha', 'c2477f223c3c4ca19a5029e0cd91fda8', 'Echa', '0281038012983', 'Jatiwaringin', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE `harga` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`id`, `id_menu`, `harga`) VALUES
(129, 129, 18000),
(131, 131, 19000),
(132, 132, 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_menu`
--

CREATE TABLE `kategori_menu` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_menu`
--

INSERT INTO `kategori_menu` (`id`, `nama_kategori`, `ket`) VALUES
(1, 'Hidangan Pembuka', '-'),
(2, 'Ayam', '-'),
(3, 'Sop', '-'),
(4, 'Aneka Pepes', '-'),
(5, 'Aneka Tumis', '-'),
(6, 'Aneka Sayur', '-'),
(7, 'Aneka Ikan', '-'),
(8, 'Hidangan Laut', '-'),
(9, 'Cumi-Cumi', '-'),
(10, 'Udang', '-'),
(11, 'Kepiting', '-'),
(12, 'Aneka Nasi', '-'),
(13, 'Aneka Lauk Pendamping', '-'),
(14, 'Aneka Minuman', '-'),
(15, 'Aneka Menu Paket', '-'),
(16, 'Aneka Paket Keluarga', '-'),
(17, 'Sea food', '-'),
(18, 'Es Kelapa Muda Merah', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `gambar` text DEFAULT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `id_kategori`, `nama_menu`, `gambar`, `ket`) VALUES
(129, 15, 'NASI TAHANAN KRIMINAL', '129.jepg', 'Nasi Liwet, Telor Dadar, Tempe Kremes'),
(131, 15, 'Nasi Tahanan Bandar', '131.jpeg', 'Nasi Liwet, Telur Rebus, Kentang Kremes'),
(132, 16, 'Nasi Tahanan Napi', '132.jpeg', 'Nasi Liwet, Tahu Bakso, Mie Kuning');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesbuk`
--

CREATE TABLE `pesbuk` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesbuk`
--

INSERT INTO `pesbuk` (`id`, `username`, `email`, `password`, `name`, `photo`) VALUES
(1, 'tes', 'tes@gmail.com', '$2y$10$hVNE5LHVOiXeV78J28iEkeAcCBOAKYKGjIE9GtLOI2s8iiALgdX/y', 'tes', 'default.svg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok`
--

CREATE TABLE `stok` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `sisa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stok`
--

INSERT INTO `stok` (`id`, `id_menu`, `stok`, `sisa`) VALUES
(129, 129, 99, 99),
(131, 131, 99, 99),
(132, 132, 99, 99);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `nama`, `alamat`) VALUES
(1, 'CV. Chaya Abadi', 'jl. pasuketan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp_transaksi_pemesanan`
--

CREATE TABLE `temp_transaksi_pemesanan` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_harga` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '1=sudah proses, 0 belum proses',
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `temp_transaksi_pemesanan`
--

INSERT INTO `temp_transaksi_pemesanan` (`id`, `tgl`, `id_menu`, `jumlah`, `id_harga`, `status`, `total`) VALUES
(23, '2022-06-12', 129, 1, 129, 0, 18000),
(24, '2022-06-12', 131, 1, 131, 0, 19000),
(25, '2022-06-12', 132, 1, 132, 0, 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pembayaran`
--

CREATE TABLE `transaksi_pembayaran` (
  `id` int(11) NOT NULL,
  `kd_transaksi` varchar(50) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `total` int(11) NOT NULL,
  `nominal_bayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pembelian`
--

CREATE TABLE `transaksi_pembelian` (
  `id` int(11) NOT NULL,
  `kd_transaksi` varchar(40) NOT NULL,
  `tgl` date NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_harga` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pemesanan`
--

CREATE TABLE `transaksi_pemesanan` (
  `id` int(11) NOT NULL,
  `kd_transaksi` varchar(255) NOT NULL,
  `tgl` date NOT NULL,
  `nomer_meja` int(11) NOT NULL,
  `atas_nama` varchar(50) NOT NULL,
  `total` int(15) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = belum bayar, 1 = sudah bayar'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_pemesanan`
--

INSERT INTO `transaksi_pemesanan` (`id`, `kd_transaksi`, `tgl`, `nomer_meja`, `atas_nama`, `total`, `status`) VALUES
(31, 'PSN12062200001', '2022-06-12', 0, '', 19000, 0),
(32, 'PSN12062200001', '2022-06-12', 0, '', 57000, 0),
(33, 'PSN12062200001', '2022-06-12', 1, 'Echa', 57000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pemesanan_detail`
--

CREATE TABLE `transaksi_pemesanan_detail` (
  `id` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `porsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_pemesanan_detail`
--

INSERT INTO `transaksi_pemesanan_detail` (`id`, `id_pemesanan`, `id_menu`, `porsi`) VALUES
(1, 1, 2, 2),
(2, 1, 1, 2),
(3, 2, 1, 5),
(4, 3, 1, 5),
(5, 4, 1, 5),
(6, 5, 1, 5),
(7, 6, 3, 2),
(8, 6, 6, 1),
(9, 7, 2, 1),
(10, 8, 8, 1),
(11, 9, 1, 1),
(12, 9, 3, 1),
(13, 9, 6, 1),
(14, 10, 1, 1),
(15, 10, 2, 1),
(16, 11, 2, 1),
(17, 11, 3, 1),
(18, 12, 6, 1),
(19, 12, 3, 1),
(20, 13, 3, 1),
(21, 13, 3, 1),
(22, 14, 2, 1),
(23, 15, 2, 1),
(24, 16, 1, 1),
(25, 17, 1, 1),
(26, 17, 8, 1),
(27, 18, 3, 1),
(28, 19, 1, 1),
(29, 19, 3, 1),
(30, 22, 143, 4),
(31, 22, 130, 2),
(32, 22, 130, 2),
(33, 23, 130, 1),
(34, 23, 129, 1),
(35, 23, 130, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_penjualan`
--

CREATE TABLE `transaksi_penjualan` (
  `id` int(11) NOT NULL,
  `kd_transaksi` varchar(40) NOT NULL,
  `tgl` date NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_harga` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` varchar(5) NOT NULL,
  `id_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`idusers`, `username`, `password`, `status`, `id_akses`) VALUES
(1, 'admin', 'admin', 'Y', 1),
(2, 'pimpinan', '90973652b88fe07d05a4304f0a945de8', 'Y', 2),
(3, 'kasir', 'c7911af3adbd12a035b289556d96470a', 'Y', 3),
(4, 'hakim', 'c96041081de85714712a79319cb2be5f', 'Y', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akses_user`
--
ALTER TABLE `akses_user`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_menu`
--
ALTER TABLE `kategori_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesbuk`
--
ALTER TABLE `pesbuk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `[username]` (`username`);

--
-- Indeks untuk tabel `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `temp_transaksi_pemesanan`
--
ALTER TABLE `temp_transaksi_pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi_pembayaran`
--
ALTER TABLE `transaksi_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi_pembelian`
--
ALTER TABLE `transaksi_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi_pemesanan`
--
ALTER TABLE `transaksi_pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi_pemesanan_detail`
--
ALTER TABLE `transaksi_pemesanan_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akses_user`
--
ALTER TABLE `akses_user`
  MODIFY `id_akses` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `harga`
--
ALTER TABLE `harga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT untuk tabel `kategori_menu`
--
ALTER TABLE `kategori_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT untuk tabel `pesbuk`
--
ALTER TABLE `pesbuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `stok`
--
ALTER TABLE `stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `temp_transaksi_pemesanan`
--
ALTER TABLE `temp_transaksi_pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `transaksi_pembayaran`
--
ALTER TABLE `transaksi_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transaksi_pembelian`
--
ALTER TABLE `transaksi_pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi_pemesanan`
--
ALTER TABLE `transaksi_pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `transaksi_pemesanan_detail`
--
ALTER TABLE `transaksi_pemesanan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `transaksi_penjualan`
--
ALTER TABLE `transaksi_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
