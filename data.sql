/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : laravel

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 14/06/2022 05:23:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (1, 'App\\Models\\User', 1, 'LaravelSanctumAuth', '777e46bf0fbc07ff89691408fe0842bc288245a44d9ff0560d53faa6a430e034', '[\"*\"]', NULL, '2022-06-14 01:33:57', '2022-06-14 01:33:57');
INSERT INTO `personal_access_tokens` VALUES (2, 'App\\Models\\User', 1, 'User login token', '96eef1ab285bcb8775aa09cf4146a8cbc21ab7dd9f272a2c0751e15791502574', '[\"*\"]', NULL, '2022-06-14 01:39:59', '2022-06-14 01:39:59');
INSERT INTO `personal_access_tokens` VALUES (3, 'App\\Models\\User', 1, 'User login token', '617927ef3ca8254f67ad8dcc58e81e75ec79e95a0212d50301a6e5f7be4ae8e0', '[\"*\"]', NULL, '2022-06-14 01:40:00', '2022-06-14 01:40:00');
INSERT INTO `personal_access_tokens` VALUES (4, 'App\\Models\\User', 1, 'User login token', '1f1ff251cb28a4425efd4934b9e8e5509b75d55ffe7f0ce2af5050e6b2364ffd', '[\"*\"]', NULL, '2022-06-14 01:40:02', '2022-06-14 01:40:02');
INSERT INTO `personal_access_tokens` VALUES (5, 'App\\Models\\User', 1, 'User login token', '23384c0ee1b7d22832d35b7fc51f4a8055bdf3fcbeccaffd8d498e3ffa31eea7', '[\"*\"]', NULL, '2022-06-14 01:40:03', '2022-06-14 01:40:03');
INSERT INTO `personal_access_tokens` VALUES (6, 'App\\Models\\User', 1, 'User login token', '886c269c77942faa40e085245e9f835d4b767b2627a52e9fe4bb0b63b064ef26', '[\"*\"]', NULL, '2022-06-14 01:40:05', '2022-06-14 01:40:05');
INSERT INTO `personal_access_tokens` VALUES (7, 'App\\Models\\User', 1, 'User login token', 'eb083c7bb73e4d4bffe4f3a190748489536726d85153d78ddc5c08055e323a92', '[\"*\"]', NULL, '2022-06-14 01:40:06', '2022-06-14 01:40:06');
INSERT INTO `personal_access_tokens` VALUES (8, 'App\\Models\\User', 1, 'User login token', 'd22834d124820ee4eb86b9ae40d8cc05ce65b940091b5dde05101db2d8104391', '[\"*\"]', NULL, '2022-06-14 01:40:07', '2022-06-14 01:40:07');
INSERT INTO `personal_access_tokens` VALUES (9, 'App\\Models\\User', 1, 'User login token', '281a5a72296fdce1ec16e0b49cd148cf95e408d53e6f10fec834042fa7c78405', '[\"*\"]', NULL, '2022-06-14 01:40:09', '2022-06-14 01:40:09');
INSERT INTO `personal_access_tokens` VALUES (10, 'App\\Models\\User', 1, 'User login token', 'f3f1901f9b309ce09862f4a789d741c98f0223e4760b6c7a6b51b36b100521fe', '[\"*\"]', NULL, '2022-06-14 01:40:10', '2022-06-14 01:40:10');
INSERT INTO `personal_access_tokens` VALUES (11, 'App\\Models\\User', 1, 'User login token', '78607f3a3e2444eb83d0a8fca485e86e413d197ec5d25d7e04345a91a857b850', '[\"*\"]', NULL, '2022-06-14 01:40:12', '2022-06-14 01:40:12');
INSERT INTO `personal_access_tokens` VALUES (12, 'App\\Models\\User', 1, 'User login token', '4ce8c0ef5b27195b67e0aca251ede14d2d6c72340fdaa01813bfb787a9bf76dc', '[\"*\"]', NULL, '2022-06-14 01:40:13', '2022-06-14 01:40:13');
INSERT INTO `personal_access_tokens` VALUES (13, 'App\\Models\\User', 1, 'User login token', '5e71f2d511be642f67234d2cb69bef6fd98af96a451b46165ad2fac36758ef35', '[\"*\"]', NULL, '2022-06-14 01:40:15', '2022-06-14 01:40:15');
INSERT INTO `personal_access_tokens` VALUES (14, 'App\\Models\\User', 1, 'User login token', 'd2df1e4b1e4b121e1c315f71ec6a4790c2117d7e0f19b1e3aa4d1d86207f0165', '[\"*\"]', NULL, '2022-06-14 01:40:16', '2022-06-14 01:40:16');
INSERT INTO `personal_access_tokens` VALUES (15, 'App\\Models\\User', 1, 'User login token', '2b711e8765478b6bff478646774074a466085a7d73f630e0ecfdfd88da42c997', '[\"*\"]', NULL, '2022-06-14 01:40:17', '2022-06-14 01:40:17');
INSERT INTO `personal_access_tokens` VALUES (16, 'App\\Models\\User', 1, 'User login token', '9bc205da144e82a316a4a58c8289748a9e8392d1681ec9089c48a720ffec385e', '[\"*\"]', NULL, '2022-06-14 01:40:19', '2022-06-14 01:40:19');
INSERT INTO `personal_access_tokens` VALUES (17, 'App\\Models\\User', 1, 'User login token', 'f96d9d5b9b3ee0fb5aacb5afc62ab7272f1108c4a6175141ddec178612a66ee2', '[\"*\"]', NULL, '2022-06-14 01:40:43', '2022-06-14 01:40:43');
INSERT INTO `personal_access_tokens` VALUES (18, 'App\\Models\\User', 1, 'User login token', 'e33b3c5ddf6d5b42e48145aa4faafb220cc235bd3d93a1cc34cc1550e5b7373c', '[\"*\"]', NULL, '2022-06-14 01:40:53', '2022-06-14 01:40:53');
INSERT INTO `personal_access_tokens` VALUES (19, 'App\\Models\\User', 1, 'User login token', '14892e422c721316ef6550920c28bbb8e4a74b46616ef73fa72bc6b4ff2e3dc6', '[\"*\"]', NULL, '2022-06-14 01:41:06', '2022-06-14 01:41:06');
INSERT INTO `personal_access_tokens` VALUES (20, 'App\\Models\\User', 1, 'User login token', '83011c7495d31df082e78686f04670b0827a4970fcad3ca3616c369ba614ae63', '[\"*\"]', NULL, '2022-06-14 01:41:22', '2022-06-14 01:41:22');
INSERT INTO `personal_access_tokens` VALUES (21, 'App\\Models\\User', 1, 'User login token', '8de57b45ac8dc0a50da74039577fbe5a523fed5d0162575f45a7a4f3f6b92592', '[\"*\"]', NULL, '2022-06-14 01:42:12', '2022-06-14 01:42:12');
INSERT INTO `personal_access_tokens` VALUES (22, 'App\\Models\\User', 1, 'User login token', 'cb8be57243450162e26894d3e3e66d46438b4ceb65ef76f1db9575dc97dbe734', '[\"*\"]', NULL, '2022-06-14 01:45:57', '2022-06-14 01:45:57');
INSERT INTO `personal_access_tokens` VALUES (23, 'App\\Models\\User', 1, 'User login token', '350acbcf08cbc3b0ed5dcddcb10e986584fdb5c6958791dc372f10279b6af9f8', '[\"*\"]', NULL, '2022-06-14 01:46:46', '2022-06-14 01:46:46');
INSERT INTO `personal_access_tokens` VALUES (24, 'App\\Models\\User', 1, 'User login token', 'aa88d13c25ee5bc52452801bfc5601bd9e3d68bf054f448e5cc3ee6261883c15', '[\"*\"]', NULL, '2022-06-14 01:46:59', '2022-06-14 01:46:59');
INSERT INTO `personal_access_tokens` VALUES (25, 'App\\Models\\User', 1, 'User login token', '2e281076fc888e92e366ab3da2b38e615f15e0aae094abad452d04165407afef', '[\"*\"]', NULL, '2022-06-14 01:47:27', '2022-06-14 01:47:27');
INSERT INTO `personal_access_tokens` VALUES (26, 'App\\Models\\User', 1, 'User login token', '7483b418a4372c77694d6c4e743316666664c0ae0c28c2466c38f311e4bcac6f', '[\"*\"]', NULL, '2022-06-14 01:47:28', '2022-06-14 01:47:28');
INSERT INTO `personal_access_tokens` VALUES (27, 'App\\Models\\User', 1, 'User login token', '4831dbae47c21299d53d9cc4ca0e15573d6c377ed55cb061cbb0caa658649595', '[\"*\"]', NULL, '2022-06-14 01:47:29', '2022-06-14 01:47:29');
INSERT INTO `personal_access_tokens` VALUES (28, 'App\\Models\\User', 1, 'User login token', '51c9cc1045eb308ff852c8b92b48d5ec75533fdba0e44dffd6ed3ccfe06d92bc', '[\"*\"]', NULL, '2022-06-14 01:47:30', '2022-06-14 01:47:30');
INSERT INTO `personal_access_tokens` VALUES (29, 'App\\Models\\User', 1, 'User login token', '90080dde14e775f86cd4fe90fa3b8a576c9fcd6f1397b0630a2bb79d50211e79', '[\"*\"]', NULL, '2022-06-14 01:47:31', '2022-06-14 01:47:31');
INSERT INTO `personal_access_tokens` VALUES (30, 'App\\Models\\User', 1, 'User login token', 'b5f081707d25cb1936c95276709f9bd4d6434ebb8bb47dfb7f7e5a47c9129912', '[\"*\"]', NULL, '2022-06-14 01:54:10', '2022-06-14 01:54:10');
INSERT INTO `personal_access_tokens` VALUES (31, 'App\\Models\\User', 1, 'User login token', '24424fd22ac3d13f69766620e0fb24eec9fe4e3a155459f1102957d0d11eead0', '[\"*\"]', NULL, '2022-06-14 01:56:03', '2022-06-14 01:56:03');
INSERT INTO `personal_access_tokens` VALUES (32, 'App\\Models\\User', 2, 'User login token', '8578c454b579ca6f57ebc5ebd33a51d882b4c96784740ab3857aea084d776b14', '[\"*\"]', NULL, '2022-06-14 01:56:48', '2022-06-14 01:56:48');
INSERT INTO `personal_access_tokens` VALUES (33, 'App\\Models\\User', 1, 'User login token', '6b94ab66ac5b2556abfef6c1d6c3d6f592fd542e25817394f9bd4bfb748fae08', '[\"*\"]', NULL, '2022-06-14 02:28:46', '2022-06-14 02:28:46');
INSERT INTO `personal_access_tokens` VALUES (34, 'App\\Models\\User', 1, 'User login token', '7d98340bc90f8181f4bb86e8ba8f8b2d36014ea491cdfd9ec2a893bc483368c7', '[\"*\"]', NULL, '2022-06-14 02:37:25', '2022-06-14 02:37:25');
INSERT INTO `personal_access_tokens` VALUES (35, 'App\\Models\\User', 1, 'User login token', 'd05ef4028cc3a209f53c3738725320fc0f59ab6b4a23e9345d29a11041fbaa8b', '[\"*\"]', NULL, '2022-06-14 02:37:53', '2022-06-14 02:37:53');
INSERT INTO `personal_access_tokens` VALUES (36, 'App\\Models\\User', 1, 'User login token', '083b238b05961812bdb28f4c2fe28a11b01cfe8b7e35f739046ee69e461a5e8a', '[\"*\"]', NULL, '2022-06-14 02:38:01', '2022-06-14 02:38:01');
INSERT INTO `personal_access_tokens` VALUES (37, 'App\\Models\\User', 1, 'User login token', '5ab6470e4c06afdc9ffd95fc63c7afbddcfdab1e389a0d2c2500cf52407eb8db', '[\"*\"]', NULL, '2022-06-14 02:38:02', '2022-06-14 02:38:02');
INSERT INTO `personal_access_tokens` VALUES (38, 'App\\Models\\User', 1, 'User login token', '5196ed2f3a04ae1cdce6a1a17155407874c136960cc360b79d51230e52a7d1f2', '[\"*\"]', NULL, '2022-06-14 02:38:04', '2022-06-14 02:38:04');
INSERT INTO `personal_access_tokens` VALUES (39, 'App\\Models\\User', 1, 'User login token', '06404da968167ef4a9bd24e5d1f37463c89775976cb0a87a7f694065994013c3', '[\"*\"]', NULL, '2022-06-14 02:38:22', '2022-06-14 02:38:22');
INSERT INTO `personal_access_tokens` VALUES (40, 'App\\Models\\User', 1, 'User login token', 'fa0d1da59c6614805ffaf9962f30141a6823792acf3dd1da929004513e3b2f4f', '[\"*\"]', NULL, '2022-06-14 02:38:25', '2022-06-14 02:38:25');
INSERT INTO `personal_access_tokens` VALUES (41, 'App\\Models\\User', 1, 'User login token', '75806ee1aa9d32a6d16712c2d95fdca023cfe6b21f6f7bdfb8ab57c254b8d513', '[\"*\"]', NULL, '2022-06-14 02:38:28', '2022-06-14 02:38:28');
INSERT INTO `personal_access_tokens` VALUES (42, 'App\\Models\\User', 1, 'User login token', '381aa7841eb167c30605f7e860fda66370de5bc87be9fa63fdc39adb49326c79', '[\"*\"]', NULL, '2022-06-14 02:38:30', '2022-06-14 02:38:30');
INSERT INTO `personal_access_tokens` VALUES (43, 'App\\Models\\User', 1, 'User login token', 'a422a44eb980b411dda9a2c28156824afaf0d77a1d4d36444486f764a57db0fd', '[\"*\"]', NULL, '2022-06-14 02:38:32', '2022-06-14 02:38:32');
INSERT INTO `personal_access_tokens` VALUES (44, 'App\\Models\\User', 1, 'User login token', '437ac3393143e76740e41974115c3d064fe9ffb4c2a880dce23be12bcb6c571b', '[\"*\"]', NULL, '2022-06-14 02:38:46', '2022-06-14 02:38:46');
INSERT INTO `personal_access_tokens` VALUES (45, 'App\\Models\\User', 1, 'User login token', 'c4663e25f12901ce1d75ce8df39febe126f6227c63b4ff95e45695b3923ae502', '[\"*\"]', NULL, '2022-06-14 02:38:47', '2022-06-14 02:38:47');
INSERT INTO `personal_access_tokens` VALUES (46, 'App\\Models\\User', 1, 'User login token', 'ea733bbc128a5172d2ef421232105eb3d1d13943239f99dfaad078ec758dea2e', '[\"*\"]', NULL, '2022-06-14 02:39:25', '2022-06-14 02:39:25');
INSERT INTO `personal_access_tokens` VALUES (47, 'App\\Models\\User', 1, 'User login token', '7dea34ccdc5049e395b7ef24db1a72f4a57dee08259fcd90d73ee37eadda5a62', '[\"*\"]', NULL, '2022-06-14 02:39:28', '2022-06-14 02:39:28');
INSERT INTO `personal_access_tokens` VALUES (48, 'App\\Models\\User', 1, 'User login token', 'ecb0f2b25f6d5ae4b789f31d5ec6173eefd4bf1e16a43030fa25a68adb7be9cc', '[\"*\"]', NULL, '2022-06-14 02:39:30', '2022-06-14 02:39:30');
INSERT INTO `personal_access_tokens` VALUES (49, 'App\\Models\\User', 1, 'User login token', '9c49b5cee2256c310b54092494612cc7ab80b8e20e7bd72dad05ebb92b1ad0b8', '[\"*\"]', NULL, '2022-06-14 02:39:32', '2022-06-14 02:39:32');
INSERT INTO `personal_access_tokens` VALUES (50, 'App\\Models\\User', 1, 'User login token', 'ff2a972e4df0f8a238cad28def8d90c1725ff5db18f974ff20e21835bb8d2446', '[\"*\"]', NULL, '2022-06-14 02:39:34', '2022-06-14 02:39:34');
INSERT INTO `personal_access_tokens` VALUES (51, 'App\\Models\\User', 1, 'User login token', 'c19f84601a9174cb55e7f77b5f79b4659ef3ac38f4f1356cec4d4884522c2708', '[\"*\"]', NULL, '2022-06-14 02:39:48', '2022-06-14 02:39:48');
INSERT INTO `personal_access_tokens` VALUES (52, 'App\\Models\\User', 1, 'User login token', '8c062c7dc9e7306143ed5e028477b9d43ccd27800b8388bd8ea243297615acdf', '[\"*\"]', NULL, '2022-06-14 02:40:42', '2022-06-14 02:40:42');
INSERT INTO `personal_access_tokens` VALUES (53, 'App\\Models\\User', 1, 'User login token', 'f24442f39c71689774037dd64c9f8f75339ff0fac7594a77cc3380b7d9c47493', '[\"*\"]', NULL, '2022-06-14 02:41:35', '2022-06-14 02:41:35');
INSERT INTO `personal_access_tokens` VALUES (54, 'App\\Models\\User', 1, 'User login token', '2472f5c02d7b77429881ad2c10b5d8b537184865652216819a6d00ad18e4a65a', '[\"*\"]', NULL, '2022-06-14 02:41:59', '2022-06-14 02:41:59');
INSERT INTO `personal_access_tokens` VALUES (55, 'App\\Models\\User', 1, 'User login token', '7799c7d449e039d73c8323c5c21c8e33d0074f73a3ffa1b80732e07faf816532', '[\"*\"]', NULL, '2022-06-14 02:47:04', '2022-06-14 02:47:04');
INSERT INTO `personal_access_tokens` VALUES (56, 'App\\Models\\User', 1, 'User login token', '084e86a9417a0d7f5fa5ccec15f2483a5077bca96342127e9f6a40d44a764000', '[\"*\"]', NULL, '2022-06-14 02:48:25', '2022-06-14 02:48:25');
INSERT INTO `personal_access_tokens` VALUES (57, 'App\\Models\\User', 1, 'User login token', 'd7a0ff4138c5fa264620d1958b1cb41bb97415cf7146bd07f8552d4d93bc2862', '[\"*\"]', NULL, '2022-06-14 02:49:10', '2022-06-14 02:49:10');
INSERT INTO `personal_access_tokens` VALUES (58, 'App\\Models\\User', 1, 'User login token', '3f2772d5302129b600ed86a97ae9b3d9fa4cbd09512b771c9c855aff4569f4f7', '[\"*\"]', NULL, '2022-06-14 02:49:19', '2022-06-14 02:49:19');
INSERT INTO `personal_access_tokens` VALUES (59, 'App\\Models\\User', 1, 'User login token', '9e899a910ce2515805b51cdca214af8697d2d77b80aa439306d5bfae3679f0a5', '[\"*\"]', NULL, '2022-06-14 02:52:47', '2022-06-14 02:52:47');
INSERT INTO `personal_access_tokens` VALUES (60, 'App\\Models\\User', 1, 'User login token', '7ab39fdb8f03d1c557f31d3a9e49852a9db8873a1cb1102bc394a105186d2222', '[\"*\"]', NULL, '2022-06-14 02:53:04', '2022-06-14 02:53:04');
INSERT INTO `personal_access_tokens` VALUES (61, 'App\\Models\\User', 1, 'User login token', '47453a4a94cf3421fc1f3c64f36f0ffeb142fb23c07fb84b3ec6f330e693435c', '[\"*\"]', NULL, '2022-06-14 02:53:12', '2022-06-14 02:53:12');
INSERT INTO `personal_access_tokens` VALUES (62, 'App\\Models\\User', 1, 'User login token', '29833681270756ab3f74b0757efcdfbea0ec467d8a1241b5b5ac40b86b036c16', '[\"*\"]', NULL, '2022-06-14 02:53:37', '2022-06-14 02:53:37');
INSERT INTO `personal_access_tokens` VALUES (63, 'App\\Models\\User', 1, 'User login token', '329e1231f97d5067ca7f9c108e3ad89421e6e1176ffbf81db8b09ed6a4756f4b', '[\"*\"]', NULL, '2022-06-14 02:54:18', '2022-06-14 02:54:18');
INSERT INTO `personal_access_tokens` VALUES (64, 'App\\Models\\User', 1, 'User login token', 'a63b3adc1c0501660dd61fffb17b200ff9b939b769f3c1f62b2c40e620837c27', '[\"*\"]', NULL, '2022-06-14 02:54:22', '2022-06-14 02:54:22');
INSERT INTO `personal_access_tokens` VALUES (65, 'App\\Models\\User', 1, 'User login token', '106184eef6e9c9382590b741b1b71763a0e6491393f0e445d0b03db6a3421936', '[\"*\"]', NULL, '2022-06-14 02:55:43', '2022-06-14 02:55:43');
INSERT INTO `personal_access_tokens` VALUES (66, 'App\\Models\\User', 1, 'User login token', '30512b7c8d23e024fa318929b7d87195d543b0d221c211da985c8828c447bc4f', '[\"*\"]', NULL, '2022-06-14 02:56:59', '2022-06-14 02:56:59');
INSERT INTO `personal_access_tokens` VALUES (67, 'App\\Models\\User', 1, 'User login token', 'f3274bf18c889842dc21807536cce130d5a4ae727997a8a32575abb463ca6a13', '[\"*\"]', NULL, '2022-06-14 02:57:16', '2022-06-14 02:57:16');
INSERT INTO `personal_access_tokens` VALUES (68, 'App\\Models\\User', 1, 'User login token', '0b971e06b457a4c8342ea63a0b053096edbb73bd92b1128a53535d2ff210af36', '[\"*\"]', NULL, '2022-06-14 02:57:37', '2022-06-14 02:57:37');
INSERT INTO `personal_access_tokens` VALUES (69, 'App\\Models\\User', 1, 'User login token', '54476448a3a03043d9521dcbdeda76e310de19e695ac03cb374d6789a36ef035', '[\"*\"]', NULL, '2022-06-14 02:58:54', '2022-06-14 02:58:54');
INSERT INTO `personal_access_tokens` VALUES (70, 'App\\Models\\User', 1, 'User login token', 'bb80de4219c2f6ba37b3a98dc9cf76700e60f5d618bf252fda9ef6a2cac943dc', '[\"*\"]', NULL, '2022-06-14 02:59:18', '2022-06-14 02:59:18');
INSERT INTO `personal_access_tokens` VALUES (71, 'App\\Models\\User', 1, 'User login token', '38b1cb25b82c06d0584b72fc87e798aaf2434747248db2fa1c2846ed6ff48cb5', '[\"*\"]', NULL, '2022-06-14 03:07:06', '2022-06-14 03:07:06');
INSERT INTO `personal_access_tokens` VALUES (72, 'App\\Models\\User', 1, 'User login token', '55fab0987efd5344f17c5a5c8e830e09278d89ebd476db2f4843c0198a64e120', '[\"*\"]', NULL, '2022-06-14 03:07:08', '2022-06-14 03:07:08');
INSERT INTO `personal_access_tokens` VALUES (73, 'App\\Models\\User', 1, 'User login token', '0f2d1320c1c09c6d373a898a7cb53a87b06166b34aa74d327c8998210f0a5b3f', '[\"*\"]', NULL, '2022-06-14 03:07:09', '2022-06-14 03:07:09');
INSERT INTO `personal_access_tokens` VALUES (74, 'App\\Models\\User', 1, 'User login token', '062e2ea22c3c6599478b797e26192d6a88c0b36661ff32f38fc4e47a86f4fa1c', '[\"*\"]', NULL, '2022-06-14 03:07:10', '2022-06-14 03:07:10');
INSERT INTO `personal_access_tokens` VALUES (75, 'App\\Models\\User', 1, 'User login token', '190ec801103642d21abea239de2eb03b3462624e10af2c16abf02fd31ba66c46', '[\"*\"]', NULL, '2022-06-14 03:07:11', '2022-06-14 03:07:11');
INSERT INTO `personal_access_tokens` VALUES (76, 'App\\Models\\User', 1, 'User login token', 'f4f937766256b70980ebc9b52e81e8cd5336190aec7fcfd77740bf401f13fa86', '[\"*\"]', NULL, '2022-06-14 03:07:12', '2022-06-14 03:07:12');
INSERT INTO `personal_access_tokens` VALUES (77, 'App\\Models\\User', 1, 'User login token', 'a2de4a356b9f9a62a51467489d137a111d3a921604631415f09a76e2af4771bd', '[\"*\"]', NULL, '2022-06-14 03:07:14', '2022-06-14 03:07:14');
INSERT INTO `personal_access_tokens` VALUES (78, 'App\\Models\\User', 1, 'User login token', '37d71e290f1fbb995cf11195f8964e2bcbae526cdb9076bf346f806ba59a13cb', '[\"*\"]', NULL, '2022-06-14 03:07:15', '2022-06-14 03:07:15');
INSERT INTO `personal_access_tokens` VALUES (79, 'App\\Models\\User', 1, 'User login token', '215adad7e933f1f2f4837fb88db8a91249d26b39f8b1a3501a9f5f7402e9e1a6', '[\"*\"]', NULL, '2022-06-14 03:07:17', '2022-06-14 03:07:17');
INSERT INTO `personal_access_tokens` VALUES (80, 'App\\Models\\User', 1, 'User login token', '5476415ce0c265f6d6361214da918de11a0d14ac7a2c265a8ebaf8142fd37355', '[\"*\"]', NULL, '2022-06-14 03:07:18', '2022-06-14 03:07:18');
INSERT INTO `personal_access_tokens` VALUES (81, 'App\\Models\\User', 1, 'User login token', 'b5ce1a25e20ab5b04c6cd35556716106b6e1365858f8745b52705e60fe6d473f', '[\"*\"]', NULL, '2022-06-14 03:07:20', '2022-06-14 03:07:20');
INSERT INTO `personal_access_tokens` VALUES (82, 'App\\Models\\User', 1, 'User login token', '7a763f6b34ccc007ceec89ad804c5abe7b481b46cae662f30fff43d506657ddb', '[\"*\"]', NULL, '2022-06-14 03:07:21', '2022-06-14 03:07:21');
INSERT INTO `personal_access_tokens` VALUES (83, 'App\\Models\\User', 1, 'User login token', '66335cf6430252489c275da884f13a012cd6966913f19f2588e46c9dc2587fd4', '[\"*\"]', NULL, '2022-06-14 03:07:23', '2022-06-14 03:07:23');
INSERT INTO `personal_access_tokens` VALUES (84, 'App\\Models\\User', 1, 'User login token', '6de67b47ab847446666293a8c40b479bc800c46b1e2e475be37abb7c7be9cd18', '[\"*\"]', NULL, '2022-06-14 03:07:24', '2022-06-14 03:07:24');
INSERT INTO `personal_access_tokens` VALUES (85, 'App\\Models\\User', 1, 'User login token', '04336141aef6522cde8544c5497cc23e3bab60896fb2c5a4d25360e9d470a09a', '[\"*\"]', NULL, '2022-06-14 03:07:26', '2022-06-14 03:07:26');
INSERT INTO `personal_access_tokens` VALUES (86, 'App\\Models\\User', 1, 'User login token', 'f2b7584b4ad3e19540bc8d974ee75c737afd5d509d3a332fc45f48bab9aeeeac', '[\"*\"]', NULL, '2022-06-14 03:07:27', '2022-06-14 03:07:27');
INSERT INTO `personal_access_tokens` VALUES (87, 'App\\Models\\User', 1, 'User login token', '69c01198233455881fe2637cea02239f2e3d944cf962b6581d67f60f81cb8fd8', '[\"*\"]', NULL, '2022-06-14 03:07:29', '2022-06-14 03:07:29');
INSERT INTO `personal_access_tokens` VALUES (88, 'App\\Models\\User', 1, 'User login token', 'a9a6567d7d68c8353a1c41c81605b8634ab704d04699cd980bc584ef2f10cf2b', '[\"*\"]', NULL, '2022-06-14 03:08:28', '2022-06-14 03:08:28');
INSERT INTO `personal_access_tokens` VALUES (89, 'App\\Models\\User', 1, 'User login token', 'da790a122cd178b75111d240dc0a9b5d58ffd3064d138bace7a7ab02e28b3150', '[\"*\"]', NULL, '2022-06-14 03:08:29', '2022-06-14 03:08:29');
INSERT INTO `personal_access_tokens` VALUES (90, 'App\\Models\\User', 1, 'User login token', '00fef5dbb28ed168640263d64688a43ab816a7b0e0e11e43205744dd112286ae', '[\"*\"]', NULL, '2022-06-14 03:09:05', '2022-06-14 03:09:05');
INSERT INTO `personal_access_tokens` VALUES (91, 'App\\Models\\User', 1, 'User login token', 'b52d66929caadc2a4a4799e15ff9b5d6558855391cc5e3eff28e70ba1b51ba49', '[\"*\"]', NULL, '2022-06-14 03:16:32', '2022-06-14 03:16:32');
INSERT INTO `personal_access_tokens` VALUES (92, 'App\\Models\\User', 1, 'User login token', 'f8317ae4c0bdabcec8761fb9018b34be7633b1bf55a69cce3bcead832b2c7007', '[\"*\"]', NULL, '2022-06-14 03:16:37', '2022-06-14 03:16:37');
INSERT INTO `personal_access_tokens` VALUES (93, 'App\\Models\\User', 1, 'User login token', '43d7c0431bed32bed8f4c08b1c12081c7aebea5a0e483f7d4bd7983306c3541a', '[\"*\"]', NULL, '2022-06-14 03:16:38', '2022-06-14 03:16:38');
INSERT INTO `personal_access_tokens` VALUES (94, 'App\\Models\\User', 1, 'User login token', '85d6b30b2695d8317d532581936f153d690243885a5eadbd8912e11c01e4e186', '[\"*\"]', NULL, '2022-06-14 03:16:39', '2022-06-14 03:16:39');
INSERT INTO `personal_access_tokens` VALUES (95, 'App\\Models\\User', 1, 'User login token', '55afde3908f8d9055e63e6494a5595654b8284d2a50a3961020a819c6c5674b1', '[\"*\"]', NULL, '2022-06-14 03:16:52', '2022-06-14 03:16:52');
INSERT INTO `personal_access_tokens` VALUES (96, 'App\\Models\\User', 1, 'User login token', '9622f5a8ced1279fb87dc53a45b12a8aacd545e5bebe48c894f546144dadbee8', '[\"*\"]', NULL, '2022-06-14 03:16:54', '2022-06-14 03:16:54');
INSERT INTO `personal_access_tokens` VALUES (97, 'App\\Models\\User', 1, 'User login token', '6a4c6367410dedd2f14c24f0ba60ab94992c4fa2d4d14499aba48acdc4341a0c', '[\"*\"]', NULL, '2022-06-14 03:16:56', '2022-06-14 03:16:56');
INSERT INTO `personal_access_tokens` VALUES (98, 'App\\Models\\User', 1, 'User login token', 'c23656ca58c63862a7a65de9bca79bde2d8c3ddf55f2992633eab56c0e0a34a8', '[\"*\"]', NULL, '2022-06-14 03:17:55', '2022-06-14 03:17:55');
INSERT INTO `personal_access_tokens` VALUES (99, 'App\\Models\\User', 1, 'User login token', '5082ba1f716a6f6aba9cb8738171916bc49899503aaeabc8478914d7bb6de90b', '[\"*\"]', NULL, '2022-06-14 03:20:43', '2022-06-14 03:20:43');
INSERT INTO `personal_access_tokens` VALUES (100, 'App\\Models\\User', 1, 'User login token', '20d41dfb6ef48ab4b40c527c8a24f96d4a5656081d7ab276fb280febc23685a3', '[\"*\"]', NULL, '2022-06-14 03:21:01', '2022-06-14 03:21:01');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double NULL DEFAULT NULL,
  `longitude` double NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'client',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `users_phone_unique`(`phone`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Lauretta McClure', 'shanie.gorczany@example.com', '566666666', 24.69023, 46.685, 'address', 'client', NULL, '$2y$10$7h9myI8DIW/CcjyEdMx29uN1ryH8jUEhN8JAqSbWdq9xqC4FKok5y', NULL, NULL, NULL);
INSERT INTO `users` VALUES (2, 'Kristian Beatty', 'brandyn50@example.org', '577777777', 24.69023, 46.685, 'address', 'driver', NULL, '$2y$10$zAVP5yy9VHH7D6krNXKOQObKRByRznoCi26EmYjSp8KK/wcQ/8HEK', NULL, NULL, NULL);
INSERT INTO `users` VALUES (3, 'Ms. Raquel Borer Sr.', 'hhudson@example.org', '588888888', 24.69022, 46.684, 'address', 'driver', NULL, '$2y$10$BSQjAwKrRDQ5v3cbe9FQYO8xtm56JSKwbb/sLRuLEM94FdXLJcHBK', NULL, NULL, NULL);
INSERT INTO `users` VALUES (4, 'Jordane Schroeder', 'alden.rutherford@example.com', '584444444', 24.69018, 46.68, 'address', 'driver', NULL, '$2y$10$KMJjj2h0mwVXlrCpBcBuYuLrrOlCOkM.i7WpVzaX7JNXLLO9eOwDO', NULL, NULL, NULL);
INSERT INTO `users` VALUES (5, 'Dr. Lemuel Jacobson', 'norval23@example.net', '599999999', 24.69021, 46.683, 'address', 'driver', NULL, '$2y$10$WGvZcgz5/IdXuiCrxv.s6eew2mOcB9aebY4PkZ3qtMzwjzvXkfV.m', NULL, NULL, NULL);
INSERT INTO `users` VALUES (6, 'Kiel Volkman', 'ynolan@example.net', '5111111110', 24.6902, 46.682, 'address', 'driver', NULL, '$2y$10$Zv0izeQCMRsUVnv9dJ8LYeFRYJmfpzb49egvK4RytW5Vp6IAzuEqO', NULL, NULL, NULL);
INSERT INTO `users` VALUES (7, 'Cortney Wolf', 'jast.lillian@example.org', '563333333', 24.69019, 46.681, 'address', 'driver', NULL, '$2y$10$9HY7in/5ZLL40/rI21/XXOtJjfrae7YXh1g7AIY/0YpoMshU6h.YG', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
