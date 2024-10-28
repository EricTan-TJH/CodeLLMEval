/*
 Navicat Premium Data Transfer

 Source Server         : ls-local
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : 127.0.0.1:3306
 Source Schema         : product

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 28/10/2024 14:20:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ls_category
-- ----------------------------
DROP TABLE IF EXISTS `ls_category`;
CREATE TABLE `ls_category` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `code` varchar(50) NOT NULL COMMENT '分类编码，规则：1000+id，一共4位',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序，值越低，排靠前',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '-1 下架 0 上架',
  `level` tinyint NOT NULL DEFAULT '3' COMMENT '类目 1,2,3,一共三级',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '上级ID，根类目就是 0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_user_id` int NOT NULL DEFAULT '0' COMMENT '创建用户ID',
  `created_user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建用户名',
  `updated_user_id` int NOT NULL DEFAULT '0' COMMENT '更新用户ID',
  `updated_user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '更新用户名',
  `version` int NOT NULL DEFAULT '0' COMMENT '版本号',
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '删除状态 0:未删除；1：已删除',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品类目';

SET FOREIGN_KEY_CHECKS = 1;
