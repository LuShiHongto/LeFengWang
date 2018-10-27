/*
Navicat MySQL Data Transfer

Source Server         : lushao
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : lefeng

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-27 18:28:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for liebiao
-- ----------------------------
DROP TABLE IF EXISTS `liebiao`;
CREATE TABLE `liebiao` (
  `id` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `zhekou` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sale` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL,
  `pro` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liebiao
-- ----------------------------
INSERT INTO `liebiao` VALUES ('001', '../images/liebiao/liebiao_01.jpg', '(7.9折)', '欧莱雅清润葡萄籽水嫩洁面乳125ml 温和清洁 洗面奶', '78.0', '¥110.0', '温和清洁', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('002', '../images/baokuan/baokuan_002.jpg', '(7.1折)', '小迷糊【抖音爆款面膜贴】阿狸青春水漾焕采面膜49片 达人同款补水面膜', '239', '¥699', '保湿', '小迷糊专场', '小迷糊专场小迷糊专场小迷糊专场小迷糊专场小迷糊专场小迷糊专场小迷糊专场');
INSERT INTO `liebiao` VALUES ('003', '../images/baokuan/baokuan_003.jpg', '(7.8折)', '高姿高姿COGI 雪耳源萃保湿乳100g', '69', '¥89', '美白', '高姿专场', '高姿专场高姿专场高姿专场高姿专场高姿专场高姿专场高姿专场高姿专场高姿专场');
INSERT INTO `liebiao` VALUES ('004', '../images/liebiao/liebiao_02.jpg', '(7.2折)', '欧莱雅卸妆魔术水 三合一卸妆洁颜水深彻型95ml 深层清洁 温和卸妆水', '28.0', '¥39.0', '温和卸妆水', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('005', '../images/liebiao/liebiao_03.jpg', '(5.0折)', '欧莱雅复颜洁面+水+乳液礼盒', '400.0', '¥800.0', '紧致透亮淡化细纹抗皱', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('006', '../images/liebiao/liebiao_04.jpg', '(7.1折)', '欧莱雅复颜抗皱紧致滋润乳液110ml 滋润保湿 乳液', '170.0', '¥240', '滋润保湿', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('007', '../images/liebiao/liebiao_05.jpg', '(7.5折)', '欧莱雅复颜抗皱紧致滋润日霜50ml 护肤面霜', '165.0', '¥220.0', '护肤面霜', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('008', '../images/baokuan/baokuan_008.jpg', '(2.9折)', '京润珍珠【补水保湿滋润】京润珍珠 珍珠水之源梦幻礼盒 水乳液套装', '169', '¥575', '保湿', '京润专场', '京润专场京润专场京润专场京润专场京润专场京润专场京润专场京润专场京润专场京润专场');
INSERT INTO `liebiao` VALUES ('009', '../images/baokuan/baokuan_009.jpg', '(7.3折)', '欧珀莱欧珀莱 AUPRES 弹力循环滋润型樱花礼盒套装', '450', '¥620', '滋养肌肤', '欧珀莱专场', '欧珀莱专场欧珀莱专场欧珀莱专场欧珀莱专场欧珀莱专场欧珀莱专场欧珀莱专场欧珀莱专场');
INSERT INTO `liebiao` VALUES ('010', '../images/baokuan/baokuan_010.jpg', '(7.0折)', '卡姿兰卡姿兰Carslan流光水彩唇膏升级版3.5g 08#茜草姻红', '69', '¥99', '美丽', '卡姿兰专场', '卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场');
INSERT INTO `liebiao` VALUES ('011', '../images/baokuan/baokuan_011.jpg', '(4.7折)', '诗婷露雅诗婷露雅STEROREA 果本坚果保湿锁水眼精华液30g 眼霜', '79', '¥168', '滋润', '诗婷专场', '诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场');
INSERT INTO `liebiao` VALUES ('012', '../images/baokuan/baokuan_012.jpg', '(3.6折)', '卡姿兰卡姿兰Carslan蜗牛气垫调控霜尊享礼盒02#柔缎色唯品会定制礼盒节日礼物', '229', '¥637', '抖音同款', '卡姿兰专场', '卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场');
INSERT INTO `liebiao` VALUES ('013', '../images/baokuan/baokuan_013.jpg', '(1.8折)', '花肌粹色彩调控清透净颜套装(自然肤色）', '109', '¥607', '美白', '美白专场', '美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场');
INSERT INTO `liebiao` VALUES ('014', '../images/liebiao/liebiao_06.jpg', '(7.1折)', '欧莱雅复颜抗皱紧致滋润眼霜15ml 淡化鱼尾纹 眼霜', '170.0', '¥240.0', '淡化鱼尾纹', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('015', '../images/baokuan/baokuan_015.jpg', '(7.3折)', '兰瑟兰瑟LANSUR真丝π丝柔锁色唇膏08悦动3.8g 口红 持久保湿 不易脱色 雾面哑光', '109', '¥150', '美丽', '兰瑟专场', '兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场');
INSERT INTO `liebiao` VALUES ('016', '../images/baokuan/baokuan_016.jpg', '(4.7折)', '博倩博倩BOQIAN 牛奶蛋白滋养护发素500ml', '56', '¥119', '牛奶鸡蛋', '博倩专场', '博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场');
INSERT INTO `liebiao` VALUES ('017', '../images/liebiao/liebiao_07.jpg', '(7.5折)', '欧莱雅明星同款 复颜玻尿酸水光充盈导入晶露130ml 玻尿酸 护肤爽肤水', '180.0', '¥240.0', '护肤爽肤水', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('018', '../images/baokuan/baokuan_018.jpg', '(5.5折)', '贝佳斯【拯救易敏肌】贝佳斯 矿物营养美肤泥浆膜（白泥）212g/200ml 温和清洁 干皮补水', '208', '¥380', '黄土高原', '贝佳斯专场', '贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场');
INSERT INTO `liebiao` VALUES ('019', '../images/baokuan/baokuan_019.jpg', '(8.5折)', '佰草集【强化保湿 深度滋润】佰草集新玉润保湿菁华膏50g', '195', '¥230', '保湿', '佰草集专场', '佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场');
INSERT INTO `liebiao` VALUES ('020', '../images/liebiao/liebiao_08.jpg', '(6.9折)', '欧莱雅清润葡萄籽保湿乳液110ml 补水护肤滋养', '118.0', '¥170.0', '补水护肤', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('021', '../images/baokuan/baokuan_021.jpg', '(6.6折)', '丝塔芙【人气洁面大奖】丝塔芙洁面乳591ml 保湿洗面奶 以实物为准', '125', '¥188', '美白', '丝塔芙专场', '丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场');
INSERT INTO `liebiao` VALUES ('022', '../images/baokuan/baokuan_022.jpg', '(5.2折)', '色彩地带色彩地带 毛孔隐形修颜套装（自然偏白） 多色', '109', '¥210', '美白', '色彩地带专场', '色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场');
INSERT INTO `liebiao` VALUES ('023', '../images/baokuan/baokuan_023.jpg', '(6.1折)', '吉列吉列Gillette 吉列锋隐4刀头 顺滑舒爽 锋隐刀片 手动刮胡剃须刀片 彩色', '127', '¥209', '', '吉列专场', '吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场');
INSERT INTO `liebiao` VALUES ('024', '../images/baokuan/baokuan_024.jpg', '(9.9折)', '气韵【净澈舒爽】百雀羚气韵 肌活沁润柔肤洁面膏120g  洗面奶 其他颜色', '79', '¥80', '肌活沁润', '气韵专场', '气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场');
INSERT INTO `liebiao` VALUES ('025', '../images/baokuan/baokuan_025.jpg', '(9.9折)', '气韵【净澈舒爽】百雀羚气韵 肌活沁润柔肤洁面膏120g  洗面奶 其他颜色', '79', '¥80', '肌活沁润', '气韵专场', '气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场');
INSERT INTO `liebiao` VALUES ('026', '../images/baokuan/baokuan_026.jpg', '(8.3折)', '凯芙兰凯芙兰Kafellon摩方柔雾唇膏12#霓虹紫粉 3.5g （口红）', '99', '¥119', '美丽', '凯芙兰专场', '凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场');
INSERT INTO `liebiao` VALUES ('027', '../images/baokuan/baokuan_027.jpg', '(7.9折)', '兰瑟兰瑟 迷踪渐变眼影 大地色裸妆三色眼影彩妆易上色 03闪电紫', '69', '¥87', '美丽', '兰瑟专场', '兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场');
INSERT INTO `liebiao` VALUES ('028', '../images/baokuan/baokuan_028.jpg', '(1.9折)', '丸美【眼纹克星】MARUBI 丸美 弹力蛋白凝时紧致眼贴膜6对 眼膜', '58', '¥308', '美白', '丸美专场', '丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场');
INSERT INTO `liebiao` VALUES ('029', '../images/baokuan/baokuan_029.jpg', '(2.7折)', '里美里美limi V10去角质焕亮爽肤水', '49', '¥184', '清爽', '里美专场', '里美专场里美专场里美专场里美专场里美专场里美专场里美专场里美专场里美专场里美专场里美专场');
INSERT INTO `liebiao` VALUES ('030', '../images/baokuan/baokuan_030.jpg', '(6.3折)', '膜法世家【明亮珍珠肌】膜法世家珍珠粉泥浆面膜135g  深层清洁泥浆面膜', '79', '¥126', '黄土高原', '膜法世家专场', '膜法世家专场膜法世家专场膜法世家专场膜法世家专场膜法世家专场膜法世家专场膜法世家专场膜法世家专场');
INSERT INTO `liebiao` VALUES ('031', '../images/baokuan/baokuan_031.jpg', '(4.1折)', '好孩子GB好孩子食物调理器组 宝宝辅食研磨器 手动食物辅食料理工具婴儿果泥料理机研磨碗', '57', '¥139', '实用', '好孩子专场', '好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场');
INSERT INTO `liebiao` VALUES ('032', '../images/baokuan/baokuan_032.jpg', '(4.9折)', '丸美【肌肤爱吃巧克力】MARUBI 丸美 新肌丝滑系列肤如凝脂三件套  礼盒', '288', '¥584', '三件装', '丸美专场', '丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场');
INSERT INTO `liebiao` VALUES ('033', '../images/baokuan/baokuan_033.jpg', '(4.6折)', '俏十岁【保湿滋补】俏十岁CHOISKYCN 温润舒缓护肤套装 温和舒缓礼盒 白色', '289', '¥631', '保湿', '美白专场', '美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场');
INSERT INTO `liebiao` VALUES ('034', '../images/baokuan/baokuan_034.jpg', '(6.1折)', '吉列吉列Gillette 吉列锋隐4刀头 顺滑舒爽 锋隐刀片 手动刮胡剃须刀片 彩色', '127', '¥209', '', '吉列专场', '吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场');
INSERT INTO `liebiao` VALUES ('035', '../images/baokuan/baokuan_035.jpg', '(9.9折)', '气韵【净澈舒爽】百雀羚气韵 肌活沁润柔肤洁面膏120g  洗面奶 其他颜色', '79', '¥80', '清爽', '气韵专场', '气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场');
INSERT INTO `liebiao` VALUES ('036', '../images/baokuan/baokuan_036.jpg', '(8.3折)', '凯芙兰凯芙兰Kafellon摩方柔雾唇膏12#霓虹紫粉 3.5g （口红）', '99', '¥119', '润唇', '凯芙兰专场', '凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场');
INSERT INTO `liebiao` VALUES ('037', '../images/baokuan/baokuan_037.jpg', '(7.9折)', '兰瑟兰瑟 迷踪渐变眼影 大地色裸妆三色眼影彩妆易上色 03闪电紫', '69', '¥87', '眼影', '兰瑟专场', '兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场');
INSERT INTO `liebiao` VALUES ('038', '../images/baokuan/baokuan_038.jpg', '(7.9折)', '贝德玛【拯救大油田】贝德玛BIODERMA净妍控油洁肤液 250ml 清爽卸妆水', '125', '¥158', '清爽卸妆', '贝德玛专场', '贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场');
INSERT INTO `liebiao` VALUES ('039', '../images/baokuan/baokuan_039.jpg', '(8.0折)', '滋源滋源茶籽控油去屑超值装（洗发水470ml）洗发水 无硅油 油性去屑', '79', '¥99', '去屑去油', '滋源专场', '滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场');
INSERT INTO `liebiao` VALUES ('040', '../images/baokuan/baokuan_040.jpg', '(8.5折)', '欧莱雅欧莱雅清润多重活性保湿清新冰露 110ml', '119', '¥140', '保湿滋润', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('041', '../images/baokuan/baokuan_041.jpg', '(8.8折)', '佰草集【免洗面膜 保湿补水】佰草集新玉润保湿水晶面膜120ml', '195', '¥230', '滋润保湿', '佰草集专场', '佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场');
INSERT INTO `liebiao` VALUES ('042', '../images/baokuan/baokuan_042.jpg', '(6.3折)', '安婕妤【深层补水保湿】安婕妤ANGLEE 胶原润透洁肤乳120ml 温和清洁 净化毛孔 洁面乳 洗面奶', '69', '¥110', '补水滋润', '安婕妤专场', '安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场');
INSERT INTO `liebiao` VALUES ('043', '../images/baokuan/baokuan_043.jpg', '(6.4折)', '欧莱雅【王源同款】欧莱雅黑管纷泽丰润雾感唇膏 （辣椒红239 +摩卡奶茶色202）礼盒装 口红', '199', '¥309', '摩卡奶茶色', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('044', '../images/baokuan/baokuan_044.jpg', '(9.9折)', '玛丽黛佳【人气小蘑菇】玛丽黛佳王一博手绘版美颜霜 20g 气垫 亮肤色', '198', '¥199', '亮肤色', '玛丽黛佳专场', '玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场');
INSERT INTO `liebiao` VALUES ('045', '../images/baokuan/baokuan_045.jpg', '(3.9折)', '博倩博倩BOQIAN 老姜王防脱育发超值三件套 洗护套装', '69', '¥178', '洗护套装', '博倩专场', '博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场');
INSERT INTO `liebiao` VALUES ('046', '../images/baokuan/baokuan_046.jpg', '(3.7折)', '花瑶花【深层锁水保湿】花瑶花   百合基础透亮保湿套装 水乳液套装', '159', '¥429', '套装', '花瑶花专场', '花瑶花专场花瑶花专场花瑶花专场花瑶花专场花瑶花专场花瑶花专场花瑶花专场花瑶花专场花瑶花专场');
INSERT INTO `liebiao` VALUES ('047', '../images/baokuan/baokuan_047.jpg', '(9.0折)', '迪奥Dior迪奥  蓝金液唇膏272  6ml  口红 唇彩 唇釉 持久提亮', '270', '¥300', '提亮', '奥迪Dior专场', '奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场');
INSERT INTO `liebiao` VALUES ('048', '../images/baokuan/baokuan_048.jpg', '(7.9折)', '贝德玛【拯救大油田】贝德玛BIODERMA净妍控油洁肤液 250ml 清爽卸妆水', '125', '¥158', '爽肤', '贝德玛专场', '贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场');
INSERT INTO `liebiao` VALUES ('049', '../images/baokuan/baokuan_049.jpg', '(8.0折)', '滋源滋源茶籽控油去屑超值装（洗发水470ml）洗发水 无硅油 油性去屑', '79', '¥99', '去油去屑', '滋源专场', '滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场');
INSERT INTO `liebiao` VALUES ('050', '../images/baokuan/baokuan_050.jpg', '(8.5折)', '欧莱雅欧莱雅清润多重活性保湿清新冰露 110ml', '119', '¥140', '清润多爽', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('051', '../images/baokuan/baokuan_051.jpg', '(8.9折)', '魅可魅可海洋亮白气垫霜SPF50/PA+++ 04', '285', '¥320', '亮白', '魅可专场', '魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场');
INSERT INTO `liebiao` VALUES ('052', '../images/baokuan/baokuan_052.jpg', '(2.0折)', '师夷家【清洁控油特惠】师夷家 男士清透控油洁面乳2支装', '45', '¥227', '男士', '师夷家专场', '师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场');
INSERT INTO `liebiao` VALUES ('053', '../images/baokuan/baokuan_053.jpg', '(10.0折)', '滋源滋源润泽滋养发膜200ml', '79', '¥79', '滋润', '滋源专场', '滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场');
INSERT INTO `liebiao` VALUES ('054', '../images/baokuan/baokuan_054.jpg', '(7.1折)', '欧莱雅欧莱雅男士控油调理液体洁面皂150ml 控油 调理 男士洗面皂', '49', '¥69', '控油', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `liebiao` VALUES ('055', '../images/baokuan/baokuan_055.jpg', '(8.9折)', '魅可魅可海洋亮白气垫霜SPF 50/PA+++ 03 Light Plus(NC20)', '285', '¥320', '亮白', '魅可专场', '魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场');
INSERT INTO `liebiao` VALUES ('056', '../images/baokuan/baokuan_056.jpg', '(4.4折)', '诺绵红色小象诺绵 产褥期护理垫10p【一次性床单 产后产褥垫  孕妇产褥垫 待产包】', '35', '¥80', '小棉袄', '诺绵专场', '诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场');
INSERT INTO `liebiao` VALUES ('057', '../images/baokuan/baokuan_057.jpg', '(9.0折)', '科颜氏科颜氏Kiehl\'s 高保湿清爽洁面乳150ml 水感洁净不紧绷', '162', '¥180', '保湿', '科颜氏专场', '科颜氏专场科颜氏专场科颜氏专场科颜氏专场科颜氏专场科颜氏专场科颜氏专场科颜氏专场科颜氏专场');

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `account` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES ('15078908061', '131313');
INSERT INTO `register` VALUES ('1', '1');
INSERT INTO `register` VALUES ('15078908062', '131313');

-- ----------------------------
-- Table structure for shangpin
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin` (
  `id` varchar(255) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `zhekou` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `original` varchar(255) NOT NULL,
  `pro` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES ('001', 'images/liebiao/liebiao_01.jpg', '7.9折/', '欧莱雅清润葡萄籽水嫩洁面乳125ml 温和清洁 洗面奶', '41', '¥52', '温和清洁', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('002', 'images/baokuan/baokuan_002.jpg', '3.4折/', '小迷糊【抖音爆款面膜贴】阿狸青春水漾焕采面膜49片 达人同款补水面膜', '239', '¥699', '保湿', '小迷糊专场', '小迷糊专场小迷糊专场小迷糊专场小迷糊专场小迷糊专场小迷糊专场小迷糊专场');
INSERT INTO `shangpin` VALUES ('003', 'images/baokuan/baokuan_003.jpg', '7.8折/', '高姿高姿COGI 雪耳源萃保湿乳100g', '69', '¥89', '美白', '高姿专场', '高姿专场高姿专场高姿专场高姿专场高姿专场高姿专场高姿专场高姿专场高姿专场');
INSERT INTO `shangpin` VALUES ('004', 'images/baokuan/baokuan_004.jpg', '5.0折/', '春纪【修容遮瑕细肤】HARUKI春纪 大葡萄保湿修容装 BB霜遮瑕套装', '69', '¥139', '温和卸妆水', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('005', 'images/baokuan/baokuan_005.jpg', '9.9折/', '汇美舍汇美舍Pretty Valley 秀发养护精油30ml  复方精油 无需稀释 养护秀发 其它颜色', '285', '¥288', '紧致透亮淡化细纹抗皱', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('006', 'images/baokuan/baokuan_006.jpg', '7.3折/', '欧莱雅欧莱雅复颜提拉紧肤积雪草精华粉底液 遮瑕', '189', '¥260', '滋润保湿', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('007', 'images/baokuan/baokuan_007.jpg', '6.0折/', '施巴施巴婴儿洁肤皂100g', '56', '¥94', '护肤面霜', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('008', 'images/baokuan/baokuan_008.jpg', '2.9折/', '京润珍珠【补水保湿滋润】京润珍珠 珍珠水之源梦幻礼盒 水乳液套装', '169', '¥575', '保湿', '京润专场', '京润专场京润专场京润专场京润专场京润专场京润专场京润专场京润专场京润专场京润专场');
INSERT INTO `shangpin` VALUES ('009', 'images/baokuan/baokuan_009.jpg', '7.3折/', '欧珀莱欧珀莱 AUPRES 弹力循环滋润型樱花礼盒套装', '450', '¥620', '滋养肌肤', '欧珀莱专场', '欧珀莱专场欧珀莱专场欧珀莱专场欧珀莱专场欧珀莱专场欧珀莱专场欧珀莱专场欧珀莱专场');
INSERT INTO `shangpin` VALUES ('010', 'images/baokuan/baokuan_010.jpg', '7.0折/', '卡姿兰卡姿兰Carslan流光水彩唇膏升级版3.5g 08#茜草姻红', '69', '¥99', '美丽', '卡姿兰专场', '卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场');
INSERT INTO `shangpin` VALUES ('011', 'images/baokuan/baokuan_011.jpg', '4.7折/', '诗婷露雅诗婷露雅STEROREA 果本坚果保湿锁水眼精华液30g 眼霜', '79', '¥168', '滋润', '诗婷专场', '诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场诗婷专场');
INSERT INTO `shangpin` VALUES ('012', 'images/baokuan/baokuan_012.jpg', '3.6折/', '卡姿兰卡姿兰Carslan蜗牛气垫调控霜尊享礼盒02#柔缎色唯品会定制礼盒节日礼物**', '229', '¥637', '抖音同款', '卡姿兰专场', '卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场卡姿兰专场');
INSERT INTO `shangpin` VALUES ('013', 'images/baokuan/baokuan_013.jpg', '1.8折/', '花肌粹色彩调控清透净颜套装(自然肤色）', '109', '¥607', '美白', '美白专场', '美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场');
INSERT INTO `shangpin` VALUES ('014', 'images/baokuan/baokuan_014.jpg', '4.9折/', '丸美【肌肤爱吃巧克力】MARUBI 丸美 新肌丝滑系列肤如凝脂三件套  礼盒', '288', '¥584', '淡化鱼尾纹', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('015', 'images/baokuan/baokuan_015.jpg', '7.3折/', '兰瑟兰瑟LANSUR真丝π丝柔锁色唇膏08悦动3.8g 口红 持久保湿 不易脱色 雾面哑光', '109', '¥150', '美丽', '兰瑟专场', '兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场');
INSERT INTO `shangpin` VALUES ('016', 'images/baokuan/baokuan_016.jpg', '4.7折/', '博倩博倩BOQIAN 牛奶蛋白滋养护发素500ml', '56', '¥119', '牛奶鸡蛋', '博倩专场', '博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场');
INSERT INTO `shangpin` VALUES ('017', 'images/baokuan/baokuan_017.jpg', '7.9折/', '欧舒丹欧舒丹L\'OCCITANE焕亮防晒乳SPF50+/PA++++30ml 防晒无负担 预防光老化 修护受损', '275', '¥350', '护肤爽肤水', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('018', 'images/baokuan/baokuan_018.jpg', '5.5折/', '贝佳斯【拯救易敏肌】贝佳斯 矿物营养美肤泥浆膜（白泥）212g/200ml 温和清洁 干皮补水', '208', '¥380', '黄土高原', '贝佳斯专场', '贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场贝佳斯专场');
INSERT INTO `shangpin` VALUES ('019', 'images/baokuan/baokuan_019.jpg', '8.5折/', '佰草集【强化保湿 深度滋润】佰草集新玉润保湿菁华膏50g', '195', '¥230', '保湿', '佰草集专场', '佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场');
INSERT INTO `shangpin` VALUES ('020', 'images/baokuan/baokuan_020.jpg', '3.6折/', '安婕妤【改善熟龄肌】安婕妤ANGLEE 臻美无龄眼霜 20ml  改善细纹黑眼圈', '155', '¥428', '补水护肤', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('021', 'images/baokuan/baokuan_021.jpg', '6.6折/', '丝塔芙【人气洁面大奖】丝塔芙洁面乳591ml 保湿洗面奶 以实物为准', '125', '¥188', '美白', '丝塔芙专场', '丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场丝塔芙专场');
INSERT INTO `shangpin` VALUES ('022', 'images/baokuan/baokuan_022.jpg', '5.2折/', '色彩地带色彩地带 毛孔隐形修颜套装（自然偏白） 多色', '109', '¥210', '美白', '色彩地带专场', '色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场色彩地带专场');
INSERT INTO `shangpin` VALUES ('023', 'images/baokuan/baokuan_023.jpg', '6.1折/', '吉列吉列Gillette 吉列锋隐4刀头 顺滑舒爽 锋隐刀片 手动刮胡剃须刀片 彩色', '127', '¥209', '', '吉列专场', '吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场');
INSERT INTO `shangpin` VALUES ('024', 'images/baokuan/baokuan_024.jpg', '9.9折/', '气韵【净澈舒爽】百雀羚气韵 肌活沁润柔肤洁面膏120g  洗面奶 其他颜色', '79', '¥80', '肌活沁润', '气韵专场', '气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场');
INSERT INTO `shangpin` VALUES ('025', 'images/baokuan/baokuan_025.jpg', '9.9折/', '气韵【净澈舒爽】百雀羚气韵 肌活沁润柔肤洁面膏120g  洗面奶 其他颜色', '79', '¥80', '肌活沁润', '气韵专场', '气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场');
INSERT INTO `shangpin` VALUES ('026', 'images/baokuan/baokuan_026.jpg', '8.3折/', '凯芙兰凯芙兰Kafellon摩方柔雾唇膏12#霓虹紫粉 3.5g （口红）', '99', '¥119', '美丽', '凯芙兰专场', '凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场');
INSERT INTO `shangpin` VALUES ('027', 'images/baokuan/baokuan_027.jpg', '7.9折/', '兰瑟兰瑟 迷踪渐变眼影 大地色裸妆三色眼影彩妆易上色 03闪电紫', '69', '¥87', '美丽', '兰瑟专场', '兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场');
INSERT INTO `shangpin` VALUES ('028', 'images/baokuan/baokuan_028.jpg', '1.9折/', '丸美【眼纹克星】MARUBI 丸美 弹力蛋白凝时紧致眼贴膜6对 眼膜', '58', '¥308', '美白', '丸美专场', '丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场');
INSERT INTO `shangpin` VALUES ('029', 'images/baokuan/baokuan_029.jpg', '2.7折/', '里美里美limi V10去角质焕亮爽肤水', '49', '¥184', '清爽', '里美专场', '里美专场里美专场里美专场里美专场里美专场里美专场里美专场里美专场里美专场里美专场里美专场');
INSERT INTO `shangpin` VALUES ('030', 'images/baokuan/baokuan_030.jpg', '6.3折/', '膜法世家【明亮珍珠肌】膜法世家珍珠粉泥浆面膜135g  深层清洁泥浆面膜', '79', '¥126', '黄土高原', '膜法世家专场', '膜法世家专场膜法世家专场膜法世家专场膜法世家专场膜法世家专场膜法世家专场膜法世家专场膜法世家专场');
INSERT INTO `shangpin` VALUES ('031', 'images/baokuan/baokuan_031.jpg', '4.1折/', '好孩子GB好孩子食物调理器组 宝宝辅食研磨器 手动食物辅食料理工具婴儿果泥料理机研磨碗', '57', '¥139', '实用', '好孩子专场', '好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场好孩子专场');
INSERT INTO `shangpin` VALUES ('032', 'images/baokuan/baokuan_032.jpg', '4.9折/', '丸美【肌肤爱吃巧克力】MARUBI 丸美 新肌丝滑系列肤如凝脂三件套  礼盒', '288', '¥584', '三件装', '丸美专场', '丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场丸美专场');
INSERT INTO `shangpin` VALUES ('033', 'images/baokuan/baokuan_033.jpg', '4.6折/', '俏十岁【保湿滋补】俏十岁CHOISKYCN 温润舒缓护肤套装 温和舒缓礼盒 白色', '289', '¥631', '保湿', '美白专场', '美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场美白专场');
INSERT INTO `shangpin` VALUES ('034', 'images/baokuan/baokuan_034.jpg', '6.1折/', '吉列吉列Gillette 吉列锋隐4刀头 顺滑舒爽 锋隐刀片 手动刮胡剃须刀片 彩色', '127', '¥209', '', '吉列专场', '吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场吉列专场');
INSERT INTO `shangpin` VALUES ('035', 'images/baokuan/baokuan_035.jpg', '9.9折/', '气韵【净澈舒爽】百雀羚气韵 肌活沁润柔肤洁面膏120g  洗面奶 其他颜色', '79', '¥80', '清爽', '气韵专场', '气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场气韵专场');
INSERT INTO `shangpin` VALUES ('036', 'images/baokuan/baokuan_036.jpg', '8.3折/', '凯芙兰凯芙兰Kafellon摩方柔雾唇膏12#霓虹紫粉 3.5g （口红）', '99', '¥119', '润唇', '凯芙兰专场', '凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场凯芙兰专场');
INSERT INTO `shangpin` VALUES ('037', 'images/baokuan/baokuan_037.jpg', '7.9折/', '兰瑟兰瑟 迷踪渐变眼影 大地色裸妆三色眼影彩妆易上色 03闪电紫', '69', '¥87', '眼影', '兰瑟专场', '兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场兰瑟专场');
INSERT INTO `shangpin` VALUES ('038', 'images/baokuan/baokuan_038.jpg', '7.9折/', '贝德玛【拯救大油田】贝德玛BIODERMA净妍控油洁肤液 250ml 清爽卸妆水', '125', '¥158', '清爽卸妆', '贝德玛专场', '贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场');
INSERT INTO `shangpin` VALUES ('039', 'images/baokuan/baokuan_039.jpg', '8.0折/', '滋源滋源茶籽控油去屑超值装（洗发水470ml）洗发水 无硅油 油性去屑', '79', '¥99', '去屑去油', '滋源专场', '滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场');
INSERT INTO `shangpin` VALUES ('040', 'images/baokuan/baokuan_040.jpg', '8.5折/', '欧莱雅欧莱雅清润多重活性保湿清新冰露 110ml', '119', '¥140', '保湿滋润', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('041', 'images/baokuan/baokuan_041.jpg', '8.5折/', '佰草集【免洗面膜 保湿补水】佰草集新玉润保湿水晶面膜120ml', '195', '¥230', '滋润保湿', '佰草集专场', '佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场佰草集专场');
INSERT INTO `shangpin` VALUES ('042', 'images/baokuan/baokuan_042.jpg', '6.3折/', '安婕妤【深层补水保湿】安婕妤ANGLEE 胶原润透洁肤乳120ml 温和清洁 净化毛孔 洁面乳 洗面奶', '69', '¥110', '补水滋润', '安婕妤专场', '安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场安婕妤专场');
INSERT INTO `shangpin` VALUES ('043', 'images/baokuan/baokuan_043.jpg', '6.4折/', '欧莱雅【王源同款】欧莱雅黑管纷泽丰润雾感唇膏 （辣椒红239 +摩卡奶茶色202）礼盒装 口红', '199', '¥309', '摩卡奶茶色', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('044', 'images/baokuan/baokuan_044.jpg', '9.9折/', '玛丽黛佳【人气小蘑菇】玛丽黛佳王一博手绘版美颜霜 20g 气垫 亮肤色', '198', '¥199', '亮肤色', '玛丽黛佳专场', '玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场玛丽黛佳专场');
INSERT INTO `shangpin` VALUES ('045', 'images/baokuan/baokuan_045.jpg', '3.9折/', '博倩博倩BOQIAN 老姜王防脱育发超值三件套 洗护套装', '69', '¥178', '洗护套装', '博倩专场', '博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场博倩专场');
INSERT INTO `shangpin` VALUES ('046', 'images/baokuan/baokuan_046.jpg', '3.7折/', '花瑶花【深层锁水保湿】花瑶花   百合基础透亮保湿套装 水乳液套装', '159', '¥429', '套装', '花瑶花专场', '花瑶花专场花瑶花专场花瑶花专场花瑶花专场花瑶花专场花瑶花专场花瑶花专场花瑶花专场花瑶花专场');
INSERT INTO `shangpin` VALUES ('047', 'images/baokuan/baokuan_047.jpg', '9.0折/', '迪奥Dior迪奥  蓝金液唇膏272  6ml  口红 唇彩 唇釉 持久提亮', '270', '¥300', '提亮', '奥迪Dior专场', '奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场奥迪Dior专场');
INSERT INTO `shangpin` VALUES ('048', 'images/baokuan/baokuan_048.jpg', '7.9折/', '贝德玛【拯救大油田】贝德玛BIODERMA净妍控油洁肤液 250ml 清爽卸妆水', '125', '¥158', '爽肤', '贝德玛专场', '贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场贝德玛专场');
INSERT INTO `shangpin` VALUES ('049', 'images/baokuan/baokuan_049.jpg', '8.0折/', '滋源滋源茶籽控油去屑超值装（洗发水470ml）洗发水 无硅油 油性去屑', '79', '¥99', '去油去屑', '滋源专场', '滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场');
INSERT INTO `shangpin` VALUES ('050', 'images/baokuan/baokuan_050.jpg', '8.5折/', '欧莱雅欧莱雅清润多重活性保湿清新冰露 110ml', '119', '¥140', '清润多爽', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('051', 'images/baokuan/baokuan_051.jpg', '8.9折/', '魅可魅可海洋亮白气垫霜SPF50/PA+++ 04', '285', '¥320', '亮白', '魅可专场', '魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场');
INSERT INTO `shangpin` VALUES ('052', 'images/baokuan/baokuan_052.jpg', '2.0折/', '师夷家【清洁控油特惠】师夷家 男士清透控油洁面乳2支装', '45', '¥227', '男士', '师夷家专场', '师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场师夷家专场');
INSERT INTO `shangpin` VALUES ('053', 'images/baokuan/baokuan_053.jpg', '10.0折/', '滋源滋源润泽滋养发膜200ml', '79', '¥79', '滋润', '滋源专场', '滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场滋源专场');
INSERT INTO `shangpin` VALUES ('054', 'images/baokuan/baokuan_054.jpg', '7.1折/', '欧莱雅欧莱雅男士控油调理液体洁面皂150ml 控油 调理 男士洗面皂', '49', '¥69', '控油', '欧莱雅专场', '欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场欧莱雅专场');
INSERT INTO `shangpin` VALUES ('055', 'images/baokuan/baokuan_055.jpg', '8.9折/', '魅可魅可海洋亮白气垫霜SPF 50/PA+++ 03 Light Plus(NC20)', '285', '¥320', '亮白', '魅可专场', '魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场魅可专场');
INSERT INTO `shangpin` VALUES ('056', 'images/baokuan/baokuan_056.jpg', '4.4折/', '诺绵红色小象诺绵 产褥期护理垫10p【一次性床单 产后产褥垫  孕妇产褥垫 待产包】', '35', '¥80', '小棉袄', '诺绵专场', '诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场诺绵专场');
INSERT INTO `shangpin` VALUES ('057', 'images/baokuan/baokuan_057.jpg', '9.0折/', '科颜氏科颜氏Kiehl\'s 高保湿清爽洁面乳150ml 水感洁净不紧绷', '162', '¥180', '保湿', '科颜氏专场', '科颜氏专场科颜氏专场科颜氏专场科颜氏专场科颜氏专场科颜氏专场科颜氏专场科颜氏专场科颜氏专场');

-- ----------------------------
-- Table structure for shouye
-- ----------------------------
DROP TABLE IF EXISTS `shouye`;
CREATE TABLE `shouye` (
  `id` varchar(50) CHARACTER SET latin1 NOT NULL,
  `images` varchar(255) CHARACTER SET latin1 NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shouye
-- ----------------------------
INSERT INTO `shouye` VALUES ('001', 'img_pinpai/pinpai_001.png', '小迷糊');
INSERT INTO `shouye` VALUES ('002', 'img_pinpai/pinpai_002.jpg', '欧莱雅护肤');
INSERT INTO `shouye` VALUES ('003', 'img_pinpai/pinpai_003.jpg', '御泥坊');
INSERT INTO `shouye` VALUES ('004', 'img_pinpai/pinpai_004.jpg', '阿芙');
INSERT INTO `shouye` VALUES ('005', 'img_pinpai/pinpai_005.jpg', '珀莱雅');
INSERT INTO `shouye` VALUES ('006', 'img_pinpai/pinpai_006.jpg', '丸美');
INSERT INTO `shouye` VALUES ('007', 'img_pinpai/pinpai_007.jpg', '百雀羚');
INSERT INTO `shouye` VALUES ('008', 'img_pinpai/pinpai_008.jpg', '自然堂');
INSERT INTO `shouye` VALUES ('009', 'img_pinpai/pinpai_009.jpg', '魔法医生');
INSERT INTO `shouye` VALUES ('010', 'img_pinpai/pinpai_010.jpg', '里美');
INSERT INTO `shouye` VALUES ('011', 'img_pinpai/pinpai_011.jpg', '一叶子');
INSERT INTO `shouye` VALUES ('012', 'img_pinpai/pinpai_012.jpg', '韩束');
INSERT INTO `shouye` VALUES ('013', 'img_pinpai/pinpai_013.jpg', '玉兰油');
INSERT INTO `shouye` VALUES ('014', 'img_pinpai/pinpai_014.jpg', '膜法世家');
INSERT INTO `shouye` VALUES ('015', 'img_pinpai/pinpai_015.jpg', '花肌粹');
INSERT INTO `shouye` VALUES ('016', 'img_pinpai/pinpai_016.jpg', '卡姿兰');
INSERT INTO `shouye` VALUES ('017', 'img_pinpai/pinpai_017.jpg', '相宜本草');
INSERT INTO `shouye` VALUES ('018', 'img_pinpai/pinpai_018.jpg', '高姿');
INSERT INTO `shouye` VALUES ('019', 'img_pinpai/pinpai_019.jpg', '欧诗漫');
INSERT INTO `shouye` VALUES ('020', 'img_pinpai/pinpai_020.jpg', '美即');
INSERT INTO `shouye` VALUES ('021', 'img_pinpai/pinpai_021.jpg', '袋鼠妈妈');
INSERT INTO `shouye` VALUES ('022', 'img_pinpai/pinpai_022.jpg', '美宝莲');
INSERT INTO `shouye` VALUES ('023', 'img_pinpai/pinpai_023.jpg', '姬芮');
INSERT INTO `shouye` VALUES ('024', 'img_pinpai/pinpai_024.jpg', 'Larastyle');
INSERT INTO `shouye` VALUES ('025', 'img_pinpai/pinpai_025.jpg', '芙丽芳丝');
INSERT INTO `shouye` VALUES ('026', 'img_pinpai/pinpai_026.jpg', '丝塔芙');
INSERT INTO `shouye` VALUES ('027', 'img_pinpai/pinpai_027.jpg', '花印');
INSERT INTO `shouye` VALUES ('028', 'img_pinpai/pinpai_028.jpg', '丽得姿');
INSERT INTO `shouye` VALUES ('029', 'img_pinpai/pinpai_029.jpg', '羽西');
INSERT INTO `shouye` VALUES ('030', 'img_pinpai/pinpai_030.jpg', '李医生');
INSERT INTO `shouye` VALUES ('031', 'img_pinpai/pinpai_031.jpg', '京润珍珠宝贝');
INSERT INTO `shouye` VALUES ('032', 'img_pinpai/pinpai_032.jpg', '佰草集');
INSERT INTO `shouye` VALUES ('033', 'img_pinpai/pinpai_033.jpg', '滋源');
INSERT INTO `shouye` VALUES ('034', 'img_pinpai/pinpai_034.jpg', '京润珍珠');
INSERT INTO `shouye` VALUES ('035', 'img_pinpai/pinpai_035.jpg', '韩后');
INSERT INTO `shouye` VALUES ('036', 'img_pinpai/pinpai_036.jpg', '谜尚');
INSERT INTO `shouye` VALUES ('037', 'img_pinpai/pinpai_037.jpg', '雅芳');
INSERT INTO `shouye` VALUES ('038', 'img_pinpai/pinpai_038.jpg', '森田药妆');
INSERT INTO `shouye` VALUES ('039', 'img_pinpai/pinpai_039.jpg', '所望');
INSERT INTO `shouye` VALUES ('040', 'img_pinpai/pinpai_040.jpg', 'City Color');
INSERT INTO `shouye` VALUES ('041', 'img_pinpai/pinpai_041.jpg', '温碧泉');
INSERT INTO `shouye` VALUES ('042', 'img_pinpai/pinpai_042.jpg', '兰芝');
INSERT INTO `shouye` VALUES ('043', 'img_pinpai/pinpai_043.jpg', '欧莱雅彩妆');
INSERT INTO `shouye` VALUES ('044', 'img_pinpai/pinpai_044.jpg', 'DHC');
INSERT INTO `shouye` VALUES ('045', 'img_pinpai/pinpai_045.jpg', '曼秀雷敦');
INSERT INTO `shouye` VALUES ('046', 'img_pinpai/pinpai_046.jpg', '兰蔻');
INSERT INTO `shouye` VALUES ('047', 'img_pinpai/pinpai_047.jpg', '贝德玛');
INSERT INTO `shouye` VALUES ('048', 'img_pinpai/pinpai_048.jpg', '奥洛菲');
INSERT INTO `shouye` VALUES ('049', 'img_pinpai/pinpai_049.jpg', '红色小象');
INSERT INTO `shouye` VALUES ('050', 'img_pinpai/pinpai_050.jpg', '亲润');
INSERT INTO `shouye` VALUES ('051', 'img_pinpai/pinpai_051.jpg', '施华蔻日化线');
INSERT INTO `shouye` VALUES ('052', 'img_pinpai/pinpai_052.jpg', '薇姿');
INSERT INTO `shouye` VALUES ('053', 'img_pinpai/pinpai_053.jpg', '施华蔻专业线');
INSERT INTO `shouye` VALUES ('054', 'img_pinpai/pinpai_054.jpg', '理肤泉');
INSERT INTO `shouye` VALUES ('055', 'img_pinpai/pinpai_055.jpg', '伊丽莎白雅顿');
INSERT INTO `shouye` VALUES ('056', 'img_pinpai/pinpai_056.jpg', '蜜丝佛陀');
INSERT INTO `shouye` VALUES ('057', 'img_pinpai/pinpai_057.jpg', '泊美');
INSERT INTO `shouye` VALUES ('058', 'img_pinpai/pinpai_058.jpg', '菲诗小铺');
INSERT INTO `shouye` VALUES ('059', 'img_pinpai/pinpai_059.jpg', '水密码');
INSERT INTO `shouye` VALUES ('060', 'img_pinpai/pinpai_060.jpg', '吾尊');
INSERT INTO `shouye` VALUES ('061', 'img_pinpai/pinpai_061.jpg', '美肤宝');
INSERT INTO `shouye` VALUES ('062', 'img_pinpai/pinpai_062.jpg', '萌黛儿');
INSERT INTO `shouye` VALUES ('063', 'img_pinpai/pinpai_063.jpg', '欧莱雅日化线');
INSERT INTO `shouye` VALUES ('064', 'img_pinpai/pinpai_064.jpg', '欧莱雅男士');
INSERT INTO `shouye` VALUES ('065', 'img_pinpai/pinpai_065.jpg', 'PF79');
INSERT INTO `shouye` VALUES ('066', 'img_pinpai/pinpai_066.jpg', '玛丽黛佳');
INSERT INTO `shouye` VALUES ('067', 'img_pinpai/pinpai_067.jpg', '雪肌精');
INSERT INTO `shouye` VALUES ('068', 'img_pinpai/pinpai_068.jpg', '雅诗兰黛');
INSERT INTO `shouye` VALUES ('069', 'img_pinpai/pinpai_069.jpg', '十月天使');
INSERT INTO `shouye` VALUES ('070', 'img_pinpai/pinpai_070.jpg', '倩碧');
INSERT INTO `shouye` VALUES ('071', 'img_pinpai/pinpai_071.jpg', '瓷妆');
INSERT INTO `shouye` VALUES ('072', 'img_pinpai/pinpai_072.jpg', '小蜜坊');
INSERT INTO `shouye` VALUES ('073', 'img_pinpai/pinpai_073.jpg', '嘉媚乐');
INSERT INTO `shouye` VALUES ('074', 'img_pinpai/pinpai_074.jpg', '妮维雅');
INSERT INTO `shouye` VALUES ('075', 'img_pinpai/pinpai_075.jpg', '春纪');
INSERT INTO `shouye` VALUES ('076', 'img_pinpai/pinpai_076.jpg', '诗婷露雅');
INSERT INTO `shouye` VALUES ('077', 'img_pinpai/pinpai_077.jpg', '佩佩');
INSERT INTO `shouye` VALUES ('078', 'img_pinpai/pinpai_078.jpg', '珍珂儿');
INSERT INTO `shouye` VALUES ('079', 'img_pinpai/pinpai_079.jpg', '七度空间');
INSERT INTO `shouye` VALUES ('080', 'img_pinpai/pinpai_080.jpg', '科颜氏');
INSERT INTO `shouye` VALUES ('081', 'img_pinpai/pinpai_081.jpg', '法兰琳卡');
INSERT INTO `shouye` VALUES ('082', 'img_pinpai/pinpai_082.jpg', '安婕妤');
INSERT INTO `shouye` VALUES ('083', 'img_pinpai/pinpai_083.jpg', '美诺');
INSERT INTO `shouye` VALUES ('084', 'img_pinpai/pinpai_084.jpg', '安热沙');
INSERT INTO `shouye` VALUES ('085', 'img_pinpai/pinpai_085.jpg', '高夫');
INSERT INTO `shouye` VALUES ('086', 'img_pinpai/pinpai_086.jpg', '兰瑟');
INSERT INTO `shouye` VALUES ('087', 'img_pinpai/pinpai_087.jpg', '贝佳斯');
INSERT INTO `shouye` VALUES ('088', 'img_pinpai/pinpai_088.jpg', '花酿');
INSERT INTO `shouye` VALUES ('089', 'img_pinpai/pinpai_089.jpg', '欧舒丹');
INSERT INTO `shouye` VALUES ('090', 'img_pinpai/pinpai_090.jpg', '子初');
INSERT INTO `shouye` VALUES ('091', 'img_pinpai/pinpai_091.jpg', '圣荷');
INSERT INTO `shouye` VALUES ('092', 'img_pinpai/pinpai_092.jpg', '花瑶花');
INSERT INTO `shouye` VALUES ('093', 'img_pinpai/pinpai_093.jpg', '梦妆');
INSERT INTO `shouye` VALUES ('094', 'img_pinpai/pinpai_094.jpg', '俏十岁');
INSERT INTO `shouye` VALUES ('095', 'img_pinpai/pinpai_095.jpg', '蒂佳婷');
INSERT INTO `shouye` VALUES ('096', 'img_pinpai/pinpai_096.jpg', '丝蕴');
INSERT INTO `shouye` VALUES ('097', 'img_pinpai/pinpai_097.jpg', '即魅');
INSERT INTO `shouye` VALUES ('098', 'img_pinpai/pinpai_098.jpg', '范思哲');
INSERT INTO `shouye` VALUES ('099', 'img_pinpai/pinpai_099.jpg', '欧珀莱');
INSERT INTO `shouye` VALUES ('100', 'img_pinpai/pinpai_100.jpg', '玻儿');
INSERT INTO `shouye` VALUES ('101', 'img_pinpai/pinpai_101.jpg', '凯芙兰');
INSERT INTO `shouye` VALUES ('102', 'img_pinpai/pinpai_102.jpg', 'The History of Whoo');
INSERT INTO `shouye` VALUES ('103', 'img_pinpai/pinpai_103.jpg', '水之蔻');
INSERT INTO `shouye` VALUES ('104', 'img_pinpai/pinpai_104.jpg', '汇美舍');
INSERT INTO `shouye` VALUES ('105', 'img_pinpai/pinpai_105.jpg', '原泥动力');
INSERT INTO `shouye` VALUES ('106', 'img_pinpai/pinpai_106.jpg', '师夷家');
INSERT INTO `shouye` VALUES ('107', 'img_pinpai/pinpai_107.jpg', '丹姿');
INSERT INTO `shouye` VALUES ('108', 'img_pinpai/pinpai_108.jpg', '资生堂');
INSERT INTO `shouye` VALUES ('109', 'img_pinpai/pinpai_109.jpg', '火烈鸟');
INSERT INTO `shouye` VALUES ('110', 'img_pinpai/pinpai_110.jpg', '静佳');

-- ----------------------------
-- Table structure for xqing
-- ----------------------------
DROP TABLE IF EXISTS `xqing`;
CREATE TABLE `xqing` (
  `id` varchar(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sale` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xqing
-- ----------------------------
INSERT INTO `xqing` VALUES ('003', '15078908061', '../images/baokuan/baokuan_003.jpg', '高姿高姿COGI 雪耳源萃保湿乳100g', '69', '¥89', '7');
INSERT INTO `xqing` VALUES ('001', '15078908061', '../images/liebiao/liebiao_01.jpg', '欧莱雅清润葡萄籽水嫩洁面乳125ml 温和清洁 洗面奶', '78.0', '¥110.0', '3');
INSERT INTO `xqing` VALUES ('002', '15078908062', '../images/baokuan/baokuan_002.jpg', '小迷糊【抖音爆款面膜贴】阿狸青春水漾焕采面膜49片 达人同款补水面膜', '239', '¥699', '1');
INSERT INTO `xqing` VALUES ('023', '15078908062', 'images/baokuan/baokuan_023.jpg', '吉列吉列Gillette 吉列锋隐4刀头 顺滑舒爽 锋隐刀片 手动刮胡剃须刀片 彩色', '127', '¥209', '1');
INSERT INTO `xqing` VALUES ('027', '15078908062', 'images/baokuan/baokuan_027.jpg', '兰瑟兰瑟 迷踪渐变眼影 大地色裸妆三色眼影彩妆易上色 03闪电紫', '69', '¥87', '1');
INSERT INTO `xqing` VALUES ('004', '15078908062', '../images/liebiao/liebiao_02.jpg', '欧莱雅卸妆魔术水 三合一卸妆洁颜水深彻型95ml 深层清洁 温和卸妆水', '28.0', '¥39.0', '1');
INSERT INTO `xqing` VALUES ('001', '15078908062', '../images/liebiao/liebiao_01.jpg', '欧莱雅清润葡萄籽水嫩洁面乳125ml 温和清洁 洗面奶', '78.0', '¥110.0', '3');
INSERT INTO `xqing` VALUES ('004', '1', '../images/liebiao/liebiao_02.jpg', '欧莱雅卸妆魔术水 三合一卸妆洁颜水深彻型95ml 深层清洁 温和卸妆水', '28.0', '¥39.0', '1');
SET FOREIGN_KEY_CHECKS=1;
