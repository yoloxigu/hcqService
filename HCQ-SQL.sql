-- phpMyAdmin SQL Dump
-- version 4.1.9
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: 2014-08-06 18:51:39
-- 服务器版本： 5.5.34
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `haochiquan`
--

-- --------------------------------------------------------

--
-- 表的结构 `hcq_subject`
--

CREATE TABLE `hcq_subject` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account_id` int(10) DEFAULT NULL,
  `user_name` char(18) DEFAULT NULL,
  `user_portrait` varchar(300) DEFAULT NULL,
  `user_icons` varchar(1000) DEFAULT NULL,
  `subject_title` char(50) DEFAULT NULL,
  `subject_content` text,
  `subject_pictrues` varchar(10000) DEFAULT NULL,
  `publish_date_time` datetime DEFAULT NULL,
  `publish_from_group_id` int(10) DEFAULT NULL,
  `publish_from_group` char(20) DEFAULT NULL,
  `subject_comment_count` int(11) DEFAULT NULL,
  `subject_reply_count` int(11) DEFAULT NULL,
  `subject_laud_count` int(11) DEFAULT NULL,
  `subject_is_collection` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `hcq_subject`
--

INSERT INTO `hcq_subject` (`id`, `account_id`, `user_name`, `user_portrait`, `user_icons`, `subject_title`, `subject_content`, `subject_pictrues`, `publish_date_time`, `publish_from_group_id`, `publish_from_group`, `subject_comment_count`, `subject_reply_count`, `subject_laud_count`, `subject_is_collection`) VALUES
(1, 1, 'user one', 'uploads/users/u140.png', 'uploads/small-icon.png', '话题标题 one', '话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文', 'uploads/contents/u73.jpg,uploads/contents/u75.jpg,uploads/contents/u77.jpg,uploads/contents/u79.jpg', '2014-07-10 11:10:00', 1, '圈子名称 noe', 22, 22, 22, 1),
(2, 2, 'user two', 'uploads/users/u155.png', 'uploads/small-icon.png', '话题标题 one', '话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文', 'uploads/contents/u79.jpg,uploads/contents/u81.jpg,uploads/contents/u83.jpg', '2014-07-10 11:10:00', 2, '圈子名称 two', 222, 222, 222, 0),
(3, 2, 'user two', 'uploads/users/u155.png', 'uploads/small-icon.png', '话题标题 one', '话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文', 'uploads/contents/u79.jpg,uploads/contents/u81.jpg,uploads/contents/u83.jpg', '2014-07-10 11:10:00', 2, '圈子名称 two', 333, 333, 333, 1),
(4, 3, 'user three', 'uploads/users/u533.png', 'uploads/small-icon.png', '话题标题 three', '话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文', 'uploads/contents/u199.jpg,uploads/contents/u277.jpg,uploads/contents/u279.jpg', '2014-07-10 11:10:00', 3, '圈子名称 three', 4444, 3444, 5555, 1),
(5, 3, 'user three', 'uploads/users/u533.png', 'uploads/small-icon.png', '话题标题 three 11111', '话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文', 'uploads/contents/u199.jpg,uploads/contents/u277.jpg,uploads/contents/u279.jpg', '2014-07-10 11:40:00', 3, '圈子名称 three', 4444, 3444, 5555, 1),
(6, 4, 'user four', 'uploads/users/u475.png', 'uploads/small-icon.png', '话题标题 four', '话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文', 'uploads/contents/u283.jpg,uploads/contents/u437.jpg,uploads/contents/u495.jpg', '2014-07-10 13:20:00', 4, '圈子名称 four', 7777, 8888, 9999, 0),
(7, 2, 'user four', 'uploads/users/u545.png', 'uploads/small-icon.png', '话题标题 four 20', '话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文话题内容正文', 'uploads/contents/u283.jpg,uploads/contents/u437.jpg,uploads/contents/u495.jpg', '2014-07-10 13:20:00', 20, '圈子名称 20', 111111, 222222, 33333, 1);

-- --------------------------------------------------------

--
-- 表的结构 `hcq_user_account`
--

CREATE TABLE `hcq_user_account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` char(18) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` tinyint(1) DEFAULT '0',
  `level` tinyint(2) DEFAULT '0',
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `hcq_user_account`
--

INSERT INTO `hcq_user_account` (`id`, `name`, `password`, `type`, `level`, `email`) VALUES
(1, 'user one', '*832EB84CB764129D05D498ED9CA7E', 0, 0, 'userone@hcq.com'),
(2, 'user tow', '*832EB84CB764129D05D498ED9CA7E', 0, 0, 'usertow@hcq.com'),
(3, 'user three', '*832EB84CB764129D05D498ED9CA7E', 0, 0, 'userthree@hcq.com'),
(4, 'wfwalking', '*FD571203974BA9AFE270FE62151AE', 0, 0, 'wfwalking@hcq.com');

-- --------------------------------------------------------

--
-- 表的结构 `hcq_user_info`
--

CREATE TABLE `hcq_user_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account_id` int(10) NOT NULL,
  `gender` tinyint(1) DEFAULT '-1',
  `age` smallint(3) DEFAULT NULL,
  `friends` text NOT NULL,
  `join_groups` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_account` (`account_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `hcq_user_info`
--

INSERT INTO `hcq_user_info` (`id`, `account_id`, `gender`, `age`, `friends`, `join_groups`) VALUES
(3, 1, 1, 22, '2,3,4', '1,2'),
(4, 2, 1, 23, '1,3', '1'),
(5, 3, 1, 25, '1,4', '1,2,3'),
(6, 4, 1, 27, '2,3', '1,2,3,4,20');

--
-- 限制导出的表
--

--
-- 限制表 `hcq_user_info`
--
ALTER TABLE `hcq_user_info`
  ADD CONSTRAINT `FK_account` FOREIGN KEY (`account_id`) REFERENCES `hcq_user_account` (`id`);
