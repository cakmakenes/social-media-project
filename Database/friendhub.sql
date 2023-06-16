-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 08 Haz 2023, 11:54:31
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `friendhub`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`),
  KEY `FOREIGN_KEY_7` (`post_id`),
  KEY `FOREIGN_KEY_8` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `comment`
--

INSERT INTO `comment` (`comment_id`, `post_id`, `user_id`, `text`, `created_at`) VALUES
(31, 157, 34, 'Hayırlı olsun', '2023-06-08 01:18:18'),
(32, 154, 34, 'Nefiss!', '2023-06-08 01:20:16'),
(33, 150, 34, 'bravo takım!!', '2023-06-08 01:22:20'),
(34, 156, 34, 'Tebrikler', '2023-06-08 01:22:33'),
(35, 161, 37, 'çok iyi', '2023-06-08 01:24:23'),
(36, 154, 37, 'Denenmeli!', '2023-06-08 01:24:41'),
(37, 152, 38, 'Bana yaz', '2023-06-08 01:26:59'),
(38, 155, 39, 'Güzel!', '2023-06-08 01:32:16'),
(39, 159, 39, 'Delicious!', '2023-06-08 01:33:05'),
(40, 171, 39, 'Merhaba:)', '2023-06-08 01:33:39'),
(41, 149, 35, 'Sweet', '2023-06-08 01:39:35'),
(42, 169, 41, 'pahalı', '2023-06-08 01:44:34'),
(43, 168, 41, 'çok tatlısın', '2023-06-08 01:44:41'),
(44, 159, 41, 'sağlıklı :P', '2023-06-08 01:44:53'),
(45, 146, 38, 'Çok güçlü!', '2023-06-08 01:46:49'),
(46, 171, 37, 'Selam Aslı', '2023-06-08 01:47:38'),
(47, 148, 36, 'eline sağlıkk', '2023-06-08 01:48:21'),
(48, 149, 36, 'minnoş', '2023-06-08 01:48:28'),
(49, 181, 34, 'hayır 1 yıl !!', '2023-06-08 09:56:04'),
(50, 160, 56, 'hayırlı olsun', '2023-06-08 10:29:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `friend_id` int NOT NULL AUTO_INCREMENT,
  `follower_id` int NOT NULL,
  `followed_id` int NOT NULL,
  PRIMARY KEY (`friend_id`),
  KEY `FOREIGN_KEY_3` (`follower_id`),
  KEY `FOREIGN_KEY_4` (`followed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `friends`
--

INSERT INTO `friends` (`friend_id`, `follower_id`, `followed_id`) VALUES
(98, 35, 34),
(99, 36, 34),
(100, 37, 34),
(101, 38, 34),
(102, 34, 35),
(103, 36, 35),
(104, 42, 35),
(105, 41, 35),
(106, 39, 35),
(107, 34, 36),
(108, 35, 36),
(109, 37, 36),
(110, 33, 41),
(111, 39, 41),
(112, 37, 41),
(113, 34, 33),
(115, 37, 33),
(116, 35, 33),
(117, 38, 33),
(118, 34, 39),
(120, 33, 42),
(121, 35, 42),
(122, 41, 42),
(124, 34, 37),
(125, 36, 37),
(126, 42, 37),
(127, 39, 37),
(128, 33, 43),
(130, 38, 43),
(131, 35, 38),
(132, 39, 38),
(133, 38, 42),
(136, 33, 39),
(137, 42, 39),
(138, 36, 39),
(139, 43, 42),
(140, 39, 34),
(142, 33, 34),
(143, 42, 34),
(144, 56, 34);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(155, 159, 39),
(156, 155, 39),
(158, 180, 34),
(159, 179, 34),
(161, 177, 34),
(162, 165, 34),
(163, 164, 34),
(164, 163, 34),
(165, 162, 34),
(166, 161, 34),
(167, 158, 34),
(168, 157, 34),
(169, 155, 34),
(170, 159, 34),
(171, 154, 34),
(172, 153, 34),
(173, 152, 34),
(174, 150, 34),
(175, 159, 42),
(176, 158, 42),
(177, 157, 42),
(178, 156, 42),
(179, 155, 42),
(180, 172, 37),
(181, 171, 37),
(182, 165, 37),
(183, 164, 37),
(184, 160, 37),
(185, 161, 37),
(186, 162, 37),
(187, 163, 37),
(188, 170, 37),
(189, 186, 38),
(190, 185, 38),
(191, 160, 38),
(192, 154, 38),
(193, 153, 38),
(194, 152, 38),
(195, 151, 38),
(196, 150, 38),
(197, 149, 38),
(198, 148, 38),
(199, 146, 38),
(200, 142, 38),
(201, 186, 42),
(202, 185, 42),
(203, 176, 42),
(204, 175, 42),
(205, 174, 42),
(206, 173, 42),
(207, 169, 41),
(208, 168, 41),
(209, 167, 41),
(210, 166, 41),
(211, 159, 41),
(212, 158, 41),
(213, 157, 41),
(214, 156, 41),
(215, 155, 41),
(216, 184, 39),
(217, 183, 39),
(218, 182, 39),
(219, 176, 39),
(220, 175, 39),
(221, 174, 39),
(222, 173, 39),
(223, 172, 39),
(224, 171, 39),
(225, 170, 39),
(226, 158, 39),
(227, 157, 39),
(228, 156, 39),
(229, 184, 35),
(230, 183, 35),
(231, 169, 35),
(232, 168, 35),
(233, 167, 35),
(234, 166, 35),
(235, 165, 35),
(236, 164, 35),
(237, 163, 35),
(238, 161, 35),
(239, 160, 35),
(240, 154, 35),
(241, 151, 35),
(242, 150, 35),
(243, 149, 35),
(244, 146, 35),
(245, 142, 35),
(246, 162, 35),
(247, 152, 35),
(248, 177, 42),
(249, 178, 42),
(250, 181, 36),
(251, 180, 36),
(252, 179, 36),
(253, 177, 36),
(254, 174, 36),
(255, 160, 36),
(256, 159, 36),
(257, 142, 36),
(258, 146, 36),
(259, 148, 36),
(260, 156, 36),
(261, 181, 33),
(262, 185, 33),
(263, 186, 33),
(264, 180, 33),
(265, 179, 33),
(266, 177, 33),
(267, 171, 33),
(268, 170, 33),
(269, 169, 33),
(270, 168, 33),
(271, 166, 33),
(272, 160, 33),
(273, 160, 33),
(274, 149, 33),
(275, 146, 33),
(276, 142, 33),
(277, 148, 33),
(278, 169, 43),
(279, 168, 43),
(280, 167, 43),
(281, 166, 43),
(282, 178, 34),
(291, 181, 34),
(296, 160, 56);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notification`
--

DROP TABLE IF EXISTS `notification`;
CREATE TABLE IF NOT EXISTS `notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `to_user_id` int NOT NULL,
  `from_user_id` int NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FOREIGN_KEY_1` (`to_user_id`),
  KEY `FOREIGN_KEY_2` (`from_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `notification`
--

INSERT INTO `notification` (`id`, `to_user_id`, `from_user_id`, `message`, `created_at`) VALUES
(107, 41, 42, 'wants to follow you', '2023-06-08 00:48:31'),
(111, 33, 41, 'wants to follow you', '2023-06-08 00:57:54'),
(114, 37, 41, 'wants to follow you', '2023-06-08 00:58:05'),
(123, 36, 39, 'wants to follow you', '2023-06-08 01:08:15');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_img` text NOT NULL,
  `post_text` text NOT NULL,
  `like_count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_img`, `post_text`, `like_count`) VALUES
(142, 34, '', 'Friendhub\'daki ilk postum :)', 4),
(146, 34, 'cenkkocak.jpeg', 'Cenk Koçak 400 kg kaldırmaya çok yaklaşmıştı :((', 4),
(148, 34, 'browni.jpeg', 'Biraz daha pişse enfes olurmuş!', 3),
(149, 34, 'kedi.jpeg', 'Sadece uyuyor', 3),
(150, 33, 'takim.png', '#takim #bilkent', 3),
(151, 33, 'ahmetpost.png', 'Su çok güzel :)', 2),
(152, 33, '', 'Ben Ahmet Talha, staj yapmaya uygun bir yer bilen varsa mesaj atabilir mi?', 3),
(153, 33, 'ahmetpost2.png', '#suitup #mezuniyet', 2),
(154, 33, 'ahmetpost3.jpeg', 'Nazilli pidesi çok iyiymiş :))', 3),
(155, 35, 'kocaeli.jpeg', 'Kocaeli gezimden bir kare', 4),
(156, 35, 'dogumgunu.jpeg', 'Sonunda 20 oldumm :)))', 4),
(157, 35, 'jotform.png', 'Yeni iş yerimden...', 4),
(158, 35, '', 'Sınav haftası çok zor geçiyor :((', 4),
(159, 35, 'bowl.jpeg', '#healthy#life', 5),
(160, 34, 'araba.jpeg', 'Hayırlı olsun', 7),
(161, 36, 'yemek.jpeg', 'İlk mutfak denemem', 3),
(162, 36, 'aliphoto.jpeg', '', 3),
(163, 36, 'erto.jpeg', 'nolimit', 3),
(164, 36, '', 'Selam, elinde MAN450 notları olan var mı?', 3),
(165, 36, 'kutup.jpeg', 'Sabahlıyoruz', 3),
(166, 42, '', 'Miyavv', 4),
(167, 42, 'badempost.png', 'Yeni arkadaşım', 3),
(168, 42, 'BADEMAKARCAY.jpg', 'Biraz kızgın çıkmışım', 4),
(169, 42, 'badempost2.png', 'Mama fiyatları da uçmuş', 4),
(170, 41, 'aslipost.png', 'Londra gezimden #tb', 3),
(171, 41, '', 'Merhaba Friendhub ailemm :))', 3),
(172, 41, 'aslipost2.png', 'ATAM <3', 2),
(173, 37, '', 'Selam Friendhubb ben geldimm', 2),
(174, 37, 'mehmetpost.png', 'CS2 için sabırsızlanıyorumm', 3),
(175, 37, 'mehmetpost2.png', 'Canım Fethiye\'m', 2),
(176, 37, '', 'Staj arıyorum yardımcı olabilecek var mı?', 2),
(177, 39, '', 'Merhaba FriendHub, ben Sena mine ', 4),
(178, 39, 'senapost.png', 'AŞKIN OLAYIM', 2),
(179, 39, 'senapost2.png', 'Tanıştırayım babam', 3),
(180, 39, '', 'Ben erasmusa gidiyorum :))(( #erasmus', 3),
(181, 39, '', 'Bilkentten mezun olmama 3 yıl kaldı', 3),
(182, 38, '', 'Merve şahinin ilk postu', 1),
(183, 38, 'mervepost.png', 'geziiii', 2),
(184, 38, '', 'Merhaba ben CTIS okuyorum :))) #gettogether', 2),
(185, 43, '', 'Mervenin ilk postu', 3),
(186, 43, '', 'Game of thrones u bitirdim çok güzell', 3),
(187, 56, '', 'Merhaba ben Murat', 0),
(188, 56, 'badempost.png', '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `surname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bdate` date NOT NULL,
  `profilepic` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `surname`, `email`, `password`, `bdate`, `profilepic`) VALUES
(42, 'Badem', 'Akarçay', 'bademakarcay@gmail.com', '$2y$10$kdXfrYglUF53f6ApKKKrKOhtn1aU7EuBjcWNWPtpEku5Ns98jxIcK', '2022-02-07', 'BADEMAKARCAY.jpg'),
(41, 'Aslı', 'Erdemli', 'aslierdemli@gmail.com', '$2y$10$bu413x6fraUK4e06DCXXZezhmLVzzB/CqCl9nb4A6S/Wk3CTwyOeq', '2001-03-17', 'ASLİERDEMLİ.jpg'),
(53, 'Serkan', 'Genç', 'serkangenc@gmail.com', '$2y$10$veQiMcgRuGSQonJpzuv35eUUjULpbAWHyLVXoyxKkk6PpzAQ8XVoa', '2023-06-01', 'aSERKANGENC.png'),
(39, 'Sena', 'Yolartıran', 'senayolartiran@gmail.com', '$2y$10$HGsVWrOXtCmBWoHcLW2hReik/0rAxmOv50owiShHjdJdovg7cjHPG', '2001-01-02', 'aSENAYOLARTIRAN.jpg'),
(38, 'Merve', 'Şahin', 'mervesahin@gmail.com', '$2y$10$0GHoJXgk6TQh/zLIIhFKxOtH4zdAMovnZeVb6snR6n.jXr9qixbRW', '2001-07-23', 'aMERVESAHİN.jpg'),
(37, 'Mehmet', 'Koçyiğit', 'mehmetkocyigit@gmail.com', '$2y$10$.X6Wb7dLIF0XqpflC/txC.ddGMvlgcdetjHbymc/gpD6vDizJuqFW', '2001-05-21', 'aMEHMETKOCYIGIT.jpeg'),
(36, 'Ali', 'Takmaklı', 'alitakmakli@gmail.com', '$2y$10$.1xG.tZFSsbNLj/EIxqjK.Q4FyMMgDLRVoWNZbuV3T6jv05VM3tQK', '2001-05-02', 'ALITAKMAKLI.jpg'),
(35, 'Sude', 'Akarçay', 'sudeakarcay@gmail.com', '$2y$10$Aghr4D6zosvIvAe99MyyLu08cNVH/HZM/sYAiT4YbvAGwMKl0Io6S', '2002-10-07', 'aSUDEAKARCAY.jpg'),
(33, 'Ahmet', 'Kılıç', 'ahmetkilic@gmail.com', '$2y$10$lpJ2IjaA/xhoQg1MNhtR/.BJ5Ptws01bxWnAW7h05kb3wW.p5csgq', '2000-12-10', 'AHMETKİLİC.jpeg'),
(34, 'Enes', 'Çakmak', 'enescakmak@gmail.com', '$2y$10$hd22IpTRvxeYLo7kq6zvGuHSbi.O6TufMTWCinz5ZieB1jWzfcRxK', '2001-05-05', 'aENESCAKMAK.jpg'),
(43, 'Merve', 'Öztürk', 'merveozturk@gmail.com', '$2y$10$ANHWdUrygBZEqG/n74HK..Pz6tQktO9va7gBFDBTh/nZwNIaDWS0W', '2013-01-19', 'aMERVEOZTURK.jpg'),
(56, 'Murat', 'Yılmaz', 'muratyilmaz@gmail.com', '$2y$10$ze77q/hrPea0KfcA7VU9GezTAS6Xvi0GENziMYDV2ADQ/9WOWDFe.', '2023-01-11', 'default.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
