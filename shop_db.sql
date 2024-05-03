-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 01:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 2, 'ahmed', '22255444', 'ahmedhabaib@gmail.com', 'cash on delivery', 'flat no. sakkiet ezzit, av hedi chaker, sfax, sfax, Tunisia - 3021', 'iPhone 14 Pro Max (6199 x 1) - ', 6199, '2023-06-11', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(1, 'Smartphone iPhone 14 Pro Max', 'Écran 6,7 OLED Super Retina XDR HDR10, Dolby Vision, 120Hz - Écran toujours actif - Résolution: 2796x1290 pixels - Processeur: Apple A16 bionique (4 nm) Hexa-core (2x3.46 GHz Everest + 4x2.02 GHz Sawtooth) - GPU Graphics Apple 5 Coeurs - Système d&#39;exploitation: iOS 16 - Mémoire RAM: 6 Go - Stockage: 128Go', 6199, '3_717.jpg', '010-02159-14_1699_1.jpg', 'a13-black3_503_1.jpg'),
(2, 'SMARTPHONE HUAWEI P50 PRO 8GO 256GO - GOLD', 'Écran 6,6 OLED (2700 x 1228 pixels), 120Hz - Processeur: Qualcomm SM8350 Snapdragon 888 4G (5 nm) Octa-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Cryo 680) - Systéme d&#39;exploitation: HarmonyOS - Mémoire RAM: 8Go - Stockage: 256 Go - Appareil photo Arriere: Quad 64MP + 50MP + 40MP + 13MP  - Appareil Frontale: 13MP - Wifi, 4G et Bluetooth - Batterie: 4360 mAh - Charge rapide 66W, Charge rapide sans fil 50W - Empreinte digitale - NFC - Résistant aux éclaboussures, à l&#39;eau e', 2879, '1652956896386_165_1.jpg', 'a13-black4---copie_36_1.jpg', 'smartphone-huawei-p50-pro-8go-256go-gold_1_1.jpg'),
(3, 'SMARTPHONE SAMSUNG GALAXY S22 PLUS 8GO 256GO - NOIR', 'Écran 6.6 AMOLED dynamique 2X, HDR10+ (1080 x 2340 pixels) - Systéme d&#39;exploitation: Android 12 - Processeur: Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm) Octa-core (1x2.8 GHz Cortex-X2 & 3x2.50 GHz Cortex-A710 & 4x1.8 GHz Cortex-A510) - Mémoire RAM: 8Go - Stockage: 256Go - Appareil photo Arrière: TRIO 50MP + 10MP + 12MP - Appareil Photo Frontale: 10MP - Connectivité: Wifi, 5G et Bluetooth, Double SIM - Capteur d&#39;empreintes digitales - Capacité Batterie: 4500 mAh - Résistant IP68 - Couleur:', 4589, '1_2958.jpg', '2_1334.jpg', '3_1072.jpg'),
(4, 'SMARTPHONE SAMSUNG GALAXY S23 ULTRA 12GO 256GO - BEIGE', 'Écran 6.8&#34; AMOLED dynamique 2X, 120Hz, HDR10+, 1750 nits(1440 x 3088pixels) Corning Gorilla Verre Victus 2 -Processeur: Qualcomm SM8550-AC Snapdragon 8 Gen 2 (4 nm) Octa-core, Adréno 740 - Système d&#39;exploitation: Android 13 une interface utilisateur 5.1 - Mémoire RAM: 12Go - Stockage: 256 Go - Caméra arrière: 200 MP, f/1.7, 24mm (large) + 10 MP, f/4.9, 230mm (téléobjectif périscope) + 10 MP, f/2.4, 70mm (téléobjectif) + 12 MP, f/2.2, 13mm, 120˚(ultra large) - Avant: 12 MP, f/2.2, 26 mm (', 5899, 'smartphone-samsung-galaxy-a34-5g-6go-128go-silver.jpg', 'smartphone-samsung-galaxy-a34-5g-6go-128go-silver1_1.jpg', 'smartphone-samsung-galaxy-a34-5g-6go-128go-silver2.jpg'),
(5, 'SMARTPHONE XIAOMI REDMI NOTE 12 PRO 4G 8GO 128GO - BLEU', 'Écran: 6.67&#34; FHD+ AMOLED 120Hz (1080 x 2400pixels) - Processeur: Qualcomm SM7150 Snapdragon 732G (8 nm) Octa-core (2x2,3 GHz Kryo 470 Gold & 6x1,8 GHz Kryo 470 Silver), Adrène 618 - Systéme d&#39;exploitation: Android 11, MIUI 13 - Mémoire RAM: 8Go - Stockage: 128Go - Appareil Photo Arriére: Quad 108.0 MP + 8MP + 2MP + 2MP - Appareil Photo Frontale: 16.0 MP - Connectivité: 4G, Wifi et Bluetooth 5.0 - Double SIM - Capacité de Batterie: 5000mAh - Charge turbo 67W - Capteur d&#39;empreintes dig', 1299, '1_2876.jpg', '3_1031.jpg', '4_2076.jpg'),
(6, 'WASHING MACHINE BEKO WUE7612XAA 7KG - NOIR', '7KG - NOIR', 1499, 'aze8.jpg', 'azeaze.jpg', 'azekj.jpg'),
(7, 'WASHING MACHINE FRONTALE BRANDT BAL82WW 8 KG - BLANC', 'BRANDT BAL82WW 8 KG - BLANC', 1999, 'e555r8.jpg', 'lfkgdfg.jpg', 'e555r8.jpg'),
(8, 'WASHING MACHINE FRONTALE BRANDT BAM84SBL 8KG - SILVER', 'FRONTALE BRANDT BAM84SBL 8KG - SILVER', 1589, 'lerk5555.jpg', 'lkergff888.jpg', 'lerk5555.jpg'),
(9, 'WASHING MACHINE SÉCHANT FRONTALE WHIRLPOOL FWDD117168SBSEX 11 KG – SILVER', 'SÉCHANT FRONTALE WHIRLPOOL FWDD117168SBSEX 11 KG – SILVER', 2099, 'erkjglkf555.jpg', 'erlijflkfg558.jpg', 'feljiefg788.jpg'),
(10, 'WASHING MACHINE TOP LG T1466NEHGU 14KG - SILVER', 'LG T1466NEHGU 14KG - SILVER', 2049, 'elrkgjerg888.jpg', 'elvierli45.jpg', 'zlejczoeijce8.jpg'),
(11, 'APPLE WATCH SE GPS 44MM - STARLIGHT', 'GPS 44MM - STARLIGHT', 2199, 'mflkgjdf.jpg', 'qdfùlkmgjqeg.jpg', 'mflkgjdf.jpg'),
(12, 'APPLE WATCH SÉRIES 7 GPS 41MM - VERT', 'GPS 41MM - VERT', 2199, 'dfgdlfg.jpg', 'erger.jpg', 'ermlgk.jpg'),
(13, 'MONTRE CONNECTÉE ONEPLUS WATCH - SILVER', 'ONEPLUS WATCH - SILVER', 1899, 'azlejr.jpg', 'ergtert.jpg', 'ertertertert.jpg'),
(14, 'MONTRE CONNECTÉE XIAOMI MI WATCH S1 - NOIR', 'XIAOMI MI WATCH S1 - NOIR', 2599, 'dfsdfgdfg.jpg', 'erlkejrt.jpg', 'erlktjert.jpg'),
(15, 'MONTRE CONNECTÉE XIAOMI MI WATCH S1 ACTIVE - NOIR', 'WATCH S1 ACTIVE - NOIR', 1499, 'qsd14.jpg', 'qsd55.jpg', 'qsdqsd.jpg'),
(16, 'LAPTOP ASUS TUF GAMING F15 I5 11È GÉN 8GO RTX 2050', 'TUF GAMING F15 I5 11È GÉN 8GO RTX 2050', 2335, 'pc-portable-asus-tuf-gaming-f15-i5-11e-gen-8go-rtx-2050.jpg', 'pc-portable-asus-tuf-gaming-f15-i5-11e-gen-8go-rtx-2050-1.jpg', 'pc-portable-asus-tuf-gaming-f15-i5-11e-gen-8go-rtx-2050-2.jpg'),
(17, 'LAPTOP GAMER DELL G15 5511 I5 11È GÉN 8GO RTX 3050', 'G15 5511 I5 11È GÉN 8GO RTX 3050', 2299, '5511g15i5-1_1.jpg', '5511g15i5-2_1.jpg', '5511g15i5-3_1.jpg'),
(18, 'LAPTOP GAMER GIGABYTE G5 GE I5 12È GÉN 8GO RTX 3050', 'GIGABYTE G5 GE I5 12È GÉN 8GO RTX 3050', 2689, 'gigabyte-g5ge-i5-12500h.jpg', 'gigabyte-g5ge-i5-12500h-1.jpg', 'gigabyte-g5ge-i5-12500h-4.jpg'),
(19, 'LAPTOP GAMER HP VICTUS 15-FB0022NK AMD RYZEN 5 20GO GTX 1650', 'VICTUS 15-FB0022NK AMD RYZEN 5 20GO GTX 1650', 2099, 'pc_portable_gamer_hp_victus_15-fb0022nk_amd_ryzen_5_20go_gtx_1650.jpg', 'pc_portable_gamer_hp_victus_15-fb0022nk_amd_ryzen_5_20go_gtx_1650-1.jpg', 'pc_portable_gamer_hp_victus_15-fb0022nk_amd_ryzen_5_20go_gtx_1650-2.jpg'),
(20, 'LAPTOP GAMER MSI THIN GF63 12U I7 12È GÉN 8GO RTX 3050', 'GF63 12U I7 12È GÉN 8GO RTX 3050', 3099, 'gf63-12udx-213xfr.jpg', 'gf63-12udx-213xfr-1.jpg', 'gf63-12udx-213xfr-2.jpg'),
(21, 'FRIDGE NEWSTAR 485WA 485 LITRES NOFROST - BLANC', '485WA 485 LITRES NOFROST - BLANC', 1799, '485wa_1.jpg', '485wa-2_1.jpg', '485wa_1.jpg'),
(22, 'FRIDGE 6ÉME SENS WHIRLPOOL 440 LITRES NOFROST - INOX', 'SENS WHIRLPOOL 440 LITRES NOFROST - INOX', 2999, 'image0_116_1_1.jpg', 'img-20211126-wa0001_55_1.jpg', 'image0_116_1_1.jpg'),
(23, 'FRIDGE COMBINÉ BEKO RCNA420SX 366 LITRES NOFROST - INOX', 'BEKO RCNA420SX 366 LITRES NOFROST - INOX', 2499, 'rcna420sx-1_1.jpg', 'rcna420sx-2_1.jpg', 'rcna420sx-3_1.jpg'),
(24, 'FRIDGE COMBINÉ NEWSTAR CB400XA 400 LITRES NOFROST - INOX', 'NEWSTAR CB400XA 400 LITRES NOFROST - INOX', 1789, 'cb400xa-1_1.jpg', 'cb400xa-2_1.jpg', 'cb400xa-1_1.jpg'),
(25, 'FRDIGE LG GL-C502HLCL 437LITRES NOFROST - INOX', 'GL-C502HLCL 437LITRES NOFROST - INOX', 3489, 'gl-c502hlcl-1.jpg', 'gl-c502hlcl-4.jpg', 'gl-c502hlcl-8.jpg'),
(26, 'CAMERA Canon EOS 5D Mark IV', 'Canon EOS 5D Mark IV', 5500, 'Canon Tunisie Canon EOS 5D Mark IV-500x500.jpg', 'canon-eos-dslr-camera-700d-body-only-black- (1)-500x500.jpg', 'canon-eos-dslr-camera-700d-body-only-black--500x500.jpg'),
(27, 'CAMERA Canon Eos R6 Hybride', 'Eos R6 Hybride', 6899, 'canon-eos-r6-1-30-500x500.jpg', 'canon-eos-r6-2-47-500x500.jpg', 'canon-eos-r6-4-34-500x500.jpg'),
(28, 'CAMERA Nikon D5500', 'Nikon D5500', 4599, 'nikon d5500 boitier  .-500x500.jpg', 'nikon d5500 boitier .-500x500.jpg', 'nikon d5500 boitier-500x500.jpg'),
(29, 'CAMERA Nikon D7200', 'Nikon D7200', 7899, '1-500x500.jpg', '2-500x500.jpg', '3-500x500.jpg'),
(30, 'CAMERA Sony A7 III', 'Sony A7 III', 7899, 'sony-a7-iii-1-46-500x500.jpg', 'sony-a7-iii-2-28-500x500.jpg', 'sony-a7-iii-3-75-500x500.jpg'),
(31, 'MOUSE GAMING LOGITECH G300S', 'LOGITECH G300S', 40, 'souris-gaming-logitech-g300s-noir (1).jpg', 'souris-gaming-logitech-g300s-noir (2).jpg', 'souris-gaming-logitech-g300s-noir.jpg'),
(32, 'MOUSE LOGITECH SANS FIL M185', 'SANS FIL M185', 30, 'souris-logitech-sans-fil-m185-gris (1).jpg', 'souris-logitech-sans-fil-m185-gris (2).jpg', 'souris-logitech-sans-fil-m185-gris.jpg'),
(33, 'MOUSE SANS FIL BLUETOOTH APPLE MAGIC MK2E3ZM', 'BLUETOOTH APPLE MAGIC MK2E3ZM', 189, 'souris-sans-fil-bluetooth-apple-magic-mk2e3zma-blanc (1).jpg', 'souris-sans-fil-bluetooth-apple-magic-mk2e3zma-blanc (2).jpg', 'souris-sans-fil-bluetooth-apple-magic-mk2e3zma-blanc.jpg'),
(34, 'MOUSE SANS FIL MICROSOFT WIRELESS MOBILE MOUSE 1850', 'MICROSOFT WIRELESS MOBILE MOUSE 1850', 189, 'souris-sans-fil-microsoft-wireless-mobile-mouse-1850-bleu.jpg', 'souris-sans-fil-microsoft-wireless-mobile-mouse-1850-noir (1).jpg', 'souris-sans-fil-microsoft-wireless-mobile-mouse-1850-noir.jpg'),
(35, 'MOUSE USB GAMER MSI CLUTCH GM50', 'MSI CLUTCH GM50', 349, 'souris-usb-gamer-msi-clutch-gm50-noir (1).jpg', 'souris-usb-gamer-msi-clutch-gm50-noir (2).jpg', 'souris-usb-gamer-msi-clutch-gm50-noir.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'slim', 'slimamakni@gmail.com', '3b179f9b13f4058b7a507d6bb3b2c0adc3a4873a'),
(2, 'ahmed', 'ahmedhabaib@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
