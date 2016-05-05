/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50704
Source Host           : 127.0.0.1:3306
Source Database       : fruit

Target Server Type    : MYSQL
Target Server Version : 50704
File Encoding         : 65001

Date: 2016-04-30 23:07:59
*/

SET FOREIGN_KEY_CHECKS=0;

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

-- ----------------------------
-- Records of resources_2_role
-- ----------------------------
INSERT INTO `resources_2_role` VALUES ('/fruit/good/loadGood.do', '加载商品列表', null, 'C');
INSERT INTO `resources_2_role` VALUES ('/fruit/good/loadGoodInfo.do', '获取商品信息', null, 'C');
INSERT INTO `resources_2_role` VALUES ('/fruit/manager/addSeller.do', '添加卖家', null, 'M');
INSERT INTO `resources_2_role` VALUES ('/fruit/manager/addStore.do', '添加店铺', '', 'M');
INSERT INTO `resources_2_role` VALUES ('/fruit/manager/getUsers.do', '获取用户', null, 'M');
INSERT INTO `resources_2_role` VALUES ('/fruit/order/createOrder.do', '创建订单', null, 'P');
INSERT INTO `resources_2_role` VALUES ('/fruit/order/crete_new_order.html', '创建新订单', '/fruit/user/getMenu.do', 'S');
INSERT INTO `resources_2_role` VALUES ('/fruit/order/unproccessed_order_list.html', '待处理订单', '/fruit/user/getMenu.do', 'S');
INSERT INTO `resources_2_role` VALUES ('/fruit/seller/getAllSeller.do', '获取所有卖家', '', 'M');
INSERT INTO `resources_2_role` VALUES ('/fruit/seller/getStock.do', '获取库存信息', null, 'S');
INSERT INTO `resources_2_role` VALUES ('/fruit/seller/shelfGood.do', '商品上架', null, 'S');
INSERT INTO `resources_2_role` VALUES ('/fruit/stock/stockIn.do', '进货', '', 'S');
INSERT INTO `resources_2_role` VALUES ('/fruit/user/getMenu.do', '获取个人中心菜单', '', 'P');
INSERT INTO `resources_2_role` VALUES ('/fruit/user/getPassCode.do', '获取图片验证码', '', 'C');
INSERT INTO `resources_2_role` VALUES ('/fruit/user/getUserInfo.do', '获取用户名', null, 'P');
INSERT INTO `resources_2_role` VALUES ('/fruit/user/login.do', '用户登录', '', 'C');
INSERT INTO `resources_2_role` VALUES ('/fruit/user/logout.do', '退出登录', null, 'P');
INSERT INTO `resources_2_role` VALUES ('/fruit/user/register.do', '用户注册', '', 'C');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/buyer/cart.html', '购物车', '/fruit/user/getMenu.do', 'B');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/buyer/create_order.html', '创建订单', '/fruit/user/getMenu.do', 'B');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/buyer/history_order.html', '历史订单', '/fruit/user/getMenu.do', 'B');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/buyer/unproccessed_order_list.html', '待处理订单', '/fruit/user/getMenu.do', 'B');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/fruit/selling.html', '正在销售', '/fruit/user/getMenu.do', 'S');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/manager/create_notice.html', '发布公告', '/fruit/user/getMenu.do', 'M');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/manager/fruit_add_seller.html', '添加卖家', '/fruit/user/getMenu.do', 'M');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/manager/fruit_add_store.html', '添加店铺', '/fruit/user/getMenu.do', 'M');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/manager/fruit_manage_store.html', '店铺管理', '/fruit/user/getMenu.do', 'M');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/manager/fruit_manage_user.html', '用户管理', '/fruit/user/getMenu.do', 'M');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/order/history_order_list.html', '历史订单', '/fruit/user/getMenu.do', 'S');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/stock/stock_in.html', '创建进货单', '/fruit/user/getMenu.do', 'S');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/stock/stock_list.html', '库存', '/fruit/user/getMenu.do', 'S');
INSERT INTO `resources_2_role` VALUES ('/fruit/view/user/store_info.html', '店铺信息', '/fruit/user/getMenu.do', 'S');
