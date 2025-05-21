-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 06, 2021 at 11:42 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agricultural_crop_recommendations`
--
CREATE DATABASE IF NOT EXISTS `agricultural_crop_recommendations` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `agricultural_crop_recommendations`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add client register_ model', 7, 'add_clientregister_model'),
(20, 'Can change client register_ model', 7, 'change_clientregister_model'),
(21, 'Can delete client register_ model', 7, 'delete_clientregister_model'),
(22, 'Can add client posts_ model', 8, 'add_clientposts_model'),
(23, 'Can change client posts_ model', 8, 'change_clientposts_model'),
(24, 'Can delete client posts_ model', 8, 'delete_clientposts_model'),
(25, 'Can add feedbacks_ model', 9, 'add_feedbacks_model'),
(26, 'Can change feedbacks_ model', 9, 'change_feedbacks_model'),
(27, 'Can delete feedbacks_ model', 9, 'delete_feedbacks_model');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'Client_Site', 'clientposts_model'),
(7, 'Client_Site', 'clientregister_model'),
(9, 'Client_Site', 'feedbacks_model'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Remote_User', '0001_initial', '2019-04-23 07:01:48.050781'),
(2, 'contenttypes', '0001_initial', '2019-04-23 07:01:49.494140'),
(3, 'auth', '0001_initial', '2019-04-23 07:02:03.837890'),
(4, 'admin', '0001_initial', '2019-04-23 07:02:05.832031'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-04-23 07:02:05.863281'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-23 07:02:07.041015'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-23 07:02:07.839843'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-23 07:02:08.330078'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-23 07:02:08.361328'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-23 07:02:08.921875'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-23 07:02:08.953125'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-23 07:02:08.989257'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-23 07:02:09.785156'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-23 07:02:10.580078'),
(15, 'sessions', '0001_initial', '2019-04-23 07:02:11.764648'),
(16, 'Remote_User', '0002_clientposts_model', '2019-04-25 05:53:57.702132'),
(17, 'Remote_User', '0003_clientposts_model_usefulcounts', '2019-04-25 10:00:02.521468'),
(18, 'Remote_User', '0004_auto_20190429_1027', '2019-04-29 04:57:32.672296'),
(19, 'Remote_User', '0005_clientposts_model_dislikes', '2019-04-29 05:15:16.668390'),
(20, 'Remote_User', '0006_Review_model', '2019-04-29 05:19:26.382257'),
(21, 'Remote_User', '0007_clientposts_model_names', '2019-04-30 04:45:46.472656');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0doxd89lelsb62hh61y1u9xvhgis91ks', 'eyJ1c2VyaWQiOjE5fQ:1mDlBs:xxj-bSmT5wd80FZ0QPs9yzR1wUnf-8naNjRRmgbWt-4', '2021-08-25 10:10:28.069873'),
('0jpcgnd1gmwbp3e8tw54e6nxjylsogyo', 'YmM4NjE0MDQ2MzBmYWIxNzIzNTkxZjBiN2I5M2MxMzQyYTE0YmMxODp7InVzZXJpZCI6Mn0=', '2020-02-21 08:52:28.687500'),
('1avxwyhltuaclq2zfq40bjmwzxgup6hp', 'eyJ1c2VyaWQiOjJ9:1ml5JO:9_XIwCjkeG7Vu6-k169B1gbde6aRX-mqiwhgCKNqrRA', '2021-11-25 08:19:58.276708'),
('49qo7iki5uxczhyymi8ka7dnh6a2wva5', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-08 09:19:45.486328'),
('4df7s82pddaszour6twx23d86058ppjq', 'ZmNkODA5MmI1ZGQ0Yjk5MmZlNzEyNTcwNTcxNjk2ZWYxZTE3NThkMjp7InVzZXJpZCI6NX0=', '2020-11-23 11:49:21.396484'),
('4io28d085qjfib7a5s2qbhc8qp4wfiva', 'eyJ1c2VyaWQiOjE2fQ:1mAtmi:oIUbcN3WzJiaWnxMBZ6eIGMTo8NS2y701JlpwqvzBUk', '2021-08-17 12:44:40.453750'),
('4x6b78w9rfcn34v650kd2j7oij6atr8p', 'Zjk0Y2RlYjc4OTJhNWMyZjQyNmM4ZGRhYTVjNmVlNDFhZGE4ZmU3NTp7InVzZXJpZCI6Nn0=', '2019-12-27 12:07:42.082031'),
('7ixdamflp4fqyjecn17bd7xfbsi7eowq', 'eyJ1c2VyaWQiOjEwfQ:1mBzQr:5DfHs08xtygiklJxfW3kZFCrxnrA_igxR5gbDcKt2e8', '2021-08-20 12:58:37.947486'),
('7ph664obz14m207786d3oubrzgjnisom', 'eyJ1c2VyaWQiOjN9:1ml5U2:RJ7eMbREY4fk71sBmCItxM6E3kDDc-R-clIp-QGiiuI', '2021-11-25 08:30:58.769500'),
('9vom7mmn5muyoiy8nytc9mxown1q1g2b', 'eyJ1c2VyaWQiOjE5fQ:1mDRHr:QCoJ_gmMMx_cxknA5j_5NlcTLnENHFouosRuxYZlYbI', '2021-08-24 12:55:19.038051'),
('au3tqhab9csr4r2g5p8wxgktebzxone0', 'eyJ1c2VyaWQiOjExfQ:1mexd7:BmPTZn93Z2602ApV03LTh7BmDypyoNMN2YRKctHrGF8', '2021-11-08 10:55:01.820399'),
('b9cu6cjsfqfm5mame5dy1ikpiiy7yn3w', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:00:08.480453'),
('bhfid9lacfwlfi5yu3rgdg1uo5fp2bq8', 'eyJ1c2VyaWQiOjE4fQ:1mBH4F:2wUorkPET_MGY07bWd-Zp-9HZUsjS3bGCHCu1j6BN-s', '2021-08-18 13:36:19.192796'),
('ct13q5fpn94zvnij8ekixwzcky2imc5e', 'YWUzM2IzMWJiYmQ3YmY2YzlkMGFlNTM1YmU5ZGM4YjQ0MmY1YTc0NTp7InVzZXJpZCI6NH0=', '2019-05-14 11:44:10.978515'),
('e07j4duysh402dedtomm8icctvs9ljgy', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:08:12.306625'),
('ey4cqybs9x9n5nc2rzzldpdti31cch5q', 'eyJ1c2VyaWQiOjh9:1mt8U5:Qq6HwKOrfqfE_1Wbp_q-QNY0mVN2SqljXs8kP2duh2A', '2021-12-17 13:20:17.871935'),
('fq0czwxzas1e5bjz5cx5pr6ytm8uhejy', 'eyJ1c2VyaWQiOjExfQ:1mfKoD:eQbeRUgZ8NFqCleEdS6fE0NAoRs3zn6_B82CZb4YtiQ', '2021-11-09 11:40:01.472965'),
('gq3vdjxoy34hxkorw2d8nztdusdknegl', 'eyJ1c2VyaWQiOjF9:1mpUvs:Lry5yh51WzsY8judWu-ApNb05fEC5oHytMQ9bZSqbGU', '2021-12-07 12:29:56.098464'),
('gsqk7v1ei7yhuvcbxw6r8vxhgbuzz7zx', 'eyJ1c2VyaWQiOjJ9:1mkkhL:_T8wyqi-MJi-K7_a-0EPz-h6HRouyRfpeAhHqTS5N04', '2021-11-24 10:19:19.270816'),
('h2up0dvopjvwswxnvprj7id9lgrivhus', 'eyJ1c2VyaWQiOjIzfQ:1mfM3f:FAuAUdY-ly6qun6t571yt1pYKVGhXfjbjhiruld5rNs', '2021-11-09 13:00:03.703809'),
('hbv74sg6w6e4wp89vq807vw0xhkh5s1h', 'MzU0ZWYzNTQ3MjM4MWZlOTVjM2M1MWQ4MmE5ODE0OTlkNDRkNDkwMDp7InVzZXJpZCI6MX0=', '2020-01-10 07:40:38.067382'),
('hhtt48je70l9nzw6dee4ocuxxm9blqej', 'NGRhY2JkNmQ4ZTM4OTU0Y2UzMzFlZmZmOTgzYmE0MWVkOThiNjc2NTp7Im5hbWUiOjEsInVzZXJpZCI6MX0=', '2019-05-09 10:12:38.380843'),
('hsb5814on7cph0wvy0yls67ca94ngcq3', 'eyJ1c2VyaWQiOjE5fQ:1mBzgz:cug3sAkQKH-bQBkB9O5l0UsDJL-37eDV8mR9Qau3elA', '2021-08-20 13:15:17.195464'),
('i530ldontosd9c37rlmr7i190cc8j54c', 'eyJ1c2VyaWQiOjExfQ:1mfGFZ:PSpZPmdPYnGzwCScqY4tYBkDj8BMVATwweZjjxmG5dk', '2021-11-09 06:47:57.629900'),
('i77fui9jgj9yk7ncx7u4ph5d6kg0nl6c', 'eyJ1c2VyaWQiOjE5fQ:1mDPJC:kqt800XGsVGRjHS3TmeLFrJbrpIK4-GbH4ZirwIc7S4', '2021-08-24 10:48:34.860638'),
('ic3hqykgws5iy6fz5ns6h6f921jbjzmt', 'eyJ1c2VyaWQiOjExfQ:1kywHL:I_tahJ0VJb7myAbMbXpWZu9XrSaAMmduNxGd2x5gtmY', '2021-01-25 12:26:35.043761'),
('iz6wcyx97x1w6mpfc51g1tj72z2xghfn', 'eyJ1c2VyaWQiOjl9:1kwlIp:YKOKMwJARe6w057AKTGY1-GCuRcZAeAbJ0bdQao23wY', '2021-01-19 12:19:07.663490'),
('jgcbya9z2s6b6mmldfv28lm18imc73m8', 'eyJ1c2VyaWQiOjIxfQ:1mDnYP:GTRQ2I-UYLdsCCyA0-WsFSAVBNno1wLo6lk4M8JS0OU', '2021-08-25 12:41:53.312085'),
('jpkxxiej4bdjin5tpdjm0xqhdooexz9o', 'eyJ1c2VyaWQiOjExfQ:1mBEdk:YOk6fHHfBMmtt5ZvSyzgy13Az8JS59iXbU4LO1Ps1RI', '2021-08-18 11:00:48.423036'),
('k7dyn4irgrj5wb4jucb4po527iw724dp', 'eyJ1c2VyaWQiOjEzfQ:1l0JrY:2_TJ4L_XoHdOW51Zdp0MOdyBEZEzntk5pdXZFDmX9x4', '2021-01-29 07:49:40.202848'),
('ktjsa2dwmkzggkc8htfro0m1zf2kt78d', 'eyJ1c2VyaWQiOjI0fQ:1mfiev:rUgpc2VOr-8MQnmWwZsSVM_IqXQAA3Bacheqmp_LQ2o', '2021-11-10 13:08:01.503971'),
('kxla8qbe1hs1tb4a04ewpmdmi5fx1evc', 'eyJ1c2VyaWQiOjF9:1mppgH:W6PX8scwqi7GUGW9dXo0wqzeDJNI9Ohr43tDihOaZ_4', '2021-12-08 10:39:13.866470'),
('md23m1in58zrp8kwpjbjw9c9qphjiic3', 'eyJ1c2VyaWQiOjJ9:1mqUoz:vI30s2cmoGUbkQNW5WgCKTPnraLqY2CtZNB2h1cZAHE', '2021-12-10 06:34:57.609129'),
('nfj1oi311ir7aexvi0mb68xhm1abb4nt', 'eyJ1c2VyaWQiOjJ9:1mt7lK:vNSlKKLv72qtJlVa2gnrraGp2aV8UZyJvpafefdoMkY', '2021-12-17 12:34:02.684420'),
('o7x1vhluuypdfmgv7fmv6nohgfn5ub55', 'NzMyZjlhNzFhZjk2ZGUzZmFiMmIzYjMwNTJkYTg5MDUzNmNlMDk4Mjp7InVzZXJpZCI6MTZ9', '2020-01-02 12:51:55.659179'),
('oc4pzt7ijx1rzj09m2ve6b6y5uwc6wt5', 'eyJ1c2VyaWQiOjF9:1mkk7W:6GDuPOPoLHMwOYLys3lXIgfM79Fq36HHW31-utzbeyk', '2021-11-24 09:42:18.649798'),
('owqt9fqa6pkheboduh6f4k5p4lkwj0yc', 'eyJ1c2VyaWQiOjExfQ:1mfiXk:Wzn12pygxu_2Z1TzCSC4bKDawuXj_i7_BFLhJjKx-10', '2021-11-10 13:00:36.684741'),
('psdjoq42u7lfqwfodftic5x6z9ij34nk', 'eyJ1c2VyaWQiOjExfQ:1mAXDq:a8YYY1YJU3jPv03qo9-VcrjRHnDWRSqGseiR93n0GVM', '2021-08-16 12:39:10.518259'),
('q6hp9a2l9dbrclvox0o02x1aamx1ukj7', 'eyJ1c2VyaWQiOjIyfQ:1mfGz3:wkq7ZgyB738cK3Jugrc0viqb3eI1C0gWhyypHF_DE-A', '2021-11-09 07:34:57.860407'),
('qnaolidvfx6bu9ra3uyqvkgva7bv92f1', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-14 05:34:50.069335'),
('r9342kcgrcshumu9a0dv6ymghpydrod8', 'eyJ1c2VyaWQiOjN9:1mps6p:FG6aEFnuqHc-GqQoe62wBNtlOceET3bwgLDO024y4-U', '2021-12-08 13:14:47.475947'),
('r9qk0kd407g591hugz99fhps8zofh69s', 'eyJ1c2VyaWQiOjE4fQ:1mBxnG:qkd9MTM_FhhghUpV90qngEkwkoSKYdLbfwRKBLhK7Qg', '2021-08-20 11:13:38.356475'),
('rfq3uvadj7qsqrz7qlcyie9wscsqz1nr', 'eyJ1c2VyaWQiOjI1fQ:1mk2vF:mTIne3EU3rECWccrUfyPmy7XxIwdAzxhig4S5oOngho', '2021-11-22 11:34:45.897995'),
('rn48bwukkb2yv60kvkacr8nc0njr5xky', 'eyJ1c2VyaWQiOjExfQ:1mfggv:xsbmrrGzxtrEFgspA0Wp7oWTp9qDl0shDSlGG8fHJo4', '2021-11-10 11:01:57.519295'),
('s7ui2zx2cslubpch6dm7iaxlz2wlsdgg', 'eyJ1c2VyaWQiOjExfQ:1mk1Xz:fpol-krFazPxkK0b4gEoocpOXHcd-eaYoxg26CU420Q', '2021-11-22 10:06:39.923928'),
('sdcvtwp7s5yj8q1lb0mdvlg8nj5wujqo', 'eyJ1c2VyaWQiOjEyfQ:1kzJ3p:0g6nRuJv3TXWVpANqNgbJcrUv96ZU5UQwv3bgqBbL1I', '2021-01-26 12:46:09.538596'),
('sxz9gqpq7zm371kybysc2rfz00vvhd6r', 'eyJ1c2VyaWQiOjV9:1mqYIB:-2O2lU7iMkMxT5XHNfBPyoakH-Ocrio45HOlztntsOs', '2021-12-10 10:17:19.863391'),
('tejgl09oettnyva23kqdbns5nfz5g8ug', 'OTk3NTk2YTE0NjM5MWQ0OGQ0MjY3NzBjNzdhOTc0ZWJhM2ZkMzdkMjp7InVzZXJpZCI6MX0=', '2019-05-09 11:19:24.387679'),
('tx26u0gjaebi1m6miqvms83dw452rw7c', 'eyJ1c2VyaWQiOjExfQ:1mg01H:i0OHhHK7t2WdfySWwMXXs92TaT7Vn1UQf2i0eZBO70s', '2021-11-11 07:40:15.053714'),
('u5icgvq3qt5nthdlv99go3r804ccghbo', 'MmE4N2EzZmM3NTI1ODc3MjUxYjUxNWM3OWM4ZGExNWViMzRkN2MzYTp7Im5hbWUiOjF9', '2019-05-09 06:00:13.573226'),
('ws2o4cq1jbqepe0e9s9v7n4erxatq9ic', 'eyJ1c2VyaWQiOjE1fQ:1l2CgI:SmlpAnZzplZhPTFJ_rkEJstnZRl2CYWyTcah7PHPv-M', '2021-02-03 12:33:50.352453'),
('xc6si4gdotxq06mslnwwjtewdhzuyh44', 'eyJ1c2VyaWQiOjR9:1mnfuL:VMKdQ2gcb4wQppelEf-wAdfTSSkA6nWPCeQODqD3NOM', '2021-12-02 11:48:49.418566'),
('zega5sz46ivu1tb1o1mtmg3v2ysxog1w', 'eyJ1c2VyaWQiOjh9:1kuVm4:L7RizVvw4EC0IyYCYAIhGjC8lvZol_Z1abqVwdkdKkY', '2021-01-13 07:20:00.767751'),
('zq2idu1e3gkyelhzpa24k5jixqhj74da', 'eyJ1c2VyaWQiOjJ9:1mne5B:sOSzXh5WGI5se1746XNpUgE1_UZZw07Xzb03KIcZXfY', '2021-12-02 09:51:53.585889');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_clientregister_model`
--

CREATE TABLE IF NOT EXISTS `remote_user_clientregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phoneno` varchar(50) NOT NULL,
  `country` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `remote_user_clientregister_model`
--

INSERT INTO `remote_user_clientregister_model` (`id`, `username`, `email`, `password`, `phoneno`, `country`, `state`, `city`) VALUES
(1, 'Kanna', 'Kanna123@gmail.com', 'Kanna', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(2, 'Manjunath', 'tmksmanju13@gmail.com', 'Manjunath', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(3, 'Mala', 'Mala123@gmail.com', 'Mala', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(4, 'Arjun', 'Arjun123@gmail.com', 'Arjun', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(5, 'Rakesh', 'Rakesh123@gmail.com', 'Rakesh', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(6, 'Arun', 'Arun123@gmail.com', 'Arun', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(7, 'Arjun', 'Arjun123@gmail.com', 'Arjun', '9535866270', 'India', 'Karnataka', 'Bangalore'),
(8, 'Kamath', 'Kamath123@gmail.com', 'Kamath', '9535866270', 'India', 'Karnataka', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_crop_details`
--

CREATE TABLE IF NOT EXISTS `remote_user_crop_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `State_Name` varchar(300) NOT NULL,
  `Crop_Year` varchar(300) NOT NULL,
  `Season` varchar(300) NOT NULL,
  `names` varchar(300) NOT NULL,
  `Area` varchar(300) NOT NULL,
  `Production` varchar(300) NOT NULL,
  `District_Name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3174 ;

--
-- Dumping data for table `remote_user_crop_details`
--

INSERT INTO `remote_user_crop_details` (`id`, `State_Name`, `Crop_Year`, `Season`, `names`, `Area`, `Production`, `District_Name`) VALUES
(2786, 'Andaman and Nicobar Islands', '2001', 'Whole Year ', 'Dry ginger', '46', '10000', 'NICOBARS'),
(2787, 'Andaman and Nicobar Islands', '2001', 'Whole Year ', 'Sugarcane', '1', '1', 'NICOBARS'),
(2788, 'Andaman and Nicobar Islands', '2001', 'Whole Year ', 'Sweet potato', '11', '33', 'NICOBARS'),
(2789, 'Andaman and Nicobar Islands', '2002', 'Kharif     ', 'Rice', '189.2', '510.84', 'NICOBARS'),
(2790, 'Andaman and Nicobar Islands', '2002', 'Whole Year ', 'Arecanut', '1258', '2083', 'NICOBARS'),
(2791, 'Andaman and Nicobar Islands', '2002', 'Whole Year ', 'Banana', '213', '1278', 'NICOBARS'),
(2792, 'Andaman and Nicobar Islands', '2002', 'Whole Year ', 'Black pepper', '63', '13.5', 'NICOBARS'),
(2793, 'Andaman and Nicobar Islands', '2002', 'Whole Year ', 'Cashewnut', '719', '208', 'NICOBARS'),
(2794, 'Andaman and Nicobar Islands', '2002', 'Whole Year ', 'Coconut ', '18240', '6749000', 'NICOBARS'),
(2795, 'Andaman and Nicobar Islands', '2002', 'Whole Year ', 'Dry chillies', '413', '28.8', 'NICOBARS'),
(2796, 'Andaman and Nicobar Islands', '2003', 'Whole Year ', 'Dry chillies', '60', '102', 'NICOBARS'),
(2797, 'Andaman and Nicobar Islands', '2003', 'Whole Year ', 'Dry ginger', '102', '326.4', 'NICOBARS'),
(2798, 'Andhra Pradesh', '2003', 'Whole Year ', 'Grapes', '118', '2048', 'ANANTAPUR'),
(2799, 'Andhra Pradesh', '2005', 'Kharif     ', 'Groundnut', '877029', '362213', 'ANANTAPUR'),
(2800, 'Andhra Pradesh', '2005', 'Kharif     ', 'Horse-gram', '410', '107', 'ANANTAPUR'),
(2801, 'Andhra Pradesh', '2005', 'Kharif     ', 'Jowar', '3759', '3879', 'ANANTAPUR'),
(2802, 'Andhra Pradesh', '2005', 'Kharif     ', 'Maize', '5958', '21538', 'ANANTAPUR'),
(2803, 'Andhra Pradesh', '2005', 'Kharif     ', 'Moong(Green Gram)', '1078', '747', 'ANANTAPUR'),
(2804, 'Andhra Pradesh', '2005', 'Kharif     ', 'Onion', '985', '17025', 'ANANTAPUR'),
(2805, 'Andhra Pradesh', '2005', 'Kharif     ', 'Other Kharif pulses', '1429', '301', 'ANANTAPUR'),
(2806, 'Andhra Pradesh', '2005', 'Kharif     ', 'Ragi', '2303', '4394', 'ANANTAPUR'),
(2807, 'Andhra Pradesh', '2005', 'Kharif     ', 'Rice', '25008', '69972', 'ANANTAPUR'),
(2808, 'Andhra Pradesh', '2005', 'Kharif     ', 'Small millets', '854', '455', 'ANANTAPUR'),
(2809, 'Andhra Pradesh', '2005', 'Kharif     ', 'Soyabean', '421', '232', 'ANANTAPUR'),
(2810, 'Andhra Pradesh', '2005', 'Kharif     ', 'Urad', '69', '24', 'ANANTAPUR'),
(2811, 'Andhra Pradesh', '2005', 'Rabi       ', 'Bajra', '66', '125', 'ANANTAPUR'),
(2812, 'Andhra Pradesh', '2005', 'Rabi       ', 'Dry chillies', '58', '214', 'ANANTAPUR'),
(2813, 'Andhra Pradesh', '2005', 'Rabi       ', 'Gram', '49105', '48172', 'ANANTAPUR'),
(2814, 'Andhra Pradesh', '2005', 'Rabi       ', 'Groundnut', '22006', '29752', 'ANANTAPUR'),
(2815, 'Andhra Pradesh', '2005', 'Rabi       ', 'Horse-gram', '205', '77', 'ANANTAPUR'),
(2816, 'Andhra Pradesh', '2005', 'Rabi       ', 'Jowar', '12931', '9970', 'ANANTAPUR'),
(2817, 'Andhra Pradesh', '2005', 'Rabi       ', 'Linseed', '29', '11', 'ANANTAPUR'),
(2818, 'Andhra Pradesh', '2005', 'Rabi       ', 'Maize', '1435', '10721', 'ANANTAPUR'),
(2819, 'Assam', '2009', 'Whole Year ', 'Banana', '2530', '33101', 'KAMRUP'),
(2820, 'Assam', '2009', 'Whole Year ', 'Black pepper', '97', '147', 'KAMRUP'),
(2821, 'Assam', '2009', 'Whole Year ', 'Coconut ', '1548', '7273000', 'KAMRUP'),
(2822, 'Assam', '2009', 'Whole Year ', 'Dry chillies', '1961', '1178', 'KAMRUP'),
(2823, 'Assam', '2009', 'Whole Year ', 'Dry ginger', '384', '2849', 'KAMRUP'),
(2824, 'Assam', '2009', 'Whole Year ', 'Onion', '583', '1701', 'KAMRUP'),
(2825, 'Assam', '2009', 'Whole Year ', 'Potato', '3062', '37366', 'KAMRUP'),
(2826, 'Assam', '2009', 'Whole Year ', 'Sugarcane', '921', '32300', 'KAMRUP'),
(2827, 'Assam', '2009', 'Whole Year ', 'Sweet potato', '164', '409', 'KAMRUP'),
(2828, 'Assam', '2009', 'Whole Year ', 'Tapioca', '81', '292', 'KAMRUP'),
(2829, 'Assam', '2009', 'Whole Year ', 'Tobacco', '1', '1', 'KAMRUP'),
(2830, 'Assam', '2009', 'Whole Year ', 'Turmeric', '723', '626', 'KAMRUP'),
(2831, 'Assam', '2009', 'Winter     ', 'Rice', '69798', '127917', 'KAMRUP'),
(2832, 'Assam', '2010', 'Autumn     ', 'Rice', '14012', '23004', 'KAMRUP'),
(2833, 'Assam', '2010', 'Kharif     ', 'Arhar/Tur', '160', '128', 'KAMRUP'),
(2834, 'Assam', '2010', 'Kharif     ', 'Castor seed', '10', '3', 'KAMRUP'),
(2835, 'Assam', '2010', 'Kharif     ', 'Cotton(lint)', '1', '1', 'KAMRUP'),
(2836, 'Assam', '2010', 'Kharif     ', 'Jute', '3359', '51505', 'KAMRUP'),
(2837, 'Assam', '2010', 'Kharif     ', 'Maize', '217', '134', 'KAMRUP'),
(2838, 'Assam', '2010', 'Kharif     ', 'Mesta', '61', '293', 'KAMRUP'),
(2839, 'Bihar', '1997', 'Kharif     ', 'Other Kharif pulses', '4', '2', 'JEHANABAD'),
(2840, 'Bihar', '1997', 'Kharif     ', 'Sesamum', '29', '17', 'JEHANABAD'),
(2841, 'Bihar', '1997', 'Kharif     ', 'Small millets', '9', '4', 'JEHANABAD'),
(2842, 'Bihar', '1997', 'Rabi       ', 'Barley', '699', '487', 'JEHANABAD'),
(2843, 'Bihar', '1997', 'Rabi       ', 'Gram', '2222', '787', 'JEHANABAD'),
(2844, 'Bihar', '1997', 'Rabi       ', 'Linseed', '645', '362', 'JEHANABAD'),
(2845, 'Bihar', '1997', 'Rabi       ', 'Maize', '670', '2011', 'JEHANABAD'),
(2846, 'Bihar', '1997', 'Rabi       ', 'Other  Rabi pulses', '181', '129', 'JEHANABAD'),
(2847, 'Bihar', '1997', 'Rabi       ', 'Rapeseed &Mustard', '593', '433', 'JEHANABAD'),
(2848, 'Bihar', '1997', 'Rabi       ', 'Sunflower', '83', '78', 'JEHANABAD'),
(2849, 'Bihar', '1997', 'Rabi       ', 'Wheat', '44404', '80116', 'JEHANABAD'),
(2850, 'Bihar', '1997', 'Summer     ', 'Maize', '214', '452', 'JEHANABAD'),
(2851, 'Bihar', '1997', 'Summer     ', 'Rice', '124', '250', 'JEHANABAD'),
(2852, 'Bihar', '1997', 'Whole Year ', 'Coriander', '25', '12', 'JEHANABAD'),
(2853, 'Bihar', '1997', 'Whole Year ', 'Dry chillies', '30', '23', 'JEHANABAD'),
(2854, 'Bihar', '1997', 'Whole Year ', 'Garlic', '7', '9', 'JEHANABAD'),
(2855, 'Chhattisgarh', '2005', 'Rabi       ', 'Safflower', '1', '123', 'KANKER'),
(2856, 'Chhattisgarh', '2005', 'Rabi       ', 'Urad', '63', '22', 'KANKER'),
(2857, 'Chhattisgarh', '2005', 'Rabi       ', 'Wheat', '928', '1555', 'KANKER'),
(2858, 'Chhattisgarh', '2005', 'Whole Year ', 'Banana', '9', '419', 'KANKER'),
(2859, 'Chhattisgarh', '2005', 'Whole Year ', 'Coriander', '86', '21', 'KANKER'),
(2860, 'Chhattisgarh', '2005', 'Whole Year ', 'Dry chillies', '201', '48', 'KANKER'),
(2861, 'Chhattisgarh', '2005', 'Whole Year ', 'Dry ginger', '13', '15', 'KANKER'),
(2862, 'Chhattisgarh', '2005', 'Whole Year ', 'Garlic', '10', '34', 'KANKER'),
(2863, 'Chhattisgarh', '2005', 'Whole Year ', 'Onion', '80', '444', 'KANKER'),
(2864, 'Chhattisgarh', '2005', 'Whole Year ', 'Potato', '6', '36', 'KANKER'),
(2865, 'Chhattisgarh', '2005', 'Whole Year ', 'Sannhamp', '108', '46', 'KANKER'),
(2866, 'Chhattisgarh', '2005', 'Whole Year ', 'Sugarcane', '1', '4', 'KANKER'),
(2867, 'Chhattisgarh', '2005', 'Whole Year ', 'Sweet potato', '83', '433', 'KANKER'),
(2868, 'Chhattisgarh', '2005', 'Whole Year ', 'Turmeric', '12', '11', 'KANKER'),
(2869, 'Chhattisgarh', '2006', 'Kharif     ', 'Arhar/Tur', '576', '271', 'KANKER'),
(2870, 'Chhattisgarh', '2006', 'Kharif     ', 'Groundnut', '4', '8', 'KANKER'),
(2871, 'Chhattisgarh', '2006', 'Kharif     ', 'Horse-gram', '8192', '3385', 'KANKER'),
(2872, 'Chhattisgarh', '2006', 'Kharif     ', 'Jowar', '362', '373', 'KANKER'),
(2873, 'Chhattisgarh', '2006', 'Kharif     ', 'Maize', '8044', '11787', 'KANKER'),
(2874, 'Chhattisgarh', '2006', 'Kharif     ', 'Moong(Green Gram)', '905', '412', 'KANKER'),
(2875, 'Gujarat', '2008', 'Kharif     ', 'Arhar/Tur', '4000', '4200', 'DANG'),
(2876, 'Gujarat', '2008', 'Kharif     ', 'Groundnut', '4600', '6300', 'DANG'),
(2877, 'Gujarat', '2008', 'Kharif     ', 'Jowar', '3600', '5000', 'DANG'),
(2878, 'Gujarat', '2008', 'Kharif     ', 'Maize', '3100', '4400', 'DANG'),
(2879, 'Gujarat', '2008', 'Kharif     ', 'Other Cereals & Millets', '4700', '2600', 'DANG'),
(2880, 'Gujarat', '2008', 'Kharif     ', 'Ragi', '9700', '11100', 'DANG'),
(2881, 'Gujarat', '2008', 'Kharif     ', 'Rice', '17900', '22700', 'DANG'),
(2882, 'Gujarat', '2008', 'Kharif     ', 'Urad', '4200', '3100', 'DANG'),
(2883, 'Gujarat', '2008', 'Rabi       ', 'Gram', '1200', '1200', 'DANG'),
(2884, 'Gujarat', '2008', 'Rabi       ', 'Onion', '500', '13100', 'DANG'),
(2885, 'Gujarat', '2008', 'Rabi       ', 'Other  Rabi pulses', '700', '400', 'DANG'),
(2886, 'Gujarat', '2008', 'Rabi       ', 'Wheat', '700', '1700', 'DANG'),
(2887, 'Gujarat', '2008', 'Summer     ', 'Groundnut', '600', '1100', 'DANG'),
(2888, 'Gujarat', '2008', 'Whole Year ', 'Garlic', '200', '1000', 'DANG'),
(2889, 'Gujarat', '2008', 'Whole Year ', 'Sugarcane', '100', '11000', 'DANG'),
(2890, 'Gujarat', '2009', 'Kharif     ', 'Arhar/Tur', '3700', '3200', 'DANG'),
(2891, 'Gujarat', '2009', 'Kharif     ', 'Groundnut', '4300', '4000', 'DANG'),
(2892, 'Gujarat', '2009', 'Kharif     ', 'Jowar', '2300', '3200', 'DANG'),
(2893, 'Gujarat', '2009', 'Kharif     ', 'Maize', '3300', '3200', 'DANG'),
(2894, 'Gujarat', '2009', 'Kharif     ', 'Other Cereals & Millets', '1500', '900', 'DANG'),
(2895, 'Gujarat', '2009', 'Kharif     ', 'Ragi', '5000', '4100', 'DANG'),
(2896, 'Gujarat', '2009', 'Kharif     ', 'Rice', '15800', '17400', 'DANG'),
(2897, 'Gujarat', '2009', 'Kharif     ', 'Urad', '4600', '3300', 'DANG'),
(2898, 'Gujarat', '2009', 'Rabi       ', 'Gram', '1400', '1300', 'DANG'),
(2899, 'Gujarat', '2009', 'Rabi       ', 'Onion', '500', '14200', 'DANG'),
(2900, 'Gujarat', '2009', 'Rabi       ', 'Other  Rabi pulses', '1900', '1200', 'DANG'),
(2901, 'Gujarat', '2009', 'Rabi       ', 'Wheat', '800', '2200', 'DANG'),
(2902, 'Haryana', '2003', 'Kharif     ', 'Sesamum', '398', '100', 'JIND'),
(2903, 'Haryana', '2003', 'Kharif     ', 'Urad', '1', '0', 'JIND'),
(2904, 'Haryana', '2003', 'Rabi       ', 'Barley', '829', '3000', 'JIND'),
(2905, 'Haryana', '2003', 'Rabi       ', 'Gram', '593', '1000', 'JIND'),
(2906, 'Haryana', '2003', 'Rabi       ', 'Masoor', '48', '100', 'JIND'),
(2907, 'Haryana', '2003', 'Rabi       ', 'Rapeseed &Mustard', '9786', '16000', 'JIND'),
(2908, 'Haryana', '2003', 'Rabi       ', 'Wheat', '206844', '819000', 'JIND'),
(2909, 'Haryana', '2003', 'Whole Year ', 'Dry chillies', '12', '0', 'JIND'),
(2910, 'Haryana', '2003', 'Whole Year ', 'Other Fresh Fruits', '993', '2000', 'JIND'),
(2911, 'Haryana', '2003', 'Whole Year ', 'Other Vegetables', '1776', '15400', 'JIND'),
(2912, 'Haryana', '2003', 'Whole Year ', 'Sannhamp', '28', '0', 'JIND'),
(2913, 'Haryana', '2003', 'Whole Year ', 'Sugarcane', '9347', '530000', 'JIND'),
(2914, 'Haryana', '2004', 'Kharif     ', 'Arhar/Tur', '890', '900', 'JIND'),
(2915, 'Haryana', '2004', 'Kharif     ', 'Bajra', '45807', '67000', 'JIND'),
(2916, 'Haryana', '2004', 'Kharif     ', 'Cotton(lint)', '49970', '148000', 'JIND'),
(2917, 'Haryana', '2004', 'Kharif     ', 'Jowar', '571', '900', 'JIND'),
(2918, 'Haryana', '2004', 'Kharif     ', 'Moong(Green Gram)', '57', '1124', 'JIND'),
(2919, 'Haryana', '2004', 'Kharif     ', 'Rice', '90894', '201000', 'JIND'),
(2920, 'Haryana', '2004', 'Kharif     ', 'Sesamum', '371', '100', 'JIND'),
(2921, 'Haryana', '2004', 'Rabi       ', 'Barley', '847', '3000', 'JIND'),
(2922, 'Haryana', '2004', 'Rabi       ', 'Gram', '427', '2444', 'JIND'),
(2923, 'Haryana', '2004', 'Rabi       ', 'Masoor', '36', '100', 'JIND'),
(2924, 'Haryana', '2004', 'Rabi       ', 'Rapeseed &Mustard', '12545', '16000', 'JIND'),
(2925, 'Karnataka', '2004', 'Kharif     ', 'Sunflower', '33145', '23695', 'BELGAUM'),
(2926, 'Karnataka', '2004', 'Kharif     ', 'Urad', '3611', '748', 'BELGAUM'),
(2927, 'Karnataka', '2004', 'Rabi       ', 'Gram', '41421', '20354', 'BELGAUM'),
(2928, 'Karnataka', '2004', 'Rabi       ', 'Groundnut', '7693', '7981', 'BELGAUM'),
(2929, 'Karnataka', '2004', 'Rabi       ', 'Horse-gram', '2539', '902', 'BELGAUM'),
(2930, 'Karnataka', '2004', 'Rabi       ', 'Jowar', '171452', '113414', 'BELGAUM'),
(2931, 'Karnataka', '2004', 'Rabi       ', 'Linseed', '1750', '318', 'BELGAUM'),
(2932, 'Karnataka', '2004', 'Rabi       ', 'Maize', '25755', '79447', 'BELGAUM'),
(2933, 'Karnataka', '2004', 'Rabi       ', 'Moong(Green Gram)', '94', '23', 'BELGAUM'),
(2934, 'Karnataka', '2004', 'Rabi       ', 'Other  Rabi pulses', '1000', '139', 'BELGAUM'),
(2935, 'Karnataka', '2004', 'Rabi       ', 'Rapeseed &Mustard', '254', '35', 'BELGAUM'),
(2936, 'Karnataka', '2004', 'Rabi       ', 'Safflower', '11490', '5472', 'BELGAUM'),
(2937, 'Karnataka', '2004', 'Rabi       ', 'Sunflower', '22293', '8781', 'BELGAUM'),
(2938, 'Karnataka', '2004', 'Rabi       ', 'Wheat', '56811', '59112', 'BELGAUM'),
(2939, 'Karnataka', '2004', 'Summer     ', 'Jowar', '75', '60', 'BELGAUM'),
(2940, 'Karnataka', '2004', 'Summer     ', 'Maize', '1776', '6629', 'BELGAUM'),
(2941, 'Karnataka', '2004', 'Summer     ', 'Rice', '143', '635', 'BELGAUM'),
(2942, 'Karnataka', '2004', 'Summer     ', 'Sunflower', '1010', '655', 'BELGAUM'),
(2943, 'Karnataka', '2004', 'Whole Year ', 'Arecanut', '8', '11', 'BELGAUM'),
(2944, 'Karnataka', '2004', 'Whole Year ', 'Banana', '828', '19154', 'BELGAUM'),
(2945, 'Karnataka', '2004', 'Whole Year ', 'Coconut ', '599', '26062.49', 'BELGAUM'),
(2946, 'Karnataka', '2004', 'Whole Year ', 'Coriander', '354', '42', 'BELGAUM'),
(2947, 'Karnataka', '2004', 'Whole Year ', 'Dry chillies', '4945', '3690', 'BELGAUM'),
(2948, 'Karnataka', '2004', 'Whole Year ', 'Garlic', '425', '508', 'BELGAUM'),
(2949, 'Karnataka', '2004', 'Whole Year ', 'Onion', '6967', '30687', 'BELGAUM'),
(2950, 'Karnataka', '2004', 'Whole Year ', 'Potato', '5336', '44325', 'BELGAUM'),
(2951, 'Karnataka', '2004', 'Whole Year ', 'Sweet potato', '2164', '20513', 'BELGAUM'),
(2952, 'Karnataka', '2004', 'Whole Year ', 'Tobacco', '20707', '19731', 'BELGAUM'),
(2953, 'Karnataka', '2004', 'Whole Year ', 'Turmeric', '966', '5151', 'BELGAUM'),
(2954, 'Karnataka', '2005', 'Kharif     ', 'Arhar/Tur', '6100', '1727', 'BELGAUM'),
(2955, 'Karnataka', '2005', 'Kharif     ', 'Bajra', '27553', '10729', 'BELGAUM'),
(2956, 'Karnataka', '2005', 'Kharif     ', 'Castor seed', '127', '132', 'BELGAUM'),
(2957, 'Karnataka', '2005', 'Kharif     ', 'Dry chillies', '3596', '1320', 'BELGAUM'),
(2958, 'Karnataka', '2005', 'Kharif     ', 'Groundnut', '62529', '28617', 'BELGAUM'),
(2959, 'Karnataka', '2005', 'Kharif     ', 'Horse-gram', '6387', '3817', 'BELGAUM'),
(2960, 'Karnataka', '2005', 'Kharif     ', 'Jowar', '43427', '57808', 'BELGAUM'),
(2961, 'Karnataka', '2005', 'Kharif     ', 'Maize', '93413', '331852', 'BELGAUM'),
(2962, 'Karnataka', '2005', 'Kharif     ', 'Moong(Green Gram)', '27909', '5197', 'BELGAUM'),
(2963, 'Karnataka', '2005', 'Kharif     ', 'Niger seed', '1089', '250', 'BELGAUM'),
(2964, 'Karnataka', '2005', 'Kharif     ', 'Onion', '7087', '30512', 'BELGAUM'),
(2965, 'Karnataka', '2005', 'Kharif     ', 'Other Kharif pulses', '6594', '2085', 'BELGAUM'),
(2966, 'Karnataka', '2005', 'Kharif     ', 'Peas & beans (Pulses)', '82', '267', 'BELGAUM'),
(2967, 'Karnataka', '2005', 'Kharif     ', 'Potato', '4885', '10326', 'BELGAUM'),
(2968, 'Karnataka', '2005', 'Kharif     ', 'Ragi', '1563', '756', 'BELGAUM'),
(2969, 'Karnataka', '2005', 'Kharif     ', 'Rice', '66671', '145500', 'BELGAUM'),
(2970, 'Karnataka', '2005', 'Kharif     ', 'Sesamum', '759', '658', 'BELGAUM'),
(2971, 'Karnataka', '2005', 'Kharif     ', 'Small millets', '4432', '4202', 'BELGAUM'),
(2972, 'Karnataka', '2005', 'Kharif     ', 'Soyabean', '69115', '38279', 'BELGAUM'),
(2973, 'Karnataka', '2005', 'Kharif     ', 'Sunflower', '27338', '12439', 'BELGAUM'),
(2974, 'Karnataka', '2005', 'Kharif     ', 'Urad', '2715', '702', 'BELGAUM'),
(2975, 'Karnataka', '2005', 'Rabi       ', 'Dry chillies', '342', '399', 'BELGAUM'),
(2976, 'Karnataka', '2005', 'Rabi       ', 'Gram', '48996', '24640', 'BELGAUM'),
(2977, 'Karnataka', '2005', 'Rabi       ', 'Groundnut', '11368', '8510', 'BELGAUM'),
(2978, 'Karnataka', '2005', 'Rabi       ', 'Horse-gram', '1565', '764', 'BELGAUM'),
(2979, 'Karnataka', '2005', 'Rabi       ', 'Jowar', '156692', '105932', 'BELGAUM'),
(2980, 'Karnataka', '2005', 'Rabi       ', 'Linseed', '1051', '444', 'BELGAUM'),
(2981, 'Karnataka', '2005', 'Rabi       ', 'Maize', '41389', '145279', 'BELGAUM'),
(2982, 'Karnataka', '2005', 'Rabi       ', 'Moong(Green Gram)', '113', '33', 'BELGAUM'),
(2983, 'Karnataka', '2005', 'Rabi       ', 'Onion', '355', '3680', 'BELGAUM'),
(2984, 'Karnataka', '2005', 'Rabi       ', 'Other  Rabi pulses', '1515', '210', 'BELGAUM'),
(2985, 'Karnataka', '2005', 'Rabi       ', 'Peas & beans (Pulses)', '50', '263', 'BELGAUM'),
(2986, 'Karnataka', '2005', 'Rabi       ', 'Potato', '160', '2893', 'BELGAUM'),
(2987, 'Karnataka', '2005', 'Rabi       ', 'Rapeseed &Mustard', '238', '33', 'BELGAUM'),
(2988, 'Karnataka', '2005', 'Rabi       ', 'Safflower', '9662', '6991', 'BELGAUM'),
(2989, 'Karnataka', '2005', 'Rabi       ', 'Sunflower', '15159', '6477', 'BELGAUM'),
(2990, 'Karnataka', '2005', 'Rabi       ', 'Wheat', '63035', '65629', 'BELGAUM'),
(2991, 'Karnataka', '2005', 'Summer     ', 'Dry chillies', '808', '1119', 'BELGAUM'),
(2992, 'Karnataka', '2005', 'Summer     ', 'Jowar', '195', '213', 'BELGAUM'),
(2993, 'Karnataka', '2005', 'Summer     ', 'Maize', '2780', '9171', 'BELGAUM'),
(2994, 'Karnataka', '2005', 'Summer     ', 'Onion', '22', '366', 'BELGAUM'),
(2995, 'Karnataka', '2005', 'Summer     ', 'Peas & beans (Pulses)', '2', '10', 'BELGAUM'),
(2996, 'Karnataka', '2005', 'Summer     ', 'Potato', '10', '148', 'BELGAUM'),
(2997, 'Karnataka', '2005', 'Summer     ', 'Rice', '157', '484', 'BELGAUM'),
(2998, 'Karnataka', '2005', 'Summer     ', 'Sunflower', '782', '374', 'BELGAUM'),
(2999, 'Karnataka', '2005', 'Whole Year ', 'Arecanut', '9', '58', 'BELGAUM'),
(3000, 'Karnataka', '2005', 'Whole Year ', 'Banana', '5619', '183740', 'BELGAUM'),
(3001, 'Karnataka', '2005', 'Whole Year ', 'Coconut ', '611', '2632', 'BELGAUM'),
(3002, 'Karnataka', '2005', 'Whole Year ', 'Coriander', '522', '62', 'BELGAUM'),
(3003, 'Karnataka', '2005', 'Whole Year ', 'Cotton(lint)', '28359', '41840', 'BELGAUM'),
(3004, 'Karnataka', '2005', 'Whole Year ', 'Garlic', '509', '609', 'BELGAUM'),
(3005, 'Karnataka', '2005', 'Whole Year ', 'Mesta', '9', '19', 'BELGAUM'),
(3006, 'Karnataka', '2005', 'Whole Year ', 'Sugarcane', '92971', '8213988', 'BELGAUM'),
(3007, 'Karnataka', '2005', 'Whole Year ', 'Sweet potato', '2026', '19205', 'BELGAUM'),
(3008, 'Karnataka', '2005', 'Whole Year ', 'Tobacco', '20109', '21663', 'BELGAUM'),
(3009, 'Karnataka', '2005', 'Whole Year ', 'Turmeric', '784', '6271', 'BELGAUM'),
(3010, 'Karnataka', '2006', 'Kharif     ', 'Arhar/Tur', '5658', '1666', 'BELGAUM'),
(3011, 'Karnataka', '2006', 'Kharif     ', 'Bajra', '30036', '9567', 'BELGAUM'),
(3012, 'Karnataka', '2006', 'Kharif     ', 'Castor seed', '270', '216', 'BELGAUM'),
(3013, 'Karnataka', '2006', 'Kharif     ', 'Gram', '4322', '723', 'BELGAUM'),
(3014, 'Karnataka', '2006', 'Kharif     ', 'Groundnut', '62518', '29625', 'BELGAUM'),
(3015, 'Karnataka', '2006', 'Kharif     ', 'Horse-gram', '7270', '4247', 'BELGAUM'),
(3016, 'Karnataka', '2006', 'Kharif     ', 'Jowar', '38083', '50989', 'BELGAUM'),
(3017, 'Karnataka', '2006', 'Kharif     ', 'Maize', '92990', '319154', 'BELGAUM'),
(3018, 'Karnataka', '2006', 'Kharif     ', 'Moong(Green Gram)', '27519', '2640', 'BELGAUM'),
(3019, 'Karnataka', '2006', 'Kharif     ', 'Niger seed', '909', '209', 'BELGAUM'),
(3020, 'Karnataka', '2006', 'Kharif     ', 'Other Kharif pulses', '6442', '2334', 'BELGAUM'),
(3021, 'Karnataka', '2006', 'Kharif     ', 'Ragi', '14499', '941', 'BELGAUM'),
(3022, 'Karnataka', '2006', 'Kharif     ', 'Rapeseed &Mustard', '377', '52', 'BELGAUM'),
(3023, 'Karnataka', '2006', 'Kharif     ', 'Rice', '66922', '98851', 'BELGAUM'),
(3024, 'Karnataka', '2006', 'Kharif     ', 'Sesamum', '781', '332', 'BELGAUM'),
(3025, 'Karnataka', '2006', 'Kharif     ', 'Small millets', '4594', '3588', 'BELGAUM'),
(3026, 'Karnataka', '2006', 'Kharif     ', 'Soyabean', '76927', '58976', 'BELGAUM'),
(3027, 'Karnataka', '2006', 'Kharif     ', 'Sunflower', '20676', '14799', 'BELGAUM'),
(3028, 'Karnataka', '2006', 'Kharif     ', 'Urad', '4322', '723', 'BELGAUM'),
(3029, 'Kerala', '2014', 'Whole Year ', 'Turmeric', '65', '122', 'THIRUVANANTHAPURAM'),
(3030, 'Kerala', '2014', 'Winter     ', 'Rice', '1064', '2799', 'THIRUVANANTHAPURAM'),
(3031, 'Kerala', '1997', 'Whole Year ', 'Arecanut', '6238', '9140', 'THRISSUR'),
(3032, 'Kerala', '1997', 'Whole Year ', 'Black pepper', '5958', '1046', 'THRISSUR'),
(3033, 'Kerala', '1997', 'Whole Year ', 'Cashewnut', '4658', '2301', 'THRISSUR'),
(3034, 'Kerala', '1997', 'Whole Year ', 'Coconut ', '75784', '482000', 'THRISSUR'),
(3035, 'Kerala', '1997', 'Whole Year ', 'Tapioca', '3087', '76277', 'THRISSUR'),
(3036, 'Kerala', '1998', 'Autumn     ', 'Rice', '10019', '17623', 'THRISSUR'),
(3037, 'Kerala', '1998', 'Kharif     ', 'Sesamum', '148', '70', 'THRISSUR'),
(3038, 'Kerala', '1998', 'Summer     ', 'Rice', '6196', '14233', 'THRISSUR'),
(3039, 'Kerala', '1998', 'Whole Year ', 'Arecanut', '5450', '5750', 'THRISSUR'),
(3040, 'Kerala', '1998', 'Whole Year ', 'Banana', '2475', '35071', 'THRISSUR'),
(3041, 'Kerala', '1998', 'Whole Year ', 'Black pepper', '4369', '919', 'THRISSUR'),
(3042, 'Kerala', '1998', 'Whole Year ', 'Cashewnut', '4339', '1796', 'THRISSUR'),
(3043, 'Kerala', '1998', 'Whole Year ', 'Coconut ', '81171', '534000', 'THRISSUR'),
(3044, 'Kerala', '1998', 'Whole Year ', 'Dry chillies', '18', '15', 'THRISSUR'),
(3045, 'Kerala', '1998', 'Whole Year ', 'Dry ginger', '92', '176', 'THRISSUR'),
(3046, 'Kerala', '1998', 'Whole Year ', 'Tapioca', '1809', '38529', 'THRISSUR'),
(3047, 'Kerala', '1998', 'Whole Year ', 'Turmeric', '87', '123', 'THRISSUR'),
(3048, 'Kerala', '1998', 'Winter     ', 'Rice', '23000', '42334', 'THRISSUR'),
(3049, 'Madhya Pradesh', '2013', 'Whole Year ', 'Dry ginger', '12', '10', 'MORENA'),
(3050, 'Madhya Pradesh', '2013', 'Whole Year ', 'Garlic', '18', '39', 'MORENA'),
(3051, 'Madhya Pradesh', '2013', 'Whole Year ', 'Onion', '111', '831', 'MORENA'),
(3052, 'Madhya Pradesh', '2013', 'Whole Year ', 'Potato', '2076', '38289', 'MORENA'),
(3053, 'Madhya Pradesh', '2013', 'Whole Year ', 'Sesamum', '3666', '1927', 'MORENA'),
(3054, 'Madhya Pradesh', '2013', 'Whole Year ', 'Sugarcane', '229', '12660', 'MORENA'),
(3055, 'Madhya Pradesh', '2013', 'Whole Year ', 'Sweet potato', '11', '61', 'MORENA'),
(3056, 'Madhya Pradesh', '1997', 'Kharif     ', 'Arhar/Tur', '14800', '20700', 'NARSINGHPUR'),
(3057, 'Madhya Pradesh', '1997', 'Kharif     ', 'Jowar', '5900', '7800', 'NARSINGHPUR'),
(3058, 'Madhya Pradesh', '1997', 'Kharif     ', 'Maize', '400', '700', 'NARSINGHPUR'),
(3059, 'Madhya Pradesh', '1997', 'Kharif     ', 'Paddy', '8200', '9000', 'NARSINGHPUR'),
(3060, 'Madhya Pradesh', '1997', 'Kharif     ', 'Sesamum', '3600', '1300', 'NARSINGHPUR'),
(3061, 'Madhya Pradesh', '1997', 'Kharif     ', 'Small millets', '4600', '1200', 'NARSINGHPUR'),
(3062, 'Madhya Pradesh', '1997', 'Kharif     ', 'Soyabean', '121600', '172000', 'NARSINGHPUR'),
(3063, 'Madhya Pradesh', '1997', 'Kharif     ', 'Sunflower', '700', '500', 'NARSINGHPUR'),
(3064, 'Madhya Pradesh', '1997', 'Rabi       ', 'Linseed', '100', '100', 'NARSINGHPUR'),
(3065, 'Madhya Pradesh', '1997', 'Rabi       ', 'Rapeseed &Mustard', '1100', '900', 'NARSINGHPUR'),
(3066, 'Madhya Pradesh', '1997', 'Rabi       ', 'Wheat', '88500', '120300', 'NARSINGHPUR'),
(3067, 'Meghalaya', '2005', 'Whole Year ', 'Banana', '381', '1448', 'EAST JAINTIA HILLS'),
(3068, 'Meghalaya', '2005', 'Whole Year ', 'Dry chillies', '132', '102', 'EAST JAINTIA HILLS'),
(3069, 'Meghalaya', '2005', 'Whole Year ', 'Potato', '282', '2091', 'EAST JAINTIA HILLS'),
(3070, 'Meghalaya', '2005', 'Whole Year ', 'Sugarcane', '7', '5', 'EAST JAINTIA HILLS'),
(3071, 'Meghalaya', '2005', 'Whole Year ', 'Sweet potato', '2030', '5938', 'EAST JAINTIA HILLS'),
(3072, 'Meghalaya', '2005', 'Whole Year ', 'Tapioca', '31', '421', 'EAST JAINTIA HILLS'),
(3073, 'Meghalaya', '2005', 'Whole Year ', 'Tobacco', '8', '2', 'EAST JAINTIA HILLS'),
(3074, 'Meghalaya', '2005', 'Whole Year ', 'Turmeric', '1039', '6362', 'EAST JAINTIA HILLS'),
(3075, 'Meghalaya', '2005', 'Winter     ', 'Rice', '12194', '18669', 'EAST JAINTIA HILLS'),
(3076, 'Meghalaya', '2006', 'Autumn     ', 'Rice', '98', '167', 'EAST JAINTIA HILLS'),
(3077, 'Meghalaya', '2006', 'Kharif     ', 'Banana', '382', '1457', 'EAST JAINTIA HILLS'),
(3078, 'Meghalaya', '2006', 'Kharif     ', 'Dry ginger', '255', '2560', 'EAST JAINTIA HILLS'),
(3079, 'Meghalaya', '2006', 'Kharif     ', 'Maize', '2915', '3432', 'EAST JAINTIA HILLS'),
(3080, 'Meghalaya', '2006', 'Kharif     ', 'Soyabean', '410', '416', 'EAST JAINTIA HILLS'),
(3081, 'Meghalaya', '2006', 'Kharif     ', 'Tapioca', '31', '422', 'EAST JAINTIA HILLS'),
(3082, 'Meghalaya', '2006', 'Rabi       ', 'Arecanut', '1635', '3207', 'EAST JAINTIA HILLS'),
(3083, 'Meghalaya', '2006', 'Rabi       ', 'Dry chillies', '127', '100', 'EAST JAINTIA HILLS'),
(3084, 'Meghalaya', '2006', 'Rabi       ', 'Other  Rabi pulses', '104', '75', 'EAST JAINTIA HILLS'),
(3085, 'Meghalaya', '2006', 'Rabi       ', 'Potato', '285', '2438', 'EAST JAINTIA HILLS'),
(3086, 'Odisha', '2003', 'Kharif     ', 'Maize', '271', '220.4', 'DEOGARH'),
(3087, 'Odisha', '2003', 'Kharif     ', 'Moong(Green Gram)', '2783', '493.7', 'DEOGARH'),
(3088, 'Odisha', '2003', 'Kharif     ', 'Ragi', '1', '0.2', 'DEOGARH'),
(3089, 'Odisha', '2003', 'Kharif     ', 'Rice', '50000', '73000', 'DEOGARH'),
(3090, 'Odisha', '2003', 'Kharif     ', 'Sesamum', '2557', '675.8', 'DEOGARH'),
(3091, 'Odisha', '2003', 'Kharif     ', 'Urad', '1740', '367.6', 'DEOGARH'),
(3092, 'Odisha', '2003', 'Rabi       ', 'Castor seed', '40', '20', 'DEOGARH'),
(3093, 'Odisha', '2003', 'Rabi       ', 'Gram', '500', '220', 'DEOGARH'),
(3094, 'Odisha', '2003', 'Rabi       ', 'Niger seed', '280', '110', 'DEOGARH'),
(3095, 'Odisha', '2003', 'Rabi       ', 'Other  Rabi pulses', '680', '520', 'DEOGARH'),
(3096, 'Odisha', '2003', 'Rabi       ', 'Rapeseed &Mustard', '289', '60.4', 'DEOGARH'),
(3097, 'Odisha', '2003', 'Rabi       ', 'Sunflower', '360', '180', 'DEOGARH'),
(3098, 'Odisha', '2003', 'Rabi       ', 'Wheat', '136', '188.5', 'DEOGARH'),
(3099, 'Odisha', '2003', 'Whole Year ', 'Coriander', '410', '200', 'DEOGARH'),
(3100, 'Odisha', '2003', 'Whole Year ', 'Dry chillies', '1690', '1450', 'DEOGARH'),
(3101, 'Rajasthan', '2006', 'Whole Year ', 'Dry chillies', '25', '13', 'BARMER'),
(3102, 'Rajasthan', '2006', 'Whole Year ', 'Guar seed', '421817', '56342', 'BARMER'),
(3103, 'Rajasthan', '2006', 'Whole Year ', 'Onion', '1', '2', 'BARMER'),
(3104, 'Rajasthan', '2006', 'Whole Year ', 'Sweet potato', '21', '21', 'BARMER'),
(3105, 'Rajasthan', '2007', 'Kharif     ', 'Bajra', '960403', '166442', 'BARMER'),
(3106, 'Rajasthan', '2007', 'Kharif     ', 'Castor seed', '21303', '17313', 'BARMER'),
(3107, 'Rajasthan', '2007', 'Kharif     ', 'Cotton(lint)', '5', '2', 'BARMER'),
(3108, 'Rajasthan', '2007', 'Kharif     ', 'Groundnut', '305', '526', 'BARMER'),
(3109, 'Rajasthan', '2007', 'Kharif     ', 'Jowar', '1221', '117', 'BARMER'),
(3110, 'Rajasthan', '2007', 'Kharif     ', 'Maize', '15', '28', 'BARMER'),
(3111, 'Rajasthan', '2007', 'Kharif     ', 'Moong(Green Gram)', '57944', '6211', 'BARMER'),
(3112, 'Rajasthan', '2007', 'Kharif     ', 'Moth', '208803', '40608', 'BARMER'),
(3113, 'Rajasthan', '2007', 'Kharif     ', 'Sesamum', '2139', '214', 'BARMER'),
(3114, 'Rajasthan', '2007', 'Rabi       ', 'Barley', '72', '156', 'BARMER'),
(3115, 'Tamil Nadu', '2013', 'Whole Year ', 'Banana', '1815', '86895', 'TIRUPPUR'),
(3116, 'Tamil Nadu', '2013', 'Whole Year ', 'Black pepper', '1', '290', 'TIRUPPUR'),
(3117, 'Tamil Nadu', '2013', 'Whole Year ', 'Cashewnut', '203', '58', 'TIRUPPUR'),
(3118, 'Tamil Nadu', '2013', 'Whole Year ', 'Coconut ', '56484', '3613000', 'TIRUPPUR'),
(3119, 'Tamil Nadu', '2013', 'Whole Year ', 'Coriander', '423', '378', 'TIRUPPUR'),
(3120, 'Tamil Nadu', '2013', 'Whole Year ', 'Dry chillies', '612', '167', 'TIRUPPUR'),
(3121, 'Tamil Nadu', '2013', 'Whole Year ', 'Gram', '2756', '1921', 'TIRUPPUR'),
(3122, 'Tamil Nadu', '2013', 'Whole Year ', 'Sugarcane', '4713', '461927', 'TIRUPPUR'),
(3123, 'Tamil Nadu', '2013', 'Whole Year ', 'Tapioca', '229', '6524', 'TIRUPPUR'),
(3124, 'Tamil Nadu', '2013', 'Whole Year ', 'Tobacco', '278', '437', 'TIRUPPUR'),
(3125, 'Tamil Nadu', '2013', 'Whole Year ', 'Turmeric', '1011', '2704', 'TIRUPPUR'),
(3126, 'Tamil Nadu', '1997', 'Kharif     ', 'Banana', '1757', '66962', 'TIRUVANNAMALAI'),
(3127, 'Tamil Nadu', '1997', 'Kharif     ', 'Horse-gram', '2675', '1530', 'TIRUVANNAMALAI'),
(3128, 'Tamil Nadu', '1997', 'Kharif     ', 'Onion', '177', '1431', 'TIRUVANNAMALAI'),
(3129, 'Tamil Nadu', '1997', 'Kharif     ', 'Sesamum', '995', '420', 'TIRUVANNAMALAI'),
(3130, 'Tripura', '2012', 'Rabi       ', 'Masoor', '11', '7', 'SEPAHIJALA'),
(3131, 'Tripura', '2012', 'Rabi       ', 'Moong(Green Gram)', '19', '10', 'SEPAHIJALA'),
(3132, 'Tripura', '2012', 'Rabi       ', 'Other  Rabi pulses', '88', '65', 'SEPAHIJALA'),
(3133, 'Tripura', '2012', 'Rabi       ', 'Peas & beans (Pulses)', '95', '69', 'SEPAHIJALA'),
(3134, 'Tripura', '2012', 'Rabi       ', 'Rapeseed &Mustard', '135', '108', 'SEPAHIJALA'),
(3135, 'Tripura', '2012', 'Rabi       ', 'Urad', '26', '16', 'SEPAHIJALA'),
(3136, 'Tripura', '2012', 'Rabi       ', 'Wheat', '32', '76', 'SEPAHIJALA'),
(3137, 'Tripura', '2012', 'Whole Year ', 'Sugarcane', '56', '3005', 'SEPAHIJALA'),
(3138, 'Tripura', '2013', 'Kharif     ', 'Arhar/Tur', '246', '203', 'SEPAHIJALA'),
(3139, 'Tripura', '2013', 'Kharif     ', 'Cotton(lint)', '13', '20', 'SEPAHIJALA'),
(3140, 'Tripura', '2013', 'Kharif     ', 'Groundnut', '2', '2', 'SEPAHIJALA'),
(3141, 'Tripura', '2013', 'Kharif     ', 'Jute', '21', '187', 'SEPAHIJALA'),
(3142, 'Tripura', '2013', 'Kharif     ', 'Maize', '490', '584', 'SEPAHIJALA'),
(3143, 'Uttar Pradesh', '1998', 'Kharif     ', 'Groundnut', '3032', '2514', 'BIJNOR'),
(3144, 'Uttar Pradesh', '1998', 'Kharif     ', 'Jowar', '2', '1', 'BIJNOR'),
(3145, 'Uttar Pradesh', '1998', 'Kharif     ', 'Maize', '304', '337', 'BIJNOR'),
(3146, 'Uttar Pradesh', '1998', 'Kharif     ', 'Moong(Green Gram)', '10', '2', 'BIJNOR'),
(3147, 'Uttar Pradesh', '1998', 'Kharif     ', 'Rice', '65312', '183983', 'BIJNOR'),
(3148, 'Uttar Pradesh', '1998', 'Kharif     ', 'Sesamum', '338', '21', 'BIJNOR'),
(3149, 'Uttar Pradesh', '1998', 'Kharif     ', 'Small millets', '5', '3', 'BIJNOR'),
(3150, 'Uttar Pradesh', '1998', 'Kharif     ', 'Soyabean', '14', '6', 'BIJNOR'),
(3151, 'Uttar Pradesh', '1998', 'Kharif     ', 'Urad', '2618', '827', 'BIJNOR'),
(3152, 'Uttar Pradesh', '1998', 'Rabi       ', 'Barley', '76', '181', 'BIJNOR'),
(3153, 'Uttar Pradesh', '1998', 'Rabi       ', 'Gram', '406', '359', 'BIJNOR'),
(3154, 'Uttar Pradesh', '1998', 'Rabi       ', 'Linseed', '3', '1', 'BIJNOR'),
(3155, 'Uttar Pradesh', '1998', 'Rabi       ', 'Masoor', '2853', '1752', 'BIJNOR'),
(3156, 'Uttar Pradesh', '1998', 'Rabi       ', 'Peas & beans (Pulses)', '423', '434', 'BIJNOR'),
(3157, 'Uttar Pradesh', '1998', 'Rabi       ', 'Rapeseed &Mustard', '1060', '994', 'BIJNOR'),
(3158, 'Uttar Pradesh', '1998', 'Rabi       ', 'Sunflower', '5', '5', 'BIJNOR'),
(3159, 'West Bengal', '1999', 'Whole Year ', 'Arecanut', '259', '537', 'DARJEELING'),
(3160, 'West Bengal', '1999', 'Whole Year ', 'Cardamom', '2875', '690', 'DARJEELING'),
(3161, 'West Bengal', '1999', 'Whole Year ', 'Coconut ', '133', '2334', 'DARJEELING'),
(3162, 'West Bengal', '1999', 'Whole Year ', 'Turmeric', '120', '100', 'DARJEELING'),
(3163, 'West Bengal', '1999', 'Winter     ', 'Potato', '4621', '57279', 'DARJEELING'),
(3164, 'West Bengal', '1999', 'Winter     ', 'Rice', '30056', '42850', 'DARJEELING'),
(3165, 'West Bengal', '1999', 'Winter     ', 'Sesamum', '37', '22', 'DARJEELING'),
(3166, 'West Bengal', '2000', 'Autumn     ', 'Rice', '5369', '8210', 'DARJEELING'),
(3167, 'West Bengal', '2000', 'Kharif     ', 'Arhar/Tur', '8', '10', 'DARJEELING'),
(3168, 'West Bengal', '2000', 'Kharif     ', 'Dry ginger', '2054', '6025', 'DARJEELING'),
(3169, 'West Bengal', '2000', 'Kharif     ', 'Jute', '2227', '18110', 'DARJEELING'),
(3170, 'West Bengal', '2000', 'Kharif     ', 'Maize', '12876', '39870', 'DARJEELING'),
(3171, 'West Bengal', '2000', 'Kharif     ', 'Niger seed', '8', '4', 'DARJEELING'),
(3172, 'West Bengal', '2000', 'Kharif     ', 'Other Kharif pulses', '95', '62', 'DARJEELING'),
(3173, 'West Bengal', '2000', 'Kharif     ', 'Ragi', '11320', '13543', 'DARJEELING');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_crop_prediction`
--

CREATE TABLE IF NOT EXISTS `remote_user_crop_prediction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `State_Name` varchar(300) NOT NULL,
  `Crop_Year` varchar(300) NOT NULL,
  `Season` varchar(300) NOT NULL,
  `names` varchar(300) NOT NULL,
  `Area` varchar(300) NOT NULL,
  `Production` varchar(300) NOT NULL,
  `Yield_Prediction` varchar(300) NOT NULL,
  `Production_Prediction` varchar(300) NOT NULL,
  `District_Name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `remote_user_crop_prediction`
--

INSERT INTO `remote_user_crop_prediction` (`id`, `State_Name`, `Crop_Year`, `Season`, `names`, `Area`, `Production`, `Yield_Prediction`, `Production_Prediction`, `District_Name`) VALUES
(4, 'Andaman and Nicobar Islands', '2001', 'Whole Year', 'Banana', '213', '1278', '-60540', '6.0', 'NICOBARS'),
(12, 'Andaman and Nicobar Islands', '2002', 'Whole Year', 'Coconut', '18240', '6749000', '168425000', '370.0109649122807', 'NICOBARS'),
(13, 'Karnataka', '2006', 'Kharif', 'Ragi', '14499', '941', '-234130', '0.0649010276570798', 'BELGAUM'),
(14, 'Karnataka', '2006', 'Kharif', 'Rice', '66922', '98851', '4642550', '1.4771076775948118', 'BELGAUM'),
(15, 'Kerala', '1997', 'Whole Year', 'Coconut', '75784', '482000', '11750000', '6.360181568668848', 'THRISSUR'),
(16, 'Kerala', '1998', 'Summer', 'Rice', '6196', '14233', '411650', '2.2971271788250482', 'THRISSUR'),
(17, 'Tamil Nadu', '1997', 'Kharif', 'Banana', '1757', '66962', '4387340', '38.11155378486056', 'TIRUVANNAMALAI'),
(18, 'Tamil Nadu', '1997', 'Kharif', 'Onion', '177', '1431', '-21210', '8.084745762711865', 'TIRUVANNAMALAI'),
(19, 'Karnataka', '2004', 'Summer', 'Rice', '143', '635', '-118250', '4.440559440559441', 'BELGAUM'),
(20, 'Karnataka', '2005', 'Kharif', 'Groundnut', '62529', '28617', '4564890', '0.45765964592429115', 'BELGAUM');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_accuracy`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_accuracy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `remote_user_detection_accuracy`
--

INSERT INTO `remote_user_detection_accuracy` (`id`, `names`, `ratio`) VALUES
(85, 'Naive Bayes', '82.0'),
(86, 'SVM', '82.0'),
(87, 'Logistic Regression', '82.0'),
(88, 'Decision Tree Classifier', '82.0'),
(89, 'KNeighborsClassifier', '54.0');

-- --------------------------------------------------------

--
-- Table structure for table `remote_user_detection_ratio`
--

CREATE TABLE IF NOT EXISTS `remote_user_detection_ratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(300) NOT NULL,
  `ratio` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
