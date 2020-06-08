-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 04:38 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hethongbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(6, '2016_06_01_000004_create_oauth_clients_table', 2),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0449b91084d02263620223637a7b1c2c035330ceabd94c9498892183bce1423c3d67a8909c760789', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:42:37', '2020-05-09 08:42:37', '2021-05-09 15:42:37'),
('04b84f0f174e95f898c13a3c4c567fad0056ea79891771e6a980a21c2ab466668a4ac7db84486a63', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:34:16', '2020-05-09 07:34:16', '2021-05-09 14:34:16'),
('05f23cd8b68af09d6d058971bec1d639615d7cd676bf178b9acecbcc5b877504de3e2898e6d3c7cf', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:02:24', '2020-05-10 08:02:24', '2021-05-10 15:02:24'),
('09bfca92245d80b8c493bdb2374b416f1f30d51fe2ad50fbf49cacfad2e0a175a90c15abc57301d1', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:15:29', '2020-05-10 08:15:29', '2021-05-10 15:15:29'),
('116212fb8895ce95fd8cd370d96e1d40a5f460e718fe694e2976f2fa51e990ce1465c7da9d4b8032', 3, 1, 'Personal Access Token', '[]', 0, '2020-06-04 07:19:08', '2020-06-04 07:19:08', '2021-06-04 14:19:08'),
('12cb43896dc2f5866be935fdfd07d4a57774cdfa251e56c036b13d249bbb18c8ccfb06c66ec84533', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:47:33', '2020-05-09 08:47:33', '2021-05-09 15:47:33'),
('145878d2ce677d7b4bf6b5f831378d31946cd8003fb816f054ea0a0f7b074859b707ae617299e09b', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:38:14', '2020-05-10 07:38:14', '2021-05-10 14:38:14'),
('19f330732a85d8126eee681694bb61e3b6278a377bec473fe75d2b8728da160220939c0fdfb5e3e8', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:48:22', '2020-05-10 07:48:22', '2021-05-10 14:48:22'),
('1aba83c1f53feea932696ae9a462b4c3a9187a933f26f207baf607cff6a3b6aec62d278bce99fbb8', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:59:43', '2020-05-09 08:59:43', '2021-05-09 15:59:43'),
('1bf3298137b9a32fa8838efa6b64e8f51fdfe9144cde1738819a6ca6f0cdf54afa9fa52979393eba', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-09 02:33:37', '2020-05-09 02:33:37', '2021-05-09 09:33:37'),
('1c084ca5edefec360d9912b3a24aeb787abfa361921a2a686c86b924e63023a4343cb9bba8f49ece', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:14:27', '2020-05-09 07:14:27', '2021-05-09 14:14:27'),
('1c81ebe9f2ca715390349f15eeaca2dee937cf16619c5898f4cee8b8a4f767992eb8a800a9b21e25', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:01:58', '2020-05-10 08:01:58', '2021-05-10 15:01:58'),
('1f9665bdff9ec65e679ac358998bcf0f5013d2589501b60e95fbb0f9cc24ae5ed34e5997164d6043', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:49:28', '2020-05-10 07:49:28', '2021-05-10 14:49:28'),
('208d6b04cfcef39342eeb463a92cbb0aac8d4072ec77ae7598d8f3792d85c664b587cc326291379a', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-28 08:30:25', '2020-05-28 08:30:25', '2021-05-28 15:30:25'),
('2131ad9f2bc9efc4213bcd5d559ed88fe68843e555af09273834739328e929b22d516b3d79603a0d', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:54:27', '2020-05-10 07:54:27', '2021-05-10 14:54:27'),
('22768430dc5a897d774f1e44b6b93c0ada16f0f6522ccc873c3f6731c472d7afc36245c8860a5a1c', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:39:53', '2020-05-09 07:39:53', '2021-05-09 14:39:53'),
('2465d8fe668953456d026e76f6fa1c2dca83cd39984855eda3ec047d5049536ffb7c7fddba94c562', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:02:49', '2020-05-10 08:02:49', '2021-05-10 15:02:49'),
('253a6e38082195518ed9008a19cedc4a7784e4a5c5fdfd84127d62e2e5be20c337f6f5c2a74ac73e', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:10:41', '2020-05-09 08:10:41', '2021-05-09 15:10:41'),
('25df1ee246598bf3292bc43f3fcffaba6aec53b415cf72c1f8d2d9eb89067cd33e4d25dab5228956', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:47:09', '2020-05-09 07:47:09', '2021-05-09 14:47:09'),
('269325f696874b2a169109c3e6bbfc1576e5dce1960e6f32ae778800ad1e0744768be38698a33d11', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-28 08:07:32', '2020-05-28 08:07:32', '2021-05-28 15:07:32'),
('26d6a36f5fcbf9fbb8e0bc55b2d1b4576e46fea9c9b2d1557d47bb9d5db015567f06ab1af41b2c38', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:38:34', '2020-05-09 07:38:34', '2021-05-09 14:38:34'),
('295183bffe7e1d58c6eaaa6270e09b75cbd945af33fe3ef67d42f565a4f4a0a6f645995dbf8202da', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:40:56', '2020-05-10 07:40:56', '2021-05-10 14:40:56'),
('2ac5792dceb28080e2064cf84a456347e8bf6bb89ce34b745c857f4a535aff4980127c17e9e700fd', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-28 08:30:30', '2020-05-28 08:30:30', '2021-05-28 15:30:30'),
('2b4c7e3d54122369ed6bd81a0af296376195f03156697e26e6622b7e06f2f2e4ab8ae9d40b60bf03', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:34:54', '2020-05-09 07:34:54', '2021-05-09 14:34:54'),
('31656df34571ac701ad1d88f288d8db325fb6d2acbc9821b4369da19c09328117a6680eac06a9cd7', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:42:41', '2020-05-10 07:42:41', '2021-05-10 14:42:41'),
('3375979a83cbe7be2e2957882eafb57d50209b8785809e2a9c3e9bfc23d03936911bf34efaac8e88', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-28 08:09:36', '2020-05-28 08:09:36', '2021-05-28 15:09:36'),
('36e67878b2734a107e932d2dfc062851dfd0dc09408259ed5040c41c416bbc434fb630ebb0f5b0a3', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:45:50', '2020-05-09 07:45:50', '2021-05-09 14:45:50'),
('3ed7818322d87725ce5250ee18d22793b65b62a5ce9507935f718d62a4d190e1ee8abadca4fe8096', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:52:10', '2020-05-10 07:52:10', '2021-05-10 14:52:10'),
('41220742a5ed76682b55e4b136cbadbca56329a31d15561f025fe68d37569288590064d13ac92c2b', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:08:58', '2020-05-10 08:08:58', '2021-05-10 15:08:58'),
('42be9a627deb1aca95b74913d3eddd3ca6f0fc6756078bc4108779ff009569c381009c13144da345', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:36:30', '2020-05-09 08:36:30', '2021-05-09 15:36:30'),
('487cffcb73a9497f58da860c9de51a00a929ad5c0fbe7ee3e43567f3c62a59b4c6d46e854fecb294', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:10:47', '2020-05-09 08:10:47', '2021-05-09 15:10:47'),
('4e912355dddad54deddd8e85e57776c800e9f7362eed45fdb7df0e4fa64ed42743bb7a75a7a6b480', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:35:02', '2020-05-09 08:35:02', '2021-05-09 15:35:02'),
('4eb8149214346ac66f3d133981a1510c2c25d049c651e1b23e7850e285bc376506ef91bc9b4dc22c', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-28 08:29:35', '2020-05-28 08:29:35', '2021-05-28 15:29:35'),
('4fc8f845cd2cafd44e26b9c4097ff173e6e1664734931232018299c25bcc4dce2686f0c750073fe2', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:48:31', '2020-05-09 07:48:31', '2021-05-09 14:48:31'),
('507d54180e02c2a4e7e10b1983aa33f7ba2934ffd5400f1f22b4b2db0f040f3f1e0b53ccb396c661', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:39:09', '2020-05-09 08:39:09', '2021-05-09 15:39:09'),
('53d39707bf43f819b4d2e332198e943757a06d066a645ddf30207a756461831600488a8d19105e3f', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-28 07:48:39', '2020-05-28 07:48:39', '2021-05-28 14:48:39'),
('57b097f89c0e546f15403b5d3e872c5047e4488017eb068885e86ed39e08d95e3b70de2f905bd1da', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:59:52', '2020-05-10 07:59:52', '2021-05-10 14:59:52'),
('57c96db67328a539ab3e56635ed1f0f68d85641c0ff8150afd2ec733729e91bf52774fd5de5d2a80', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:44:13', '2020-05-09 07:44:13', '2021-05-09 14:44:13'),
('58778ff51e16461bce2c83e4524e4c7ce33375af0c16bccde3447af069b9eedb9765f51b764c616d', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:59:40', '2020-05-10 07:59:40', '2021-05-10 14:59:40'),
('5b4ce361a484ad0180205befe32e286a8435cb07c749b4ed8cac4f29b26d4ed2ebf2a4d0021b3aad', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:02:40', '2020-05-10 08:02:40', '2021-05-10 15:02:40'),
('5cf869adcbf19453c81e281d90441c24ed5777b625917687e5234798461f9722c9fdfcdb6186e583', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 09:02:36', '2020-05-09 09:02:36', '2021-05-09 16:02:36'),
('5d65b7edb43716b04b5c59306d998dd046519f865b8ccdd95cf26327409de783ed04ff8dee1424e7', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-28 08:12:41', '2020-05-28 08:12:41', '2021-05-28 15:12:41'),
('5da522189d302225b434680385cbbc6ce5dafb101707c5b49373714bab1873d4ca4ad43b3cd81f2e', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:57:47', '2020-05-09 07:57:47', '2021-05-09 14:57:47'),
('5ebb0b613973005e4c40a51997535e11f009f1bca1c7b098ae05c9521ff16a44f5d6308505ef1340', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:40:22', '2020-05-09 07:40:22', '2021-05-09 14:40:22'),
('64bae199cd31f0eea423ac7b58030deacd7268eafab3f9527c3590be735bfb5467bd55181cacf445', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:57:36', '2020-05-10 07:57:36', '2021-05-10 14:57:36'),
('650374abae26fdca6720816b94998381acc1cae3477c4eca197dcca7df7fc94d28707bf1cf14d9a3', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 09:01:01', '2020-05-09 09:01:01', '2021-05-09 16:01:01'),
('659a8f1a0c1d12b912020262ff6cbc5ed21c72d7fb785da2a6d1c5c66743ca8b5f698067613d8ddf', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:32:27', '2020-05-10 07:32:27', '2021-05-10 14:32:27'),
('66d340095eb48df88ace73650b90843d91c0f78cd68738f9905ae40f95c8b56d77d46ad7d884b579', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:00:04', '2020-05-10 08:00:04', '2021-05-10 15:00:04'),
('67afedd98387ea33be28c6ed4367047cb05c1387b46a242889d3c9cea36acc30df657a02451bfe66', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:38:48', '2020-05-09 07:38:48', '2021-05-09 14:38:48'),
('687fa60ffc32d3e84863e51d668d62fd19562f2cfccc8b97b2fa70d9a176b0e2f681650696077731', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:09:40', '2020-05-09 08:09:40', '2021-05-09 15:09:40'),
('6fe23e20627e02abc53cb4a12cb90ce9af10d18c4d400b4f16f9614ca5c8639811a52130b9812413', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 02:22:45', '2020-05-09 02:22:45', '2021-05-09 09:22:45'),
('70df0f5188ecddc813701883946424cb829a0b55398cc351f1b07533c1fc2890688fda4a455e2006', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:37:58', '2020-05-10 07:37:58', '2021-05-10 14:37:58'),
('715ec77d5ec815c056081306be578b2c93adfcc6996fb53e7b0837ba87df8c7747373e4423830af2', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:54:22', '2020-05-10 07:54:22', '2021-05-10 14:54:22'),
('71ff074aae38e98b58966668fed2e695b980076b24dff8145cdfe6494563e33eb41e8a06be82f001', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:49:28', '2020-05-09 07:49:28', '2021-05-09 14:49:28'),
('7aaf48a790ffbf369a6964d84dbc8371da5cc5bc3fe5e4ff6c36e6578f228cf0cfe804365f3d4607', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:49:26', '2020-05-09 08:49:26', '2021-05-09 15:49:26'),
('7b21be517b98fa4a3ca3aba6854e1e36281b59cf59dc629ec00d2dbc0b9fff043ad839a723148b0c', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:37:10', '2020-05-09 08:37:10', '2021-05-09 15:37:10'),
('7be886fc51747665bd1b9dd9e5e4be55c56f494ebb4589e5c28ae4fbcbf0e59d9d3a160827035015', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:38:06', '2020-05-10 07:38:06', '2021-05-10 14:38:06'),
('7fa5ac7e317776624ba7ccbb6f855098dee6073e8f12e9964ed6118b4548ed7c256536b1c921b234', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 09:01:12', '2020-05-09 09:01:12', '2021-05-09 16:01:12'),
('83bbd63e6ea090e17f5126cd8ba4ffbc564891f5c74b5271df61eabff409d28ca304e7969dbe6577', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:35:51', '2020-05-09 07:35:51', '2021-05-09 14:35:51'),
('8681ceae1ef07ed14cd88af5d73c98119da4256d0c5de631ae4c8d228d7fdfbac4d9f3395e38ca2a', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:09:30', '2020-05-09 08:09:30', '2021-05-09 15:09:30'),
('876a7bce2e94c84917eae7f4a8e33cdb0b44119eb5c308ced8df2d894ab8f7c0f4bcedf33ddafd18', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:54:33', '2020-05-10 07:54:33', '2021-05-10 14:54:33'),
('883fc907c02fbd8b8898bb20e239aa7c50e605f25bb50be0aebdf815113cd0354c835b582fce7dc7', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:46:34', '2020-05-09 07:46:34', '2021-05-09 14:46:34'),
('88bbde1fb117963f59e1f0139fddea293e857bb55b8168cb7a72c417bd191e2d8103c48d117e782d', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 09:02:27', '2020-05-09 09:02:27', '2021-05-09 16:02:27'),
('8b8fc7c47ef863ebcba4994cd15fd209db762113ff1f01bba34edd902b499daf1ddb0b67804629c3', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:46:50', '2020-05-10 07:46:50', '2021-05-10 14:46:50'),
('8bf77f58baea4f2c67030068cba0d5d18f49ad118edd5039729351808b49a7975c0c01c6ea93e937', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:05:00', '2020-05-10 08:05:00', '2021-05-10 15:05:00'),
('8d4ffa49628ada895f807b8b3f88e78e4697aa5928d8b30c096760e7ac293deb4c6bfdf8fe1e5633', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:48:42', '2020-05-10 07:48:42', '2021-05-10 14:48:42'),
('8f563bcb78b2b7e37957195e8a9eef3f4d15bf616415dfd143bb7bd9b113bed9ef11c0c90ef311e4', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:49:35', '2020-05-10 07:49:35', '2021-05-10 14:49:35'),
('90acde9f58b6ceed3b9565d307be87ca71a3d4845fd9b8bf4abd2bfe0af266d8aadda36b30b35f34', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:53:55', '2020-05-10 07:53:55', '2021-05-10 14:53:55'),
('94c4b07be5d264531f086b3d3f7fbfcd0e66e194e150d0607ce26779a4e65a95b2cdd9bc5fa0bcaa', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:13:57', '2020-05-10 08:13:57', '2021-05-10 15:13:57'),
('95dbfd11f9a3f9120f610891f83f037523d2a9ed7d2a48ba37fb9709c494037de6d446d751cb2a1a', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:53:05', '2020-05-10 07:53:05', '2021-05-10 14:53:05'),
('97ac1a67012447b0b6b24a0af34c00134052f1ffc62f7adb6e1455ddf290733b75089fa2c5d4a378', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:08:34', '2020-05-10 08:08:34', '2021-05-10 15:08:34'),
('9bfee725cf62937e29bda717dd877f22d399cbbd7789fe5bc2cb3583421d358c8bd27b4bd28ccc26', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:15:23', '2020-05-10 08:15:23', '2021-05-10 15:15:23'),
('a43874ebf3453a05a7534f75a9d4bfc5ef8bfed9894cf9e1049d0521984ca80b51be0f8ebf4f55b5', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-28 08:20:55', '2020-05-28 08:20:55', '2021-05-28 15:20:55'),
('a83cd2b6037b62a0da70b8c956dfc2e8e71561276b26f0fb834d7a6929a00363e8ab3b6016aef3cd', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 09:01:26', '2020-05-09 09:01:26', '2021-05-09 16:01:26'),
('a84de38206201ddea7ff9e12e7ece6e8f584da5057e0282b9d395806af70698e1375c528014de87a', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:49:56', '2020-05-09 07:49:56', '2021-05-09 14:49:56'),
('a91eb2f80e7b40a7228161d353e441e5ebe2c75333575f4cff1475d6360ba8002d9b6d2d38efa7c2', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:24:08', '2020-05-09 08:24:08', '2021-05-09 15:24:08'),
('adff2d1c1166e1a33d17e9d38eabfeb86a4980c4f121aef6eae0a6da945e87ad630811ce7c6b3ba5', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:01:46', '2020-05-10 08:01:46', '2021-05-10 15:01:46'),
('b17f099922f3fa6559bd461cc1e4fcdf62f4da411556578e8b42ffd51db185856fb72c235e162e69', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:13:52', '2020-05-10 08:13:52', '2021-05-10 15:13:52'),
('b21f801c7c435dc4acc9c71260a512ecd4656a56850e106d111e05c310c806fc2e2a4758dd1a8f03', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:46:21', '2020-05-10 07:46:21', '2021-05-10 14:46:21'),
('b895e625130572368c06541c18d95e76c3db90865d7784fec1e565e797a0a3f432a4c5978375274f', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:54:13', '2020-05-10 07:54:13', '2021-05-10 14:54:13'),
('b9c0264093a336c55460dc4e2131ebaca2c3c89b17e887462ffc177433924875e8e5622e79b346b2', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-28 08:12:48', '2020-05-28 08:12:48', '2021-05-28 15:12:48'),
('c4c6e6df7560f46429650a293e4fd53102ae07746436da6a11f7b39d6dfa98ed3d1757e3c150e4b0', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:38:27', '2020-05-09 08:38:27', '2021-05-09 15:38:27'),
('c681f9e8629dbdd52162847cef6484372f2a409efbb8be70c8d86075fd5dc036cabe279a4b24cc36', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:10:34', '2020-05-09 08:10:34', '2021-05-09 15:10:34'),
('c86e90946a6f93382f0d48d4960b34e2a2a1e3f3b23a30f02e1131613859ec3a9ce30130f7a96840', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:59:25', '2020-05-10 07:59:25', '2021-05-10 14:59:25'),
('c93b195a89bbe5896091923dc5ee9904120d73115db630b629368c15bc693936d77ac13c669a4a84', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:59:19', '2020-05-10 07:59:19', '2021-05-10 14:59:19'),
('ca4d18be74e5c16d86bb309e82274223305353344ad3505381fb5681296910e64fa1f3bfc53acede', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 08:35:42', '2020-05-09 08:35:42', '2021-05-09 15:35:42'),
('cc7349732a07fbd0047052c0d6775db7abc123fd8eb82b3ba737c7b77f04e55c676d73ccf201a38d', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:12:32', '2020-05-09 07:12:32', '2021-05-09 14:12:32'),
('d57f2bf85cf876f67b9b6e90030239b439e12a28e2c35b9e3b9dd898d3451f5b1673353c9a185d47', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-28 08:07:25', '2020-05-28 08:07:25', '2021-05-28 15:07:25'),
('d9311a139b2ec6aa2a785ae4773a7a125c9e2e83ba0437b7f64e830a78cff5386d2794e712ecd6e2', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-28 08:33:55', '2020-05-28 08:33:55', '2021-05-28 15:33:55'),
('e0708b997e080659dd77d0ee02ca1562d4c0a514f2bd4db678a3189cf6fd1492ab4c82606b5a7a16', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 09:03:39', '2020-05-09 09:03:39', '2021-05-09 16:03:39'),
('e29cbbfbf96e59154524bbfa84b59cbcc33644449aecb9ce32a2c7eaf39eacc261149de24b46de1b', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-28 08:12:00', '2020-05-28 08:12:00', '2021-05-28 15:12:00'),
('e356a212aa15792342d28a74fcb0b60a65724064cabf4e7bcfde59d0977e7f7d8c177cc5cd47d314', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:57:27', '2020-05-10 07:57:27', '2021-05-10 14:57:27'),
('e36531e55c76e5ed2c9bc224e8c1704f5d18e6ed3b7587991365d045070286e592eaf680d7fe3328', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:50:38', '2020-05-09 07:50:38', '2021-05-09 14:50:38'),
('e778a65bab5e1dc10f197f087777a97d7ee8f6c04d0bf94e88039cbecf8b1dac3b2979e7a3940330', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:15:10', '2020-05-10 08:15:10', '2021-05-10 15:15:10'),
('e8295d00c3f4856f057c32006c82d172a4e27d8cd3e9eae4c8b98e33a22088982eca84c409221424', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:33:24', '2020-05-09 07:33:24', '2021-05-09 14:33:24'),
('ea7fc4d1d6e5b6e5a3dcd7234f51551e9afb1fa11cbb9a096d5274f2b6880cee067412f7745d1ce1', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:01:29', '2020-05-10 08:01:29', '2021-05-10 15:01:29'),
('ed0b7a27701d88227d45d80492416a4a55b224f4986c44581a3893b16abdce9294e920780b8efb1b', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:43:52', '2020-05-09 07:43:52', '2021-05-09 14:43:52'),
('ed24f51cda487e8bfed34bbc2b50e288d9429553544fa6c76e9e1b45b0f83cdecc208b5ab2436a87', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-09 09:01:34', '2020-05-09 09:01:34', '2021-05-09 16:01:34'),
('eee342c3cc92020d8bed3ab249c28da72a06b15ed99a70d6a7423ac6f9aa46473685c812e214ebe1', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:00:13', '2020-05-10 08:00:13', '2021-05-10 15:00:13'),
('f085b2aa318599541f704dcf61bc5cd3c62b580ee585b0a9a47c82a291edbcd3fc72a13811dd50e3', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:13:43', '2020-05-10 08:13:43', '2021-05-10 15:13:43'),
('f19964948e9046b758f582b580f03a7ce80b04fb8c5f0f553b84ee04b5c576a8d55df6f82079e2a8', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:59:34', '2020-05-10 07:59:34', '2021-05-10 14:59:34'),
('f71fc262e198ae22f3036434f7dedd96af410bcb6301f9744db60dbdce990f5a0045bdfcb78db3a4', 1, 1, 'Personal Access Token', '[]', 0, '2020-05-09 07:02:46', '2020-05-09 07:02:46', '2021-05-09 14:02:46'),
('f96e2b969f0bc81320144791f447b7a94d57656bca360d0b4c4f9e63b3caddf6ab927c39c361f3e1', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 08:08:53', '2020-05-10 08:08:53', '2021-05-10 15:08:53'),
('fc6d0123a2f4f2b4e18dfdb5b02f87e01ec86c3d1483e7d995e8f66bd70fe3187aae0d80324080d3', 3, 1, 'Personal Access Token', '[]', 0, '2020-05-10 07:39:08', '2020-05-10 07:39:08', '2021-05-10 14:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'n7q0bi98Gyi7uDgOGuHNfvuFFCv2fdFU6roi0M20', NULL, 'http://localhost', 1, 0, 0, '2020-05-09 01:33:05', '2020-05-09 01:33:05'),
(2, NULL, 'Laravel Password Grant Client', 'WW1uyoV4ljU40TBj8prPZT5nxe1FDmlFCGd9g9m5', 'users', 'http://localhost', 0, 1, 0, '2020-05-09 01:33:05', '2020-05-09 01:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-09 01:33:05', '2020-05-09 01:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Toàn Nguyễn', 'admin', 'huutoan.fithou@gmail.com', NULL, '$2y$10$e0Z33k4gxmxW/7kqjOMlzeCcS468rkobfHQS1JW76Z2FvoQFXmE5y', NULL, '2020-05-06 07:36:08', '2020-05-06 07:36:08'),
(3, 'Nguyễn Hữu Toàn', 'toannh', 'huutoan.fithou@hou.edu.com', NULL, '$2y$10$JK.GuwqEBMr23Ia30lD.FuGF5/T731cXca1p9ThjxlQkqpN2hqwgS', NULL, '2020-05-06 09:00:49', '2020-05-06 09:00:49'),
(4, 'Toàn', 'toannh002', 'huutoan.fithoffffff@gmail.com', NULL, '$2y$10$QJtKa3AduJy7L9SlbTRpZenSrR/6epWMcfFXRtDiVVtiLd5gqHehW', NULL, '2020-05-09 02:22:35', '2020-05-09 02:22:35'),
(5, 'nguyen huu toan', 'toannh003', 'huutoan.fithou04@gmail.com', NULL, '$2y$10$O42Q0t5iZI99JbWUYFPMU.wCOQzBVx4QAX9t/0cY3pt/8Z6qsezYK', NULL, '2020-05-09 09:02:10', '2020-05-28 08:29:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
