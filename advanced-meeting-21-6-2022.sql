-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2022 at 09:49 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advanced-meeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(45) NOT NULL COMMENT 'ฝ่าย'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`) VALUES
(1, 'กลยุทธ์องค์กร'),
(2, 'บัญชี'),
(3, 'การเงิน'),
(4, 'บริหาร และ เลขานุการ'),
(5, 'บุคคล และ จป.'),
(6, 'ก่อสร้าง'),
(7, 'จัดซื้อ และ สโตร์'),
(8, 'ขาย และ การตลาด'),
(9, 'ซ่อมบำรุง'),
(10, 'เหมืองแร่'),
(11, 'ขนส่ง'),
(12, 'วิจัยและพัฒนา');

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `equipment` varchar(100) NOT NULL COMMENT 'อุปกรณ์',
  `description` text NOT NULL COMMENT 'รายละเอียด',
  `photo` varchar(100) DEFAULT NULL COMMENT 'รูปภาพ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `equipment`, `description`, `photo`) VALUES
(1, 'โน๊ตบุ๊ค', 'โน๊ตบุ๊ค Acer', 'equipment-8b8f03718223c9970579776b1b6507f3.jpg'),
(2, 'ทีวี', 'TV 50 นิ้ว', 'equipment-a929d517f994add56c2a914fdff57acc.jpg'),
(3, 'ไมค์คอนเฟอเรนซ์', 'ไมค์', 'equipment-fd456406745d816a45cae554c788e754.jpg'),
(4, 'ไมค์ลอย', 'ไมค์ลอย', 'equipment-e5e633f8bd2b3ce37d24fe84a60c03bb.jpg'),
(5, 'โปรเจคเตอร์', 'โปรเจคเตอร์', 'equipment-d7bdf611b76c18d68c14f5dff9793191.jpg'),
(6, ' ฉากโปรเจคเตอร์', ' ฉากโปรเจคเตอร์', 'equipment-a883507e77efb2575dd1b4a213a5605d.jpg'),
(7, 'ระบบเสียงในห้องประชุม', 'ระบบเสียงในห้องประชุม', 'equipment-5e87f4f0a202b01c15a6b639ee4fa6c7.jpg'),
(8, 'เครื่องเสียงเคลื่อนที่', 'เครื่องเสียงเคลื่อนที่', 'equipment-d3a3555afd7dd903bc37116aa4ed3d9f.png'),
(9, 'น้ำดื่ม', 'น้ำดื่ม', 'equipment-ed2095673d4fb96cb65c78149643df0f.png'),
(10, 'อาหารว่าง / เบรค', 'อาหารว่าง / เบรค', 'equipment-33a30a00465dbbcdd537eb8025e03a48.jpg'),
(11, 'เครื่องเสียงเวที ชุดใหญ่', 'เครื่องเสียงเวที ชุดใหญ่', 'equipment-d86c39e5b8e51b0c8fb3a5923a3fbfb1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL COMMENT 'หัวข้อการประชุม',
  `description` text NOT NULL COMMENT 'รายละเอียด',
  `quantity` int(4) NOT NULL COMMENT 'ผู้เข้าร่วม',
  `date_start` datetime NOT NULL COMMENT 'เริ่ม',
  `date_end` datetime NOT NULL COMMENT 'สิ้นสุด',
  `created_at` datetime DEFAULT NULL COMMENT 'เพิ่มเมื่อ',
  `updated_at` datetime DEFAULT NULL COMMENT 'แก้ไขเมื่อ',
  `room_id` int(11) NOT NULL COMMENT 'ห้องประชุม',
  `user_id` int(11) NOT NULL COMMENT 'ผู้จอง',
  `status_id` int(11) NOT NULL DEFAULT '1' COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`id`, `title`, `description`, `quantity`, `date_start`, `date_end`, `created_at`, `updated_at`, `room_id`, `user_id`, `status_id`) VALUES
(31, 'อบรม IT', '10', 10, '2022-02-04 08:00:00', '2022-02-04 09:00:00', '2022-02-04 11:37:14', '2022-02-04 13:25:22', 1, 1, 2),
(32, 'อบรม Formula', '20', 20, '2022-02-05 08:00:00', '2022-02-05 10:00:00', '2022-02-04 11:39:00', '2022-02-04 11:39:00', 3, 1, 1),
(33, 'ประชุมเหมือง', '22', 22, '2022-02-08 08:00:00', '2022-02-08 10:00:00', '2022-02-04 11:57:33', '2022-02-04 18:49:51', 3, 1, 2),
(34, 'ประชุมประจำเดือน', '77', 77, '2022-02-08 08:00:00', '2022-02-08 09:00:00', '2022-02-04 12:03:53', '2022-02-04 13:31:51', 1, 1, 3),
(35, 'ทดสอบจองซ้ำs', '4', 4, '2022-02-09 08:00:00', '2022-02-09 11:00:00', '2022-02-04 12:09:22', '2022-02-04 12:09:22', 2, 1, 2),
(36, 'ทดสอบจองซ้ำs', '4', 4, '2022-02-08 08:00:00', '2022-02-08 11:00:00', '2022-02-04 13:04:50', '2022-03-21 11:48:58', 2, 2, 2),
(37, 'อบรมดับเพลิง', '2022-02-08 08:00:00', 3, '2022-02-08 08:00:00', '2022-02-08 09:00:00', '2022-02-04 13:06:09', '2022-02-04 13:31:26', 2, 1, 1),
(38, 'ประชุมฝ่าย', 'ประชุมฝ่าย', 3, '2022-02-04 08:00:00', '2022-02-04 09:00:00', '2022-02-04 13:13:20', '2022-02-04 14:07:57', 2, 2, 2),
(39, 'ทดสอบจองซ้ำ', 'sd', 3, '2022-01-24 10:00:00', '2022-01-24 12:00:00', '2022-02-04 13:44:12', '2022-02-04 13:44:12', 1, 1, 1),
(40, 'อบรมพนักงานใหม่', '33', 3, '2022-03-25 10:00:00', '2022-03-25 12:00:00', '2022-02-04 13:46:47', '2022-03-25 16:40:29', 2, 1, 1),
(41, 'dddd', '22', 22, '2022-02-14 13:50:00', '2022-02-14 13:50:00', '2022-02-04 13:56:40', '2022-02-04 13:56:40', 1, 1, 1),
(42, 'dddd', '22', 22, '2022-02-19 10:50:00', '2022-02-19 11:50:00', '2022-02-04 13:57:14', '2022-02-04 13:57:14', 1, 1, 1),
(43, 'อบรมการใช้ Excel', 'อบรมการใช้ Excel', 5, '2022-03-21 08:00:00', '2022-03-21 10:00:00', '2022-03-21 14:38:07', '2022-03-29 13:26:12', 1, 2, 2),
(44, 'ทดสอบเดือน3', 'ทดสอบเดือน3', 50, '2022-03-29 09:00:00', '2022-03-29 11:00:00', '2022-03-29 13:02:29', '2022-03-29 13:02:29', 3, 2, 1),
(45, 'ทดสอบการประชุม-dd', 'ทดสอบการประชุม', 22, '2022-03-30 13:50:00', '2022-03-30 14:50:00', '2022-03-29 13:55:58', '2022-04-20 16:28:14', 1, 2, 1),
(46, 'dasdasdasa', 'dasdasdasa', 7, '2022-03-30 08:00:00', '2022-03-30 09:00:00', '2022-03-29 14:01:16', '2022-03-29 14:01:16', 1, 2, 1),
(47, 'อบรม IT', 'อบรม IT', 4, '2022-04-22 08:05:00', '2022-04-22 09:00:00', '2022-04-22 15:01:13', '2022-04-22 15:01:13', 3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m140506_102106_rbac_init', 1644030015),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1644030015),
('m180523_151638_rbac_updates_indexes_without_prefix', 1644030015),
('m200409_110543_rbac_update_mssql_trigger', 1644030015);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL COMMENT 'ชื่อ',
  `lastname` varchar(100) NOT NULL COMMENT 'นามสกุล',
  `photo` varchar(100) DEFAULT 'nopic.jpg' COMMENT 'รูปภาพ',
  `address` text COMMENT 'ที่อยู่',
  `tel` varchar(45) DEFAULT NULL COMMENT 'เบอร์โทร',
  `department_id` int(11) NOT NULL COMMENT 'ฝ่าย'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`user_id`, `firstname`, `lastname`, `photo`, `address`, `tel`, `department_id`) VALUES
(1, 'แอดมิน', 'เชียงรายแลนด์', '1-dfed5bc177b87ab317c584e06566adc6.jpg', '319 หมู่ที่ 5 ตำบลท่าสาย, เมืองเชียงราย, เชียงราย 57000', '0812345678', 4),
(2, 'ธีรพงศ์', 'ขันตา', '2-332532dcfaa1cbf61e2a266bd723612c.png', '319 หมู่ที่ 5 ตำบลท่าสาย, เมืองเชียงราย, เชียงราย 57000', '0870873830', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT 'ชื่อห้องประชุม',
  `description` text NOT NULL COMMENT 'รายละเอียด',
  `photo` varchar(100) DEFAULT NULL COMMENT 'รูปภาพ',
  `color` varchar(7) DEFAULT NULL COMMENT 'สีประจำห้อง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`, `description`, `photo`, `color`) VALUES
(1, 'ห้องประชุมกรรมการ', 'ห้องประชุม1', 'room-16f09be77b014aff7cceba42bd23ebd0.jpg', '#ff00ff'),
(2, 'ห้องประชุมโปรดักส์', 'ห้องเวียงชัย', 'room-f95c592be11a67f822babc31e30fc5c4.jpg', '#3c78d8'),
(3, 'ห้องประชุมโรงโม่หิน', 'เม็งราย', 'room-e20914d7f2e3d374a868d163e5b52e1a.jpg', '#9900ff');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'สถานะ',
  `color` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'สี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`, `color`) VALUES
(1, 'รออนุมัติ', '#ffc107'),
(2, 'อนุมัติ', '#42ba96'),
(3, 'ยกเลิก', '#df4759'),
(4, 'ต้องแก้ไข', '#467fd0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'username',
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'auth_key',
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'password_hash',
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'password_reset_token',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมล',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT 'status',
  `created_at` int(11) NOT NULL COMMENT 'วันที่สร้าง',
  `updated_at` int(11) NOT NULL COMMENT 'วันที่แก้ไข',
  `verification_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'verification_token'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'BfVT7NESyAOfmZK0NJTiLCSVyL5fqy3h', '$2y$13$DB85bEgJuIViGK1J6QRByuhFCLVkxb.ts.9BMcHIe5GVwAaxP1Xt2', NULL, 'admin@gmail.com', 10, 1643267082, 1643880445, NULL),
(2, 'theerapong', '5TKv5vltCLOoqhKwziJd0Zkza6GebQ_W', '$2y$13$UZGUn79il3lVs1eqCyKBWeB0uVqDELmGIV9A.u3H1y3Cr.6FL82xG', NULL, 'theerapong@crl.co.th', 10, 1643269258, 1643791962, NULL),
(3, 'veerapong', 'eLId5_d7Jm2vayuWK8KbVLdXaxOWGSCL', '$2y$13$/Z15f0g3jhgVq9zKpuEFSeAByLPnVBV6izQcIyhLOSISh4grMlHE2', NULL, 'itchiangrailand@gmail.com', 10, 1643793540, 1643793601, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uses`
--

CREATE TABLE `uses` (
  `meeting_id` int(11) NOT NULL COMMENT 'การจอง',
  `equipment_id` int(11) NOT NULL COMMENT 'อุปกรณ์ที่ใช้'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ใช้อุปกรณ์';

--
-- Dumping data for table `uses`
--

INSERT INTO `uses` (`meeting_id`, `equipment_id`) VALUES
(31, 1),
(32, 1),
(35, 1),
(36, 1),
(38, 1),
(43, 1),
(44, 1),
(47, 1),
(31, 2),
(37, 2),
(38, 2),
(44, 2),
(33, 3),
(38, 3),
(44, 4),
(36, 6),
(38, 7),
(45, 7),
(34, 8),
(34, 9),
(36, 9),
(40, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_meeting_room1_idx` (`room_id`),
  ADD KEY `fk_meeting_person1_idx` (`user_id`),
  ADD KEY `fk_meeting_status1_idx` (`status_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_person_user_idx` (`user_id`),
  ADD KEY `fk_person_department1_idx` (`department_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `uses`
--
ALTER TABLE `uses`
  ADD PRIMARY KEY (`meeting_id`,`equipment_id`),
  ADD KEY `fk_meeting_has_equipment_equipment1_idx` (`equipment_id`),
  ADD KEY `fk_meeting_has_equipment_meeting1_idx` (`meeting_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meeting`
--
ALTER TABLE `meeting`
  ADD CONSTRAINT `fk_meeting_person1` FOREIGN KEY (`user_id`) REFERENCES `person` (`user_id`),
  ADD CONSTRAINT `fk_meeting_room1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `fk_meeting_status1` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `fk_person_department1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `fk_person_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `uses`
--
ALTER TABLE `uses`
  ADD CONSTRAINT `fk_meeting_has_equipment_equipment1` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_meeting_has_equipment_meeting1` FOREIGN KEY (`meeting_id`) REFERENCES `meeting` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
