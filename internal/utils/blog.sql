CREATE TABLE `blog_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '標籤名稱',
  `created_on` int(10) unsigned DEFAULT '0' COMMENT '建立時間',
  `created_by` varchar(100) DEFAULT '' COMMENT '建立人',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改時間',
  `modified_by` varchar(100) DEFAULT '' COMMENT '修改人',
  `deleted_on` int(10) unsigned DEFAULT '0' COMMENT '刪除時間',
  `is_del` tinyint(3) unsigned DEFAULT '0' COMMENT '是否刪除0為未刪除、1為已刪除',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT '狀態0為禁用、1為啟用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='標籤管理';

-- CREATE TABLE `blog_auth` (
--   `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
--   `app_key` varchar(20) DEFAULT '' COMMENT 'Key',
--   `app_secret` varchar(50) DEFAULT '' COMMENT 'Secret',
--   `created_on` int(10) unsigned DEFAULT '0' COMMENT '建立時間',
--   `created_by` varchar(100) DEFAULT '' COMMENT '建立人',
--   `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改時間',
--   `modified_by` varchar(100) DEFAULT '' COMMENT '修改人',
--   `deleted_on` int(10) unsigned DEFAULT '0' COMMENT '刪除時間',
--   `is_del` tinyint(3) unsigned DEFAULT '0' COMMENT '是否刪除0為未刪除、1為已刪除',
--   PRIMARY KEY (`id`) USING BTREE
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='認證管理';

CREATE TABLE `blog_article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL COMMENT '文章ID',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '標籤ID',
  `created_on` int(10) unsigned DEFAULT '0' COMMENT '建立時間',
  `created_by` varchar(100) DEFAULT '' COMMENT '建立人',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改時間',
  `modified_by` varchar(100) DEFAULT '' COMMENT '修改人',
  `deleted_on` int(10) unsigned DEFAULT '0' COMMENT '刪除時間',
  `is_del` tinyint(3) unsigned DEFAULT '0' COMMENT '是否刪除0為未刪除、1為已刪除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章標籤連結';

CREATE TABLE `blog_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '文章標題',
  `desc` varchar(255) DEFAULT '' COMMENT '文章簡述',
  `cover_image_url` varchar(255) DEFAULT '' COMMENT '封面圖片位址',
  `content` longtext COMMENT '文章內容',
  `created_on` int(10) unsigned DEFAULT '0' COMMENT '建立時間',
  `created_by` varchar(100) DEFAULT '' COMMENT '建立人',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改時間',
  `modified_by` varchar(100) DEFAULT '' COMMENT '修改人',
  `deleted_on` int(10) unsigned DEFAULT '0' COMMENT '刪除時間',
  `is_del` tinyint(3) unsigned DEFAULT '0' COMMENT '是否刪除0為未刪除、1為已刪除',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT '狀態0為禁用、1為啟用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章管理';


-- create database
-- CREATE DATABASE
-- IF
-- 	NOT EXISTS blog_service DEFAULT CHARACTER 
-- 	SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci;


-- cehck tables
-- USE blog_service;
-- SHOW TABLES;