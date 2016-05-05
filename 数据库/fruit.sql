/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50704
Source Host           : 127.0.0.1:3306
Source Database       : fruit

Target Server Type    : MYSQL
Target Server Version : 50704
File Encoding         : 65001

Date: 2016-04-30 23:08:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fruit_good
-- ----------------------------
DROP TABLE IF EXISTS `fruit_good`;
CREATE TABLE `fruit_good` (
  `good_id` char(32) NOT NULL,
  `good_name` varchar(20) DEFAULT NULL,
  `good_photo_url` varchar(100) DEFAULT NULL,
  `good_desc` varchar(200) DEFAULT NULL,
  `creator` char(10) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Table structure for fruit_notice
-- ----------------------------
DROP TABLE IF EXISTS `fruit_notice`;
CREATE TABLE `fruit_notice` (
  `notice_id` char(32) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `creator` char(32) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='市场公告表';

-- ----------------------------
-- Table structure for fruit_order
-- ----------------------------
DROP TABLE IF EXISTS `fruit_order`;
CREATE TABLE `fruit_order` (
  `order_id` char(32) NOT NULL,
  `store_id` char(32) DEFAULT NULL,
  `buyer_id` char(32) DEFAULT NULL,
  `order_status` char(8) DEFAULT NULL,
  `order_price` decimal(13,4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Table structure for fruit_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `fruit_order_detail`;
CREATE TABLE `fruit_order_detail` (
  `order_detail_id` char(32) NOT NULL,
  `order_id` char(32) DEFAULT NULL,
  `good_id` char(32) DEFAULT NULL,
  `value_unit` char(8) DEFAULT NULL,
  `final_price` decimal(5,2) DEFAULT NULL,
  `num` decimal(9,2) DEFAULT NULL,
  `total_price` decimal(9,2) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单明细表';

-- ----------------------------
-- Table structure for fruit_selling
-- ----------------------------
DROP TABLE IF EXISTS `fruit_selling`;
CREATE TABLE `fruit_selling` (
  `good_id` char(32) NOT NULL,
  `store_id` char(32) DEFAULT NULL,
  `value_unit` char(8) DEFAULT NULL,
  `sale_price` decimal(5,2) DEFAULT NULL,
  `good_status` char(9) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='正在销售表';

-- ----------------------------
-- Table structure for fruit_stock
-- ----------------------------
DROP TABLE IF EXISTS `fruit_stock`;
CREATE TABLE `fruit_stock` (
  `stock_id` char(32) NOT NULL,
  `store_id` char(32) DEFAULT NULL,
  `good_id` char(32) DEFAULT NULL,
  `value_unit` char(8) DEFAULT NULL,
  `left_num` decimal(7,2) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='库存表';

-- ----------------------------
-- Table structure for fruit_stock_in
-- ----------------------------
DROP TABLE IF EXISTS `fruit_stock_in`;
CREATE TABLE `fruit_stock_in` (
  `stock_batch_no` char(32) NOT NULL,
  `store_id` char(32) DEFAULT NULL,
  `total_price` decimal(9,2) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`stock_batch_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='进货表';

-- ----------------------------
-- Table structure for fruit_stock_in_detail
-- ----------------------------
DROP TABLE IF EXISTS `fruit_stock_in_detail`;
CREATE TABLE `fruit_stock_in_detail` (
  `stock_in_detail_id` char(32) NOT NULL,
  `stock_in_batch_no` char(32) DEFAULT NULL,
  `good_id` char(32) DEFAULT NULL,
  `value_unit` char(8) DEFAULT NULL,
  `in_num` decimal(9,2) DEFAULT NULL,
  `in_price` decimal(5,2) DEFAULT NULL,
  `total_price` decimal(9,2) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stock_in_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='进货明细表';

-- ----------------------------
-- Table structure for fruit_store
-- ----------------------------
DROP TABLE IF EXISTS `fruit_store`;
CREATE TABLE `fruit_store` (
  `store_id` char(32) NOT NULL,
  `seller_id` char(32) DEFAULT NULL,
  `store_name` char(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺表';

-- ----------------------------
-- Table structure for fruit_user
-- ----------------------------
DROP TABLE IF EXISTS `fruit_user`;
CREATE TABLE `fruit_user` (
  `user_id` char(32) NOT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `pwd` char(32) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `user_type` char(1) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Table structure for resources_2_role
-- ----------------------------
DROP TABLE IF EXISTS `resources_2_role`;
CREATE TABLE `resources_2_role` (
  `resource_id` char(50) NOT NULL,
  `resource_name` char(15) DEFAULT NULL,
  `sup_resource_id` char(50) DEFAULT NULL,
  `role` char(1) NOT NULL,
  PRIMARY KEY (`resource_id`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与资源对应关系';
