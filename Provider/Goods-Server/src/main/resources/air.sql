/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : 127.0.0.1:3306
 Source Schema         : air

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 09/01/2020 10:52:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for buoumao
-- ----------------------------
DROP TABLE IF EXISTS `buoumao`;
CREATE TABLE `buoumao`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buoumao
-- ----------------------------
INSERT INTO `buoumao` VALUES (1, '【超美仙女猫】Lauren上海猫舍布偶猫活体海双色布偶猫咪可爱布偶猫宠物猫仙女猫可上门看猫全款', '35000.00', 'images/布偶猫/51f3378d146e8ea0.jpg', '//img13.360buyimg.com/n7/jfs/t1/18495/8/4007/533533/5c2dc199E8596e296/51f3378d146e8ea0.jpg', '51f3378d146e8ea0.jpg');
INSERT INTO `buoumao` VALUES (2, '缘宠布偶猫布偶猫活体幼体宠物猫幼崽活体仙女猫可爱小猫咪北京可实地挑选', '3600.00', 'images/布偶猫/4ca4ba7bf1ba2cf1.jpg', '//img10.360buyimg.com/n7/jfs/t1/28878/3/14207/100831/5ca55ba2Ea8301f7b/4ca4ba7bf1ba2cf1.jpg', '4ca4ba7bf1ba2cf1.jpg');
INSERT INTO `buoumao` VALUES (3, '星脉布偶猫活体宠物猫猫咪活体纯种仙女猫幼崽上海杭州苏州武汉可上门挑选全国配送宠物级公', '4699.00', 'images/布偶猫/d12b15cd68f4e2b7.jpg', '//img12.360buyimg.com/n7/jfs/t1/43872/33/4681/261057/5cd4e8c7E72e56b27/d12b15cd68f4e2b7.jpg', 'd12b15cd68f4e2b7.jpg');
INSERT INTO `buoumao` VALUES (4, '壹萌布偶猫活体宠物猫猫咪活体纯种布拉多尔猫幼崽上海杭州苏州武汉可上门挑选全国配送宠物A级公', '4699.00', 'images/布偶猫/9dd4e49da68a9382.jpg', '//img14.360buyimg.com/n7/jfs/t1/54853/35/400/215703/5cd51b40Ee138b6ee/9dd4e49da68a9382.jpg', '9dd4e49da68a9382.jpg');
INSERT INTO `buoumao` VALUES (5, '萝伦Lauren上海猫舍超仙女布偶猫蓝双色布偶猫活体布偶猫包售后可上门看猫全款定金---若因个人原因未成交定金不退', '1000.00', 'images/布偶猫/aaf059e976a2b454.jpg', '//img12.360buyimg.com/n7/jfs/t1/30094/13/7151/217480/5c958969E9d9964e1/aaf059e976a2b454.jpg', 'aaf059e976a2b454.jpg');
INSERT INTO `buoumao` VALUES (6, '淘狗无忧布偶猫宠物猫活体猫咪活体布偶双色纯种猫纯种布拉多尔猫幼崽疫苗齐全全国配送宠物级公', '5999.00', 'images/布偶猫/6ac8fcefe9916b17.jpg', '//img11.360buyimg.com/n7/jfs/t1/42403/18/4613/281399/5cd52c6aE221d5b9b/6ac8fcefe9916b17.jpg', '6ac8fcefe9916b17.jpg');
INSERT INTO `buoumao` VALUES (7, '萝伦Lauren杭州猫舍仙女猫蓝双色布偶猫蓝眼睛长毛猫活体猫包售后可视频可上门看猫', '48000.00', 'images/布偶猫/cb0a3f5cef99d3f6.jpg', '//img10.360buyimg.com/n7/jfs/t1/32000/3/9077/202924/5ca3120cE5420b29d/cb0a3f5cef99d3f6.jpg', 'cb0a3f5cef99d3f6.jpg');
INSERT INTO `buoumao` VALUES (8, '爱心东东布偶猫活体布偶猫幼体布偶猫活体宠物北京天津TJDH布偶仙女猫山猫色蓝眼布偶猫海豹双色', '3580.00', 'images/布偶猫/831f94ef149fb263.jpg', '//img12.360buyimg.com/n7/jfs/t1/11472/24/12589/114642/5c92e129Ee3ed424c/831f94ef149fb263.jpg', '831f94ef149fb263.jpg');
INSERT INTO `buoumao` VALUES (9, '酷迪熊宠物猫活体猫咪活体英国短毛猫纯种猫活体小猫咪英短幼猫美国宠物猫咪蓝短猫布偶加菲红色', '1399.00', 'images/布偶猫/92bb8b723f2c1392.jpg', '//img11.360buyimg.com/n7/jfs/t1/33378/22/3040/70875/5cb3650eE9455da54/92bb8b723f2c1392.jpg', '92bb8b723f2c1392.jpg');
INSERT INTO `buoumao` VALUES (10, '景宠纯种加菲猫活体宠物猫咪蓝白猫英国短毛猫小猫咪英短美短加菲布偶石虎无毛猫蓝猫暹罗猫幼猫活体英短蓝猫公', '1999.00', 'images/布偶猫/7559cae474be7fba.jpg', '//img13.360buyimg.com/n7/jfs/t1/35058/6/7270/524141/5cc6ceafEa41140f4/7559cae474be7fba.png', '7559cae474be7fba.jpg');
INSERT INTO `buoumao` VALUES (11, '心宠优选纯种布偶幼猫出售保健康宠物猫活体健康纯种全国空运宠物级', '3800.00', 'images/布偶猫/5b2b625cN7565526a.jpg', '//img10.360buyimg.com/n7/jfs/t24466/228/283534028/149137/acaf4801/5b2b625cN7565526a.jpg', '5b2b625cN7565526a.jpg');
INSERT INTO `buoumao` VALUES (12, '宁宠布偶猫活体猫咪活体幼猫精品公', '15999.00', 'images/布偶猫/5b59fcf1Ncdf39698.jpg', '//img14.360buyimg.com/n7/jfs/t21223/88/2543249967/372885/8a3036ad/5b59fcf1Ncdf39698.jpg', '5b59fcf1Ncdf39698.jpg');
INSERT INTO `buoumao` VALUES (13, '土炮哥宠物布偶猫活体宠物猫咪活体纯种宠物猫幼猫活体宠物活体海豹双色蓝双布偶猫咪活体小猫咪', '188000.00', 'images/布偶猫/5b5ddeefNf992b101.jpg', '//img14.360buyimg.com/n7/jfs/t23830/257/1408217589/615822/64a2fc71/5b5ddeefNf992b101.jpg', '5b5ddeefNf992b101.jpg');
INSERT INTO `buoumao` VALUES (14, '一尾猫舍Canadian加拿大无毛猫斯芬克斯猫活体无毛猫幼崽宝宝蓝猫美短布偶加菲宠物猫宠物级高品相', '7999.00', 'images/布偶猫/ca750c71b5ddde73.jpg', '//img11.360buyimg.com/n7/jfs/t1/25122/3/11846/256733/5c9266ddEd3a4427e/ca750c71b5ddde73.jpg', 'ca750c71b5ddde73.jpg');
INSERT INTO `buoumao` VALUES (15, '狗时代DOGTIMES宠物级猫活体英短美短加菲布偶石虎无毛猫蓝猫暹罗猫幼猫小猫宠物猫英短折耳猫公', '3999.00', 'images/布偶猫/637ff6f067c56e43.jpg', '//img11.360buyimg.com/n7/jfs/t1/34033/25/2080/85007/5cac477eEe0ef77b0/637ff6f067c56e43.jpg', '637ff6f067c56e43.jpg');
INSERT INTO `buoumao` VALUES (16, '萝伦Lauren杭州猫舍重点色布偶可爱的宠物猫蓝眼睛长毛猫猫活体包售后可上门看猫定金', '1000.00', 'images/布偶猫/0d3fb8ccf9f12fbf.jpg', '//img12.360buyimg.com/n7/jfs/t1/29845/11/13774/93834/5ca2f9bdEaad489b7/0d3fb8ccf9f12fbf.jpg', '0d3fb8ccf9f12fbf.jpg');
INSERT INTO `buoumao` VALUES (17, 'TJDH天精地华布偶猫活体纯种宠物幼猫咪活体蓝眼长毛猫视频挑选爱宠高品质公', '7500.00', 'images/布偶猫/bb8cc77e85659877.jpg', '//img10.360buyimg.com/n7/jfs/t1/314/36/9312/605942/5bab55d5E6c05793e/bb8cc77e85659877.jpg', 'bb8cc77e85659877.jpg');
INSERT INTO `buoumao` VALUES (18, 'Lauren上海猫舍布偶猫活体海豹双色布偶猫活体小狗猫可爱仙女猫包售后可上门看猫定金---若因个人原因未成交定金不退', '3000.00', 'images/布偶猫/821bcfa770b4a4e7.jpg', '//img11.360buyimg.com/n7/jfs/t1/2781/6/12863/422505/5bd52d62Ed6d10989/821bcfa770b4a4e7.jpg', '821bcfa770b4a4e7.jpg');
INSERT INTO `buoumao` VALUES (19, '酷迪熊宠物猫活体小猫咪幼猫英国短毛猫布偶猫加菲猫英短蓝猫幼猫幼崽折耳美短美国纯种渐层短腿乳色可爱无惊讶脸蓝白', '1599.00', 'images/布偶猫/ef7e0d04772e1391.jpg', '//img13.360buyimg.com/n7/jfs/t1/44413/39/4478/100480/5cd3f36aE6c2fc023/ef7e0d04772e1391.jpg', 'ef7e0d04772e1391.jpg');
INSERT INTO `buoumao` VALUES (20, '心宠优选纯种布偶幼猫出售保健康宠物猫活体健康纯种全国空运优选SR级', '18500.00', 'images/布偶猫/7bf6f7b38311c75b.jpg', '//img13.360buyimg.com/n7/jfs/t1/25797/10/3277/85906/5c25e3a9E3fc953a2/7bf6f7b38311c75b.jpg', '7bf6f7b38311c75b.jpg');
INSERT INTO `buoumao` VALUES (21, '宁宠布偶猫活体宠物级', '7800.00', 'images/布偶猫/5ad6e9fdN36a7297c.jpg', '//img12.360buyimg.com/n7/jfs/t18697/81/1728832897/394677/9c39681e/5ad6e9fdN36a7297c.jpg', '5ad6e9fdN36a7297c.jpg');
INSERT INTO `buoumao` VALUES (22, '【超美仙女猫】Lauren上海猫舍纯种宠物猫活体布偶猫咪幼猫海豹双色布偶猫包售后可上门看猫', '20000.00', 'images/布偶猫/5b0ce1f6Nfdf58660.jpg', '//img10.360buyimg.com/n7/jfs/t21277/276/401168713/767307/dae74d74/5b0ce1f6Nfdf58660.jpg', '5b0ce1f6Nfdf58660.jpg');
INSERT INTO `buoumao` VALUES (23, '土炮哥宠物|布偶猫活体宠物猫咪活体纯种宠物猫幼猫活体宠物活体猫活体小猫活体布偶猫布偶重点色', '4999.00', 'images/布偶猫/5b5ec279N92b725b2.jpg', '//img10.360buyimg.com/n7/jfs/t23317/264/1358918533/365936/547b603d/5b5ec279N92b725b2.jpg', '5b5ec279N92b725b2.jpg');
INSERT INTO `buoumao` VALUES (24, '狗时代DOGTIMES宠物级猫活体英短美短加菲布偶石虎无毛猫蓝猫暹罗猫幼猫小猫宠物猫英短蓝猫公', '3999.00', 'images/布偶猫/57e1ddf981eaace0.jpg', '//img13.360buyimg.com/n7/jfs/t1/14120/17/14984/94704/5cac4907E89acea68/57e1ddf981eaace0.jpg', '57e1ddf981eaace0.jpg');
INSERT INTO `buoumao` VALUES (25, '萝伦Lauren上海猫舍布偶猫活体海双色布偶猫布偶猫幼猫活体宠物猫可上门看猫全款', '28000.00', 'images/布偶猫/ee0274d212ce3623.jpg', '//img11.360buyimg.com/n7/jfs/t1/30178/27/4455/223817/5c7e211aEab2ac099/ee0274d212ce3623.jpg', 'ee0274d212ce3623.jpg');
INSERT INTO `buoumao` VALUES (26, '酷迪熊宠物猫活体小猫咪幼猫英国短毛猫布偶猫加菲猫英短蓝猫幼猫幼崽折耳美短美国纯种渐层短腿乳色可爱无白英短', '1699.00', 'images/布偶猫/1ad7f668e2fea2d9.jpg', '//img11.360buyimg.com/n7/jfs/t1/43590/32/4519/66826/5cd3f0adEc54eab96/1ad7f668e2fea2d9.jpg', '1ad7f668e2fea2d9.jpg');
INSERT INTO `buoumao` VALUES (27, '猫咪庭院宠物活体猫咪布偶猫海豹海双双色重点色', '6999.00', 'images/布偶猫/7ad6f5405cd3d65d.jpg', '//img10.360buyimg.com/n7/jfs/t1/36057/40/8520/124165/5cd0f27bE0dac1f9c/7ad6f5405cd3d65d.jpg', '7ad6f5405cd3d65d.jpg');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(11) NOT NULL,
  `tablename` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goodname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stars` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, '布偶猫', '淘狗无忧布偶猫宠物猫活体猫咪活体布偶双色纯种猫纯种布拉多尔猫幼崽疫苗齐全全国配送宠物级公', 'You happy just Ok', '好看', 4);
INSERT INTO `comments` VALUES (2, '布偶猫', '淘狗无忧布偶猫宠物猫活体猫咪活体布偶双色纯种猫纯种布拉多尔猫幼崽疫苗齐全全国配送宠物级公', 'driver king', '强哥是我爸', 4);
INSERT INTO `comments` VALUES (3, '布偶猫', '土炮哥宠物布偶猫活体宠物猫咪活体纯种宠物猫幼猫活体宠物活体海豹双色蓝双布偶猫咪活体双血统', 'You happy just Ok', '10万一只猫', 4);
INSERT INTO `comments` VALUES (4, '布偶猫', '【超美仙女猫】Lauren上海猫舍布偶猫活体海双色布偶猫咪可爱布偶猫宠物猫仙女猫可上门看猫全款', 'You happy just Ok', '强哥好帅!', 4);
INSERT INTO `comments` VALUES (5, '布偶猫', '缘宠布偶猫布偶猫活体幼体宠物猫幼崽活体仙女猫可爱小猫咪北京可实地挑选', 'You happy just Ok', '搞些什么东西?', 5);
INSERT INTO `comments` VALUES (6, '蓝猫', '宁宠英短蓝猫活体猫咪活体英短蓝白宠物猫活体宠物级公', 'You happy just Ok', '物美价廉', 4);

-- ----------------------------
-- Table structure for dianshiji
-- ----------------------------
DROP TABLE IF EXISTS `dianshiji`;
CREATE TABLE `dianshiji`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dianshiji
-- ----------------------------
INSERT INTO `dianshiji` VALUES (1, '小米全面屏电视E55A55英寸4K超高清HDR蓝牙语音遥控内置小爱2GB+8GBA网络液晶平板电视L55M5-AZ', '2099.00', 'images/电视机/7c809fa28037ad16.jpg', '//img13.360buyimg.com/n7/jfs/t1/47562/33/125/375477/5cd2c3bdE4164c44c/7c809fa28037ad16.jpg', '7c809fa28037ad16.jpg');
INSERT INTO `dianshiji` VALUES (2, '小米电视4A65英寸4K超高清HDR蓝牙语音遥控2GB+8GB人工智能网络液晶平板电视L65M5-AZ/L65M5-AD/L65M5-5A', '2999.00', 'images/电视机/5b028530N51eee7d4.jpg', '//img10.360buyimg.com/n7/jfs/t16915/41/2595769478/575564/1ba1e0a5/5b028530N51eee7d4.jpg', '5b028530N51eee7d4.jpg');
INSERT INTO `dianshiji` VALUES (3, '东芝（TOSHIBA）65U6900C65英寸高色域4KHDRAI人工智能运动补偿32G大内存液晶电视', '4999.00', 'images/电视机/047aead19718fc56.jpg', '//img11.360buyimg.com/n7/jfs/t1/43398/31/11993/659108/5d550d37Ee318c708/047aead19718fc56.jpg', '047aead19718fc56.jpg');
INSERT INTO `dianshiji` VALUES (4, '小米电视4A58英寸4K超高清HDR蓝牙语音遥控2GB+8GB人工智能语音网络液晶平板电视L58M5-4A', '2199.00', 'images/电视机/cfaa654ebfa098db.jpg', '//img11.360buyimg.com/n7/jfs/t1/6350/31/9335/346484/5c136a1dE32b7b86b/cfaa654ebfa098db.jpg', 'cfaa654ebfa098db.jpg');
INSERT INTO `dianshiji` VALUES (5, '小米全面屏电视E55C55英寸4K超高清HDR内置小爱蓝牙语音2GB+8GBAI人工智能网络液晶平板电视L55M5-EC', '2099.00', 'images/电视机/60e9a4b08d3fcb18.jpg', '//img13.360buyimg.com/n7/jfs/t1/69934/17/720/242541/5cee92b3E591dcd60/60e9a4b08d3fcb18.jpg', '60e9a4b08d3fcb18.jpg');
INSERT INTO `dianshiji` VALUES (6, 'TCL55T68055英寸8米AI声控MEMC防抖4K超高清超薄全面屏智慧屏全场景AI人工智能液晶电视机自营', '3299.00', 'images/电视机/5ce8c8962f3e988f.jpg', '//img14.360buyimg.com/n7/jfs/t1/54339/32/9282/141984/5d5fb38cE244d9f17/5ce8c8962f3e988f.jpg', '5ce8c8962f3e988f.jpg');
INSERT INTO `dianshiji` VALUES (7, '海信（Hisense）H65E3A65英寸超高清4KHDR金属背板人工智能液晶电视机丰富影视教育资源', '2849.00', 'images/电视机/68020b048b23f7dd.jpg', '//img10.360buyimg.com/n7/jfs/t1/7871/2/2142/126058/5bd158e9E737b9e25/68020b048b23f7dd.jpg', '68020b048b23f7dd.jpg');
INSERT INTO `dianshiji` VALUES (8, '京品家电飞利浦（PHILIPS）70PUF6894/T370英寸人工智能超大屏幕金属边框16G大内存4K超高清HDR网络智能液晶电视机', '3999.00 节能补贴', 'images/电视机/f6c4a93fbe06f2db.jpg', '//img10.360buyimg.com/n7/jfs/t1/32013/14/12448/298071/5cb7d9feE91f1651e/f6c4a93fbe06f2db.jpg', 'f6c4a93fbe06f2db.jpg');
INSERT INTO `dianshiji` VALUES (9, '飞利浦（PHILIPS）65PUF6192/T365英寸人工智能4K超高清HDR网络智能液晶电视机', '2699.00 节能补贴', 'images/电视机/3cc29dd29997cff3.jpg', '//img14.360buyimg.com/n7/jfs/t1/23800/35/2942/81166/5c22fa25Ec5325ede/3cc29dd29997cff3.jpg', '3cc29dd29997cff3.jpg');
INSERT INTO `dianshiji` VALUES (10, '创维（SKYWORTH）55H555英寸4K超高清HDR护眼全面屏AI人工智能语音蓝牙网络WIFI液晶平板电视机', '2599.00', 'images/电视机/17f5b139b7cf1ef4.jpg', '//img10.360buyimg.com/n7/jfs/t1/44084/26/11252/133174/5d47c926E0def4d8b/17f5b139b7cf1ef4.jpg', '17f5b139b7cf1ef4.jpg');
INSERT INTO `dianshiji` VALUES (11, '荣耀智慧屏PRO55英寸2+32G电视的未来!华为鸿蒙OS升降式AI摄像头远场语音液晶4K超高清全面屏OSCA-550', '4799.00', 'images/电视机/efbd18c841406a5c.jpg', '//img14.360buyimg.com/n7/jfs/t1/47546/20/9840/321471/5d6f7f63Eaac26e78/efbd18c841406a5c.jpg', 'efbd18c841406a5c.jpg');
INSERT INTO `dianshiji` VALUES (12, 'TCL65T68065英寸8米AI声控MEMC防抖4K超高清超薄全面屏智慧屏全场景AI人工智能液晶电视机自营', '4999.00', 'images/电视机/3bb15e5a62322e66.jpg', '//img11.360buyimg.com/n7/jfs/t1/64796/17/8095/142292/5d5fb375Ee994c455/3bb15e5a62322e66.jpg', '3bb15e5a62322e66.jpg');
INSERT INTO `dianshiji` VALUES (13, '小米电视4X65英寸L65M5-4X4K超高清HDR蓝牙语音遥控内置小爱2GB+8GB人工智能语音网络液晶平板电视', '2999.00 节能补贴', 'images/电视机/81ccda2e5cc8cd22.jpg', '//img12.360buyimg.com/n7/jfs/t1/35790/4/5662/348355/5cc01eb5E0ccc0f89/81ccda2e5cc8cd22.jpg', '81ccda2e5cc8cd22.jpg');
INSERT INTO `dianshiji` VALUES (14, '创维（SKYWORTH）65H565英寸4K超高清HDR护眼全面屏AI人工智能语音蓝牙网络WIFI液晶平板电视机', '3699.00', 'images/电视机/75f3a6d8db83f489.jpg', '//img11.360buyimg.com/n7/jfs/t1/66736/5/6413/132600/5d479265E07df1a83/75f3a6d8db83f489.jpg', '75f3a6d8db83f489.jpg');
INSERT INTO `dianshiji` VALUES (15, '小米电视4S75英寸4K超高清HDR蓝牙语音遥控2GB+8GB人工智能语音网络液晶平板电视L75M5-4S', '6999.00', 'images/电视机/5bfcef81N8cc6b35d.jpg', '//img12.360buyimg.com/n7/jfs/t30442/269/746300075/345916/a8c50691/5bfcef81N8cc6b35d.jpg', '5bfcef81N8cc6b35d.jpg');
INSERT INTO `dianshiji` VALUES (16, '京品家电海信（Hisense）H55E75A55英寸4KHDR超薄全面屏3+64G超大配置AI人工智能液晶网络电视机【京东智能】', '3599.00', 'images/电视机/ec3c7a5afc9ddd69.jpg', '//img12.360buyimg.com/n7/jfs/t1/17875/15/15520/235119/5cb06564E04c3c6ec/ec3c7a5afc9ddd69.jpg', 'ec3c7a5afc9ddd69.jpg');
INSERT INTO `dianshiji` VALUES (17, '海信（Hisense）HZ70E3D70英寸4KHDR大屏全金属机身智慧语音电视机', '4199.00 节能补贴', 'images/电视机/5cd8c617N387b2c0b.jpg', '//img12.360buyimg.com/n7/jfs/t27133/319/2671203674/158361/edd1e039/5cd8c617N387b2c0b.jpg', '5cd8c617N387b2c0b.jpg');
INSERT INTO `dianshiji` VALUES (18, '长虹65D75P65英寸4K超高清HDR超薄全面屏远场语音AIoT智慧物联液晶平板网络电视机', '4799.00', 'images/电视机/0e7146abd12157e3.jpg', '//img11.360buyimg.com/n7/jfs/t1/77804/35/196/339549/5ce679c7E00316307/0e7146abd12157e3.jpg', '0e7146abd12157e3.jpg');
INSERT INTO `dianshiji` VALUES (19, '索尼（SONY）KD-55X8000G55英寸4K超高清HDR智能网络液晶平板电视智能语音安卓7.0蓝牙/WiFi', '4699.00', 'images/电视机/491470d4e4bde77d.jpg', '//img11.360buyimg.com/n7/jfs/t1/32183/11/10245/196251/5cadab61E7fca22ba/491470d4e4bde77d.jpg', '491470d4e4bde77d.jpg');
INSERT INTO `dianshiji` VALUES (20, 'TCL65A860U65英寸1.5+16GB4K超高清32核7.9mm超薄全面屏AI人工智能网络液晶平板电视机自营', '3549.00 节能补贴', 'images/电视机/d5a57d74aace8604.jpg', '//img12.360buyimg.com/n7/jfs/t1/54614/28/8409/102140/5d5fb566E8b5f4d4c/d5a57d74aace8604.jpg', 'd5a57d74aace8604.jpg');
INSERT INTO `dianshiji` VALUES (21, '小米电视4A50英寸4K超高清HDR蓝牙语音遥控2GB+8GB人工智能语音网络液晶平板电视L50M5-AD/L50M5-5A', '1699.00', 'images/电视机/5abb6be2N853106d9.jpg', '//img12.360buyimg.com/n7/jfs/t17050/106/1124838205/250590/7e63050a/5abb6be2N853106d9.jpg', '5abb6be2N853106d9.jpg');
INSERT INTO `dianshiji` VALUES (22, '乐视（Letv）超级电视X40C40英寸1GB+8GB大存储全高清人工智能超薄网络液晶平板电视机（标配底座）', '999.00', 'images/电视机/9e675e01009289dd.jpg', '//img14.360buyimg.com/n7/jfs/t1/44811/16/8165/159252/5d5ba3d5E16b88970/9e675e01009289dd.jpg', '9e675e01009289dd.jpg');
INSERT INTO `dianshiji` VALUES (23, '小米电视4C50英寸4K超高清HDR蓝牙语音遥控2GB+8GB人工智能语音网络液晶平板电视L50M5-AD', '1699.00', 'images/电视机/5abca3f7N357415cf.jpg', '//img12.360buyimg.com/n7/jfs/t17005/162/1085412629/385285/95d5361c/5abca3f7N357415cf.jpg', '5abca3f7N357415cf.jpg');
INSERT INTO `dianshiji` VALUES (24, '长虹55D75P55英寸4K超高清HDR超薄全面屏远场语音AIoT智慧物联液晶平板网络电视机', '3599.00', 'images/电视机/5cdbd6a5N5f0fa65d.jpg', '//img13.360buyimg.com/n7/jfs/t29101/210/1300043950/339415/ccbc6df2/5cdbd6a5N5f0fa65d.jpg', '5cdbd6a5N5f0fa65d.jpg');
INSERT INTO `dianshiji` VALUES (25, '海信（Hisense）H55E3A55英寸超高清4KHDR金属背板人工智能液晶电视机丰富影视教育资源', '1849.00', 'images/电视机/76e2f8cd8950bb6b.jpg', '//img12.360buyimg.com/n7/jfs/t1/7809/31/2146/126334/5bd158a5E33017eb7/76e2f8cd8950bb6b.jpg', '76e2f8cd8950bb6b.jpg');
INSERT INTO `dianshiji` VALUES (26, '小米电视4A55英寸4K超高清HDR蓝牙语音2GB+8GB人工智能语音网络液晶平板电视L55M5-AZ/L55M5-AD/L55M5-5A', '1999.00', 'images/电视机/5be6671fN45e2a0e9.jpg', '//img12.360buyimg.com/n7/jfs/t27640/338/1570737219/372154/a66d1c25/5be6671fN45e2a0e9.jpg', '5be6671fN45e2a0e9.jpg');
INSERT INTO `dianshiji` VALUES (27, '小米全面屏电视E43A43英寸全高清HDR内置小爱蓝牙语音遥控1GB+8GBAI人工智能网络液晶平板电视L43M5-FA', '1599.00', 'images/电视机/8e6751db277c6c33.jpg', '//img13.360buyimg.com/n7/jfs/t1/52964/34/128/376177/5cd2c3a1Eb408259c/8e6751db277c6c33.jpg', '8e6751db277c6c33.jpg');
INSERT INTO `dianshiji` VALUES (28, '小米电视4C32英寸高清1GB+4GB人工智能网络液晶平板电视L32M5-AD', '699.00', 'images/电视机/5b06332dN51a52357.jpg', '//img13.360buyimg.com/n7/jfs/t17359/364/2695394014/410106/6d27aa54/5b06332dN51a52357.jpg', '5b06332dN51a52357.jpg');
INSERT INTO `dianshiji` VALUES (29, '小米电视全面屏E32C32英寸高清四核处理器1GB+4GBAI智能网络液晶平板电视L32M5-EC', '899.00', 'images/电视机/760b8f1cabc905de.jpg', '//img13.360buyimg.com/n7/jfs/t1/69527/31/3578/144908/5d1dacb4E6eaa2bc1/760b8f1cabc905de.jpg', '760b8f1cabc905de.jpg');
INSERT INTO `dianshiji` VALUES (30, '康佳（KONKA）55A1055英寸4K超高清超薄金属机身3GB+64GB大内存全景AI智慧屏三星全面屏智能电视', '3599.00', 'images/电视机/b556cffbb4071e93.jpg', '//img10.360buyimg.com/n7/jfs/t1/47341/24/8869/426696/5d6384d7E8c19d33e/b556cffbb4071e93.jpg', 'b556cffbb4071e93.jpg');
INSERT INTO `dianshiji` VALUES (31, '乐视（Letv）超级电视Y4343英寸1GB+8GB大存储人工智能全高清LED平板液晶网络超薄电视机', '1099.00', 'images/电视机/20dcbced44376775.jpg', '//img12.360buyimg.com/n7/jfs/t1/52950/10/8308/270504/5d5ba3b4E041ecbcc/20dcbced44376775.jpg', '20dcbced44376775.jpg');
INSERT INTO `dianshiji` VALUES (32, '创维酷开(coocaa)40K5D40英寸全高清智能WiFi丰富影视人工智能液晶网络电视机', '1099.00', 'images/电视机/b5014f65f35fbd68.jpg', '//img11.360buyimg.com/n7/jfs/t1/73109/15/7114/264501/5d5257f0E77d27a47/b5014f65f35fbd68.jpg', 'b5014f65f35fbd68.jpg');
INSERT INTO `dianshiji` VALUES (33, '乐视（Letv）超级电视Y3232英寸1GB+8GB大存储HD高清屏人工智能网络液晶高保真音质平板小客厅卧室电视', '688.00', 'images/电视机/5d536429a9e8d98c.jpg', '//img11.360buyimg.com/n7/jfs/t1/82121/12/7755/214709/5d5ba455Ea654152e/5d536429a9e8d98c.jpg', '5d536429a9e8d98c.jpg');
INSERT INTO `dianshiji` VALUES (34, '小米电视4A43英寸青春版全高清蓝牙语音遥控1GB+8GB人工智能网络液晶平板电视L43M5-AD/L43M5-5A', '1399.00', 'images/电视机/5ae3e1d8N07b161ee.jpg', '//img11.360buyimg.com/n7/jfs/t18676/117/2102384603/428386/224a31de/5ae3e1d8N07b161ee.jpg', '5ae3e1d8N07b161ee.jpg');
INSERT INTO `dianshiji` VALUES (35, '小米电视4X43英寸全高清蓝牙语音遥控1GB+8GB人工智能语音网络液晶平板电视L43M5-4X', '1399.00', 'images/电视机/5be66bf1N8f00d10e.jpg', '//img14.360buyimg.com/n7/jfs/t27709/201/1586417750/361172/4e970d11/5be66bf1N8f00d10e.jpg', '5be66bf1N8f00d10e.jpg');
INSERT INTO `dianshiji` VALUES (36, '海信（Hisense）HZ65E3D-PRO65英寸AI声控MEMC防抖16GB大存储无边全面屏电视', '3899.00', 'images/电视机/4801ff9bf131ee8d.jpg', '//img13.360buyimg.com/n7/jfs/t1/55402/6/2227/183322/5d00d71cE49f1c47c/4801ff9bf131ee8d.jpg', '4801ff9bf131ee8d.jpg');
INSERT INTO `dianshiji` VALUES (37, '飞利浦（PHILIPS）50PUF6192/T350英寸人工智能4K超高清HDR网络智能液晶电视机', '1599.00', 'images/电视机/1f205ea2c708681e.jpg', '//img13.360buyimg.com/n7/jfs/t1/64223/32/648/92212/5cee1935E8fa9d989/1f205ea2c708681e.jpg', '1f205ea2c708681e.jpg');
INSERT INTO `dianshiji` VALUES (38, '海信（Hisense）H43E3A43英寸超高清4KHDR金属背板人工智能液晶电视机丰富影视教育资源', '1499.00', 'images/电视机/be632229fe2becfc.jpg', '//img12.360buyimg.com/n7/jfs/t1/5868/29/9025/156810/5bab5c18E79a1b445/be632229fe2becfc.jpg', 'be632229fe2becfc.jpg');
INSERT INTO `dianshiji` VALUES (39, 'TCL55L255英寸高画质4K超高清HDR智能网络液晶电视机丰富影视教育资源自营家电（黑色）', '1949.00', 'images/电视机/34f00e657aa412ca.jpg', '//img13.360buyimg.com/n7/jfs/t1/68020/14/8134/137295/5d5fb612E58de949f/34f00e657aa412ca.jpg', '34f00e657aa412ca.jpg');
INSERT INTO `dianshiji` VALUES (40, '创维酷开(coocaa)40K5C40英寸全高清智能WiFi防蓝光护眼HDR丰富影视人工智能液晶网络电视机', '1099.00', 'images/电视机/23b90c17af9151b7.jpg', '//img10.360buyimg.com/n7/jfs/t1/65275/15/6909/134021/5d5253b1E679dcac0/23b90c17af9151b7.jpg', '23b90c17af9151b7.jpg');
INSERT INTO `dianshiji` VALUES (41, 'TCL55L68055英寸高画质4K超高清HDR防蓝光智能液晶电视机丰富影视资源自营', '1799.00', 'images/电视机/16de25a95bd8105a.jpg', '//img11.360buyimg.com/n7/jfs/t1/48597/13/8631/140146/5d5fb66bE0006a133/16de25a95bd8105a.jpg', '16de25a95bd8105a.jpg');
INSERT INTO `dianshiji` VALUES (42, '海信（Hisense）HZ65E7D65英寸超高色域3GB+32GB超音画AI声控杜比全景声超薄全面屏电视', '5799.00', 'images/电视机/5ce63facNc08cded7.jpg', '//img11.360buyimg.com/n7/jfs/t27925/157/1609468107/486390/614229a5/5ce63facNc08cded7.jpg', '5ce63facNc08cded7.jpg');
INSERT INTO `dianshiji` VALUES (43, '海信（Hisense）H50E3A50英寸超高清4KHDR金属背板人工智能液晶电视机丰富影视教育资源', '1749.00', 'images/电视机/ee766f337d1be6f9.jpg', '//img11.360buyimg.com/n7/jfs/t1/3861/36/8997/156670/5bab5c4eE1276f6a5/ee766f337d1be6f9.jpg', 'ee766f337d1be6f9.jpg');
INSERT INTO `dianshiji` VALUES (44, '飞利浦（PHILIPS）55PUF7194/T355英寸人工智能一级能效超薄全面屏4K超高清HDR网络智能液晶平板电视机', '1999.00', 'images/电视机/9610f77876500f92.jpg', '//img12.360buyimg.com/n7/jfs/t1/64811/3/1181/238169/5cf76eedE4cede79a/9610f77876500f92.jpg', '9610f77876500f92.jpg');
INSERT INTO `dianshiji` VALUES (45, '乐视（Letv）超级电视X55C55英寸2GB+8GB大存储窄边框4K超高清人工智能超薄网络液晶平板电视机', '1599.00', 'images/电视机/f374d01c5ec4b94d.jpg', '//img14.360buyimg.com/n7/jfs/t1/82123/31/7796/200260/5d5b9b9cE22038d3e/f374d01c5ec4b94d.jpg', 'f374d01c5ec4b94d.jpg');
INSERT INTO `dianshiji` VALUES (46, '飞利浦（PHILIPS）39PHF5292/T339英寸人工智能二级省电能效海量应用网络智能高清液晶电视机', '999.00', 'images/电视机/a994e8a46af5835e.jpg', '//img13.360buyimg.com/n7/jfs/t1/46709/17/1612/412155/5cf62500E15fa84ba/a994e8a46af5835e.jpg', 'a994e8a46af5835e.jpg');
INSERT INTO `dianshiji` VALUES (47, '海信（Hisense）HZ43E35A43英寸全高清平板AI智能液晶电视机', '1349.00', 'images/电视机/f392425015b575c7.jpg', '//img12.360buyimg.com/n7/jfs/t1/1994/22/9093/202167/5bab5d37E07903a75/f392425015b575c7.jpg', 'f392425015b575c7.jpg');
INSERT INTO `dianshiji` VALUES (48, '小米全面屏电视E32A32英寸高清内置小爱同学蓝牙语音遥控1GB+4GBAI人工智能网络液晶平板电视L32M5-AD', '899.00', 'images/电视机/31ce3bd26b60a6d8.jpg', '//img11.360buyimg.com/n7/jfs/t1/40388/35/1850/332478/5cbe8823E795dc68b/31ce3bd26b60a6d8.jpg', '31ce3bd26b60a6d8.jpg');
INSERT INTO `dianshiji` VALUES (49, '小米电视4X55英寸4K超高清HDR蓝牙语音遥控2GB+8GB人工智能语音网络液晶平板电视L55M5-AD', '1999.00', 'images/电视机/d26cc10a08925d0d.jpg', '//img11.360buyimg.com/n7/jfs/t1/40091/37/8022/347730/5cf29444E5e18cacf/d26cc10a08925d0d.jpg', 'd26cc10a08925d0d.jpg');
INSERT INTO `dianshiji` VALUES (50, '海信（Hisense）H58E3A58英寸超高清4KHDR金属背板人工智能液晶电视机丰富影视教育资源（黑色）', '1999.00', 'images/电视机/7dddea128bd74398.jpg', '//img12.360buyimg.com/n7/jfs/t1/8784/29/2062/158879/5bd158d0E2c50f4d6/7dddea128bd74398.jpg', '7dddea128bd74398.jpg');
INSERT INTO `dianshiji` VALUES (51, '【京东智能电视】康佳KKTVU50F150英寸4K超高清36核HDR网络电视人工智能语音液晶电视', '1499.00', 'images/电视机/a2b328b5c7c7e445.jpg', '//img14.360buyimg.com/n7/jfs/t1/76821/32/8263/268404/5d634badEb6cb3769/a2b328b5c7c7e445.jpg', 'a2b328b5c7c7e445.jpg');
INSERT INTO `dianshiji` VALUES (52, '海信（Hisense）55英寸E3D京享版HZ55E3D-J无边全面屏AI语音超高清4KHDR丰富影视资源人工智能电视机', '1949.00', 'images/电视机/f4482315fda7b810.jpg', '//img11.360buyimg.com/n7/jfs/t1/78515/5/4964/173494/5d315e11E53bdd3e8/f4482315fda7b810.jpg', 'f4482315fda7b810.jpg');
INSERT INTO `dianshiji` VALUES (53, '海信（Hisense）HZ32E35A32英寸AI智能操控高清平板液晶电视机', '849.00', 'images/电视机/a564096f66aa96ee.jpg', '//img14.360buyimg.com/n7/jfs/t1/729/25/9281/199342/5bab5a6dE03b4baab/a564096f66aa96ee.jpg', 'a564096f66aa96ee.jpg');
INSERT INTO `dianshiji` VALUES (54, '飞利浦（PHILIPS）32PHF5292/T332英寸人工智能二级能效安卓系统海量应用网络智能液晶电视机', '749.00', 'images/电视机/ac421f4974e2c3f9.jpg', '//img13.360buyimg.com/n7/jfs/t1/58088/29/1607/182734/5cf624e0Ea0df0d82/ac421f4974e2c3f9.jpg', 'ac421f4974e2c3f9.jpg');
INSERT INTO `dianshiji` VALUES (55, 'TCL50V250英寸纤薄全面屏4K超清HDR电视机30核人工智能（银河灰）', '1949.00', 'images/电视机/52a8e973b8ec99d1.jpg', '//img14.360buyimg.com/n7/jfs/t1/69413/20/8079/351500/5d5fb683Efee2c9e6/52a8e973b8ec99d1.jpg', '52a8e973b8ec99d1.jpg');
INSERT INTO `dianshiji` VALUES (56, '海信（Hisense）HZ40E35D40英寸海量内容纤薄机身家庭VIDAAAI智能操控智能电视机', '1088.00', 'images/电视机/5cd8c537N38bb5327.jpg', '//img13.360buyimg.com/n7/jfs/t27544/172/2711734521/282009/9bf3d5f5/5cd8c537N38bb5327.jpg', '5cd8c537N38bb5327.jpg');
INSERT INTO `dianshiji` VALUES (57, 'TCL43V243英寸纤薄全面屏4K超高清HDR电视机30核人工智能（银河灰）', '1649.00', 'images/电视机/b9d8da15ffabec6d.jpg', '//img14.360buyimg.com/n7/jfs/t1/68723/4/8075/351398/5d5fb6a6E665f5ac8/b9d8da15ffabec6d.jpg', 'b9d8da15ffabec6d.jpg');
INSERT INTO `dianshiji` VALUES (58, '创维（SKYWORTH）65H665英寸4K超高清HDR护眼全面屏2+32G人工智能语音蓝牙网络液晶电视机家电', '4399.00', 'images/电视机/43c03b747737924c.jpg', '//img11.360buyimg.com/n7/jfs/t1/84264/11/6388/97697/5d4792daE02f3703f/43c03b747737924c.jpg', '43c03b747737924c.jpg');
INSERT INTO `dianshiji` VALUES (59, '创维（SKYWORTH）32X632英寸10核窄边高清人工智能网络WIFI卧室液晶平板电视机', '888.00', 'images/电视机/1dfbb0a6c43c6eb6.jpg', '//img10.360buyimg.com/n7/jfs/t1/67014/10/6382/115495/5d479cd1E0fbbe2af/1dfbb0a6c43c6eb6.jpg', '1dfbb0a6c43c6eb6.jpg');
INSERT INTO `dianshiji` VALUES (60, '飞利浦（PHILIPS）55PUF6023/T355英寸人工智能4K超高清HDR二级能效网络智能液晶电视机', '1899.00', 'images/电视机/280ec0703f1db717.jpg', '//img13.360buyimg.com/n7/jfs/t1/61418/15/1092/294001/5cf50c2cEe7e8bee5/280ec0703f1db717.jpg', '280ec0703f1db717.jpg');

-- ----------------------------
-- Table structure for dianzishu
-- ----------------------------
DROP TABLE IF EXISTS `dianzishu`;
CREATE TABLE `dianzishu`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dianzishu
-- ----------------------------
INSERT INTO `dianzishu` VALUES (1, '全新Kindlepaperwhite电子书阅读器电纸书墨水屏经典版第四代8G6英寸wifi墨黑色', '998.00', 'images/电子书/c7edc7a2b9574a07.jpg', '//img10.360buyimg.com/n7/jfs/t1/28588/5/14151/126517/5ca47d08E181f5b83/c7edc7a2b9574a07.jpg', 'c7edc7a2b9574a07.jpg');
INSERT INTO `dianzishu` VALUES (2, '全新Kindlepaperwhite电子书阅读器电纸书墨水屏经典版第四代32G6英寸wifi墨黑色', '1258.00', 'images/电子书/f838b0bf8e68f066.jpg', '//img12.360buyimg.com/n7/jfs/t1/26837/9/14026/145814/5ca49135Ec9c47316/f838b0bf8e68f066.jpg', 'f838b0bf8e68f066.jpg');
INSERT INTO `dianzishu` VALUES (3, '【新品】Kindle电子书阅读器电纸书青春版4G黑色', '658.00', 'images/电子书/cd56a7f8b072dc08.jpg', '//img12.360buyimg.com/n7/jfs/t1/23905/19/14290/208246/5ca577d7E59e1f9d4/cd56a7f8b072dc08.jpg', 'cd56a7f8b072dc08.jpg');
INSERT INTO `dianzishu` VALUES (4, '国文当当阅读器新锐版电子书阅读器电纸书墨水屏读书器8G内存33级阅读灯', '558.00', 'images/电子书/a1bf5098cfd672d7.jpg', '//img10.360buyimg.com/n7/jfs/t1/35126/31/2796/120671/5cb6d15eE069c8121/a1bf5098cfd672d7.jpg', 'a1bf5098cfd672d7.jpg');
INSERT INTO `dianzishu` VALUES (5, '全新亚马逊kindleoasis电子书阅读器32G银灰色第三代尊享版', '2658.00', 'images/电子书/9685d2c3a132a26e.jpg', '//img11.360buyimg.com/n7/jfs/t1/79741/29/2372/108707/5d0af158E1d9eb299/9685d2c3a132a26e.jpg', '9685d2c3a132a26e.jpg');
INSERT INTO `dianzishu` VALUES (6, 'Likebook10.3英寸智能手写本电子书电纸书阅读器电子纸智能办公本墨水屏电子阅读器标配', '3280.00', 'images/电子书/6e3cff89bdf0726f.jpg', '//img12.360buyimg.com/n7/jfs/t1/68597/14/9231/146400/5d6e1f3dE52217c91/6e3cff89bdf0726f.jpg', '6e3cff89bdf0726f.jpg');
INSERT INTO `dianzishu` VALUES (7, '掌阅iReader青春版电子书阅读器电纸书墨水屏8G内存6英寸212ppi黑色', '658.00', 'images/电子书/312a92ce4dcd876a.jpg', '//img13.360buyimg.com/n7/jfs/t1/15669/18/15376/179929/5caefb12E2ab4de9f/312a92ce4dcd876a.jpg', '312a92ce4dcd876a.jpg');
INSERT INTO `dianzishu` VALUES (8, '科大讯飞智能办公本 电子笔记本电子书阅读器10.3英寸墨水屏电纸书 纸感书写阅读语音转文字', '4999.00', 'images/电子书/9bfb30e744dedb9d.jpg', '//img11.360buyimg.com/n7/jfs/t1/50219/13/9511/121158/5d6f259bE7aca949e/9bfb30e744dedb9d.jpg', '9bfb30e744dedb9d.jpg');
INSERT INTO `dianzishu` VALUES (9, '墨案moaan小米生态链智能电子纸W7电子墨水屏10.3英寸电子书阅读器32G星光白', '2499.00', 'images/电子书/9dfa2f4932fd0bec.jpg', '//img12.360buyimg.com/n7/jfs/t1/43901/23/8323/102769/5d1c138bEcebc6920/9dfa2f4932fd0bec.jpg', '9dfa2f4932fd0bec.jpg');
INSERT INTO `dianzishu` VALUES (10, '【腾讯阅文集团】口袋阅墨水屏电子书2019款qq阅读电纸书阅读器能打电话的阅读器5.2英寸黑色', '899.00', 'images/电子书/2f22e674caaed9b8.jpg', '//img13.360buyimg.com/n7/jfs/t1/71002/27/6527/171573/5d495e71E0a3439ad/2f22e674caaed9b8.jpg', '2f22e674caaed9b8.jpg');
INSERT INTO `dianzishu` VALUES (11, '【新品】Kindle电子书阅读器电纸书青春版4G白色', '658.00', 'images/电子书/f1934d5084ca5cd1.jpg', '//img12.360buyimg.com/n7/jfs/t1/24135/9/14249/172526/5ca577f7Ebd62aab7/f1934d5084ca5cd1.jpg', 'f1934d5084ca5cd1.jpg');
INSERT INTO `dianzishu` VALUES (12, '国文R7电子书阅读器7.8寸智能手写电子笔记本墨水屏电纸书32G读书神器官方标配', '1499.00', 'images/电子书/cee01ee2fc52fb99.jpg', '//img13.360buyimg.com/n7/jfs/t1/68751/14/8428/117150/5d673a5bE0dd9d0a7/cee01ee2fc52fb99.jpg', 'cee01ee2fc52fb99.jpg');
INSERT INTO `dianzishu` VALUES (13, '索尼（SONY）索尼电子纸DPT-RP1中文操作系统官方正品白色', '5619.00', 'images/电子书/5b208b35Nf3a81892.jpg', '//img11.360buyimg.com/n7/jfs/t20230/158/1164942146/51278/27bddf9/5b208b35Nf3a81892.jpg', '5b208b35Nf3a81892.jpg');
INSERT INTO `dianzishu` VALUES (14, '【新品】掌阅iReaderA6电子书阅读器6英寸电纸书听读一体蓝牙听书墨水屏8GB太空灰', '1098.00', 'images/电子书/ae45349ea41ba5b2.jpg', '//img13.360buyimg.com/n7/jfs/t1/22895/21/15447/132524/5caefc47E3446d0aa/ae45349ea41ba5b2.jpg', 'ae45349ea41ba5b2.jpg');
INSERT INTO `dianzishu` VALUES (15, '【京东自营，专业型客服】文石BOOXNotePro10.3英寸纯平带前光双触控电纸书阅读器墨水屏电子笔记本', '3380.00', 'images/电子书/7f6ad3f67d9ef83d.jpg', '//img10.360buyimg.com/n7/jfs/t1/63958/9/6016/270656/5d40fa99Eb5ca1f9a/7f6ad3f67d9ef83d.jpg', '7f6ad3f67d9ef83d.jpg');
INSERT INTO `dianzishu` VALUES (16, '国文当当阅读器light300ppi纯平防水电子书阅读器小说墨水屏电纸书类kindle', '778.00', 'images/电子书/7fd4c7ab2561b3cf.jpg', '//img11.360buyimg.com/n7/jfs/t1/37317/33/2621/59305/5cb69658E6af34c1d/7fd4c7ab2561b3cf.jpg', '7fd4c7ab2561b3cf.jpg');
INSERT INTO `dianzishu` VALUES (17, '【京东自营，专业型客服】文石ONYXBOOXNovaPro纯平双色温电子书阅读器电纸书7.8英寸墨水屏电子笔记本', '1980.00', 'images/电子书/8a024413389a8096.jpg', '//img10.360buyimg.com/n7/jfs/t1/46268/16/6320/96842/5d40fb13E1d9e1d1c/8a024413389a8096.jpg', '8a024413389a8096.jpg');
INSERT INTO `dianzishu` VALUES (18, '科大讯飞（iFLYTEK）科大讯飞智能办公本电子笔记本阅读器10.3英寸墨水屏电纸书办公本+蓝牙耳机套餐', '4999.00', 'images/电子书/37935697c8c85856.jpg', '//img11.360buyimg.com/n7/jfs/t1/65631/17/9392/98343/5d71ea58E7375dd95/37935697c8c85856.jpg', '37935697c8c85856.jpg');
INSERT INTO `dianzishu` VALUES (19, '掌阅iReaderT6纯平电子书阅读器6英寸电纸书墨水屏钢化玻璃300ppi8G黑色', '958.00', 'images/电子书/19a268a6c4af37cd.jpg', '//img11.360buyimg.com/n7/jfs/t1/32335/15/10365/167055/5caefbddEfa945f01/19a268a6c4af37cd.jpg', '19a268a6c4af37cd.jpg');
INSERT INTO `dianzishu` VALUES (20, '索尼（SONY）索尼电子纸DPT-CP1中文操作系统官方正品白色', '4838.00', 'images/电子书/5bc5a42aNd4142ac9.jpg', '//img10.360buyimg.com/n7/jfs/t26926/113/1317679647/116122/c133fe91/5bc5a42aNd4142ac9.jpg', '5bc5a42aNd4142ac9.jpg');
INSERT INTO `dianzishu` VALUES (21, '掌阅iReader青春版电子书阅读器电纸书墨水屏8G内存6英寸212ppi白色', '658.00', 'images/电子书/dbeec88ee8f86986.jpg', '//img12.360buyimg.com/n7/jfs/t1/34242/25/1043/168322/5caefb54Ed7bb38df/dbeec88ee8f86986.jpg', 'dbeec88ee8f86986.jpg');
INSERT INTO `dianzishu` VALUES (22, '全新亚马逊kindleoasis第三代尊享版32G香槟金电子书阅读器', '2658.00', 'images/电子书/b104fa8eec6f6de6.jpg', '//img14.360buyimg.com/n7/jfs/t1/61965/22/2385/119142/5d0af265Ec426938e/b104fa8eec6f6de6.jpg', 'b104fa8eec6f6de6.jpg');
INSERT INTO `dianzishu` VALUES (23, '全新亚马逊kindleoasis第三代尊享版8G银灰色电子书阅读器', '2399.00', 'images/电子书/846b2b9451e7093f.jpg', '//img10.360buyimg.com/n7/jfs/t1/71738/1/2433/108707/5d0af22cE532b1dd8/846b2b9451e7093f.jpg', '846b2b9451e7093f.jpg');
INSERT INTO `dianzishu` VALUES (24, '【京东自主研发】JDRead1电子书阅读器300ppi高清墨水屏电纸书6英寸阅读灯', '849.00', 'images/电子书/931cc573c295c243.jpg', '//img11.360buyimg.com/n7/jfs/t1/69699/17/7613/98045/5d59fd5cE21b4b15b/931cc573c295c243.jpg', '931cc573c295c243.jpg');
INSERT INTO `dianzishu` VALUES (25, '掌阅iReaderSmart超级智能本10.3英寸电纸书阅读器电子笔记本电子书墨水屏32G黑色', '3499.00', 'images/电子书/6032b79a942679c2.jpg', '//img13.360buyimg.com/n7/jfs/t1/35238/18/1073/95689/5caefc78E23e3ab94/6032b79a942679c2.jpg', '6032b79a942679c2.jpg');
INSERT INTO `dianzishu` VALUES (26, 'Kindlepaperwhite电子书阅读器电纸书墨水屏经典版第四代8G6英寸wifi烟紫色', '998.00', 'images/电子书/348ebcd0d4bf79a7.jpg', '//img11.360buyimg.com/n7/jfs/t1/79454/31/4501/96616/5d27e977E0e4c4189/348ebcd0d4bf79a7.jpg', '348ebcd0d4bf79a7.jpg');
INSERT INTO `dianzishu` VALUES (27, 'Kindlepaperwhite电子书阅读器电纸书墨水屏经典版第四代8G6英寸wifi雾蓝色', '998.00', 'images/电子书/e69002128acceb04.jpg', '//img13.360buyimg.com/n7/jfs/t1/42386/19/9062/108531/5d27eb00E9a9410bb/e69002128acceb04.jpg', 'e69002128acceb04.jpg');
INSERT INTO `dianzishu` VALUES (28, 'Kindlepaperwhite电子书阅读器电纸书墨水屏经典版第四代8G6英寸wifi玉青色', '998.00', 'images/电子书/17d8a91f027278b6.jpg', '//img11.360buyimg.com/n7/jfs/t1/49505/13/4708/100508/5d27e828Ea6f0e906/17d8a91f027278b6.jpg', '17d8a91f027278b6.jpg');
INSERT INTO `dianzishu` VALUES (29, 'Kindlepaperwhite电子书阅读器电纸书墨水屏经典版第四代32G6英寸wifi玉青色', '1258.00', 'images/电子书/0c1302a7fb0d0dc5.jpg', '//img10.360buyimg.com/n7/jfs/t1/77550/15/4415/100508/5d27eb24Ecd91a8f7/0c1302a7fb0d0dc5.jpg', '0c1302a7fb0d0dc5.jpg');
INSERT INTO `dianzishu` VALUES (30, '【七仓直发】科大讯飞智能办公本电子笔记本电子书阅读器10.3英寸超墨水屏电纸书纸感书写语音转文字智能办公本【加送原装电磁笔+笔芯*2+华为充电宝】', '4999.00', 'images/电子书/df69d3ff825fe0ef.jpg', '//img10.360buyimg.com/n7/jfs/t1/48566/33/9947/161118/5d720531Ed309fa82/df69d3ff825fe0ef.jpg', 'df69d3ff825fe0ef.jpg');
INSERT INTO `dianzishu` VALUES (31, '掌阅iReaderOcean6.8英寸电子书阅读器纯平钢化玻璃电纸书墨水屏全新轻薄黑色', '待发布', 'images/电子书/d29ea13582710962.jpg', '//img11.360buyimg.com/n7/jfs/t1/73707/6/2960/118790/5d131b08E8fcadb75/d29ea13582710962.jpg', 'd29ea13582710962.jpg');
INSERT INTO `dianzishu` VALUES (32, '【自营仓次日达】科大讯飞智能办公本电子笔记本电子书阅读器10.3英寸超墨水屏电纸书纸感书写语音转文字讯飞智能办公本—【送原装配件+200元京...', '4999.00', 'images/电子书/783bc50018a75fc5.jpg', '//img12.360buyimg.com/n7/jfs/t1/69228/25/9368/154413/5d71ce64Ef8659468/783bc50018a75fc5.jpg', '783bc50018a75fc5.jpg');
INSERT INTO `dianzishu` VALUES (33, 'Kindlepaperwhite电子书阅读器电纸书墨水屏经典版第四代32G6英寸wifi烟紫色', '1258.00', 'images/电子书/56dbba3f9e3c55b0.jpg', '//img12.360buyimg.com/n7/jfs/t1/43151/32/8946/96616/5d27eac6E0455a690/56dbba3f9e3c55b0.jpg', '56dbba3f9e3c55b0.jpg');
INSERT INTO `dianzishu` VALUES (34, '掌阅iReader悦享版电子书300ppi轻薄146g8G大内存阅读器电纸书6英寸墨水屏黑色', '799.00', 'images/电子书/139c12f533c03300.jpg', '//img13.360buyimg.com/n7/jfs/t1/17746/1/15408/123536/5caefb88E7208af17/139c12f533c03300.jpg', '139c12f533c03300.jpg');
INSERT INTO `dianzishu` VALUES (35, 'KINDLE亚马逊全新Paperwhite4代6英寸kpw经典版电子书阅读器读书器3墨水屏电纸书【特惠】8G存储雅致黑套装', '998.00', 'images/电子书/17d6c7140b6ca16d.jpg', '//img10.360buyimg.com/n7/jfs/t1/47149/37/9788/177981/5d70d501E2e9964a4/17d6c7140b6ca16d.jpg', '17d6c7140b6ca16d.jpg');
INSERT INTO `dianzishu` VALUES (36, 'KINDLE亚马逊全新Paperwhite4代6英寸kpw经典版电子书阅读器读书器3墨水屏电纸书【大存储】32G孔明灯套装', '1288.00', 'images/电子书/b1bfb09da57f293b.jpg', '//img10.360buyimg.com/n7/jfs/t1/56462/16/9693/205078/5d70d502E3e66826e/b1bfb09da57f293b.jpg', 'b1bfb09da57f293b.jpg');
INSERT INTO `dianzishu` VALUES (37, 'KINDLE亚马逊Kindle入门版电纸书电子书阅读器558墨水屏小说读书器kandle【特惠】入门版白送炫彩保护套', '558.00', 'images/电子书/349b724c3ed07a30.jpg', '//img14.360buyimg.com/n7/jfs/t1/78375/15/9429/113854/5d71f006E075b0f85/349b724c3ed07a30.jpg', '349b724c3ed07a30.jpg');
INSERT INTO `dianzishu` VALUES (38, 'KindleX咪咕电子书阅读器电纸书墨水触控显示屏6英寸wifi黑色', '658.00', 'images/电子书/64133f44fb47be6f.jpg', '//img11.360buyimg.com/n7/jfs/t1/31973/14/9281/222052/5ca575c0E688ffb47/64133f44fb47be6f.jpg', '64133f44fb47be6f.jpg');
INSERT INTO `dianzishu` VALUES (39, '【礼盒】Kindlepaperwhite电子书阅读器经典版8G电纸书X故宫文化-福禄双全限量版包装礼盒', '1388.00', 'images/电子书/df261b2b0a3f6370.jpg', '//img12.360buyimg.com/n7/jfs/t1/74010/38/8083/397330/5d5e2cc9E1f210ffd/df261b2b0a3f6370.jpg', 'df261b2b0a3f6370.jpg');
INSERT INTO `dianzishu` VALUES (40, 'BOOX[现货]文石Notepro电纸书10.3英寸电子书阅读器安卓手写电子记事本墨水屏纯平前光前黑后灰', '3380.00', 'images/电子书/965a5a81e5ffd29b.jpg', '//img10.360buyimg.com/n7/jfs/t1/61644/20/8715/190391/5d6a6c0cEb27b95df/965a5a81e5ffd29b.jpg', '965a5a81e5ffd29b.jpg');
INSERT INTO `dianzishu` VALUES (41, 'BOOX文石POKEPro电子书阅读器6英寸超清电子墨水屏电容触控电纸书', '999.00', 'images/电子书/d79444befa82eb64.jpg', '//img13.360buyimg.com/n7/jfs/t1/43729/1/13655/170613/5d6cae21E64ae56a8/d79444befa82eb64.jpg', 'd79444befa82eb64.jpg');
INSERT INTO `dianzishu` VALUES (42, '【新品】掌阅iReaderA6电子书阅读器6英寸电纸书听读一体蓝牙听书墨水屏8GB星耀蓝', '1098.00', 'images/电子书/3931b41d6740df28.jpg', '//img10.360buyimg.com/n7/jfs/t1/78602/12/209/89665/5ce53d84E438ffb70/3931b41d6740df28.jpg', '3931b41d6740df28.jpg');
INSERT INTO `dianzishu` VALUES (43, 'BOOX7.8英寸文石Novapro电子书阅读器安卓6手写电子记事本笔记本墨水屏平板纯平商务前黑后蓝', '1980.00', 'images/电子书/5da00bb115589419.jpg', '//img11.360buyimg.com/n7/jfs/t1/41590/37/13430/175944/5d6a6c7bEd702fb0d/5da00bb115589419.jpg', '5da00bb115589419.jpg');
INSERT INTO `dianzishu` VALUES (44, 'KINDLE正品国行2019全新青春款亚马逊入门版电子书阅读器6英寸558墨水屏电纸书读书器【爆款】青春版黑孔明灯套装', '688.00', 'images/电子书/d3eb483589823921.jpg', '//img10.360buyimg.com/n7/jfs/t1/61817/38/9329/209221/5d70cf23E6dfcf086/d3eb483589823921.jpg', 'd3eb483589823921.jpg');
INSERT INTO `dianzishu` VALUES (45, '掌阅iReaderSmart超级智能本10.3英寸电纸书阅读器电子笔记本电子书墨水屏32G白色', '3499.00', 'images/电子书/8f68899fddc1323b.jpg', '//img10.360buyimg.com/n7/jfs/t1/32338/16/10273/91355/5caefcbeEa62c2af8/8f68899fddc1323b.jpg', '8f68899fddc1323b.jpg');
INSERT INTO `dianzishu` VALUES (46, '博阅LikebookMars电子书阅读器7.8英寸安卓电纸书学生水墨屏电子墨水屏可装APP黑色套餐一', '1399.00', 'images/电子书/f631aff08b50f5fc.jpg', '//img12.360buyimg.com/n7/jfs/t1/69138/15/9245/170765/5d6e1e45E0d57d01b/f631aff08b50f5fc.jpg', 'f631aff08b50f5fc.jpg');
INSERT INTO `dianzishu` VALUES (47, '【礼盒】Kindlepaperwhite电子书阅读器经典版8G电纸书X阿加莎定制包装礼盒', '1388.00', 'images/电子书/8542db1512880aca.jpg', '//img12.360buyimg.com/n7/jfs/t1/44184/35/12861/172480/5d614bd9E39115347/8542db1512880aca.jpg', '8542db1512880aca.jpg');
INSERT INTO `dianzishu` VALUES (48, 'KINDLE亚马逊全新Paperwhite4代6英寸kpw经典版电子书阅读器读书器3墨水屏电纸书32G存储蓝色星空套装', '1288.00', 'images/电子书/3731caadd387c0c5.jpg', '//img13.360buyimg.com/n7/jfs/t1/41083/22/14088/208176/5d70d500Ec5310a0e/3731caadd387c0c5.jpg', '3731caadd387c0c5.jpg');
INSERT INTO `dianzishu` VALUES (49, 'Kindlepaperwhite4亚马逊电子书阅读器6英寸墨水屏电纸书读书器礼盒装【爆款】8G梦幻黑套装豪华礼包装', '998.00', 'images/电子书/873ceae2dc42f1fb.jpg', '//img13.360buyimg.com/n7/jfs/t1/41160/26/14009/384527/5d71e1dbE60d750f0/873ceae2dc42f1fb.jpg', '873ceae2dc42f1fb.jpg');
INSERT INTO `dianzishu` VALUES (50, '掌阅iReaderSmart超级智能本10.3英寸电纸书阅读器电子笔记本电子书墨水屏32G灰色', '3499.00', 'images/电子书/d0393f116e0c4dd0.jpg', '//img11.360buyimg.com/n7/jfs/t1/44584/14/9101/91355/5d5f6642E602ed1f8/d0393f116e0c4dd0.jpg', 'd0393f116e0c4dd0.jpg');
INSERT INTO `dianzishu` VALUES (51, '科大讯飞（iFLYTEK）智能办公本电子书阅读器笔记本10.3英寸墨水屏电纸书纸感书写阅读【主机】智能办公本', '4999.00', 'images/电子书/28f5570810830ea1.jpg', '//img10.360buyimg.com/n7/jfs/t1/68618/16/9424/343778/5d70ff7bE9ed16aea/28f5570810830ea1.jpg', '28f5570810830ea1.jpg');
INSERT INTO `dianzishu` VALUES (52, '汉王（Hanvon）E960PLUSPDF阅读器电子笔记本9.7英寸触摸屏可WIFI连接黑色', '2280.00', 'images/电子书/3f54097e7f4a4509.jpg', '//img10.360buyimg.com/n7/jfs/t1/58531/29/114/118782/5cd29f17Ec373d0d9/3f54097e7f4a4509.jpg', '3f54097e7f4a4509.jpg');
INSERT INTO `dianzishu` VALUES (53, 'BOOX文石NotePro全新升级10.3英寸纯平屏幕电纸书阅读器手笔双触可变色前光notepro', '3380.00', 'images/电子书/39f15b84db40e903.jpg', '//img10.360buyimg.com/n7/jfs/t1/75104/18/7546/532623/5d577628Ed88def53/39f15b84db40e903.jpg', '39f15b84db40e903.jpg');
INSERT INTO `dianzishu` VALUES (54, '【自营仓次日达】科大讯飞智能办公本电子笔记本电子书阅读器10.3英寸超墨水屏电纸书纸感书写语音转文字原装配件【备用电磁手写笔】', '169.00', 'images/电子书/f6af97454b74b248.jpg', '//img14.360buyimg.com/n7/jfs/t1/49381/31/6427/103583/5d40ef98Eb49f1740/f6af97454b74b248.jpg', 'f6af97454b74b248.jpg');
INSERT INTO `dianzishu` VALUES (55, 'KINDLE全新亚马逊Oasis3尊享版第三代7寸电子书阅读器KO3墨水屏电纸书【爆款推荐】32G银灰孔明灯套装【新品抢购】', '2668.00', 'images/电子书/b07309fe2b829306.jpg', '//img10.360buyimg.com/n7/jfs/t1/49621/29/9831/213944/5d70dacbE61673f69/b07309fe2b829306.jpg', 'b07309fe2b829306.jpg');
INSERT INTO `dianzishu` VALUES (56, 'KindleX咪咕电子书阅读器电纸书墨水触控显示屏6英寸wifi白色', '658.00', 'images/电子书/e53c1fd22d4b745c.jpg', '//img14.360buyimg.com/n7/jfs/t1/22007/22/14280/169171/5ca575a5Ed97c83e8/e53c1fd22d4b745c.jpg', 'e53c1fd22d4b745c.jpg');
INSERT INTO `dianzishu` VALUES (57, '汉王（Hanvon）E920PDF阅读器9.7英寸触摸屏电子笔记本可WIFI连接黑色', '1599.00', 'images/电子书/d7ee165e893c2083.jpg', '//img12.360buyimg.com/n7/jfs/t1/35911/25/7722/127557/5cd29bc6Ebde7fd3d/d7ee165e893c2083.jpg', 'd7ee165e893c2083.jpg');
INSERT INTO `dianzishu` VALUES (58, 'KINDLE正品国行2019全新青春款亚马逊入门版电子书阅读器6英寸558墨水屏电纸书读书器【特惠】青春版黑雅致黑套装', '658.00', 'images/电子书/09cdf120594dfeb1.jpg', '//img10.360buyimg.com/n7/jfs/t1/71764/23/9468/178709/5d70cf22E7c90566c/09cdf120594dfeb1.jpg', '09cdf120594dfeb1.jpg');

-- ----------------------------
-- Table structure for erha
-- ----------------------------
DROP TABLE IF EXISTS `erha`;
CREATE TABLE `erha`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of erha
-- ----------------------------
INSERT INTO `erha` VALUES (1, '哈士奇毛绒玩具大号趴趴狗二哈睡觉抱枕公仔小狗布娃娃女孩玩偶大号情人节礼物哈士奇60厘米', '88.00', 'images/二哈/d98a3c80b16a2b14.jpg', '//img14.360buyimg.com/n7/jfs/t1/32852/4/4150/87064/5c7b6d61E14e7d761/d98a3c80b16a2b14.jpg', 'd98a3c80b16a2b14.jpg');
INSERT INTO `erha` VALUES (2, '星脉哈士奇犬幼犬活体纯种西伯利亚哈士奇阴阳眼二哈二货狗狗公母宠物狗狗活体小狗幼崽疫苗齐全宠物级别男狗狗', '2199.00', 'images/二哈/0088a86220528e69.jpg', '//img14.360buyimg.com/n7/jfs/t1/39456/34/6881/165140/5cd4e5b2E8612387f/0088a86220528e69.jpg', '0088a86220528e69.jpg');
INSERT INTO `erha` VALUES (3, '爱贤哈士奇毛绒玩具狗狗大号趴趴狗二哈睡觉抱枕公仔可爱小狗布娃娃女孩玩偶大号布偶长条枕头生日礼物男生1.2米哈士奇(送40厘米一只', '128.00', 'images/二哈/5ab3cd3cN4abf0a66.jpg', '//img13.360buyimg.com/n7/jfs/t16477/17/2552709859/244554/262bfe06/5ab3cd3cN4abf0a66.jpg', '5ab3cd3cN4abf0a66.jpg');
INSERT INTO `erha` VALUES (4, '新美特哈士奇公仔布娃娃二哈毛绒玩具玩偶可爱床上大狗狗熊睡觉抱枕女孩眯眼确认过眼神1.2米（送小哈士奇）', '139.00', 'images/二哈/6e86e59595e766d2.jpg', '//img10.360buyimg.com/n7/jfs/t1/39580/27/2764/96764/5cc2a96eEc3e4c6de/6e86e59595e766d2.jpg', '6e86e59595e766d2.jpg');
INSERT INTO `erha` VALUES (5, '爱心东东匠臣汽车头枕卡通竹炭颈枕车用护颈二哈秋田哈士奇神烦狗内饰哈士奇', '24.00', 'images/二哈/5b324d00Nf172d92c.jpg', '//img14.360buyimg.com/n7/jfs/t22327/7/1752115067/237696/284b3406/5b324d00Nf172d92c.jpg', '5b324d00Nf172d92c.jpg');
INSERT INTO `erha` VALUES (6, '京东超市蓝色城堡哈士奇毛绒玩具狗狗大号趴趴狗二哈睡觉抱枕公仔小狗年吉祥物布娃娃女孩玩偶长条枕头生日礼物1.2m', '109.00', 'images/二哈/5b7938ccc9fb8668.jpg', '//img10.360buyimg.com/n7/jfs/t1/5796/27/8516/56965/5ba9f81fE97764d33/5b7938ccc9fb8668.jpg', '5b7938ccc9fb8668.jpg');
INSERT INTO `erha` VALUES (7, 'LIVHEART日本哈士奇二哈毛绒玩具玩偶可爱抱枕公仔娃娃狗狗送女生送男生生日礼物哈士奇抱枕M号', '168.00', 'images/二哈/5cdb7d3aN3d7ff401.jpg', '//img12.360buyimg.com/n7/jfs/t11272/8/2868475606/162362/785da6ad/5cdb7d3aN3d7ff401.jpg', '5cdb7d3aN3d7ff401.jpg');
INSERT INTO `erha` VALUES (8, '爱心东东趴趴狗抱枕公仔女毛绒玩具狗狗公仔大号娃娃可爱二哈布娃娃玩偶女生睡觉抱枕男长条枕头女孩生日礼物送女友浅棕色【穿衣款】1.2米【送同款40cm】', '123.00', 'images/二哈/b943877a37ac56f4.jpg', '//img12.360buyimg.com/n7/jfs/t1/20081/39/2727/489475/5c1f64a8E5f8c22ab/b943877a37ac56f4.jpg', 'b943877a37ac56f4.jpg');
INSERT INTO `erha` VALUES (9, '520礼物玩具哈士奇公仔布娃娃大号熊可爱毛绒玩具狗狗女生睡觉抱枕送女友女孩哈士奇（可拆洗）1.2米【送50厘米同款哈士奇】', '118.00', 'images/二哈/ae58adcceb9f42a6.jpg', '//img12.360buyimg.com/n7/jfs/t1/11155/29/8931/79178/5c739f3eE8bc621c3/ae58adcceb9f42a6.jpg', 'ae58adcceb9f42a6.jpg');
INSERT INTO `erha` VALUES (10, '淘狗无忧哈士奇犬幼犬活体纯种西伯利亚哈士奇阴阳眼二哈二货狗公母宠物狗狗活体小狗幼崽全国配送宠物级公', '2199.00', 'images/二哈/5cd5285dN343d4b09.jpg', '//img10.360buyimg.com/n7/jfs/t10978/41/2665260629/222628/b3fe59ac/5cd5285dN343d4b09.jpg', '5cd5285dN343d4b09.jpg');
INSERT INTO `erha` VALUES (11, '【买大送小】哈士奇公仔毛绒玩具狗熊大号布娃娃公仔玩偶可爱生日礼物女生睡觉抱枕趴趴狗520情人节礼物哈士奇公仔1.2米【送哈士奇20厘米】', '125.00', 'images/二哈/f836d93c59522b8b.jpg', '//img11.360buyimg.com/n7/jfs/t1/30354/25/5771/127946/5c88aff4E84a7995a/f836d93c59522b8b.jpg', 'f836d93c59522b8b.jpg');
INSERT INTO `erha` VALUES (12, '萌缇哈士奇毛绒玩具狗狗大号趴趴狗二哈睡觉抱枕公仔布娃娃女孩大号长条枕生日礼物圣诞节送女友创意艺乐坊哈士奇公仔1.2米(送40厘米1只)', '95.00', 'images/二哈/5be6fa5eN3e870cb0.jpg', '//img13.360buyimg.com/n7/jfs/t25828/240/2500413471/269503/6b0f51e3/5be6fa5eN3e870cb0.jpg', '5be6fa5eN3e870cb0.jpg');
INSERT INTO `erha` VALUES (13, '【买大送小】哈士奇公仔毛绒玩具玩偶布偶儿童长条抱枕趴趴狗抱着睡觉布娃娃送女友女生520情人节礼物礼品如图普通款1.2米【送哈士奇20厘米】', '125.00', 'images/二哈/c8cc79e4e1a9da34.jpg', '//img10.360buyimg.com/n7/jfs/t1/30749/20/3448/162805/5c740c69E4c89421c/c8cc79e4e1a9da34.jpg', 'c8cc79e4e1a9da34.jpg');
INSERT INTO `erha` VALUES (14, '靖昕可爱仿真哈士奇公仔毛绒玩具小狗狗超萌二哈玩偶小号娃娃女生女孩红色围巾Q版哈士奇30厘米大号', '45.00', 'images/二哈/9ec337035470516e.jpg', '//img12.360buyimg.com/n7/jfs/t1/41722/34/1843/76322/5cc7e4e4Ea3442248/9ec337035470516e.jpg', '9ec337035470516e.jpg');
INSERT INTO `erha` VALUES (15, '布玩乐哈士奇趴趴狗狗公仔毛绒玩具狗布偶二哈睡觉抱枕布娃娃玩偶狗熊生日礼物送女友1米-不连尾巴测量（送50cm同款）', '148.00', 'images/二哈/5ae2caceN7ce4e57f.jpg', '//img14.360buyimg.com/n7/jfs/t17617/48/2068751214/296693/f8bde78a/5ae2caceN7ce4e57f.jpg', '5ae2caceN7ce4e57f.jpg');
INSERT INTO `erha` VALUES (16, '淘心乐哈士奇毛绒玩具狗公仔二哈抱枕小狗布娃娃狗大号玩偶长条床上抱枕生日礼物女生哈士奇公仔-柔软可拆洗【活动促销价】1.2米-送挂件', '98.00', 'images/二哈/23700a1b0219b557.jpg', '//img10.360buyimg.com/n7/jfs/t1/30277/31/8044/128222/5c9c4e6dEbf1444d4/23700a1b0219b557.jpg', '23700a1b0219b557.jpg');
INSERT INTO `erha` VALUES (17, '【买大送小】520礼物礼物生日礼物毛绒玩具狗儿童哈士奇趴趴狗公仔布娃娃玩偶抱枕小狗狗女孩经典哈士奇（可拆洗）1.2米（礼品袋包装+送50cm同款...', '118.00', 'images/二哈/f11a26dbccde7a58.jpg', '//img14.360buyimg.com/n7/jfs/t1/35204/7/8942/55190/5cce89e0E04f3887c/f11a26dbccde7a58.jpg', 'f11a26dbccde7a58.jpg');
INSERT INTO `erha` VALUES (18, '优佑哈士奇毛绒玩具狗公仔小哈巴狗玩偶布娃娃女生礼物二哈大号抱枕趴趴狗灰色1.2米', '128.00', 'images/二哈/593184f1N6ed6dcba.jpg', '//img11.360buyimg.com/n7/jfs/t5749/167/2544384547/297975/552235c7/593184f1N6ed6dcba.jpg', '593184f1N6ed6dcba.jpg');
INSERT INTO `erha` VALUES (19, '可爱狗狗哈士奇抱枕公仔布娃娃二哈玩偶毛绒玩具趴趴狗送女孩生日礼物粉色俏皮款哈士奇1.2米（送20厘米哈士奇）', '138.00', 'images/二哈/565941d87deb88c6.jpg', '//img13.360buyimg.com/n7/jfs/t1/22081/38/9721/130004/5c813355E96ec1c22/565941d87deb88c6.jpg', '565941d87deb88c6.jpg');
INSERT INTO `erha` VALUES (20, '蓓斯曼哈士奇二哈毛绒玩具狗狗玩偶可爱趴趴狗熊长条睡觉抱枕枕头靠垫公仔娃娃送女孩节日生日礼物儿童玩具浅灰色50厘米', '48.00', 'images/二哈/5b8e24aeN891e7415.jpg', '//img14.360buyimg.com/n7/jfs/t25078/128/1252584520/160102/9c393c6b/5b8e24aeN891e7415.jpg', '5b8e24aeN891e7415.jpg');
INSERT INTO `erha` VALUES (21, '宁宠哈士奇幼犬活体宠物狗活体狗狗活体小狗幼犬活体纯种二哈西伯利亚雪橇犬三火双蓝眼宠物级公', '1999.00', 'images/二哈/5b175bfbN5d4827c1.jpg', '//img13.360buyimg.com/n7/jfs/t20017/246/1164631408/408635/b218dd4f/5b175bfbN5d4827c1.jpg', '5b175bfbN5d4827c1.jpg');
INSERT INTO `erha` VALUES (22, '汽车头枕车枕脖枕车枕头车内头枕头靠枕车用护颈枕小车头枕四季通用3d个性创意动物卡通哈士奇二哈头枕【微笑二哈】', '36.80', 'images/二哈/0f0bce00b5eae9bb.jpg', '//img10.360buyimg.com/n7/jfs/t1/32676/27/766/267131/5c403572Ed1ed5327/0f0bce00b5eae9bb.jpg', '0f0bce00b5eae9bb.jpg');
INSERT INTO `erha` VALUES (23, '木子物语创意卡通Q版表情哈士奇抱枕公仔毛绒玩具3D神烦二哈狗头靠枕靠垫可拆洗男女孩生日礼物鄙视款40厘米', '32.00', 'images/二哈/58ed84dfae128355.jpg', '//img14.360buyimg.com/n7/jfs/t1/18067/6/11294/231093/5c8dd767E92190858/58ed84dfae128355.jpg', '58ed84dfae128355.jpg');
INSERT INTO `erha` VALUES (24, '宾迪熊【520礼物】可爱哈士奇公仔毛绒玩具趴趴狗玩偶狗狗熊布娃娃女孩二哈睡觉抱枕生日礼物送女友经典哈士奇呆萌（毛衣款）80厘米（小号）', '88.00', 'images/二哈/6d87097f484f5c0a.jpg', '//img10.360buyimg.com/n7/jfs/t1/35959/27/2881/155987/5cb6e780E067c66de/6d87097f484f5c0a.jpg', '6d87097f484f5c0a.jpg');
INSERT INTO `erha` VALUES (25, '狗狗兔哈士奇毛绒玩具狗狗大号趴趴狗二哈睡觉抱枕公仔小狗布娃娃女孩玩偶大号布偶长条枕头铃铛哈士奇5号：长32cm高20cm', '19.00', 'images/二哈/085f2bb30911b793.jpg', '//img11.360buyimg.com/n7/jfs/t1/680/37/11354/335398/5bcd96ddEe885e8eb/085f2bb30911b793.jpg', '085f2bb30911b793.jpg');
INSERT INTO `erha` VALUES (26, '田兔哈士奇公仔布娃娃可爱二哈毛绒玩具大号趴趴狗女孩睡觉抱枕长条枕床上玩偶哈士奇公仔1米含尾巴', '65.00', 'images/二哈/8f018d27794774be.jpg', '//img13.360buyimg.com/n7/jfs/t1/37737/9/6701/44568/5cc7cba6E654a8e26/8f018d27794774be.jpg', '8f018d27794774be.jpg');
INSERT INTO `erha` VALUES (27, 'Q版猫星人表情哈士奇抱枕公仔毛绒玩具创意卡通抱枕3D神烦二哈狗头靠垫生日礼物女傻傻二哈吐舌头35厘米（抱枕）', '29.00', 'images/二哈/5abc5b02Nbcdaf891.jpg', '//img14.360buyimg.com/n7/jfs/t19591/271/1074139111/647226/c135c05/5abc5b02Nbcdaf891.png', '5abc5b02Nbcdaf891.jpg');
INSERT INTO `erha` VALUES (28, '3D哈士奇汽车头枕座椅颈枕车用靠枕车载护颈枕头可爱卡通内饰用品二哈犬单只', '19.90', 'images/二哈/5abc48c1N8c2bf0d9.jpg', '//img14.360buyimg.com/n7/jfs/t18913/211/1115476224/108134/84276d9b/5abc48c1N8c2bf0d9.jpg', '5abc48c1N8c2bf0d9.jpg');
INSERT INTO `erha` VALUES (29, '【买大送小哈士奇】星际宝贝史迪奇史迪仔公仔抱枕毛绒玩具抱着睡觉布娃娃玩偶送女友女生日520情人节礼物蓝色垂耳史迪仔全长1.2米（坐高1.1米）...', '268.00', 'images/二哈/6d21027f65c6e4d6.jpg', '//img13.360buyimg.com/n7/jfs/t1/9791/17/6608/317525/5be19193E14949075/6d21027f65c6e4d6.jpg', '6d21027f65c6e4d6.jpg');
INSERT INTO `erha` VALUES (30, '蓓斯曼卡通可爱生肖牛毛绒玩具软体二哈狗狗趴趴牛公仔哈士奇柴犬长条大号睡觉抱枕靠垫生日情人节创意礼物里三克牛55厘米', '68.00', 'images/二哈/5b8ba063N03503358.jpg', '//img11.360buyimg.com/n7/jfs/t23008/340/2672912778/202516/7effacd5/5b8ba063N03503358.jpg', '5b8ba063N03503358.jpg');

-- ----------------------------
-- Table structure for erji
-- ----------------------------
DROP TABLE IF EXISTS `erji`;
CREATE TABLE `erji`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of erji
-- ----------------------------
INSERT INTO `erji` VALUES (1, '唐麦（Tangmai）A8耳机入耳式重低音游戏运动电脑手机通用立体声K歌音乐耳机有线控带麦星空黑（安卓版）', '129.00', 'images/耳机/b496a834a194050a.jpg', '//img13.360buyimg.com/n7/jfs/t1/25897/6/10527/288253/5c87b8b1E85d66c8c/b496a834a194050a.jpg', 'b496a834a194050a.jpg');
INSERT INTO `erji` VALUES (2, '华为耳机原装半入耳式有线荣耀mate9/8x/p10plus/v10nova2s9iv9p9play【标准版】华为AM115白色-热卖款', '39.00', 'images/耳机/8e46995eee8c4885.jpg', '//img13.360buyimg.com/n7/jfs/t1/81913/15/18/73260/5cd29559E0c0ba925/8e46995eee8c4885.jpg', '8e46995eee8c4885.jpg');
INSERT INTO `erji` VALUES (3, '兰士顿D4C耳机入耳式有线降噪隔音四核双动圈重低音苹果vivo华为oppo通用K歌音乐手机吃鸡电脑游戏耳麦黑色', '69.00', 'images/耳机/d876abcd6f6b82f9.jpg', '//img11.360buyimg.com/n7/jfs/t1/37197/24/1875/386977/5cb44bc6E6179be4b/d876abcd6f6b82f9.jpg', 'd876abcd6f6b82f9.jpg');
INSERT INTO `erji` VALUES (4, '真无线蓝牙耳机迷你隐形运动入耳式蓝牙耳机双耳跑步苹果华为oppo荣耀手机vivo小米通用环绕重低音【金属黑】自动开机配对丨便携充电仓丨两年...', '189.00', 'images/耳机/2e99aa273b654670.jpg', '//img14.360buyimg.com/n7/jfs/t1/22209/4/11767/784994/5c91ad86Ed08569e7/2e99aa273b654670.jpg', '2e99aa273b654670.jpg');
INSERT INTO `erji` VALUES (5, '恩科（ENKOR）EW10无线蓝牙耳机苹果iphone7/8/XAir运动商务双耳入耳式迷你超小Pods手机耳机5.0尊享版', '189.00', 'images/耳机/a5c0cc12d43addc0.jpg', '//img14.360buyimg.com/n7/jfs/t1/14947/22/3107/725167/5c242e43E641dcff0/a5c0cc12d43addc0.jpg', 'a5c0cc12d43addc0.jpg');
INSERT INTO `erji` VALUES (6, '图拉斯耳机有线入耳式耳麦游戏吃鸡电脑音乐运动手机iphone苹果vivo华为IQOO荣耀OPPO【亮光黑】送收纳袋', '68.80', 'images/耳机/5cdc37afN44b084a5.jpg', '//img14.360buyimg.com/n7/jfs/t29287/159/1312878627/226725/c89a0de6/5cdc37afN44b084a5.jpg', '5cdc37afN44b084a5.jpg');
INSERT INTO `erji` VALUES (7, '飞利浦/耳机头戴式/电脑游戏耳机/吃鸡耳机/手机电竞耳机', '109.00', 'images/耳机/3fc6ae1ddf54412c.jpg', '//img10.360buyimg.com/n7/jfs/t1/18743/33/1388/115555/5c11ea77Eb9415ebe/3fc6ae1ddf54412c.jpg', '3fc6ae1ddf54412c.jpg');
INSERT INTO `erji` VALUES (8, 'QCYT15.0真无线蓝牙耳机Air分离式运动耳麦运动跑步迷你隐形微型超小双耳入耳式苹果/安卓手机通用黑色', '99.90', 'images/耳机/5b892c35N09de5057.jpg', '//img13.360buyimg.com/n7/jfs/t27850/231/186597257/406098/297cf26/5b892c35N09de5057.jpg', '5b892c35N09de5057.jpg');
INSERT INTO `erji` VALUES (9, 'Coolv手机耳机半入耳式有线适用vivo华为荣耀oppo苹果小米红米一加安卓平板降噪K歌游戏耳麦通用三星360锤子麦芒HTC诺基亚美图尊享音乐耳机', '22.80', 'images/耳机/2587562bb70193ba.jpg', '//img14.360buyimg.com/n7/jfs/t1/15409/14/8800/115665/5c78b3daEa45193a1/2587562bb70193ba.jpg', '2587562bb70193ba.jpg');
INSERT INTO `erji` VALUES (10, '荣耀原装三键线控带麦半入耳式耳机AM116(尊爵版)适用于华为荣耀手机', '49.00', 'images/耳机/578c7a39N331d2a11.jpg', '//img13.360buyimg.com/n7/jfs/t2605/112/3400005392/92101/3e43d143/578c7a39N331d2a11.jpg', '578c7a39N331d2a11.jpg');
INSERT INTO `erji` VALUES (11, 'AppleAirPods配充电盒苹果蓝牙耳机', '1469.00', 'images/耳机/dd359563dc751ca5.jpg', '//img11.360buyimg.com/n7/jfs/t1/29861/36/11965/55492/5c9352f7E5302d7a8/dd359563dc751ca5.jpg', 'dd359563dc751ca5.jpg');
INSERT INTO `erji` VALUES (12, '漫步者（EDIFIER）W280BT磁吸入耳式无线运动蓝牙线控耳机手机耳机音乐耳机可通话超长续航黑色', '149.00', 'images/耳机/cb54674e8a7c0d33.jpg', '//img14.360buyimg.com/n7/jfs/t1/11196/2/3655/57217/5c206d28E6def8ca8/cb54674e8a7c0d33.jpg', 'cb54674e8a7c0d33.jpg');
INSERT INTO `erji` VALUES (13, '诺西电脑耳机头戴式耳麦笔记本台式PC金属游戏吃鸡电竞网吧带麦克风话筒降噪手机音乐魔声耳机有线魔音黑色七彩光版', '49.00', 'images/耳机/5d75c50697464348.jpg', '//img11.360buyimg.com/n7/jfs/t1/3929/4/2433/264987/5b967aadE555c1ede/5d75c50697464348.jpg', '5d75c50697464348.jpg');
INSERT INTO `erji` VALUES (14, '维肯耳机入耳式有线线控耳麦运动游戏电脑魔音音乐手机吃鸡苹果小米华为荣耀VIVO魅族OPPO三星线控带麦-纯黑色【升级金属版-原装正品】', '39.90', 'images/耳机/a4fc0a39241edd9a.jpg', '//img14.360buyimg.com/n7/jfs/t1/33369/14/4740/281348/5cb81ccfE2e533db8/a4fc0a39241edd9a.jpg', 'a4fc0a39241edd9a.jpg');
INSERT INTO `erji` VALUES (15, '维肯手机耳机有线入耳式音乐耳麦魔音运动游戏电脑吃鸡适用苹果安卓OPPO/VIVO华为荣耀小米魅族四核动力黑科技【强劲双动圈发烧版】原装-魔幻黑', '35.90', 'images/耳机/8bde6141b27fb500.jpg', '//img11.360buyimg.com/n7/jfs/t1/23266/14/1601/424662/5c137895E3c5d967e/8bde6141b27fb500.jpg', '8bde6141b27fb500.jpg');
INSERT INTO `erji` VALUES (16, '芒果人【买一台发两台】真无线蓝牙耳机苹果iphone双耳Air入耳式Pods2运动商务华为迷你小米手机Plus尊享版', '199.00', 'images/耳机/d5faaadd2afdcf71.jpg', '//img11.360buyimg.com/n7/jfs/t1/25070/37/12450/435864/5c988b98Ef3854ea4/d5faaadd2afdcf71.jpg', 'd5faaadd2afdcf71.jpg');
INSERT INTO `erji` VALUES (17, '小米耳机圈铁Pro入耳式有线运动音乐耳机耳麦', '149.00', 'images/耳机/58227e74N79e66fb4.jpg', '//img14.360buyimg.com/n7/jfs/t3529/188/1319527774/33369/12f8b5dc/58227e74N79e66fb4.jpg', '58227e74N79e66fb4.jpg');
INSERT INTO `erji` VALUES (18, '恩科（ENKOR）EW13无线蓝牙耳机苹果iphone7/8/XR/MaxAir迷你超小Pods运动智能触控入耳式华为小米手机耳机', '259.00', 'images/耳机/5cd8e8f1N9e0c9250.jpg', '//img14.360buyimg.com/n7/jfs/t10291/325/2813490418/101484/21b056cd/5cd8e8f1N9e0c9250.jpg', '5cd8e8f1N9e0c9250.jpg');
INSERT INTO `erji` VALUES (19, '外星人AlienwareAW988无线有线双模游戏电竞耳机电脑头戴式耳麦耳机黑京东自营', '1999.00', 'images/耳机/467da08156214764.jpg', '//img11.360buyimg.com/n7/jfs/t1/21275/6/1493/63176/5c1326f6E900b3f70/467da08156214764.jpg', '467da08156214764.jpg');
INSERT INTO `erji` VALUES (20, '7恋手机耳机半入耳式有线适用于苹果vivo华为荣耀oppo小米红米三星安卓平板降噪游戏全民k歌耳麦通用360锤子金立HTC诺基亚一加魅蓝尊享音乐耳机', '16.80', 'images/耳机/a090a436d3b97a58.jpg', '//img12.360buyimg.com/n7/jfs/t1/24573/33/9841/117642/5c81d014Ecd6ec254/a090a436d3b97a58.jpg', 'a090a436d3b97a58.jpg');
INSERT INTO `erji` VALUES (21, '【自营仓配】苹果耳机入耳式有线手机耳塞线控支持苹果iPhone6/6s/6p/7/8p/x/iPad3.5mm圆头接口(iPhone5/6)维肯原装', '49.90', 'images/耳机/22ceb737cd23210f.jpg', '//img11.360buyimg.com/n7/jfs/t1/11600/32/9950/101693/5c7c92a7E7911aed2/22ceb737cd23210f.jpg', '22ceb737cd23210f.jpg');
INSERT INTO `erji` VALUES (22, '漫步者（EDIFIER）TWS2真无线蓝牙耳机运动耳机迷你入耳式手机耳机通用苹果华为小米手机黑色', '299.00', 'images/耳机/dc6f27ed763e5f1b.jpg', '//img10.360buyimg.com/n7/jfs/t1/29932/4/2740/160058/5c206ce8Ea6ed0cc3/dc6f27ed763e5f1b.jpg', 'dc6f27ed763e5f1b.jpg');
INSERT INTO `erji` VALUES (23, '雷蛇（Razer）北海巨妖标准版7.1游戏耳机电竞耳麦头戴式电脑手机耳机吃鸡耳机黑色', '239.00', 'images/耳机/566a3ea8N925ccd55.jpg', '//img12.360buyimg.com/n7/jfs/t2551/38/808471936/121954/40e10aeb/566a3ea8N925ccd55.jpg', '566a3ea8N925ccd55.jpg');
INSERT INTO `erji` VALUES (24, 'BeatsX蓝牙无线入耳式手机耳机颈挂式耳机带麦可通话黑色', '798.00', 'images/耳机/5bbf13b3N672d0bec.jpg', '//img13.360buyimg.com/n7/jfs/t27811/308/1034977516/120854/604e7c0f/5bbf13b3N672d0bec.jpg', '5bbf13b3N672d0bec.jpg');
INSERT INTO `erji` VALUES (25, 'QCYT1S5.0真无线蓝牙耳机Air分离式运动耳麦运动跑步迷你隐形超小双耳入耳式苹果/安卓手机通用黑色', '139.90', 'images/耳机/174a87194b4fa504.jpg', '//img13.360buyimg.com/n7/jfs/t1/23274/30/6663/214002/5c7cebf1E51604b52/174a87194b4fa504.jpg', '174a87194b4fa504.jpg');
INSERT INTO `erji` VALUES (26, '华为（HUAWEI）运动蓝牙耳机降噪通话跑步磁吸防水无线入耳式立体声蓝牙耳机AM60（黑色）', '269.00', 'images/耳机/58eafdeaN30a39c1d.jpg', '//img11.360buyimg.com/n7/jfs/t4792/323/942094365/111174/fb04e445/58eafdeaN30a39c1d.jpg', '58eafdeaN30a39c1d.jpg');
INSERT INTO `erji` VALUES (27, '【次日达】索致线控入耳式苹果耳机手机7p耳塞有线适用iPhone6s/7plus/8P/X/iPad扁头适用苹果8/7/XSMax/XR索致原装正品', '89.90', 'images/耳机/5cdb70e0N2ca2e65e.jpg', '//img14.360buyimg.com/n7/jfs/t29788/333/1260959145/134748/13efe74e/5cdb70e0N2ca2e65e.jpg', '5cdb70e0N2ca2e65e.jpg');
INSERT INTO `erji` VALUES (28, '【自营仓配】手机耳机入耳式有线适用苹果7p/iPhoneXS/XR/X/8Plus/6s/iPad扁头Lightning接口-维肯原装正品', '99.00', 'images/耳机/5cda2723Nc33297ac.jpg', '//img13.360buyimg.com/n7/jfs/t30655/43/1228246690/85928/85b98757/5cda2723Nc33297ac.jpg', '5cda2723Nc33297ac.jpg');
INSERT INTO `erji` VALUES (29, '漫步者（EDIFIER）W800BT头戴式立体声蓝牙耳机无线耳机音乐耳机手机耳机通用苹果华为小米手机苍穹黑', '199.00', 'images/耳机/2f0678fab3b04773.jpg', '//img11.360buyimg.com/n7/jfs/t1/19859/28/5775/101767/5c418ae5Ef633541c/2f0678fab3b04773.jpg', '2f0678fab3b04773.jpg');
INSERT INTO `erji` VALUES (30, '华为（HUAWEI）原装耳机三键线控带麦克风半入耳式耳机原装手机耳机白色金属版AM116', '69.00', 'images/耳机/5a409727Nb89e7885.jpg', '//img10.360buyimg.com/n7/jfs/t13957/353/2365097539/64155/aa7f2b9c/5a409727Nb89e7885.jpg', '5a409727Nb89e7885.jpg');

-- ----------------------------
-- Table structure for fengshan
-- ----------------------------
DROP TABLE IF EXISTS `fengshan`;
CREATE TABLE `fengshan`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fengshan
-- ----------------------------
INSERT INTO `fengshan` VALUES (1, '美的（Midea）空调扇冷风扇单冷制冷器移动冷风机冷气器机电风扇家用大风量迷你小型空调扇AAB10A白色', '295.00', 'images/风扇/5cdc1f05Nf8e753fb.jpg', '//img13.360buyimg.com/n7/jfs/t30418/109/1322066508/232007/622abe71/5cdc1f05Nf8e753fb.jpg', '5cdc1f05Nf8e753fb.jpg');
INSERT INTO `fengshan` VALUES (2, '美的（Midea）FS40-13ER五叶遥控落地扇/电风扇', '197.00', 'images/风扇/60a7ab62697e5cd3.jpg', '//img10.360buyimg.com/n7/jfs/t1/16580/23/11863/128073/5c933b87E052334aa/60a7ab62697e5cd3.jpg', '60a7ab62697e5cd3.jpg');
INSERT INTO `fengshan` VALUES (3, '奥克斯（AUX）FS1613电风扇/空气循环/落地扇/家用静音风扇/五叶大风量风扇', '99.00', 'images/风扇/df5afd1e54e231b1.jpg', '//img12.360buyimg.com/n7/jfs/t1/22688/3/8599/115824/5c761fc9E64603cea/df5afd1e54e231b1.jpg', 'df5afd1e54e231b1.jpg');
INSERT INTO `fengshan` VALUES (4, '京品家电格力风扇t1旗舰款/遥控塔扇/无叶风扇/空气循环电风扇FL-09X61Bh', '289.00', 'images/风扇/ff7a5cac89423963.jpg', '//img12.360buyimg.com/n7/jfs/t1/33569/33/2141/156139/5cac4a34E63305535/ff7a5cac89423963.jpg', 'ff7a5cac89423963.jpg');
INSERT INTO `fengshan` VALUES (5, '【自营仓配】维肯usb小风扇迷你手持户外随身便携式可充电静音大风力办公室学生桌面宿舍台式小电扇蓝色【三档强劲风力-升级静音版】带底座', '39.90', 'images/风扇/5cdba919N20263255.jpg', '//img14.360buyimg.com/n7/jfs/t28372/102/1283912467/165865/df9e3136/5cdba919N20263255.jpg', '5cdba919N20263255.jpg');
INSERT INTO `fengshan` VALUES (6, 'TCLTFS16D电风扇/空气循环/落地扇/家用静音风扇/五叶大风量风扇定时机械', '74.00', 'images/风扇/b064e1665366db09.jpg', '//img12.360buyimg.com/n7/jfs/t1/45735/11/260/93607/5cd3c660E40b302b3/b064e1665366db09.jpg', 'b064e1665366db09.jpg');
INSERT INTO `fengshan` VALUES (7, '戴森（Dyson）无叶电风扇落地扇塔扇强劲气流原装进口AM07风尚紫', '3150.00', 'images/风扇/5b7669d7N49024c7c.jpg', '//img14.360buyimg.com/n7/jfs/t22462/270/2129239554/52151/7fb2986a/5b7669d7N49024c7c.jpg', '5b7669d7N49024c7c.jpg');
INSERT INTO `fengshan` VALUES (8, '爱心东东美的（Midea）新品家用电风扇遥控塔扇静音内旋摇头易拆洗无叶风扇ZAC10BR', '278.00', 'images/风扇/88e3caab927d10f5.jpg', '//img11.360buyimg.com/n7/jfs/t1/23331/21/11615/203599/5c90b2f0Ed08d0541/88e3caab927d10f5.jpg', '88e3caab927d10f5.jpg');
INSERT INTO `fengshan` VALUES (9, '奥克斯（AUX）FS1608RC遥控落地扇/电风扇/五叶大风量风扇/家用静音风扇/空气循环扇', '129.90', 'images/风扇/5b093c22Nfec2c401.jpg', '//img12.360buyimg.com/n7/jfs/t19966/207/720762820/127791/4365e572/5b093c22Nfec2c401.jpg', '5b093c22Nfec2c401.jpg');
INSERT INTO `fengshan` VALUES (10, '美的（Midea）家用静音五叶落地扇/电风扇FS40-13C', '178.00', 'images/风扇/57057acf5959e6f7.jpg', '//img13.360buyimg.com/n7/jfs/t1/15458/35/11754/101678/5c92ebc3Ebc8ee4d8/57057acf5959e6f7.jpg', '57057acf5959e6f7.jpg');
INSERT INTO `fengshan` VALUES (11, '美的（Midea）台地两用三叶大风量家用电风扇/落地扇台式立式SAB40A', '138.00', 'images/风扇/8ddfcdab6f0801b9.jpg', '//img13.360buyimg.com/n7/jfs/t1/19607/18/15022/293993/5cad8753E2eeee7c4/8ddfcdab6f0801b9.jpg', '8ddfcdab6f0801b9.jpg');
INSERT INTO `fengshan` VALUES (12, '艾美特（Airmate）电风扇家用落地扇五叶静音FSW65T2-5', '169.00', 'images/风扇/5b372935N1ea7e94b.jpg', '//img14.360buyimg.com/n7/jfs/t21121/291/1833602904/62981/6831bfb2/5b372935N1ea7e94b.jpg', '5b372935N1ea7e94b.jpg');
INSERT INTO `fengshan` VALUES (13, '艾美特(Airmate)空气循环扇/家用电风扇/空气对流式大风量落地扇/静音变频节能风扇白色', '999.00', 'images/风扇/5cdba23fN258245d6.jpg', '//img11.360buyimg.com/n7/jfs/t10345/191/2894935589/141951/c9bedffc/5cdba23fN258245d6.jpg', '5cdba23fN258245d6.jpg');
INSERT INTO `fengshan` VALUES (14, '格力（GREE）风扇/五叶机械/落地扇/电风扇FD-4010-WG', '159.00', 'images/风扇/2510a1b01912e9f2.jpg', '//img12.360buyimg.com/n7/jfs/t1/19585/23/12396/125714/5c989a71Ed842af97/2510a1b01912e9f2.jpg', '2510a1b01912e9f2.jpg');
INSERT INTO `fengshan` VALUES (15, '艾美特（Airmate）电风扇家用五叶遥控落地扇柔风静音FS40103R', '179.00', 'images/风扇/cc4c082e62199710.jpg', '//img11.360buyimg.com/n7/jfs/t1/35193/38/5153/132430/5cbec7f0E991ff58c/cc4c082e62199710.jpg', 'cc4c082e62199710.jpg');
INSERT INTO `fengshan` VALUES (16, '先锋（SINGFUN）电风扇/5叶落地扇/家用静音风扇/台地两用扇/DLD-D10', '99.00', 'images/风扇/020b86be779daaef.jpg', '//img14.360buyimg.com/n7/jfs/t1/35360/5/2994/189073/5cbad669Ea461dc6e/020b86be779daaef.jpg', '020b86be779daaef.jpg');
INSERT INTO `fengshan` VALUES (17, '康佳（KONKA）电风扇/台扇/五风叶/五扇叶台式转页扇KF-25HY37', '49.90', 'images/风扇/5b836d41N894a2985.jpg', '//img13.360buyimg.com/n7/jfs/t24700/170/968057216/367197/87e0584d/5b836d41N894a2985.jpg', '5b836d41N894a2985.jpg');
INSERT INTO `fengshan` VALUES (18, '格力（GREE）风扇/五叶遥控/落地扇/电风扇FD-40X64Bh5', '189.00', 'images/风扇/7402dd511d09beb2.jpg', '//img14.360buyimg.com/n7/jfs/t1/15196/35/11789/172118/5c92e4a3E6b2371f6/7402dd511d09beb2.jpg', '7402dd511d09beb2.jpg');
INSERT INTO `fengshan` VALUES (19, '澳柯玛（AUCMA）触屏家用电风扇/柱型落地扇塔扇/空气循环无叶风扇静音易清洗FS-08M603(Y)', '159.00', 'images/风扇/16b51e590102992b.jpg', '//img13.360buyimg.com/n7/jfs/t1/42646/20/1230/136672/5cc5616bEd6361592/16b51e590102992b.jpg', '16b51e590102992b.jpg');
INSERT INTO `fengshan` VALUES (20, '康佳（KONKA）电风扇/落地扇/五扇叶可升降非遥控电风扇KF-L17D黑', '89.00', 'images/风扇/1b45213b749b59a6.jpg', '//img13.360buyimg.com/n7/jfs/t1/17766/39/9158/133271/5c7ceddaEccd07d7f/1b45213b749b59a6.jpg', '1b45213b749b59a6.jpg');
INSERT INTO `fengshan` VALUES (21, '艾美特（Airmate）电风扇家用五叶落地扇遥控静音FSW52R', '189.00', 'images/风扇/524a9f3661a56709.jpg', '//img11.360buyimg.com/n7/jfs/t1/37316/3/9536/386532/5cd3dea2Ef9ad0e79/524a9f3661a56709.jpg', '524a9f3661a56709.jpg');
INSERT INTO `fengshan` VALUES (22, '澳柯玛（AUCMA）台式转页扇/台扇电风扇/空气循环小风扇KYT-25ND01', '55.00', 'images/风扇/7ac6b0d4059ae2b7.jpg', '//img14.360buyimg.com/n7/jfs/t1/10834/21/15222/280780/5c908606Eb8a96fa9/7ac6b0d4059ae2b7.jpg', '7ac6b0d4059ae2b7.jpg');
INSERT INTO `fengshan` VALUES (23, '艾美特（Airmate）电风扇家用落地遥控静音无叶塔扇空气循环扇FT41R', '279.00', 'images/风扇/a2ac63ef2e0ec1c7.jpg', '//img13.360buyimg.com/n7/jfs/t1/24893/26/14366/300975/5ca6e739E03fc2c75/a2ac63ef2e0ec1c7.jpg', 'a2ac63ef2e0ec1c7.jpg');
INSERT INTO `fengshan` VALUES (24, '格力风扇机械塔扇/无叶风扇/空气循环电风扇FL-09X61h', '229.00', 'images/风扇/4354703ca5ca2987.jpg', '//img11.360buyimg.com/n7/jfs/t1/20402/26/15107/233126/5caeb4caEfb9800a2/4354703ca5ca2987.jpg', '4354703ca5ca2987.jpg');
INSERT INTO `fengshan` VALUES (25, '美国西屋（Westinghouse）电风扇/落地扇/智能风扇/空气净化循环扇/家用直流变频风扇台地扇WTH-XWT68典雅白', '999.00', 'images/风扇/5cdba8c5Nef18cb6e.jpg', '//img14.360buyimg.com/n7/jfs/t29296/35/1271711250/613628/2d0b02fb/5cdba8c5Nef18cb6e.jpg', '5cdba8c5Nef18cb6e.jpg');
INSERT INTO `fengshan` VALUES (26, '美的（Midea）家用遥控静音五叶电风扇/空气循环/欧式简美风落地扇SAB40BR', '249.00', 'images/风扇/c2a6106055e359b5.jpg', '//img10.360buyimg.com/n7/jfs/t1/30807/10/12801/102289/5cb7e9baE1505a412/c2a6106055e359b5.jpg', 'c2a6106055e359b5.jpg');
INSERT INTO `fengshan` VALUES (27, '澳柯玛（AUCMA）大风量遥控静音电风扇/落地扇家用/空气循环台式电扇5叶台扇FS-35N905(Y)', '108.00', 'images/风扇/9a1b749077d74eaa.jpg', '//img11.360buyimg.com/n7/jfs/t1/34794/33/6233/116621/5cc562acE94f8d962/9a1b749077d74eaa.jpg', '9a1b749077d74eaa.jpg');
INSERT INTO `fengshan` VALUES (28, '美的（Midea）KYT30-15AW家用风扇节能可定时台式转页扇/鸿运扇/电风扇', '169.00', 'images/风扇/18f29a71306fcff8.jpg', '//img13.360buyimg.com/n7/jfs/t1/19231/29/11762/252062/5c9204feE20ff70b6/18f29a71306fcff8.jpg', '18f29a71306fcff8.jpg');
INSERT INTO `fengshan` VALUES (29, '长虹（CHANGHONG）电风扇/落地扇/台扇/台地扇/家用遥控风扇/七风叶大风量落地扇CFS-LD406R', '119.00', 'images/风扇/d2a17f10712c68e9.jpg', '//img11.360buyimg.com/n7/jfs/t1/41844/35/4441/258947/5cd3c7a7Eda765fab/d2a17f10712c68e9.jpg', 'd2a17f10712c68e9.jpg');
INSERT INTO `fengshan` VALUES (30, '长虹（CHANGHONG）电风扇/落地扇/家用风扇/五扇叶大风量摇头落地扇CFS-LD407F', '79.90', 'images/风扇/5b0b6465N6c2be38c.jpg', '//img12.360buyimg.com/n7/jfs/t22081/220/365161627/142928/c7b6d259/5b0b6465N6c2be38c.jpg', '5b0b6465N6c2be38c.jpg');

-- ----------------------------
-- Table structure for fushi
-- ----------------------------
DROP TABLE IF EXISTS `fushi`;
CREATE TABLE `fushi`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fushi
-- ----------------------------
INSERT INTO `fushi` VALUES (1, '芙绮姿针织连衣裙2019春夏季新品新款韩版修身长袖大码女装春装蕾丝雪纺印花性感两件套时尚套装女裙子图片色M', '118.00', 'images/服饰/c15ec804acf62b3d.jpg', '//img11.360buyimg.com/n8/jfs/t1/21621/35/9205/200542/5c7cea5cEd28e50b7/c15ec804acf62b3d.jpg', 'c15ec804acf62b3d.jpg');
INSERT INTO `fushi` VALUES (2, '滋涩连衣裙2019春夏新品女装套装女短袖衣服T恤新款夏天雪纺性感裙子沙滩裙汉服两件套装裙春款Z13蓝白M', '138.00', 'images/服饰/51ab6b4a363adeb6.jpg', '//img13.360buyimg.com/n8/jfs/t1/37016/36/3691/119668/5cb97a48E951a8bfb/51ab6b4a363adeb6.jpg', '51ab6b4a363adeb6.jpg');
INSERT INTO `fushi` VALUES (3, '大卫山davehill短袖t恤POLO衫男士双珠地翻领商务休闲男装短袖衣服灰蓝BI52(180/100B)', '199.00', 'images/服饰/594970c7Nc221888e.jpg', '//img11.360buyimg.com/n8/jfs/t5632/299/4203241738/96252/41a7ee7a/594970c7Nc221888e.jpg', '594970c7Nc221888e.jpg');
INSERT INTO `fushi` VALUES (4, 'Z.V.K短袖T恤男春季新款衣服男圆领半袖男印花T恤男潮牌夏装打底衫服饰男士短袖男装夏季男装T904粉红色L', '69.00', 'images/服饰/5cdcf20aN3b0c1766.jpg', '//img10.360buyimg.com/n8/jfs/t29677/237/1321339384/385544/e19599dd/5cdcf20aN3b0c1766.jpg', '5cdcf20aN3b0c1766.jpg');
INSERT INTO `fushi` VALUES (5, 'Z.V.K短袖t恤男装夏季新款圆领T恤半袖男士衣服男T恤男潮牌青年休闲修身服饰男潮流打底衫白色1953L', '69.00', 'images/服饰/ceb94cc2cea6af10.jpg', '//img12.360buyimg.com/n8/jfs/t1/34296/38/6800/379116/5cc57720E99aeb098/ceb94cc2cea6af10.jpg', 'ceb94cc2cea6af10.jpg');
INSERT INTO `fushi` VALUES (6, '短袖T恤男2019春夏季新品男装t恤韩版潮流男士圆领打底衫半袖印花休闲体恤套装男上衣服纯色白TL（100-115斤）', '10.00', 'images/服饰/7374dda5b1762d93.jpg', '//img14.360buyimg.com/n8/jfs/t1/16944/37/13802/108261/5ca1ee21E129d4d1c/7374dda5b1762d93.jpg', '7374dda5b1762d93.jpg');
INSERT INTO `fushi` VALUES (7, '啄木鸟（TUCANO）防晒衣皮肤衣男款超薄透气轻盈速干风衣春夏季薄款夹克立领连帽外套户外运动衣服男豆绿185', '239.00', 'images/服饰/5abf42192cc821a1.jpg', '//img12.360buyimg.com/n8/jfs/t1/35880/14/7499/421592/5cc80d2dEf4f3316a/5abf42192cc821a1.jpg', '5abf42192cc821a1.jpg');
INSERT INTO `fushi` VALUES (8, 'JEEP（吉普）短袖t恤男2019春夏季薄款商务休闲半袖翻领条纹polo衫上衣韩版修身男装中年服饰蓝色L', '148.00', 'images/服饰/eeef5ed63916348c.jpg', '//img13.360buyimg.com/n8/jfs/t1/31138/31/14614/424063/5cbf175fE86beba94/eeef5ed63916348c.jpg', 'eeef5ed63916348c.jpg');
INSERT INTO `fushi` VALUES (9, '红蜻蜓短袖连衣裙套装2019夏季新款时尚T恤女+半身裙韩版修身显瘦百搭A字裙子粉色M', '128.00', 'images/服饰/7a6d9d762e5d7ef7.jpg', '//img11.360buyimg.com/n8/jfs/t1/23168/10/10502/235209/5c8779d3E4bd3684e/7a6d9d762e5d7ef7.jpg', '7a6d9d762e5d7ef7.jpg');
INSERT INTO `fushi` VALUES (10, '短袖t恤男装夏季新款圆领纯色T恤半袖男士衣服潮牌青年休闲修身春秋季韩版潮流打底衫1917卡其色XL', '69.00', 'images/服饰/5cdc25ebN5f7a2e05.jpg', '//img10.360buyimg.com/n8/jfs/t9964/73/2963626082/463544/f67de37/5cdc25ebN5f7a2e05.jpg', '5cdc25ebN5f7a2e05.jpg');
INSERT INTO `fushi` VALUES (11, '短袖T恤男2019夏季韩版潮流短袖男士半袖t恤圆领条纹休闲修身大码五分袖潮牌青年学生体恤衣服男装1917白色XL', '78.00', 'images/服饰/8ae5b9454aa3efbf.jpg', '//img14.360buyimg.com/n8/jfs/t1/22914/22/11849/129697/5c939f71E02a909b5/8ae5b9454aa3efbf.jpg', '8ae5b9454aa3efbf.jpg');
INSERT INTO `fushi` VALUES (12, '外套男装春秋季男士衣服牛仔夹克男修身韩版防晒衣服男休闲春季工装青年男生连帽短款棒球服7705浅蓝XL', '129.00', 'images/服饰/8015d0b80f2e4fbd.jpg', '//img13.360buyimg.com/n8/jfs/t1/9960/12/15472/470014/5c6ffd7aEc0105777/8015d0b80f2e4fbd.jpg', '8015d0b80f2e4fbd.jpg');
INSERT INTO `fushi` VALUES (13, '花花公子夹克男外套新款特大号加肥加大码男装薄款立领肥佬胖子特大码棒球服线条夹克9XL280-300体重', '538.00', 'images/服饰/619d313f02f43d63.jpg', '//img10.360buyimg.com/n8/jfs/t1/12107/9/11372/176175/5c8e60e1E8e834d50/619d313f02f43d63.jpg', '619d313f02f43d63.jpg');
INSERT INTO `fushi` VALUES (14, 'BOYXCO春装男士春季外套男春秋立领棒球服男生防晒服韩版休闲工装短款夹克男春装大码防晒衣服男装外套FS905灰色2XL', '79.00', 'images/服饰/ce67c9b7eba84bbd.jpg', '//img11.360buyimg.com/n8/jfs/t1/33858/31/5752/145050/5cbb3667E90a44fdf/ce67c9b7eba84bbd.jpg', 'ce67c9b7eba84bbd.jpg');
INSERT INTO `fushi` VALUES (15, '威少先绅短袖T恤男夏季衣服男圆领印花潮流学生夏装男士短袖男装短袖半袖男T恤打底衫T6811白色L', '69.00', 'images/服饰/be4c86015195485a.jpg', '//img13.360buyimg.com/n8/jfs/t1/35524/30/4959/389955/5cbee481E7ede761c/be4c86015195485a.jpg', 'be4c86015195485a.jpg');
INSERT INTO `fushi` VALUES (16, '玖岛短袖t恤男2019夏季新款中国风圆领潮牌T恤男士半袖麻叶印花打底衫休闲百搭青少年衣服男装T27乳白色M', '69.00', 'images/服饰/8acc94cd1cab2ced.jpg', '//img12.360buyimg.com/n8/jfs/t1/57253/31/494/204012/5cd92f77E41c6bf5c/8acc94cd1cab2ced.jpg', '8acc94cd1cab2ced.jpg');
INSERT INTO `fushi` VALUES (17, '诃璟短袖T恤男夏季上衣服男生圆领青少年半袖男夏装潮流嘻哈大码日系印花学生男装T恤打底衫男士短袖男7628白色M', '69.00', 'images/服饰/53d2bcdbca0f9fcc.jpg', '//img14.360buyimg.com/n8/jfs/t1/36352/25/6460/260950/5cc7f489Edf32f9ca/53d2bcdbca0f9fcc.jpg', '53d2bcdbca0f9fcc.jpg');
INSERT INTO `fushi` VALUES (18, '玖岛2019夏季新款短袖T恤男衣服男生男装圆领半袖男大码印花服饰男T恤打底衫男士短袖男夏季男装1902黄色M', '69.00', 'images/服饰/5cdcd144Ne1faa9cb.jpg', '//img12.360buyimg.com/n8/jfs/t9949/209/2921092511/457535/c16b8f7a/5cdcd144Ne1faa9cb.jpg', '5cdcd144Ne1faa9cb.jpg');
INSERT INTO `fushi` VALUES (19, '【清仓】吉普JEEP短袖T恤男春夏季新款纯色棉质圆领上衣男士休闲打底衫男装体恤11845604029灰色XL码建议155-175斤左右', '139.00', 'images/服饰/38124ee046a52082.jpg', '//img13.360buyimg.com/n8/jfs/t1/19314/8/6170/443032/5c4a7632E0f629071/38124ee046a52082.jpg', '38124ee046a52082.jpg');
INSERT INTO `fushi` VALUES (20, '蝶恋裳长袖连衣裙2019春夏季新款新品韩版女装中长款修身大码女装时尚套装女蕾丝假两件套性感雪纺连衣裙图色M', '118.00', 'images/服饰/2d919dadd8a5830e.jpg', '//img13.360buyimg.com/n8/jfs/t1/23201/14/8235/285225/5c73d679Eb93882f0/2d919dadd8a5830e.jpg', '2d919dadd8a5830e.jpg');
INSERT INTO `fushi` VALUES (21, '棉质短袖T恤男纯色2019潮男半袖衫体恤夏装韩版修身加大码圆领印花胖子男装胖人肥佬衣服打底衫短袖光板黑+白+藏蓝+灰XXL', '99.00', 'images/服饰/5aa13fa5N847caef1.jpg', '//img10.360buyimg.com/n8/jfs/t14758/130/2467295545/311638/c953c69b/5aa13fa5N847caef1.jpg', '5aa13fa5N847caef1.jpg');
INSERT INTO `fushi` VALUES (22, '询彧短袖T恤男夏季韩版潮流大码短袖男士半袖t恤印花休闲修身男生青年学生体恤衣服饰男装POLO衫8501灰黑XL', '58.00', 'images/服饰/19ed3c254fda03e8.jpg', '//img11.360buyimg.com/n8/jfs/t1/55903/30/446/348516/5cd6644dE6520e48a/19ed3c254fda03e8.jpg', '19ed3c254fda03e8.jpg');
INSERT INTO `fushi` VALUES (23, '范加尔短袖t恤男2019夏季潮流衬衫领翻领POLO衫夏天男装纯棉透气有领打底衫带领灰色（黑袖）XL', '89.00', 'images/服饰/96a63dfb149ef6f8.jpg', '//img11.360buyimg.com/n8/jfs/t1/35236/26/2497/162501/5cb5f935Ecd9b64f3/96a63dfb149ef6f8.jpg', '96a63dfb149ef6f8.jpg');
INSERT INTO `fushi` VALUES (24, '99元4件！纯棉短袖T恤男潮男半袖衫春夏装圆领印花加大码男装衣服男装ZY短袖骨头白+FN灰+CH白+UN黑XL', '99.00', 'images/服饰/9fd47d211e847307.jpg', '//img14.360buyimg.com/n8/jfs/t1/14932/31/10443/320441/5c87d677Ec8cb060d/9fd47d211e847307.jpg', '9fd47d211e847307.jpg');
INSERT INTO `fushi` VALUES (25, '【款式多选99元二件】轩斯顿夏季短袖T恤男2019新品半袖打底衫韩版修身翻领上衣男装休闲体恤粉色XL', '69.00', 'images/服饰/8add3cb4ee3f4634.jpg', '//img12.360buyimg.com/n8/jfs/t1/40414/40/2686/195491/5cc1b62aE8f4e4784/8add3cb4ee3f4634.jpg', '8add3cb4ee3f4634.jpg');
INSERT INTO `fushi` VALUES (26, '千哲琪短袖T恤男2019夏季新款男士上衣夏天圆领t恤休闲半袖打底衫3011-卡其XL', '89.00', 'images/服饰/5aec66b1Naa78a5f2.jpg', '//img12.360buyimg.com/n8/jfs/t18820/51/2220490403/439285/665d36a3/5aec66b1Naa78a5f2.jpg', '5aec66b1Naa78a5f2.jpg');
INSERT INTO `fushi` VALUES (27, '轩斯顿短袖T恤男士2019夏季新款帅气韩版时尚休闲半袖修身上衣服青年学生打底衫男装712卡其XL', '79.00', 'images/服饰/5b5c60e0N4af55d52.jpg', '//img11.360buyimg.com/n8/jfs/t22057/15/2590774934/311507/acb22c8f/5b5c60e0N4af55d52.jpg', '5b5c60e0N4af55d52.jpg');
INSERT INTO `fushi` VALUES (28, 't恤男短袖夏季2019新款学生韩版休闲百搭潮牌宽松ins半袖打底衫衣服男潮黄色XL', '89.00', 'images/服饰/c956f79d48345abd.jpg', '//img11.360buyimg.com/n8/jfs/t1/11517/28/12904/114644/5c95b863E24a9828a/c956f79d48345abd.jpg', 'c956f79d48345abd.jpg');
INSERT INTO `fushi` VALUES (29, 'MR短袖T恤男夏季韩版潮流大码短袖男士半袖t恤印花休闲修身青年学生体恤衣服男装服饰男生t恤T04粉红色XL', '68.00', 'images/服饰/897e59be77eb7c12.jpg', '//img13.360buyimg.com/n8/jfs/t1/33713/10/5327/246181/5cb9e87eE56b8f7f9/897e59be77eb7c12.jpg', '897e59be77eb7c12.jpg');
INSERT INTO `fushi` VALUES (30, '范加尔短袖T恤男2019夏装半袖翻领纯色男士休闲透气POLO衫时尚刺绣男装打底衫橙色XL', '95.00', 'images/服饰/0105469d477a3d3d.jpg', '//img14.360buyimg.com/n8/jfs/t1/52951/32/309/714490/5cd44e4eE53c9a6bf/0105469d477a3d3d.png', '0105469d477a3d3d.jpg');

-- ----------------------------
-- Table structure for hashiqiyouquan
-- ----------------------------
DROP TABLE IF EXISTS `hashiqiyouquan`;
CREATE TABLE `hashiqiyouquan`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hashiqiyouquan
-- ----------------------------
INSERT INTO `hashiqiyouquan` VALUES (1, '哈士奇犬蓝眼三火哈士奇幼犬哈士奇活体宠物狗血统纯正疫苗齐全江浙沪有养殖基地全国可配送', '2300.00', 'images/哈士奇幼犬/0088a86220528e69.jpg', '//img12.360buyimg.com/n7/jfs/t1/39456/34/6881/165140/5cd4e5b2E8612387f/0088a86220528e69.jpg', '0088a86220528e69.jpg');
INSERT INTO `hashiqiyouquan` VALUES (2, '淘狗无忧哈士奇犬幼犬活体纯种西伯利亚哈士奇阴阳眼二哈二货狗公母宠物狗狗活体小狗幼崽全国配送宠物级公', '2199.00', 'images/哈士奇幼犬/5cd5285dN343d4b09.jpg', '//img10.360buyimg.com/n7/jfs/t10978/41/2665260629/222628/b3fe59ac/5cd5285dN343d4b09.jpg', '5cd5285dN343d4b09.jpg');
INSERT INTO `hashiqiyouquan` VALUES (3, '遛遛巴哈士奇幼犬活体宠物狗活体狗狗活体小狗幼犬活体纯种西伯利亚雪橇犬宠物级(黑色）公', '2499.00', 'images/哈士奇幼犬/5bc5b7bcN11bb1932.jpg', '//img14.360buyimg.com/n7/jfs/t26623/106/1323263548/241942/e63d718e/5bc5b7bcN11bb1932.jpg', '5bc5b7bcN11bb1932.jpg');
INSERT INTO `hashiqiyouquan` VALUES (4, '宠家乐哈士奇幼犬活体纯种血统视频挑选全国配送售后保障公母宠物狗活体小狗幼崽黑色宠物级宠物级', '1999.00', 'images/哈士奇幼犬/c3cbf1115f1a9b2e.jpg', '//img10.360buyimg.com/n7/jfs/t1/35812/39/4919/180193/5cbd7a41E3c67c67b/c3cbf1115f1a9b2e.jpg', 'c3cbf1115f1a9b2e.jpg');
INSERT INTO `hashiqiyouquan` VALUES (5, '宁宠哈士奇幼犬活体宠物狗活体狗狗活体小狗幼犬活体纯种二哈西伯利亚雪橇犬三火双蓝眼宠物级公', '1999.00', 'images/哈士奇幼犬/5b175bfbN5d4827c1.jpg', '//img13.360buyimg.com/n7/jfs/t20017/246/1164631408/408635/b218dd4f/5b175bfbN5d4827c1.jpg', '5b175bfbN5d4827c1.jpg');
INSERT INTO `hashiqiyouquan` VALUES (6, '凯林哈士奇幼犬活体纯种西伯利亚雪橇犬蓝眼3火幼犬视频选购全国运送宠物活体幼崽狗狗宠物级', '2199.00', 'images/哈士奇幼犬/b557f62e99c631f3.jpg', '//img10.360buyimg.com/n7/jfs/t1/41350/38/3552/117595/5ccf096aE9cab9063/b557f62e99c631f3.jpg', 'b557f62e99c631f3.jpg');
INSERT INTO `hashiqiyouquan` VALUES (7, '宠景纯种哈士奇幼犬活体宠物西伯利亚雪橇犬哈士奇双蓝眼三把火到位纯种二哈幼犬帅气的哈士奇活体狗宠物级公', '1999.00', 'images/哈士奇幼犬/82f40d10a770d9fb.jpg', '//img13.360buyimg.com/n7/jfs/t1/25862/12/13590/94982/5ca0e6fdE711a9632/82f40d10a770d9fb.jpg', '82f40d10a770d9fb.jpg');
INSERT INTO `hashiqiyouquan` VALUES (8, '伈偶像哈士奇幼犬活体宠物狗活体狗狗活体小狗幼犬纯种双蓝眼三把火雪橇犬宠物级', '2299.00', 'images/哈士奇幼犬/ebec5d44b9396454.jpg', '//img10.360buyimg.com/n7/jfs/t1/34393/3/4832/103017/5cc54ae6Edd4bcbed/ebec5d44b9396454.jpg', 'ebec5d44b9396454.jpg');
INSERT INTO `hashiqiyouquan` VALUES (9, '狗时代DOGTIMES热卖哈士奇幼犬宠物狗活体狗狗幼崽小狗二哈狗公母视频挑选纯种血统黑白色高品质宠物级', '3498.00', 'images/哈士奇幼犬/5bee86f3N387225cd.jpg', '//img11.360buyimg.com/n7/jfs/t27847/199/1871948931/161316/a1a65b90/5bee86f3N387225cd.jpg', '5bee86f3N387225cd.jpg');
INSERT INTO `hashiqiyouquan` VALUES (10, '宠至尊纯种哈士奇犬活体幼犬宠物狗狗大型犬二哈灰色双蓝眼公母均有', '4500.00', 'images/哈士奇幼犬/5b09371eNfa510952.jpg', '//img12.360buyimg.com/n7/jfs/t21226/8/301788499/279400/db5bb1fc/5b09371eNfa510952.jpg', '5b09371eNfa510952.jpg');
INSERT INTO `hashiqiyouquan` VALUES (11, '壹萌哈士奇犬幼犬活体纯种西伯利亚哈士奇公母宠物狗狗小狗上海杭州苏州武汉可以上门挑选全国配送宠物级公', '1500.00', 'images/哈士奇幼犬/5cd51a8dN1ac38201.jpg', '//img14.360buyimg.com/n7/jfs/t30724/43/1106639467/246277/4e991cfe/5cd51a8dN1ac38201.jpg', '5cd51a8dN1ac38201.jpg');
INSERT INTO `hashiqiyouquan` VALUES (12, '兽友哈士奇幼犬活体宠物狗活体狗狗活体小狗幼犬活体纯种黑色西伯利亚雪橇犬宠物级公', '1899.00', 'images/哈士奇幼犬/5b5d891fN9fb6bf81.jpg', '//img14.360buyimg.com/n7/jfs/t21679/49/2581974890/263174/d27cf9d0/5b5d891fN9fb6bf81.jpg', '5b5d891fN9fb6bf81.jpg');
INSERT INTO `hashiqiyouquan` VALUES (13, '狗时代DOGTIMES哈士奇幼犬活体纯种血统视频挑选全国配送售后保障公母宠物狗活体小狗幼崽黑白高品质宠物级', '4800.00', 'images/哈士奇幼犬/5bff8d2dN40607716.jpg', '//img12.360buyimg.com/n7/jfs/t29785/256/816351272/207476/8fa264f8/5bff8d2dN40607716.jpg', '5bff8d2dN40607716.jpg');
INSERT INTO `hashiqiyouquan` VALUES (14, '景宠纯种拉不拉多犬幼犬活体萨摩耶阿拉斯加秋田柯基巴哥松狮金毛边牧哈士奇德牧斗牛宠物狗泰迪博美比熊柴犬拉布拉多犬公', '1699.00', 'images/哈士奇幼犬/afc5d3e5483a1a0e.jpg', '//img12.360buyimg.com/n7/jfs/t1/41249/17/2859/75044/5ccc453cE0346bf2c/afc5d3e5483a1a0e.jpg', 'afc5d3e5483a1a0e.jpg');
INSERT INTO `hashiqiyouquan` VALUES (15, '宠道萌萌宠可短租哈士奇幼犬活体宠物狗活体狗狗活体小狗幼犬活体纯种西伯利亚雪橇犬哈士奇幼犬', '3166.00', 'images/哈士奇幼犬/5b507c20N5ae19220.jpg', '//img12.360buyimg.com/n7/jfs/t23287/8/1110439317/149029/617ddfc8/5b507c20N5ae19220.jpg', '5b507c20N5ae19220.jpg');
INSERT INTO `hashiqiyouquan` VALUES (16, '心宠优选纯种哈士奇幼犬活体宠物狗活体幼犬出售视频观看同城配送公母可选黑白色系', '2500.00', 'images/哈士奇幼犬/5b0680b4N7b005b8b.jpg', '//img14.360buyimg.com/n7/jfs/t16858/229/2698318795/287277/ad49f3da/5b0680b4N7b005b8b.jpg', '5b0680b4N7b005b8b.jpg');
INSERT INTO `hashiqiyouquan` VALUES (17, '宠至尊纯种哈士奇犬活体幼犬宠物狗狗大型犬二哈黑色三把火宠物级', '1999.00', 'images/哈士奇幼犬/5b0935b4Nc9122ed9.jpg', '//img12.360buyimg.com/n7/jfs/t20137/25/321694918/530251/e0fff343/5b0935b4Nc9122ed9.jpg', '5b0935b4Nc9122ed9.jpg');
INSERT INTO `hashiqiyouquan` VALUES (18, '宠乐汇宠物活体狗纯种犬萌宠幼犬成犬基因协会认证品质血统证书保证支持视频NGKC哈士奇犬二哈灰白黑白红C级Steven黑白', '3699.00', 'images/哈士奇幼犬/605d3ab3ec2b89bc.jpg', '//img12.360buyimg.com/n7/jfs/t1/49558/19/277/500964/5cd3ddccEc4747391/605d3ab3ec2b89bc.jpg', '605d3ab3ec2b89bc.jpg');
INSERT INTO `hashiqiyouquan` VALUES (19, '遛遛巴哈士奇幼犬活体宠物狗活体狗狗活体小狗幼犬活体纯种西伯利亚雪橇犬宠物A级公', '5000.00', 'images/哈士奇幼犬/5bc5b7bbN9f2dc8e3.jpg', '//img12.360buyimg.com/n7/jfs/t26173/106/1277145696/149595/85589a54/5bc5b7bbN9f2dc8e3.jpg', '5bc5b7bbN9f2dc8e3.jpg');
INSERT INTO `hashiqiyouquan` VALUES (20, '遛遛巴哈士奇幼犬活体宠物狗活体狗狗活体小狗幼犬活体纯种西伯利亚雪橇犬宠物AA级（黑色）公', '3999.00', 'images/哈士奇幼犬/5bc5b7c2Ndbf71386.jpg', '//img10.360buyimg.com/n7/jfs/t25012/207/2174064836/240814/53b2ad24/5bc5b7c2Ndbf71386.jpg', '5bc5b7c2Ndbf71386.jpg');
INSERT INTO `hashiqiyouquan` VALUES (21, '狗时代DOGTIMES哈士奇幼犬活体纯种血统西伯利亚雪橇犬售后保障公母宠物狗活体小狗幼崽', '4499.00', 'images/哈士奇幼犬/5bff9a62Nf7395462.jpg', '//img11.360buyimg.com/n7/jfs/t27247/226/2377373465/108008/a57739c9/5bff9a62Nf7395462.jpg', '5bff9a62Nf7395462.jpg');
INSERT INTO `hashiqiyouquan` VALUES (22, '景宠纯种拉不拉多犬幼犬活体萨摩耶阿拉斯加秋田柯基巴哥松狮金毛边牧哈士奇德牧斗牛宠物狗泰迪博美比熊柴犬金毛犬公', '1699.00', 'images/哈士奇幼犬/ceaec8d158c8c941.jpg', '//img13.360buyimg.com/n7/jfs/t1/39482/7/5156/166092/5ccc4530E44674fad/ceaec8d158c8c941.jpg', 'ceaec8d158c8c941.jpg');
INSERT INTO `hashiqiyouquan` VALUES (23, '景宠纯种宠物活体泰迪犬比熊博美俊介拉布拉多阿拉斯加金毛德国牧羊犬萨摩耶犬柯基哈士奇犬宠物狗狗幼犬泰迪犬宠物级', '1998.00', 'images/哈士奇幼犬/92acd566272764d6.jpg', '//img10.360buyimg.com/n7/jfs/t1/36441/26/7298/129836/5cc72ea2Edcf0c870/92acd566272764d6.jpg', '92acd566272764d6.jpg');

-- ----------------------------
-- Table structure for huashuo
-- ----------------------------
DROP TABLE IF EXISTS `huashuo`;
CREATE TABLE `huashuo`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huashuo
-- ----------------------------
INSERT INTO `huashuo` VALUES (1, '华硕顽石(ASUS)六代FL8700F15.6英寸笔记本电脑(i7-8565U8G512GSSDMX2302G独显蓝牙5.0)银色', '5189.00', 'images/华硕/7c3419ac54788531.jpg', '//img13.360buyimg.com/n7/jfs/t1/67579/28/6378/196663/5d478b65Ef7e0ba67/7c3419ac54788531.jpg', '7c3419ac54788531.jpg');
INSERT INTO `huashuo` VALUES (2, '华硕(ASUS)飞行堡垒7九代英特尔酷睿i7120Hz高速屏游戏笔记本电脑(i7-9750H8G512SSDGTX1650)金属电竞', '6789.00', 'images/华硕/5ce62d9fNcab3d86b.jpg', '//img11.360buyimg.com/n7/jfs/t30694/301/1591311118/339939/7d80788b/5ce62d9fNcab3d86b.jpg', '5ce62d9fNcab3d86b.jpg');
INSERT INTO `huashuo` VALUES (3, '华硕(ASUS)飞行堡垒7九代英特尔酷睿i5120Hz高速屏游戏笔记本电脑(i5-9300H8G512SSDGTX1650)金属电竞', '5989.00', 'images/华硕/5ce62dc9Ncd46d877.jpg', '//img11.360buyimg.com/n7/jfs/t28813/348/1626694903/339283/acb621b/5ce62dc9Ncd46d877.jpg', '5ce62dc9Ncd46d877.jpg');
INSERT INTO `huashuo` VALUES (4, '华硕（ASUS）破晓7英特尔酷睿15.6英寸窄边框商务轻薄笔记本电脑2G独显银灰色i5-8265U/8G/256G全固态', '4399.00', 'images/华硕/95ccf568d1c0143c.jpg', '//img10.360buyimg.com/n7/jfs/t1/74897/36/9519/220056/5d7281b5E03edc883/95ccf568d1c0143c.jpg', '95ccf568d1c0143c.jpg');
INSERT INTO `huashuo` VALUES (5, '华硕顽石(ASUS)六代FL8700F15.6英寸笔记本电脑(i7-8565U8G512GSSDMX2302G独显蓝牙5.0)灰色', '5189.00', 'images/华硕/f0552a446e5fa7df.jpg', '//img11.360buyimg.com/n7/jfs/t1/54233/18/4851/202927/5d26de7eE58186885/f0552a446e5fa7df.jpg', 'f0552a446e5fa7df.jpg');
INSERT INTO `huashuo` VALUES (6, '华硕（ASUS）ROG-STRIX-GeForceRTX2060-O6G-GAMING1365-1860MHz14000MHz猛禽游戏电竞显卡', '3199.00', 'images/华硕/930bf1cf93dc8665.jpg', '//img11.360buyimg.com/n7/jfs/t1/71083/12/8606/378135/5d6679beEc06dfe5d/930bf1cf93dc8665.jpg', '930bf1cf93dc8665.jpg');
INSERT INTO `huashuo` VALUES (7, '京品电脑华硕a豆(adol)英特尔酷睿i513.3英寸四面窄边框轻薄笔记本电脑(i5-8265U8G256GSSDMX150IPS)玫瑰金', '4499.00', 'images/华硕/5ce6311fNaf2bd321.jpg', '//img13.360buyimg.com/n7/jfs/t28333/42/1597201391/150562/468db178/5ce6311fNaf2bd321.jpg', '5ce6311fNaf2bd321.jpg');
INSERT INTO `huashuo` VALUES (8, '华硕(ASUS)灵耀S2代英特尔酷睿i714英寸微边超轻薄笔记本电脑(i7-8565U8G256GSSDMX1502GIPS)冰钻金', '5189.00', 'images/华硕/209dade9d0281535.jpg', '//img10.360buyimg.com/n7/jfs/t1/47521/1/2937/75746/5d0b2e0eEba01b5ef/209dade9d0281535.jpg', '209dade9d0281535.jpg');
INSERT INTO `huashuo` VALUES (9, '华硕(ASUS)灵耀S2代英特尔酷睿i514英寸微边超轻薄笔记本电脑(i5-8265U8G512GSSDMX1502GIPS)消光灰', '4689.00', 'images/华硕/38b025f36b3fd769.jpg', '//img11.360buyimg.com/n7/jfs/t1/59462/37/2457/70389/5d0b2d94Eded51451/38b025f36b3fd769.jpg', '38b025f36b3fd769.jpg');
INSERT INTO `huashuo` VALUES (10, '华硕（ASUS）飞行堡垒7英特尔九代酷睿15.6英寸游戏本笔记本电脑120HzIPS屏金属电竞9代i7标压8G512G固态GTX1650', '6999.00', 'images/华硕/cf9b523e5674729d.jpg', '//img13.360buyimg.com/n7/jfs/t1/44216/37/14117/267349/5d72808bE551950cf/cf9b523e5674729d.jpg', 'cf9b523e5674729d.jpg');
INSERT INTO `huashuo` VALUES (11, '京品电脑华硕(ASUS)飞行堡垒715.6英寸游戏笔记本电脑(标压锐龙7-3750H16G512GSSDGTX16504G120Hz电竞屏)火陨', '5939.00', 'images/华硕/70c38c7fd451d5f0.jpg', '//img10.360buyimg.com/n7/jfs/t1/43456/33/11750/380512/5d536b7fE63b5d38d/70c38c7fd451d5f0.jpg', '70c38c7fd451d5f0.jpg');
INSERT INTO `huashuo` VALUES (12, '华硕(ASUS)飞行堡垒715.6英寸游戏笔记本电脑(标压锐龙7-3750H8G512GSSDGTX1660Ti6G120Hz电竞屏)火陨', '6699.00', 'images/华硕/34836392221024a2.jpg', '//img11.360buyimg.com/n7/jfs/t1/40781/9/11786/380633/5d525ff7Ee5e6d3fa/34836392221024a2.jpg', '34836392221024a2.jpg');
INSERT INTO `huashuo` VALUES (13, '华硕（ASUS）飞行堡垒6英特尔八代酷睿15.6英寸窄边框游戏笔记本电脑火陨8代i78G512G固态GTX1050Ti', '6099.00', 'images/华硕/a9fd2e6015b2f9ef.jpg', '//img10.360buyimg.com/n7/jfs/t1/63822/1/9458/190626/5d7280f8E2fdb9e12/a9fd2e6015b2f9ef.jpg', 'a9fd2e6015b2f9ef.jpg');
INSERT INTO `huashuo` VALUES (14, '京品电脑华硕(ASUS)飞行堡垒715.6英寸游戏笔记本电脑(标压锐龙7-3750H16G512GSSDRTX20606G电竞120Hz)火陨', '7699.00', 'images/华硕/f5b6f8f85ae1f3ab.jpg', '//img12.360buyimg.com/n7/jfs/t1/46583/23/7566/341039/5d536ae5E79ca4ea1/f5b6f8f85ae1f3ab.jpg', 'f5b6f8f85ae1f3ab.jpg');
INSERT INTO `huashuo` VALUES (15, '华硕(ASUS)灵耀S2代英特尔酷睿i714英寸微边超轻薄笔记本电脑(i7-8565U8G256GSSDMX1502GIPS)消光灰', '5189.00', 'images/华硕/5ce66342Nd5b2fdb6.jpg', '//img12.360buyimg.com/n7/jfs/t28771/66/1633572736/141598/d29cc192/5ce66342Nd5b2fdb6.jpg', '5ce66342Nd5b2fdb6.jpg');
INSERT INTO `huashuo` VALUES (16, '京品电脑华硕(ASUS)飞行堡垒715.6英寸游戏笔记本电脑(标压锐龙7-3750H16G512GSSDGTX1660Ti6G电竞120Hz)火陨', '6999.00', 'images/华硕/c9af9be538973dac.jpg', '//img11.360buyimg.com/n7/jfs/t1/51040/9/7758/380633/5d536b49E6b2947e4/c9af9be538973dac.jpg', 'c9af9be538973dac.jpg');
INSERT INTO `huashuo` VALUES (17, '华硕（ASUS）TUF-GeForceGTX1660-O6G-GAMINGOC1530-1845MHz8002MHz电竞特工系列游戏电竞专业显卡6G', '1699.00', 'images/华硕/4d863cf66530de40.jpg', '//img11.360buyimg.com/n7/jfs/t1/55840/6/9085/348282/5d68f276E8164cb79/4d863cf66530de40.jpg', '4d863cf66530de40.jpg');
INSERT INTO `huashuo` VALUES (18, '华硕(ASUS)飞行堡垒6英特尔酷睿i715.6英寸游戏笔记本电脑(i7-8750H16G512GSSDGTX1060)金属电竞', '7699.00', 'images/华硕/95b697858eb795bf.jpg', '//img12.360buyimg.com/n7/jfs/t1/52528/8/7053/302086/5d4a297fE892ccd93/95b697858eb795bf.jpg', '95b697858eb795bf.jpg');
INSERT INTO `huashuo` VALUES (19, '京品电脑华硕(ASUS)飞行堡垒715.6英寸游戏笔记本电脑(标压锐龙7-3750H8G512GSSDGTX16504G120Hz电竞屏)火陨', '5979.00', 'images/华硕/f0226a0ab02bf5b3.jpg', '//img13.360buyimg.com/n7/jfs/t1/65166/30/7206/380512/5d536b00E75a35f5a/f0226a0ab02bf5b3.jpg', 'f0226a0ab02bf5b3.jpg');
INSERT INTO `huashuo` VALUES (20, '华硕(ASUS)灵耀Deluxe14英特尔酷睿i514.0英寸轻薄笔记本电脑(i5-8265U8G512GMX1502GIPS全面屏)蓝', '6799.00', 'images/华硕/ebbf77154a7f954c.jpg', '//img13.360buyimg.com/n7/jfs/t1/35886/31/12716/201333/5d0b2bdfEf9759468/ebbf77154a7f954c.jpg', 'ebbf77154a7f954c.jpg');
INSERT INTO `huashuo` VALUES (21, '京品电脑华硕(ASUS)飞行堡垒715.6英寸游戏笔记本电脑(标压锐龙7-3750H8G512GSSDGTX16504G120Hz电竞屏)经典', '5469.00', 'images/华硕/29d0d8df18091419.jpg', '//img11.360buyimg.com/n7/jfs/t1/62608/21/7389/333505/5d536aa9E6e9af847/29d0d8df18091419.jpg', '29d0d8df18091419.jpg');
INSERT INTO `huashuo` VALUES (22, '华硕（ASUS）飞行堡垒7英特尔九代酷睿15.6英寸游戏笔记本电脑120HzIPS屏金属电竞9代i5标压配置二：8G1T+256GPCIE固态', '6199.00', 'images/华硕/d557efdce1ae7649.jpg', '//img11.360buyimg.com/n7/jfs/t1/71235/9/9431/142889/5d712e9bE3d25cb86/d557efdce1ae7649.jpg', 'd557efdce1ae7649.jpg');
INSERT INTO `huashuo` VALUES (23, '华硕(ASUS)傲世Z600023.8英寸全面屏游戏设计一体机电脑(i5-7300HQ8G128GSSD+1TGTX10504G独显FHD)黑', '6999.00', 'images/华硕/79c31abaa474f329.jpg', '//img12.360buyimg.com/n7/jfs/t1/55932/12/8380/198685/5d5e07bcE421db28f/79c31abaa474f329.jpg', '79c31abaa474f329.jpg');
INSERT INTO `huashuo` VALUES (24, '华硕(ASUS)飞行堡垒6英特尔酷睿i715.6英寸游戏笔记本电脑(i7-8750H8G256GSSD+1TGTX10606G)金属电竞', '6789.00', 'images/华硕/5ce62b93Nb93fa794.jpg', '//img10.360buyimg.com/n7/jfs/t30676/228/1632510876/282606/b1ce75f7/5ce62b93Nb93fa794.jpg', '5ce62b93Nb93fa794.jpg');
INSERT INTO `huashuo` VALUES (25, '华硕a豆(adol)英特尔酷睿i514英寸四面窄边框轻薄笔记本电脑(i5-8265U8G256GSSDIPS)桃浦粉', '4889.00', 'images/华硕/5ce631d1Nab68f608.jpg', '//img10.360buyimg.com/n7/jfs/t30523/13/1582050288/181351/80179d07/5ce631d1Nab68f608.jpg', '5ce631d1Nab68f608.jpg');
INSERT INTO `huashuo` VALUES (26, '京品电脑华硕a豆(adol)英特尔酷睿i513.3英寸四面窄边框轻薄笔记本电脑(i5-8265U8G256GSSDMX150IPS)皓月银', '4499.00', 'images/华硕/5ce62efdN695a2499.jpg', '//img14.360buyimg.com/n7/jfs/t29341/350/1598995872/209656/707a1552/5ce62efdN695a2499.jpg', '5ce62efdN695a2499.jpg');

-- ----------------------------
-- Table structure for huawei
-- ----------------------------
DROP TABLE IF EXISTS `huawei`;
CREATE TABLE `huawei`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huawei
-- ----------------------------
INSERT INTO `huawei` VALUES (1, '华为HUAWEIP30超感光徕卡三摄麒麟980AI智能芯片全面屏屏内指纹版手机8GB+64GB亮黑色全网通双4G手机双', '3988.00', 'images/华为/9c3ceb43a54dcb93.jpg', '//img14.360buyimg.com/n7/jfs/t1/28692/26/12501/332089/5c98cc90E6c89e802/9c3ceb43a54dcb93.jpg', '9c3ceb43a54dcb93.jpg');
INSERT INTO `huawei` VALUES (2, '华为HUAWEI畅享9S6GB+64GB幻夜黑全网通2400万超广角三摄珍珠屏大存储移动联通电信4G手机双卡双待', '1499.00', 'images/华为/46e7ace99f41dd41.jpg', '//img12.360buyimg.com/n7/jfs/t1/24205/2/14862/179077/5cb6d175E92733807/46e7ace99f41dd41.jpg', '46e7ace99f41dd41.jpg');
INSERT INTO `huawei` VALUES (3, '荣耀8X千元屏霸91%屏占比2000万AI双摄4GB+64GB幻夜黑移动联通电信4G全面屏手机双卡双待', '1299.00', 'images/华为/c16e93d0bf77a31f.jpg', '//img14.360buyimg.com/n7/jfs/t1/21333/14/5246/180334/5c3ad7b6Ef7d727c0/c16e93d0bf77a31f.jpg', 'c16e93d0bf77a31f.jpg');
INSERT INTO `huawei` VALUES (4, '荣耀10青春版幻彩渐变2400万AI自拍全网通版4GB+64GB渐变蓝移动联通电信4G全面屏手机双卡双待', '1299.00', 'images/华为/865565d919219154.jpg', '//img14.360buyimg.com/n7/jfs/t1/22718/1/12601/168068/5caedd41E05e879b0/865565d919219154.jpg', '865565d919219154.jpg');
INSERT INTO `huawei` VALUES (5, '荣耀20i3200万AI自拍超广角三摄全网通版6GB+64GB幻夜黑移动联通电信4G全面屏手机双卡双待', '1599.00', 'images/华为/21158539b9c0a970.jpg', '//img12.360buyimg.com/n7/jfs/t1/19271/38/14875/226572/5cac025eE98b0abde/21158539b9c0a970.jpg', '21158539b9c0a970.jpg');
INSERT INTO `huawei` VALUES (6, '荣耀Magic2魔法手机麒麟980AI智能芯片超广角AI三摄6GB+128GB渐变蓝移动联通电信4G手机双卡双待', '3499.00', 'images/华为/ba2c3d225972eb9c.jpg', '//img10.360buyimg.com/n7/jfs/t1/10114/13/497/137584/5bdad733Ee4103e2b/ba2c3d225972eb9c.jpg', 'ba2c3d225972eb9c.jpg');
INSERT INTO `huawei` VALUES (7, '荣耀畅玩8C两天一充莱茵护眼刘海屏全网通版4GB+32GB幻夜黑移动联通电信4G全面屏手机双卡双待', '899.00', 'images/华为/5bbac3c5N8b0bd22b.jpg', '//img12.360buyimg.com/n7/jfs/t25696/183/1719981196/90401/bcf6106c/5bbac3c5N8b0bd22b.jpg', '5bbac3c5N8b0bd22b.jpg');
INSERT INTO `huawei` VALUES (8, '华为HUAWEI畅享9Plus4GB+64GB极光紫全网通四摄超清全面屏大电池移动联通电信4G手机双卡双待', '1299.00', 'images/华为/5bbc6e01Ndf90871c.jpg', '//img13.360buyimg.com/n7/jfs/t27034/48/889830325/208490/a3be6016/5bbc6e01Ndf90871c.jpg', '5bbc6e01Ndf90871c.jpg');
INSERT INTO `huawei` VALUES (9, '荣耀V20胡歌同款麒麟980芯片魅眼全视屏4800万深感相机6GB+128GB幻夜黑移动联通电信4G全面屏手机', '2799.00', 'images/华为/5a38e39b2975e837.jpg', '//img13.360buyimg.com/n7/jfs/t1/27653/36/12572/346766/5c99ef63E81a8de14/5a38e39b2975e837.jpg', '5a38e39b2975e837.jpg');
INSERT INTO `huawei` VALUES (10, '华为HUAWEInova4e3200万立体美颜AI超广角三摄珍珠屏6GB+128GB幻夜黑全网通版双4G手机', '2199.00', 'images/华为/659cfc78ee5678e2.jpg', '//img14.360buyimg.com/n7/jfs/t1/21170/8/9667/201557/5c80835fE05d1e1df/659cfc78ee5678e2.jpg', '659cfc78ee5678e2.jpg');
INSERT INTO `huawei` VALUES (11, '荣耀10GT游戏加速AIS手持夜景6GB+64GB幻影蓝全网通移动联通电信4G双卡双待游戏手机', '1899.00', 'images/华为/5ad87390N086a3c91.jpg', '//img10.360buyimg.com/n7/jfs/t18157/222/1822300674/231514/6c179af8/5ad87390N086a3c91.jpg', '5ad87390N086a3c91.jpg');
INSERT INTO `huawei` VALUES (12, '华为HUAWEIMate20麒麟980AI智能芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB亮黑色全网通版双4G手机', '3799.00', 'images/华为/5bbf1fc9N3ced3749.jpg', '//img11.360buyimg.com/n7/jfs/t25954/134/1930444050/488286/31587d0d/5bbf1fc9N3ced3749.jpg', '5bbf1fc9N3ced3749.jpg');
INSERT INTO `huawei` VALUES (13, '华为HUAWEI畅享94GB+64GB幻夜黑高清珍珠屏AI长续航全网通高配版移动联通电信4G手机', '1189.00', 'images/华为/5c00df9cN3131b7ef.jpg', '//img10.360buyimg.com/n7/jfs/t28657/127/873294422/176894/9a044a80/5c00df9cN3131b7ef.jpg', '5c00df9cN3131b7ef.jpg');
INSERT INTO `huawei` VALUES (14, '华为HUAWEI畅享9e实力大音量高像素珍珠屏3GB+64GB幻夜黑全网通版双4G手机', '999.00', 'images/华为/046c0c31716a7601.jpg', '//img13.360buyimg.com/n7/jfs/t1/10580/13/16072/214866/5c960138E860211c8/046c0c31716a7601.jpg', '046c0c31716a7601.jpg');
INSERT INTO `huawei` VALUES (15, '荣耀MagicBook201914英寸轻薄窄边框笔记本电脑（AMD锐龙53500U8G512GFHDIPS指纹解锁）冰河银', '4098.00', 'images/华为/fef97a4ccc084e40.jpg', '//img11.360buyimg.com/n7/jfs/t1/31510/5/8986/283616/5ca22287E39f7d685/fef97a4ccc084e40.jpg', 'fef97a4ccc084e40.jpg');
INSERT INTO `huawei` VALUES (16, '华为HUAWEIP20Pro全面屏徕卡三摄游戏手机6GB+128GB亮黑色全网通移动联通电信4G手机双卡双待', '3488.00', 'images/华为/5ac1eba8N88880b03.jpg', '//img13.360buyimg.com/n7/jfs/t19510/195/1236218111/148413/135b5703/5ac1eba8N88880b03.jpg', '5ac1eba8N88880b03.jpg');
INSERT INTO `huawei` VALUES (17, '华为HUAWEIP30Pro超感光徕卡四摄10倍混合变焦麒麟980芯片屏内指纹8GB+256GB极光色全网通版双4G手机', '5988.00', 'images/华为/4be2efca1d9e2b38.jpg', '//img13.360buyimg.com/n7/jfs/t1/11352/31/13456/324178/5c98c88dE9419c2ca/4be2efca1d9e2b38.jpg', '4be2efca1d9e2b38.jpg');
INSERT INTO `huawei` VALUES (18, '华为P30Pro手机【当天发免息送华为无线充+碎屏险1年】超感光徕卡四摄10倍混合变焦50倍数天空之境全网通（8G+128G）无线充电屏内指纹', '5788.00', 'images/华为/c39c62fcd59b8717.jpg', '//img12.360buyimg.com/n7/jfs/t1/31410/9/7948/69850/5c9adf96Eefca7a4b/c39c62fcd59b8717.jpg', 'c39c62fcd59b8717.jpg');
INSERT INTO `huawei` VALUES (19, '华为HUAWEIP20AI智慧徕卡双摄全面屏游戏手机6GB+64GB极光色全网通移动联通电信4G手机双卡双待', '2988.00', 'images/华为/5af13917Naca6cb3d.jpg', '//img14.360buyimg.com/n7/jfs/t18052/318/2334327001/256076/23da5f45/5af13917Naca6cb3d.jpg', '5af13917Naca6cb3d.jpg');
INSERT INTO `huawei` VALUES (20, '华为HUAWEIMate20Pro(UD)屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB亮黑色全网通双4G手机', '5299.00', 'images/华为/5bbf17f0N428d505a.jpg', '//img14.360buyimg.com/n7/jfs/t25288/359/1939640863/406912/ff77e158/5bbf17f0N428d505a.jpg', '5bbf17f0N428d505a.jpg');
INSERT INTO `huawei` VALUES (21, '荣耀Note10全网通6G+64G幻夜黑移动联通电信4G全面屏手机双卡双待游戏手机', '1999.00', 'images/华为/5b6018c5N6f80495e.jpg', '//img10.360buyimg.com/n7/jfs/t20140/279/2633113298/113707/57d9da77/5b6018c5N6f80495e.jpg', '5b6018c5N6f80495e.jpg');
INSERT INTO `huawei` VALUES (22, '【千玺代言】华为新品HUAWEInova4极点全面屏手机2000万超广角三摄6GB+128GB亮黑色全网通双卡双待', '2699.00', 'images/华为/00589728292bac70.jpg', '//img14.360buyimg.com/n7/jfs/t1/30516/28/3566/120020/5c7631d2Eeb435432/00589728292bac70.jpg', '00589728292bac70.jpg');
INSERT INTO `huawei` VALUES (23, '华为(HUAWEI)WS5200增强版双千兆路由器1200M双频wifi无线家用穿墙5G双频智能无线路由高速路由IPv6', '209.00', 'images/华为/8a575f6e9c08eeed.jpg', '//img13.360buyimg.com/n7/jfs/t1/32957/30/1076/106713/5c457840E7f26d493/8a575f6e9c08eeed.jpg', '8a575f6e9c08eeed.jpg');
INSERT INTO `huawei` VALUES (24, '华为nova4e手机【购机享壕礼高配6期免息】雀翎蓝6G+128G全网通（6期免息）', '2199.88', 'images/华为/bd06a76d6929b274.jpg', '//img10.360buyimg.com/n7/jfs/t1/57736/36/376/659811/5cd4d6c8E0cdb36f6/bd06a76d6929b274.png', 'bd06a76d6929b274.jpg');
INSERT INTO `huawei` VALUES (25, '荣耀Play全网通版6GB+64GB极光蓝移动联通电信4G全面屏游戏手机双卡双待', '1699.00', 'images/华为/bc57c7563eb82aa2.jpg', '//img10.360buyimg.com/n7/jfs/t1/24990/27/11853/121739/5c920883E118897b0/bc57c7563eb82aa2.jpg', 'bc57c7563eb82aa2.jpg');
INSERT INTO `huawei` VALUES (26, '华为(HUAWEI)MateBookE2019款12英寸ACPC全连接轻薄二合一笔记本平板电脑（钛金灰高通骁龙8508G256G）', '3999.00', 'images/华为/42aa00e5b7798ad9.jpg', '//img10.360buyimg.com/n7/jfs/t1/28529/28/14095/308403/5ca5c566E256eed12/42aa00e5b7798ad9.jpg', '42aa00e5b7798ad9.jpg');
INSERT INTO `huawei` VALUES (27, '荣耀畅玩8A6.09英寸珍珠全面屏震撼大音量3GB+32GB幻夜黑移动联通电信4G全面屏手机双卡双待', '799.00', 'images/华为/054fbc574b007149.jpg', '//img11.360buyimg.com/n7/jfs/t1/17791/2/4053/104184/5c2ec928Efb2c4215/054fbc574b007149.jpg', '054fbc574b007149.jpg');
INSERT INTO `huawei` VALUES (28, '华为HUAWEI智能体脂秤体重秤脂肪秤家用健康秤电子秤APP蓝牙led显示健身减肥运动黑色CH18京东纪念版', '129.00', 'images/华为/32b5e1b721bd9887.jpg', '//img10.360buyimg.com/n7/jfs/t1/7064/16/255/298915/5bc9ab84E5e2a8b70/32b5e1b721bd9887.jpg', '32b5e1b721bd9887.jpg');
INSERT INTO `huawei` VALUES (29, '华为耳机原装半入耳式有线荣耀mate9/8x/p10plus/v10nova2s9iv9p9play【标准版】华为AM115白色-热卖款', '39.00', 'images/华为/8e46995eee8c4885.jpg', '//img13.360buyimg.com/n7/jfs/t1/81913/15/18/73260/5cd29559E0c0ba925/8e46995eee8c4885.jpg', '8e46995eee8c4885.jpg');
INSERT INTO `huawei` VALUES (30, 'HUAWEIWATCHGT运动版黑色华为手表(两周续航+户外运动手表+实时心率+高清彩屏+睡眠/压力监测+NFC支付)', '1188.00', 'images/华为/b698b3928abb6680.jpg', '//img13.360buyimg.com/n7/jfs/t1/22776/35/5033/275026/5c38691dE46b3bb7e/b698b3928abb6680.jpg', 'b698b3928abb6680.jpg');

-- ----------------------------
-- Table structure for huopao
-- ----------------------------
DROP TABLE IF EXISTS `huopao`;
CREATE TABLE `huopao`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huopao
-- ----------------------------
INSERT INTO `huopao` VALUES (1, '【全套6册】360度兵器大探索：火炮+导弹+装甲车+战机+轻型武器+军用舰艇武器兵器百科全书', '98.00', 'images/火炮/6236d6f3f61db442.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/78240/26/9033/261099/5d6dc80bEd8f6b07e/6236d6f3f61db442.jpg', '6236d6f3f61db442.jpg');
INSERT INTO `huopao` VALUES (2, '战争之王——火炮', '13.20', 'images/火炮/594a33f9Nd0e2034f.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t5617/141/4293500511/321969/99e5ab80/594a33f9Nd0e2034f.jpg', '594a33f9Nd0e2034f.jpg');
INSERT INTO `huopao` VALUES (3, '世界武器鉴赏系列：全球火炮鉴赏指南(珍藏版)（第2版）', '42.80', 'images/火炮/5a6386d9735ee15f.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/1021/39/5306/536412/5b9f3eabEfc420cd2/5a6386d9735ee15f.jpg', '5a6386d9735ee15f.jpg');
INSERT INTO `huopao` VALUES (4, '军事百科典藏书系--陆军武器大百科（第二版）', '34.90', 'images/火炮/593774efNa48d0847.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t5698/158/3115831637/625418/66844c6/593774efNa48d0847.jpg', '593774efNa48d0847.jpg');
INSERT INTO `huopao` VALUES (5, '火炮历史的见证：馆藏火炮鉴赏', '78.00', 'images/火炮/551d0fd8Ncf9aac13.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t724/18/1134183830/169986/88a9ca98/551d0fd8Ncf9aac13.jpg', '551d0fd8Ncf9aac13.jpg');
INSERT INTO `huopao` VALUES (6, '飞鹰军事百科002：火炮', '31.00', 'images/火炮/blank.gif', '//misc.360buyimg.com/lib/img/e/blank.gif', 'blank.gif');
INSERT INTO `huopao` VALUES (7, '远程火炮武器系统射击精度分析郭锡福国防工业出版社', '114.00', 'images/火炮/a7f8e6cd56772888.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/37795/27/1161/30033/5cb88105Ec27ac70f/a7f8e6cd56772888.jpg', 'a7f8e6cd56772888.jpg');
INSERT INTO `huopao` VALUES (8, '战争之神：火炮', '17.90', 'images/火炮/53c8df82Ncb10c1e9.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t178/42/2268552420/150799/c255641/53c8df82Ncb10c1e9.jpg', '53c8df82Ncb10c1e9.jpg');
INSERT INTO `huopao` VALUES (9, '火炮弹道学（第2版）/“十二五”普通高等教育本科国家级规划教材', '37.40', 'images/火炮/58d08947Nbe0b5874.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t4510/173/503718360/39353/162e2bf6/58d08947Nbe0b5874.jpg', '58d08947Nbe0b5874.jpg');
INSERT INTO `huopao` VALUES (10, '世界武器鉴赏系列：陆战武器鉴赏指南（珍藏版）（第2版）', '44.30', 'images/火炮/2e0206e6619426fc.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t1/1788/11/5823/541441/5ba0a7a4E987db5e3/2e0206e6619426fc.jpg', '2e0206e6619426fc.jpg');
INSERT INTO `huopao` VALUES (11, '火炮与自动武器动力学', '44.20', 'images/火炮/rBEbRlN1Z0gIAAAAAACDcjxY6e4AABXNgEDsVAAAIOK010.jpg', '//img10.360buyimg.com/n1/s200x200_g16/M00/06/1F/rBEbRlN1Z0gIAAAAAACDcjxY6e4AABXNgEDsVAAAIOK010.jpg', 'rBEbRlN1Z0gIAAAAAACDcjxY6e4AABXNgEDsVAAAIOK010.jpg');
INSERT INTO `huopao` VALUES (12, '火炮与自动武器', '18.60', 'images/火炮/e8395b90-93cf-44ea-8c6f-92a26f5b61a2.jpg', '//img11.360buyimg.com/n1/s200x200_14701/e8395b90-93cf-44ea-8c6f-92a26f5b61a2.jpg', 'e8395b90-93cf-44ea-8c6f-92a26f5b61a2.jpg');
INSERT INTO `huopao` VALUES (13, '军事帝国--军火酷--主战坦克+装甲输送车+自行火炮9787894540904吉林电子本社编', '5.00', 'images/火炮/02ce40f8-e219-4ebe-b6b8-fe4eaaa6866d.jpg', '//img10.360buyimg.com/n1/s200x200_12706/02ce40f8-e219-4ebe-b6b8-fe4eaaa6866d.jpg', '02ce40f8-e219-4ebe-b6b8-fe4eaaa6866d.jpg');
INSERT INTO `huopao` VALUES (14, '火炮：地动山摇的攻击利器', '16.00', 'images/火炮/5a9ccd15Nc30c52dd.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t17332/205/652391572/538026/ae5ae9db/5a9ccd15Nc30c52dd.jpg', '5a9ccd15Nc30c52dd.jpg');
INSERT INTO `huopao` VALUES (15, '现代火炮自动机设计理论', '37.60', 'images/火炮/5734d984a6d05be0.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/11275/21/13582/158008/5c99f160Ed9f22159/5734d984a6d05be0.jpg', '5734d984a6d05be0.jpg');
INSERT INTO `huopao` VALUES (16, '自行火炮/武器装备百科典藏', '46.80', 'images/火炮/5863779dN13a7b63c.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t3817/176/2631170769/475033/1803dc7c/5863779dN13a7b63c.jpg', '5863779dN13a7b63c.jpg');
INSERT INTO `huopao` VALUES (17, '国防特色教材·兵器科学与技术：火炮控制系统及原理', '34.90', 'images/火炮/075dce18-f561-4446-a35e-29b127413cf1.jpg', '//img11.360buyimg.com/n1/s200x200_14475/075dce18-f561-4446-a35e-29b127413cf1.jpg', '075dce18-f561-4446-a35e-29b127413cf1.jpg');
INSERT INTO `huopao` VALUES (18, '中英火炮与鸦片战争', '67.00', 'images/火炮/5a61cdaaN043958c0.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t14572/281/1722776116/177047/1b8d9e7/5a61cdaaN043958c0.jpg', '5a61cdaaN043958c0.jpg');
INSERT INTO `huopao` VALUES (19, '世界经典火炮TOP10', '30.70', 'images/火炮/55d6e7ebN3730125c.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1168/204/1158752233/136172/fd1d2d11/55d6e7ebN3730125c.jpg', '55d6e7ebN3730125c.jpg');
INSERT INTO `huopao` VALUES (20, '好看的武器百科：火炮政治/军事书籍', '8.80', 'images/火炮/58f91babNecd2d7a9.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t5149/353/121066590/37743/b99d64ba/58f91babNecd2d7a9.jpg', '58f91babNecd2d7a9.jpg');
INSERT INTO `huopao` VALUES (21, '火炮设计理论', '62.40', 'images/火炮/rBEbRlN1Z0gIAAAAAAB79qUIbWUAABXNgERYEwAAHwO680.jpg', '//img12.360buyimg.com/n1/s200x200_g16/M00/06/1F/rBEbRlN1Z0gIAAAAAAB79qUIbWUAABXNgERYEwAAHwO680.jpg', 'rBEbRlN1Z0gIAAAAAAB79qUIbWUAABXNgERYEwAAHwO680.jpg');
INSERT INTO `huopao` VALUES (22, '火炮发射装药设计原理与技术', '57.20', 'images/火炮/rBEbRlN1Z0gIAAAAAACF5PYcfIoAABXNgDLRP0AAIX8995.jpg', '//img12.360buyimg.com/n1/s200x200_g16/M00/06/1F/rBEbRlN1Z0gIAAAAAACF5PYcfIoAABXNgDLRP0AAIX8995.jpg', 'rBEbRlN1Z0gIAAAAAACF5PYcfIoAABXNgDLRP0AAIX8995.jpg');
INSERT INTO `huopao` VALUES (23, '二战兵器图鉴系列--红色洪流：二战苏军重武器（第二版）', '22.50', 'images/火炮/5a4c686bNab3afd53.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t15775/181/1174755959/1641773/7d883468/5a4c686bNab3afd53.jpg', '5a4c686bNab3afd53.jpg');
INSERT INTO `huopao` VALUES (24, '火炮：地动山摇的攻击利器/兵典丛书：典藏版', '28.90', 'images/火炮/5b03ecbaNb5363776.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t16699/18/2676499040/246678/7e265e0/5b03ecbaNb5363776.jpg', '5b03ecbaNb5363776.jpg');
INSERT INTO `huopao` VALUES (25, '世界王牌武器入门之作战车辆', '19.90', 'images/火炮/5b86445eN76b7197e.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t23092/277/2580009988/623229/4926723/5b86445eN76b7197e.jpg', '5b86445eN76b7197e.jpg');
INSERT INTO `huopao` VALUES (26, '技术转移与技术创新历史丛书：德国克虏伯与晚清火炮贸易与仿制模式下的技术转移', '39.00', 'images/火炮/55c162e1Nf71fb470.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1627/159/1213269947/158248/7eb60ecb/55c162e1Nf71fb470.jpg', '55c162e1Nf71fb470.jpg');
INSERT INTO `huopao` VALUES (27, '火炮身管寿命推断技术与工程实践', '45.80', 'images/火炮/54a3c683Ne0f3436e.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t463/213/1003169838/110914/e2e5da3a/54a3c683Ne0f3436e.jpg', '54a3c683Ne0f3436e.jpg');
INSERT INTO `huopao` VALUES (28, '第一次世界大战时期的海军武器：世界各国的舰炮、鱼雷、水雷及反潜武器', '60.10', 'images/火炮/5ad6e0dcNdd55e357.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t18817/205/1742999172/220400/fc1fe766/5ad6e0dcNdd55e357.jpg', '5ad6e0dcNdd55e357.jpg');
INSERT INTO `huopao` VALUES (29, '世界兵器大全（儿童注音版）', '26.10', 'images/火炮/577cb096Ne7df8ce0.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t2617/63/2934592538/832866/fc97e72a/577cb096Ne7df8ce0.jpg', '577cb096Ne7df8ce0.jpg');
INSERT INTO `huopao` VALUES (30, '战争之神-现代火炮图鉴政治/军事书籍', '23.90', 'images/火炮/703800a7ed295896.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t1/36091/33/5049/134691/5cc743c0E52d13daf/703800a7ed295896.jpg', '703800a7ed295896.jpg');

-- ----------------------------
-- Table structure for ipad
-- ----------------------------
DROP TABLE IF EXISTS `ipad`;
CREATE TABLE `ipad`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ipad
-- ----------------------------
INSERT INTO `ipad` VALUES (1, 'APPLE苹果ipad2018新款平板电脑air2更新版2017款iPad9.7英寸pad金色【2018款】32GWLAN版标配', '2198.00', 'images/ipad/5cda96ccNad8e61a7.jpg', '//img11.360buyimg.com/n7/jfs/t10630/188/2870750604/142997/ac60e03a/5cda96ccNad8e61a7.jpg', '5cda96ccNad8e61a7.jpg');
INSERT INTO `ipad` VALUES (2, '【领券立减】AppleiPad平板电脑2018年新款9.7英寸（128GWLAN版/A10芯片/TouchIDMRJP2CH/A）金色', '3268.00', 'images/ipad/5abb0fc0Nb0fd7afd.jpg', '//img13.360buyimg.com/n7/jfs/t17425/6/1117130719/77250/b4afe949/5abb0fc0Nb0fd7afd.jpg', '5abb0fc0Nb0fd7afd.jpg');
INSERT INTO `ipad` VALUES (3, '【领券立减】AppleiPad平板电脑2018款9.7英寸（32GWLAN版/A10芯片/TouchID技术MRJN2CH/A）金色', '2498.00', 'images/ipad/5abb0ec6N6dbbddf1.jpg', '//img12.360buyimg.com/n7/jfs/t18595/339/1052523652/77250/b4afe949/5abb0ec6N6dbbddf1.jpg', '5abb0ec6N6dbbddf1.jpg');
INSERT INTO `ipad` VALUES (4, '【领券立减】AppleiPad平板电脑2018年新款9.7英寸（128GWLAN版/A10芯片/Retina显示屏MR7K2CH/A）银色', '3268.00', 'images/ipad/5abb0fd5Nd40c72e1.jpg', '//img12.360buyimg.com/n7/jfs/t16759/298/1134242689/85617/2b4ccc02/5abb0fd5Nd40c72e1.jpg', '5abb0fd5Nd40c72e1.jpg');
INSERT INTO `ipad` VALUES (5, '【领券立减】AppleiPad平板电脑2018年新款9.7英寸（128GWLAN版/A10芯片/Retina屏MR7J2CH/A）深空灰色', '3268.00', 'images/ipad/5abb0fe7N5f2b7ed2.jpg', '//img12.360buyimg.com/n7/jfs/t18496/191/1094234567/72578/837eeaaa/5abb0fe7N5f2b7ed2.jpg', '5abb0fe7N5f2b7ed2.jpg');
INSERT INTO `ipad` VALUES (6, '【领券立减】AppleiPad平板电脑2018款9.7英寸（32GWLAN版/A10芯片/TouchID技术MR7G2CH/A）银色', '2498.00', 'images/ipad/5abb0f02N6b1eabe6.jpg', '//img10.360buyimg.com/n7/jfs/t18565/172/1097303204/85617/2b4ccc02/5abb0f02N6b1eabe6.jpg', '5abb0f02N6b1eabe6.jpg');
INSERT INTO `ipad` VALUES (7, '【新品上市】APPLE苹果2019款iPadAir3新款10.5英寸平板电脑金色64G-WLAN版【官方标配】', '3508.00', 'images/ipad/5cda9620N70acd110.jpg', '//img11.360buyimg.com/n7/jfs/t11035/294/2834502258/134575/8ab976fa/5cda9620N70acd110.jpg', '5cda9620N70acd110.jpg');
INSERT INTO `ipad` VALUES (8, '【领券立减】AppleiPadmini52019年新款平板电脑7.9英寸（64GWLAN版/A12芯片/Retina显示屏/MUQY2CH/A）金色', '2899.00', 'images/ipad/a5a8a37a2588d180.jpg', '//img12.360buyimg.com/n7/jfs/t1/28000/28/11660/111268/5c906504E55f685cb/a5a8a37a2588d180.jpg', 'a5a8a37a2588d180.jpg');
INSERT INTO `ipad` VALUES (9, '【领券立减】AppleiPadPro11英寸平板电脑2018年款(256GWLAN版/全面屏/A12X/FaceIDMTXQ2CH/A)深空灰色', '7199.00', 'images/ipad/3347a02fd2e9bc94.jpg', '//img10.360buyimg.com/n7/jfs/t1/6524/23/4221/217276/5bd8a8e9Edcc2e1a3/3347a02fd2e9bc94.jpg', '3347a02fd2e9bc94.jpg');
INSERT INTO `ipad` VALUES (10, '【领券立减】AppleiPadAir32019年新款平板电脑10.5英寸（64GWLAN版/A12芯片/Retina显示屏/MUUJ2CH/A）深空灰色', '3888.00', 'images/ipad/35a455546a00318d.jpg', '//img14.360buyimg.com/n7/jfs/t1/14141/3/11626/192739/5c908772E555959fd/35a455546a00318d.jpg', '35a455546a00318d.jpg');
INSERT INTO `ipad` VALUES (11, '【领券立减】AppleiPadmini52019年新款平板电脑7.9英寸（64GWLAN版/A12芯片/Retina显示屏/MUQW2CH/A）深空灰色', '2899.00', 'images/ipad/c8b5b02d7c8a9529.jpg', '//img14.360buyimg.com/n7/jfs/t1/12013/8/11611/121395/5c906608E5b10fed7/c8b5b02d7c8a9529.jpg', 'c8b5b02d7c8a9529.jpg');
INSERT INTO `ipad` VALUES (12, '【Pencil套装版】AppleiPad平板电脑9.7英寸（128GWLAN版）金色及Pencil套装MRJP2CH/A', '3588.00', 'images/ipad/5ac2f88fNd07d1688.jpg', '//img12.360buyimg.com/n7/jfs/t16789/118/1292823432/77250/b4afe949/5ac2f88fNd07d1688.jpg', '5ac2f88fNd07d1688.jpg');
INSERT INTO `ipad` VALUES (13, '【新品上市】APPLE苹果2019新款iPadmini5/mini4平板电脑7.9英寸金色【新品】mini5-64G-WLAN版', '2668.00', 'images/ipad/5cda96bbNd744cc21.jpg', '//img11.360buyimg.com/n7/jfs/t10828/100/2919382682/134238/a0116ce1/5cda96bbNd744cc21.jpg', '5cda96bbNd744cc21.jpg');
INSERT INTO `ipad` VALUES (14, '【领券立减】AppleiPadmini52019年新款平板电脑7.9英寸（64GWLAN版/A12芯片/Retina显示屏/MUQX2CH/A）银色', '2899.00', 'images/ipad/20640a59bf8dc661.jpg', '//img12.360buyimg.com/n7/jfs/t1/16095/31/11571/118007/5c9065a6Ed94fd377/20640a59bf8dc661.jpg', '20640a59bf8dc661.jpg');
INSERT INTO `ipad` VALUES (15, 'AppleiPadmini4平板电脑7.9英寸（128GWLAN版/A8芯片/Retina显示屏/TouchID技术MK9N2CH）深空灰色', '2398.00', 'images/ipad/5addb568N147385e4.jpg', '//img13.360buyimg.com/n7/jfs/t16648/102/1943073796/59425/8627ce4c/5addb568N147385e4.jpg', '5addb568N147385e4.jpg');
INSERT INTO `ipad` VALUES (16, 'AppleiPadmini4平板电脑7.9英寸（128GWLAN版/A8芯片/Retina显示屏/TouchID技术MK9Q2CH）金色', '2399.00', 'images/ipad/5addb475N8bf4c6ea.jpg', '//img13.360buyimg.com/n7/jfs/t16990/124/1933004112/96067/8d773cb/5addb475N8bf4c6ea.jpg', '5addb475N8bf4c6ea.jpg');
INSERT INTO `ipad` VALUES (17, '【领券立减】AppleiPadPro11英寸平板电脑2018款(64GWLAN版/全面屏/A12X/FaceIDMTXN2CH/A)深空灰色', '6099.00', 'images/ipad/d6acfae792866f77.jpg', '//img12.360buyimg.com/n7/jfs/t1/2060/2/13752/217276/5bd8a77dEa1d786e7/d6acfae792866f77.jpg', 'd6acfae792866f77.jpg');
INSERT INTO `ipad` VALUES (18, '【领券立减】AppleiPad平板电脑2018款9.7英寸（32GWLAN版/A10芯片/TouchIDMR7F2CH/A）深空灰色', '2498.00', 'images/ipad/5abb0f26N7926206e.jpg', '//img10.360buyimg.com/n7/jfs/t17875/252/1120491454/72578/837eeaaa/5abb0f26N7926206e.jpg', '5abb0f26N7926206e.jpg');
INSERT INTO `ipad` VALUES (19, '苹果（Apple）iPad2018新款平板电脑2017款iPadair2更新版9.7英寸pad金色18款32GWLAN版标配', '2198.00', 'images/ipad/5cda2d42Nce41daed.jpg', '//img14.360buyimg.com/n7/jfs/t29104/260/1250252052/188721/a76f9ce2/5cda2d42Nce41daed.jpg', '5cda2d42Nce41daed.jpg');
INSERT INTO `ipad` VALUES (20, '【领券立减】AppleiPadAir32019年新款平板电脑10.5英寸（64GWLAN版/A12芯片/Retina显示屏/MUUL2CH/A）金色', '3888.00', 'images/ipad/8c50d6ea71d17ee9.jpg', '//img14.360buyimg.com/n7/jfs/t1/32578/25/6630/199318/5c9086cbE7ec1f26a/8c50d6ea71d17ee9.jpg', '8c50d6ea71d17ee9.jpg');
INSERT INTO `ipad` VALUES (21, '【Pencil套装版】AppleiPad平板电脑9.7英寸（128GWLAN版）银色及Pencil套装MR7K2CH/A', '3588.00', 'images/ipad/5ac2f8acNd387b169.jpg', '//img11.360buyimg.com/n7/jfs/t19252/232/1223818018/85617/2b4ccc02/5ac2f8acNd387b169.jpg', '5ac2f8acNd387b169.jpg');
INSERT INTO `ipad` VALUES (22, '【Pencil套装版】AppleiPad平板电脑9.7英寸（128GWLAN版）深空灰色及Pencil套装MR7J2CH/A', '3588.00', 'images/ipad/5ac2f8c2Nb995ed76.jpg', '//img12.360buyimg.com/n7/jfs/t7564/121/3886830786/72578/837eeaaa/5ac2f8c2Nb995ed76.jpg', '5ac2f8c2Nb995ed76.jpg');
INSERT INTO `ipad` VALUES (23, '【领券立减】AppleiPadAir32019年新款平板电脑10.5英寸（256GWLAN版/A12芯片/Retina显示屏/MUUT2CH/A）金色', '4999.00', 'images/ipad/ae45349ea41ba5b2.jpg', '//img13.360buyimg.com/n7/jfs/t1/22895/29/11556/199318/5c908794E4a6e88e5/ae45349ea41ba5b2.jpg', 'ae45349ea41ba5b2.jpg');
INSERT INTO `ipad` VALUES (24, '【领券立减】AppleiPadmini52019年新款平板电脑7.9英寸（256GWLAN版/A12芯片/Retina显示屏/MUU62CH/A）金色', '3999.00', 'images/ipad/d76227d14a612113.jpg', '//img11.360buyimg.com/n7/jfs/t1/24816/23/11357/111268/5c906634Ea638fdf5/d76227d14a612113.jpg', 'd76227d14a612113.jpg');
INSERT INTO `ipad` VALUES (25, '【新品】苹果（Apple）2019年新款ipadmini5/mini4苹果平板电脑7.9英寸金色新品mini564GWLAN版标配', '2668.00', 'images/ipad/347e4eb80600e997.jpg', '//img11.360buyimg.com/n7/jfs/t1/37590/13/9152/127216/5cdb702dE1cbf156b/347e4eb80600e997.jpg', '347e4eb80600e997.jpg');
INSERT INTO `ipad` VALUES (26, '【领券立减】AppleiPadAir32019年新款平板电脑10.5英寸（64GWLAN版/A12芯片/Retina显示屏/MUUK2CH/A）银色', '3888.00', 'images/ipad/2df5ebb9c8d03ed8.jpg', '//img12.360buyimg.com/n7/jfs/t1/14366/26/11569/192448/5c908735Ecd717918/2df5ebb9c8d03ed8.jpg', '2df5ebb9c8d03ed8.jpg');
INSERT INTO `ipad` VALUES (27, '【领券立减】AppleiPadPro12.9英寸平板电脑2018年新款（256GWLAN版/全面屏/A12X芯片/FaceIDMTFL2CH/A）深空灰色', '8999.00', 'images/ipad/090c8bfb6ce2dbd9.jpg', '//img12.360buyimg.com/n7/jfs/t1/3499/26/13595/200504/5bd8abd0E67f3f7a4/090c8bfb6ce2dbd9.jpg', '090c8bfb6ce2dbd9.jpg');
INSERT INTO `ipad` VALUES (28, 'AppleiPadmini4平板电脑7.9英寸（128GWLAN版/A8芯片/Retina显示屏/TouchID技术MK9P2CH）银色', '2399.00', 'images/ipad/5addb51dNa2bfe7fb.jpg', '//img14.360buyimg.com/n7/jfs/t18517/149/1975529869/57331/19544a56/5addb51dNa2bfe7fb.jpg', '5addb51dNa2bfe7fb.jpg');
INSERT INTO `ipad` VALUES (29, '【领券立减】AppleiPadmini52019年新款平板电脑7.9英寸（256GWLAN版/A12芯片/Retina显示屏/MUU32CH/A）深空灰色', '3999.00', 'images/ipad/0a2aaa5feaec8d6b.jpg', '//img10.360buyimg.com/n7/jfs/t1/30204/3/6597/121395/5c906702Ebc1aee88/0a2aaa5feaec8d6b.jpg', '0a2aaa5feaec8d6b.jpg');
INSERT INTO `ipad` VALUES (30, '【领券立减】AppleiPadPro12.9英寸平板电脑2018款(64GWLAN版/全面屏/A12X/FaceIDMTEL2CH/A)深空灰', '7699.00', 'images/ipad/d695e3db95cf66cb.jpg', '//img14.360buyimg.com/n7/jfs/t1/6031/34/4295/200504/5bd8aae2Ee4bd3529/d695e3db95cf66cb.jpg', 'd695e3db95cf66cb.jpg');

-- ----------------------------
-- Table structure for iphone
-- ----------------------------
DROP TABLE IF EXISTS `iphone`;
CREATE TABLE `iphone`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iphone
-- ----------------------------
INSERT INTO `iphone` VALUES (1, 'AppleiPhoneXR(A2108)128GB黑色移动联通电信4G手机双卡双待', '5899.00', 'images/iphone/a2c208410ae84d1f.jpg', '//img10.360buyimg.com/n7/jfs/t1/3405/18/3537/69901/5b997c0aE5dc8ed9f/a2c208410ae84d1f.jpg', 'a2c208410ae84d1f.jpg');
INSERT INTO `iphone` VALUES (2, 'AppleiPhoneXSMax(A2103)256GB深空灰色全网通（移动4G优先版）双卡双待', '8189.00', 'images/iphone/819dcf182d743897.jpg', '//img12.360buyimg.com/n7/jfs/t1/3/15/4536/138660/5b997bf8Ed72ebce7/819dcf182d743897.jpg', '819dcf182d743897.jpg');
INSERT INTO `iphone` VALUES (3, 'AppleiPhone7(A1660)128G黑色移动联通电信4G手机', '3099.00', 'images/iphone/ab22cb8d8464e096.jpg', '//img12.360buyimg.com/n7/jfs/t1/24238/8/12493/163807/5c9996dfE466d616a/ab22cb8d8464e096.jpg', 'ab22cb8d8464e096.jpg');
INSERT INTO `iphone` VALUES (4, 'AppleiPhoneX(A1865)64GB银色移动联通电信4G手机', '5999.00', 'images/iphone/59e42830N9da56c41.jpg', '//img10.360buyimg.com/n7/jfs/t7297/154/3413903491/65679/45ae4902/59e42830N9da56c41.jpg', '59e42830N9da56c41.jpg');
INSERT INTO `iphone` VALUES (5, 'AppleiPhone8(A1863)64GB深空灰色移动联通电信4G手机', '3799.00', 'images/iphone/59b85824N836bb714.jpg', '//img12.360buyimg.com/n7/jfs/t7582/66/3048380492/71753/acde79b5/59b85824N836bb714.jpg', '59b85824N836bb714.jpg');
INSERT INTO `iphone` VALUES (6, 'Apple苹果iPhone6sPlus全网通4G手机玫瑰金全网通128GB', '2848.00', 'images/iphone/58d39a3aN2fdfa901.jpg', '//img11.360buyimg.com/n7/jfs/t4207/264/2597855607/93150/de996dc0/58d39a3aN2fdfa901.jpg', '58d39a3aN2fdfa901.jpg');
INSERT INTO `iphone` VALUES (7, 'AppleiPhone8Plus(A1864)64GB深空灰色移动联通电信4G手机', '4699.00', 'images/iphone/59b857f8N977f476c.jpg', '//img10.360buyimg.com/n7/jfs/t8107/37/1359438185/72159/a6129e26/59b857f8N977f476c.jpg', '59b857f8N977f476c.jpg');
INSERT INTO `iphone` VALUES (8, 'AppleiPhone6sPlus(A1699)128G玫瑰金色移动联通电信4G手机', '2999.00', 'images/iphone/a3fe2eccd3a90a71.jpg', '//img12.360buyimg.com/n7/jfs/t1/25197/10/15604/225954/5cb14df5Ee7253219/a3fe2eccd3a90a71.jpg', 'a3fe2eccd3a90a71.jpg');
INSERT INTO `iphone` VALUES (9, 'AppleiPhone7Plus(A1661)128G黑色移动联通电信4G手机', '4199.00', 'images/iphone/34ac75cc458efc46.jpg', '//img12.360buyimg.com/n7/jfs/t1/18387/1/12727/161720/5c999df4E06720614/34ac75cc458efc46.jpg', '34ac75cc458efc46.jpg');
INSERT INTO `iphone` VALUES (10, 'AppleiPhoneXS(A2100)64GB深空灰色移动联通电信4G手机', '7899.00', 'images/iphone/8788a4743af36f36.jpg', '//img13.360buyimg.com/n7/jfs/t1/5064/31/3461/142209/5b997c0eE8b26d23e/8788a4743af36f36.jpg', '8788a4743af36f36.jpg');
INSERT INTO `iphone` VALUES (11, 'Apple苹果iPhoneXR手机黑色全网通128GB', '5468.00', 'images/iphone/d0935ef49b3e6160.jpg', '//img14.360buyimg.com/n7/jfs/t1/84339/16/351/262524/5cd668ecEb99db59a/d0935ef49b3e6160.png', 'd0935ef49b3e6160.jpg');
INSERT INTO `iphone` VALUES (12, 'Apple苹果iPhoneXR全网通4G手机双卡双待白色128GB', '5538.00', 'images/iphone/6406f68d6145053a.jpg', '//img11.360buyimg.com/n7/jfs/t1/308/32/3796/75223/5b99fcbcEbdbf65df/6406f68d6145053a.jpg', '6406f68d6145053a.jpg');
INSERT INTO `iphone` VALUES (13, 'Apple苹果iPhoneX全面屏手机深空灰色全网通64GB', '6098.00', 'images/iphone/5cd939a2Nf0a37fae.jpg', '//img12.360buyimg.com/n7/jfs/t28021/313/1213312898/606385/7b299e8e/5cd939a2Nf0a37fae.png', '5cd939a2Nf0a37fae.jpg');
INSERT INTO `iphone` VALUES (14, 'Apple苹果iPhoneXsMax手机金色全网通256GB', '8958.00', 'images/iphone/5cd66733N5a152223.jpg', '//img12.360buyimg.com/n7/jfs/t30391/84/1094638348/666097/287b9f15/5cd66733N5a152223.png', '5cd66733N5a152223.jpg');
INSERT INTO `iphone` VALUES (15, 'Apple苹果iPhoneXR(A2108)手机黑色全网通128GB', '5458.00', 'images/iphone/607fe0bddd68c51b.jpg', '//img11.360buyimg.com/n7/jfs/t1/18575/19/12386/58399/5c98c793E76d18b10/607fe0bddd68c51b.jpg', '607fe0bddd68c51b.jpg');
INSERT INTO `iphone` VALUES (16, '拍拍【二手95新】AppleiPhoneX256G深空灰色移动联通电信4G苹果X手机', '5799.00', 'images/iphone/59e4279aNff3d63ac.jpg', '//img13.360buyimg.com/n7/jfs/t10690/249/1626659345/69516/b3643998/59e4279aNff3d63ac.jpg', '59e4279aNff3d63ac.jpg');
INSERT INTO `iphone` VALUES (17, 'Apple苹果iPhoneX手机【有白条分期免息版本供选择】深空灰色全网通64G版', '6045.00', 'images/iphone/5a324cd1Nb0e38f30.jpg', '//img12.360buyimg.com/n7/jfs/t12532/90/2141355633/130727/a5f4ef2c/5a324cd1Nb0e38f30.jpg', '5a324cd1Nb0e38f30.jpg');
INSERT INTO `iphone` VALUES (18, 'Apple苹果7iPhone7移动联通电信4G手机玫瑰金全网通32GB', '3148.00', 'images/iphone/58b91531Nf5861d62.jpg', '//img12.360buyimg.com/n7/jfs/t4384/38/805100118/291877/78176a08/58b91531Nf5861d62.jpg', '58b91531Nf5861d62.jpg');
INSERT INTO `iphone` VALUES (19, 'Apple苹果iPhoneX(A1865)手机深空灰色全网通64G', '6046.00', 'images/iphone/662aa5f326d20f75.jpg', '//img13.360buyimg.com/n7/jfs/t1/35905/29/9346/313211/5ccfa175E188b70ae/662aa5f326d20f75.png', '662aa5f326d20f75.jpg');
INSERT INTO `iphone` VALUES (20, 'Apple苹果iPhone7Plus手机黑色全网通32GB', '3498.00', 'images/iphone/378aa70e7c46b63f.jpg', '//img12.360buyimg.com/n7/jfs/t1/43819/4/4714/187603/5cd670dbE5981da9f/378aa70e7c46b63f.png', '378aa70e7c46b63f.jpg');
INSERT INTO `iphone` VALUES (21, 'Apple苹果iPhone6sPlus4G手机玫瑰金全网通128GB', '2848.00', 'images/iphone/cef0df4b28f8522a.jpg', '//img13.360buyimg.com/n7/jfs/t1/38635/4/6964/558623/5cd66f80E04d4a7d4/cef0df4b28f8522a.png', 'cef0df4b28f8522a.jpg');
INSERT INTO `iphone` VALUES (22, 'Apple苹果iPhoneXs手机深空灰色全网通64GB', '7158.00', 'images/iphone/e8a2f3d67479e6ec.jpg', '//img12.360buyimg.com/n7/jfs/t1/48078/23/434/583350/5cd6680eEfc925639/e8a2f3d67479e6ec.png', 'e8a2f3d67479e6ec.jpg');
INSERT INTO `iphone` VALUES (23, '拍拍【二手9成新】苹果7Plus手机AppleiPhone7Plus苹果7P磨砂黑128G全网通', '2699.00', 'images/iphone/259a89190b620fcd.jpg', '//img10.360buyimg.com/n7/jfs/t1/17994/38/10330/121173/5c85c792Effdce91d/259a89190b620fcd.jpg', '259a89190b620fcd.jpg');
INSERT INTO `iphone` VALUES (24, 'Apple苹果iPhone8plus手机深空灰全网通64GB', '4738.00', 'images/iphone/5a091489Nbe8b204d.jpg', '//img12.360buyimg.com/n7/jfs/t7756/217/4386953327/84322/3686a33a/5a091489Nbe8b204d.jpg', '5a091489Nbe8b204d.jpg');
INSERT INTO `iphone` VALUES (25, 'Apple苹果iPhone8Plus手机金色全网通64GB', '4698.00', 'images/iphone/96272b944b70bf60.jpg', '//img10.360buyimg.com/n7/jfs/t1/44465/6/368/310089/5cd66d03Ea8022cd1/96272b944b70bf60.png', '96272b944b70bf60.jpg');
INSERT INTO `iphone` VALUES (26, 'Apple苹果iPhoneXR手机【分期免息0首付买送无线充电器+钢化膜】黑色全网通128GB', '5758.10', 'images/iphone/c23aa7d4c44c81ca.jpg', '//img11.360buyimg.com/n7/jfs/t1/3456/22/3748/75219/5b9a10c2Efb64bee3/c23aa7d4c44c81ca.jpg', 'c23aa7d4c44c81ca.jpg');
INSERT INTO `iphone` VALUES (27, '拍拍【二手9成新】AppleiPhone7苹果74G全网通手机磨砂黑32G全网通', '1499.00', 'images/iphone/21c5c880ca3fb414.jpg', '//img11.360buyimg.com/n7/jfs/t1/32436/9/6024/97667/5c89f68dE2d013f8a/21c5c880ca3fb414.jpg', '21c5c880ca3fb414.jpg');
INSERT INTO `iphone` VALUES (28, '海囤全球Apple苹果iPhoneXs/XsMax（海外版激活有锁）移动联通4G手机赠卡贴IPONE定金64GB美版两网激活有锁', '100.00', 'images/iphone/f396706da2edef3e.jpg', '//img11.360buyimg.com/n7/jfs/t1/35249/9/5572/106115/5cc1570aEa50b7425/f396706da2edef3e.jpg', 'f396706da2edef3e.jpg');
INSERT INTO `iphone` VALUES (29, 'Apple苹果iPhoneXR手机【有白条分期免息版本供选择】白色全网通128G版', '5465.00', 'images/iphone/0d11e682de5a95f0.jpg', '//img13.360buyimg.com/n7/jfs/t1/7054/36/5652/75223/5bdeb96fEe675c7c3/0d11e682de5a95f0.jpg', '0d11e682de5a95f0.jpg');
INSERT INTO `iphone` VALUES (30, '拍拍【二手9成新】AppleiPhoneX苹果X二手手机深空灰色64G全网通', '4228.00', 'images/iphone/135b6a92cb43ab02.jpg', '//img14.360buyimg.com/n7/jfs/t1/44234/38/1131/376425/5cc52611E02eb9538/135b6a92cb43ab02.png', '135b6a92cb43ab02.jpg');

-- ----------------------------
-- Table structure for iphonex
-- ----------------------------
DROP TABLE IF EXISTS `iphonex`;
CREATE TABLE `iphonex`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of iphonex
-- ----------------------------
INSERT INTO `iphonex` VALUES (1, 'AppleiPhoneX(A1865)256GB深空灰色移动联通电信4G手机', '7299.00', 'images/iphonex/59e4279aNff3d63ac.jpg', '//img14.360buyimg.com/n7/jfs/t10690/249/1626659345/69516/b3643998/59e4279aNff3d63ac.jpg', '59e4279aNff3d63ac.jpg');
INSERT INTO `iphonex` VALUES (2, 'Apple苹果iPhoneX全面屏手机深空灰色全网通256GB', '7038.00', 'images/iphonex/5cd939a2Nf0a37fae.jpg', '//img12.360buyimg.com/n7/jfs/t28021/313/1213312898/606385/7b299e8e/5cd939a2Nf0a37fae.png', '5cd939a2Nf0a37fae.jpg');
INSERT INTO `iphonex` VALUES (3, 'Apple苹果iPhoneX【12期白条分期免息0首付】全面屏手机深空灰(全网通256GB)', '7899.00', 'images/iphonex/59f98be7N614babc5.jpg', '//img12.360buyimg.com/n7/jfs/t11005/296/830487470/76503/a26f7740/59f98be7N614babc5.jpg', '59f98be7N614babc5.jpg');
INSERT INTO `iphonex` VALUES (4, 'Apple苹果iPhoneX(A1865)手机深空灰色全网通256G', '7047.02', 'images/iphonex/662aa5f326d20f75.jpg', '//img13.360buyimg.com/n7/jfs/t1/35905/29/9346/313211/5ccfa175E188b70ae/662aa5f326d20f75.png', '662aa5f326d20f75.jpg');
INSERT INTO `iphonex` VALUES (5, '海囤全球AppleiPhoneXS苹果X美版iPhonexs有锁激活电信4G智能手机iPhoneXSMax金色64GB美版电信激活有锁', '5238.00', 'images/iphonex/23de7c608ba33d36.jpg', '//img11.360buyimg.com/n7/jfs/t1/35363/20/7488/150225/5cc7ecf0E9442ef4c/23de7c608ba33d36.jpg', '23de7c608ba33d36.jpg');
INSERT INTO `iphonex` VALUES (6, '【二手95新】AppleiPhoneX苹果X智能二手手机深空灰64G全网通', '4066.00', 'images/iphonex/1951b63ef8580b8c.jpg', '//img10.360buyimg.com/n7/jfs/t1/57754/35/9770/287700/5d70c1b6E567469ea/1951b63ef8580b8c.jpg', '1951b63ef8580b8c.jpg');
INSERT INTO `iphonex` VALUES (7, 'Apple苹果xiPhonex全面屏手机深空灰色全网通256G', '7068.02', 'images/iphonex/5a04172aN29f845bf.jpg', '//img14.360buyimg.com/n7/jfs/t12352/88/127708421/67468/90baaf73/5a04172aN29f845bf.jpg', '5a04172aN29f845bf.jpg');
INSERT INTO `iphonex` VALUES (8, 'Apple苹果iPhoneX手机【苹果大调价，欲购从速】深空灰色全网通256G版', '7019.02', 'images/iphonex/5a324cd1Nb0e38f30.jpg', '//img12.360buyimg.com/n7/jfs/t12532/90/2141355633/130727/a5f4ef2c/5a324cd1Nb0e38f30.jpg', '5a324cd1Nb0e38f30.jpg');
INSERT INTO `iphonex` VALUES (9, 'Apple苹果iPhoneX（A1865）手机全面屏全网通4G智能手机银色全网通256G', '7188.00', 'images/iphonex/5a700936N5085a254.jpg', '//img12.360buyimg.com/n7/jfs/t14299/210/2153616405/71608/94425578/5a700936N5085a254.jpg', '5a700936N5085a254.jpg');
INSERT INTO `iphonex` VALUES (10, 'Appleiphonex苹果X(A1865)全网通4G手机支持无线充电全国联保银色256GB', '7988.00', 'images/iphonex/f6627df06c448a55.jpg', '//img13.360buyimg.com/n7/jfs/t1/48897/36/1245/426422/5cefee1cE6d3a34a7/f6627df06c448a55.png', 'f6627df06c448a55.jpg');
INSERT INTO `iphonex` VALUES (11, 'APPLE苹果iPhoneX全面屏手机全网通版深空灰色256GB', '7068.00', 'images/iphonex/5aa2529dNfbd94f28.jpg', '//img11.360buyimg.com/n7/jfs/t16414/69/2305084863/246557/dcc015f9/5aa2529dNfbd94f28.jpg', '5aa2529dNfbd94f28.jpg');
INSERT INTO `iphonex` VALUES (12, '【二手9成新】AppleiPhoneX苹果x二手手机（送一年碎屏险）深空灰64G全网通', '4088.00', 'images/iphonex/87ab88df06a4f7ef.jpg', '//img13.360buyimg.com/n7/jfs/t1/37555/29/11843/614756/5d05b60bEd91ad8dd/87ab88df06a4f7ef.png', '87ab88df06a4f7ef.jpg');
INSERT INTO `iphonex` VALUES (13, 'Apple苹果XiPhoneX全面屏手机全网通深空灰全网通256G', '7359.00', 'images/iphonex/59f810f7N8f4c607e.jpg', '//img14.360buyimg.com/n7/jfs/t11575/271/776230868/218031/a2e1d4e0/59f810f7N8f4c607e.jpg', '59f810f7N8f4c607e.jpg');
INSERT INTO `iphonex` VALUES (14, '【联系客服有优惠】Apple苹果iphoneX手机深空灰64G官方标配', '6999.00', 'images/iphonex/59fd6103N60eba22a.jpg', '//img13.360buyimg.com/n7/jfs/t7492/201/4125484197/76503/a26f7740/59fd6103N60eba22a.jpg', '59fd6103N60eba22a.jpg');
INSERT INTO `iphonex` VALUES (15, '拍拍【二手9成新】AppleiPhoneX苹果X二手手机深空灰色64G全网通', '3986.00', 'images/iphonex/9ff5de1aed4cea83.jpg', '//img14.360buyimg.com/n7/jfs/t1/61329/3/9576/85447/5d733fedE31dc57e9/9ff5de1aed4cea83.jpg', '9ff5de1aed4cea83.jpg');
INSERT INTO `iphonex` VALUES (16, '拍拍【二手9成新】AppleiPhoneX苹果x国行全网通二手手机X灰色64G全网通', '4078.00', 'images/iphonex/7484bff4d125e5e7.jpg', '//img10.360buyimg.com/n7/jfs/t1/42577/35/13911/171709/5d6f9f9dE169ef553/7484bff4d125e5e7.jpg', '7484bff4d125e5e7.jpg');
INSERT INTO `iphonex` VALUES (17, '拍拍【二手9成新】AppleiPhoneX苹果X二手苹果x手机深空灰64G全网通', '3996.00', 'images/iphonex/17bcd91e80415d21.jpg', '//img11.360buyimg.com/n7/jfs/t1/56697/20/4789/358628/5d282622E60d7adf5/17bcd91e80415d21.png', '17bcd91e80415d21.jpg');
INSERT INTO `iphonex` VALUES (18, '【二手95新】AppleiPhoneX苹果X二手手机银色64G全网通', '4100.00', 'images/iphonex/80ef21a3b00b1344.jpg', '//img13.360buyimg.com/n7/jfs/t1/41819/7/13968/270809/5d70c1baEebf6fa34/80ef21a3b00b1344.jpg', '80ef21a3b00b1344.jpg');
INSERT INTO `iphonex` VALUES (19, '拍拍【二手9成新】AppleiPhoneX苹果X二手手机银白色256G全网通', '4789.00', 'images/iphonex/fe3431197f86d58d.jpg', '//img10.360buyimg.com/n7/jfs/t1/48604/27/9422/113849/5d6e1647E6fffb7a2/fe3431197f86d58d.jpg', 'fe3431197f86d58d.jpg');
INSERT INTO `iphonex` VALUES (20, '拍拍【二手95新】AppleiPhonexXSmax苹果xxsmax国行二手手机XSmax金色64G全网通', '6088.00', 'images/iphonex/4960ceb7e614989f.jpg', '//img10.360buyimg.com/n7/jfs/t1/47016/22/9665/180623/5d6f9f46Ea5b78a15/4960ceb7e614989f.jpg', '4960ceb7e614989f.jpg');
INSERT INTO `iphonex` VALUES (21, '拍拍【二手95新】AppleiPhoneX苹果x国行全网通二手手机X灰色64G全网通『赠全新原装未拆苹果充电器』', '4366.00', 'images/iphonex/67678a03d22ec232.jpg', '//img14.360buyimg.com/n7/jfs/t1/47421/22/9292/166329/5d694728E2ab43f0e/67678a03d22ec232.jpg', '67678a03d22ec232.jpg');
INSERT INTO `iphonex` VALUES (22, '拍拍【二手95新】AppleiPhoneX苹果X手机银白色256G全网通', '5059.00', 'images/iphonex/b03742ad06fe0ee3.jpg', '//img11.360buyimg.com/n7/jfs/t1/59361/35/8658/230700/5d6939daEdf9b634c/b03742ad06fe0ee3.jpg', 'b03742ad06fe0ee3.jpg');
INSERT INTO `iphonex` VALUES (23, '拍拍【二手99新】AppleiPhoneX苹果X手机银白色256G全网通', '5369.00', 'images/iphonex/14502de94b9420e4.jpg', '//img11.360buyimg.com/n7/jfs/t1/76752/34/8772/230805/5d6939dfE90deb25a/14502de94b9420e4.jpg', '14502de94b9420e4.jpg');
INSERT INTO `iphonex` VALUES (24, '【二手99新】AppleiPhoneX苹果X手机深灰色64G全网通', '4699.00', 'images/iphonex/fff56c43e65fb6b7.jpg', '//img12.360buyimg.com/n7/jfs/t1/82428/31/8696/205096/5d6939e1Ee3d732be/fff56c43e65fb6b7.jpg', 'fff56c43e65fb6b7.jpg');
INSERT INTO `iphonex` VALUES (25, '拍拍【二手95新】AppleiPhoneXXs苹果Xxs国行二手手机X黑色64G全网通', '4066.00', 'images/iphonex/74059c64adc5f141.jpg', '//img13.360buyimg.com/n7/jfs/t1/61157/8/9332/299118/5d70c1b6E5f6a398e/74059c64adc5f141.jpg', '74059c64adc5f141.jpg');
INSERT INTO `iphonex` VALUES (26, '拍拍【二手9成新】AppleiPhoneX苹果X全网通二手手机深空灰64G', '4099.00', 'images/iphonex/9d799a693bf31f89.jpg', '//img13.360buyimg.com/n7/jfs/t1/53681/19/9498/105507/5d6ccdf3E47602e5d/9d799a693bf31f89.jpg', '9d799a693bf31f89.jpg');
INSERT INTO `iphonex` VALUES (27, '拍拍【二手95新】AppleiPhoneXXR苹果xr国行全网通双卡双待二手手机黑色64G全网通', '4199.00', 'images/iphonex/ff7431798d16342e.jpg', '//img13.360buyimg.com/n7/jfs/t1/70161/1/8748/149340/5d69474eE35b35d41/ff7431798d16342e.jpg', 'ff7431798d16342e.jpg');
INSERT INTO `iphonex` VALUES (28, '拍拍【二手9成新】AppleiPhoneX苹果X二手手机全网通深空灰64G', '4026.00', 'images/iphonex/5b8d20bbN249af185.jpg', '//img12.360buyimg.com/n7/jfs/t26437/251/284926806/266564/3fb661c3/5b8d20bbN249af185.png', '5b8d20bbN249af185.jpg');
INSERT INTO `iphonex` VALUES (29, '拍拍【二手95新】AppleiPhoneX苹果x5.8英寸高清全面屏智能拍照游戏二手手机深空灰64G全网通+蓝牙耳机', '4488.00', 'images/iphonex/5b8b7f69Nd5220241.jpg', '//img11.360buyimg.com/n7/jfs/t26710/60/240637236/239513/40d4db34/5b8b7f69Nd5220241.jpg', '5b8b7f69Nd5220241.jpg');
INSERT INTO `iphonex` VALUES (30, '【二手9成新】AppleiPhoneX苹果X二手手机白色64G全网通', '4159.00', 'images/iphonex/074e71e1a042a8fc.jpg', '//img14.360buyimg.com/n7/jfs/t1/65357/30/6888/53517/5d514424Ee813f00d/074e71e1a042a8fc.jpg', '074e71e1a042a8fc.jpg');

-- ----------------------------
-- Table structure for jiadian
-- ----------------------------
DROP TABLE IF EXISTS `jiadian`;
CREATE TABLE `jiadian`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiadian
-- ----------------------------
INSERT INTO `jiadian` VALUES (1, '海信(Hisense)321升多门四门电冰箱一级能效智能WiFi双变频风冷无霜家用节能BCD-321WTVBPI/Q', '2899.00', 'images/家电/98246896fa7790cd.jpg', '//img12.360buyimg.com/n7/jfs/t1/32652/12/11633/37180/5cb5a403Ee16d5344/98246896fa7790cd.jpg', '98246896fa7790cd.jpg');
INSERT INTO `jiadian` VALUES (2, '美的（Midea）M1-L213C快捷微波炉微电脑操控360°转盘加热智能蒸煮菜单21升', '369.00', 'images/家电/03a290bb867948cb.jpg', '//img11.360buyimg.com/n7/jfs/t1/19564/9/10782/138700/5c89d43bEd6a819af/03a290bb867948cb.jpg', '03a290bb867948cb.jpg');
INSERT INTO `jiadian` VALUES (3, '奥克斯（AUX）正1.5匹冷暖变频制冷家电壁挂式空调挂机(KFR-35GW/BpNFW+3）', '1999.00', 'images/家电/0d8e8b1c31a4976c.jpg', '//img12.360buyimg.com/n7/jfs/t1/30846/29/13171/140010/5cb9824cEc9a624ce/0d8e8b1c31a4976c.jpg', '0d8e8b1c31a4976c.jpg');
INSERT INTO `jiadian` VALUES (4, '西门子（SIEMENS）610升变频风冷无霜对开门冰箱速冷速冻（白色）BCD-610W(KA92NV02TI)', '5499.00', 'images/家电/e7cbc1fd0aef357e.jpg', '//img14.360buyimg.com/n7/jfs/t1/32027/14/11588/92926/5cb54d0cE8d5bf298/e7cbc1fd0aef357e.jpg', 'e7cbc1fd0aef357e.jpg');
INSERT INTO `jiadian` VALUES (5, '奥克斯（AUX）正1.5匹冷暖定速制冷家电壁挂式空调挂机(KFR-35GW/NFW+3）', '1799.00', 'images/家电/0596b3b8839645b5.jpg', '//img14.360buyimg.com/n7/jfs/t1/36879/3/3739/140010/5cb98199Ec7417826/0596b3b8839645b5.jpg', '0596b3b8839645b5.jpg');
INSERT INTO `jiadian` VALUES (6, '美的（Midea）M1-L213B快捷微波炉360°转盘加热旋钮操控精准控温五档火力21升', '339.00', 'images/家电/5b56ddcaNfa469fcd.jpg', '//img13.360buyimg.com/n7/jfs/t20503/186/2458533163/101960/71fcfe06/5b56ddcaNfa469fcd.jpg', '5b56ddcaNfa469fcd.jpg');
INSERT INTO `jiadian` VALUES (7, '美的（Midea）3匹无风感一级能效舒适星变频冷暖客厅圆柱空调柜机臻品空调KFR-72LW/WYSN8A1@', '8999.00', 'images/家电/7bc6548211fdf985.jpg', '//img10.360buyimg.com/n7/jfs/t1/36611/33/9301/85657/5ccf8d63Ee5d58521/7bc6548211fdf985.jpg', '7bc6548211fdf985.jpg');
INSERT INTO `jiadian` VALUES (8, '奥克斯（AUX）正1匹冷暖定频制冷家电卧室壁挂式空调挂机(KFR-25GW/NFW+3)', '1599.00', 'images/家电/81b8d85abafc920f.jpg', '//img11.360buyimg.com/n7/jfs/t1/33445/7/5105/140010/5cb98168Eaf51ccdd/81b8d85abafc920f.jpg', '81b8d85abafc920f.jpg');
INSERT INTO `jiadian` VALUES (9, '美的（Midea）M1-L201B升级款变频微波炉光波烧烤电烤箱一体机智能解冻20升', '499.00', 'images/家电/f2ed90ec7bcf8fa1.jpg', '//img13.360buyimg.com/n7/jfs/t1/15554/11/15501/108136/5cb06b8fE9e2cfa2e/f2ed90ec7bcf8fa1.jpg', 'f2ed90ec7bcf8fa1.jpg');
INSERT INTO `jiadian` VALUES (10, '美的（Midea）M1-L202B快捷微波炉平板加热一键启动多角度反射内胆20升', '399.00', 'images/家电/5b612168N48f12376.jpg', '//img14.360buyimg.com/n7/jfs/t22195/146/2687923032/107217/ed58f7b1/5b612168N48f12376.jpg', '5b612168N48f12376.jpg');
INSERT INTO `jiadian` VALUES (11, 'TCL空调大1匹定频冷暖快速制冷壁挂式空调卧室家用家电卧室空调挂机(KFRd-26GW/XS11(3))', '1599.00', 'images/家电/3e3b7c22f969aed0.jpg', '//img14.360buyimg.com/n7/jfs/t1/19993/14/12661/31989/5c999bbfE4ec7bc4d/3e3b7c22f969aed0.jpg', '3e3b7c22f969aed0.jpg');
INSERT INTO `jiadian` VALUES (12, 'TCL55L255英寸高画质4K超高清HDR智能网络液晶电视机丰富影视教育资源自营家电（黑色）', '1999.00', 'images/家电/ebe8f2a1bf1ea3fa.jpg', '//img13.360buyimg.com/n7/jfs/t1/4602/5/12375/124089/5bd2a343Ebd5ea73e/ebe8f2a1bf1ea3fa.jpg', 'ebe8f2a1bf1ea3fa.jpg');
INSERT INTO `jiadian` VALUES (13, '美的（Midea）3匹FUN星一级能效变频冷暖立柜式智能WiFi客厅圆柱空调柜机KFR-72LW/WYEN8A1@', '6999.00', 'images/家电/cf9c0bac0cbd59cb.jpg', '//img10.360buyimg.com/n7/jfs/t1/35932/31/10041/60964/5cd3fa3fE664f8dc8/cf9c0bac0cbd59cb.jpg', 'cf9c0bac0cbd59cb.jpg');
INSERT INTO `jiadian` VALUES (14, '美的（Midea）EM7KCGW3-NR快捷微波炉微电脑操控平板加热智能蒸煮菜单20升', '439.00', 'images/家电/5b56e0dcN71eca627.jpg', '//img14.360buyimg.com/n7/jfs/t20137/214/2445323445/191783/8deb8491/5b56e0dcN71eca627.jpg', '5b56e0dcN71eca627.jpg');
INSERT INTO `jiadian` VALUES (15, '奥克斯（AUX）大1匹变频冷暖家电壁挂式空调挂机(KFR-26GW/BpNFW+3)', '1899.00', 'images/家电/481a642e2fb270ff.jpg', '//img11.360buyimg.com/n7/jfs/t1/35985/36/3835/140010/5cb981edEc4d58211/481a642e2fb270ff.jpg', '481a642e2fb270ff.jpg');
INSERT INTO `jiadian` VALUES (16, '扬子（YAIR）大1匹冷暖定频除湿静音强劲冷暖家电挂机壁挂式空调挂机KFRd-26GW/080-E3', '1399.00', 'images/家电/64dda783267dfe8a.jpg', '//img10.360buyimg.com/n7/jfs/t1/27285/27/13223/98436/5c9dd72dEfa71f13b/64dda783267dfe8a.jpg', '64dda783267dfe8a.jpg');
INSERT INTO `jiadian` VALUES (17, 'TCL50L250英寸高画质4K超高清HDR智能网络液晶电视机丰富影视教育资源自营家电（黑色）', '1799.00', 'images/家电/0765306fd07e5f44.jpg', '//img12.360buyimg.com/n7/jfs/t1/6296/31/2861/124198/5bd2a383Eb0dfbe43/0765306fd07e5f44.jpg', '0765306fd07e5f44.jpg');
INSERT INTO `jiadian` VALUES (18, '扬子（YAIR）1匹冷暖定频除湿静音强劲冷暖家电挂机壁挂式空调挂机KFRd-23GW/080-E3', '1369.00', 'images/家电/248b37546aeb86cb.jpg', '//img10.360buyimg.com/n7/jfs/t1/31036/17/8243/98436/5c9dd6c7Ee5f24876/248b37546aeb86cb.jpg', '248b37546aeb86cb.jpg');
INSERT INTO `jiadian` VALUES (19, '扬子（YAIR）大2匹定频冷暖商居两用客厅柜机家电立体送风除湿立式空调柜机KFRd-52LW/54DF1-E3', '2499.00', 'images/家电/c397dde423c66747.jpg', '//img12.360buyimg.com/n7/jfs/t1/24223/21/10306/62212/5c85d3a2E7765fced/c397dde423c66747.jpg', 'c397dde423c66747.jpg');
INSERT INTO `jiadian` VALUES (20, 'TCL空调1.5匹定频冷暖快速制冷壁挂式空调卧室家用家电空调挂机(KFRd-35GW/XS11(3))', '1849.00', 'images/家电/61a598972b1a22df.jpg', '//img12.360buyimg.com/n7/jfs/t1/17610/31/12509/31989/5c999bd7E69452edd/61a598972b1a22df.jpg', '61a598972b1a22df.jpg');
INSERT INTO `jiadian` VALUES (21, '扬子（YAIR）1.5匹冷暖定频除湿静音强劲冷暖家电挂机壁挂式空调挂机KFRd-35GW/080-E3', '1599.00', 'images/家电/959ff9385748eeee.jpg', '//img11.360buyimg.com/n7/jfs/t1/24397/15/13153/98436/5c9dd9f9E2e12a8fb/959ff9385748eeee.jpg', '959ff9385748eeee.jpg');
INSERT INTO `jiadian` VALUES (22, 'TCL55A950C55英寸32核人工智能HDR曲面超薄4K超高清液晶电视金属机身自营家电（枪色）', '2799.00', 'images/家电/901a8006b016e5f2.jpg', '//img11.360buyimg.com/n7/jfs/t1/4845/14/12382/122335/5bd2a519E577973f7/901a8006b016e5f2.jpg', '901a8006b016e5f2.jpg');
INSERT INTO `jiadian` VALUES (23, '京品家电创维（SKYWORTH）55H655英寸4K超高清HDR超薄全面屏2+32G人工智能语音智能物联液晶电视机家电', '3199.00', 'images/家电/3f825b09e4a29910.jpg', '//img11.360buyimg.com/n7/jfs/t1/36598/26/2056/326234/5cb5314cE854116a2/3f825b09e4a29910.jpg', '3f825b09e4a29910.jpg');
INSERT INTO `jiadian` VALUES (24, '西门子（SIEMENS）8公斤变频全自动滚筒洗衣机isensoric智感筒清洁（白色）XQG80-WM12N1600W', '3299.00', 'images/家电/b66ae922b69a1da4.jpg', '//img13.360buyimg.com/n7/jfs/t1/34647/35/5212/192875/5cbeba98Ee5c455f0/b66ae922b69a1da4.jpg', 'b66ae922b69a1da4.jpg');
INSERT INTO `jiadian` VALUES (25, '美的（Midea）258升冰箱三门风冷无霜电脑控温电冰箱阳光米BCD-258WTM(E)', '2199.00', 'images/家电/5cdcc0a1Neb5d2969.jpg', '//img14.360buyimg.com/n7/jfs/t10354/259/2913072887/51629/738afcca/5cdcc0a1Neb5d2969.jpg', '5cdcc0a1Neb5d2969.jpg');
INSERT INTO `jiadian` VALUES (26, '美的（Midea）X3-233A变频微波炉光波烧烤电烤箱一体机智能湿度感应23升', '699.00', 'images/家电/ae53e5048069a0e7.jpg', '//img11.360buyimg.com/n7/jfs/t1/14552/20/2159/89735/5c19e104Ebeede9de/ae53e5048069a0e7.jpg', 'ae53e5048069a0e7.jpg');
INSERT INTO `jiadian` VALUES (27, 'TCL55L68055英寸高画质4K超高清HDR防蓝光智能液晶电视机丰富影视资源自营家电（黑色）', '1898.00', 'images/家电/161d886307286bd1.jpg', '//img11.360buyimg.com/n7/jfs/t1/20964/8/12901/238534/5c9c24c3E8d213134/161d886307286bd1.jpg', '161d886307286bd1.jpg');
INSERT INTO `jiadian` VALUES (28, 'TCL55A860U55英寸32核人工智能AI超智慧7.9mm超薄4K超高清液晶电视机自营家电（银色）', '2599.00', 'images/家电/a6faae3a9063ea5a.jpg', '//img11.360buyimg.com/n7/jfs/t1/9416/27/2485/88253/5bd2a479Efe93095b/a6faae3a9063ea5a.jpg', 'a6faae3a9063ea5a.jpg');
INSERT INTO `jiadian` VALUES (29, 'TCL65L265英寸高画质4K超高清HDR智能网络液晶电视机丰富影视教育资源自营家电（黑色）', '3199.00', 'images/家电/e28084197d94a2aa.jpg', '//img12.360buyimg.com/n7/jfs/t1/5548/31/12300/124291/5bd2a3b4E252d6c17/e28084197d94a2aa.jpg', 'e28084197d94a2aa.jpg');
INSERT INTO `jiadian` VALUES (30, '扬子（YAIR）大3匹定频冷暖商居两用客厅柜机家电立体送风除湿立式空调柜机KFRd-72LW/54DF1-E3', '3699.00', 'images/家电/6295843101b53002.jpg', '//img13.360buyimg.com/n7/jfs/t1/23583/14/2687/59318/5c20b567E425cb9ab/6295843101b53002.jpg', '6295843101b53002.jpg');

-- ----------------------------
-- Table structure for jiaju
-- ----------------------------
DROP TABLE IF EXISTS `jiaju`;
CREATE TABLE `jiaju`  (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `imageName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `imageUrl` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiaju
-- ----------------------------
INSERT INTO `jiaju` VALUES (1, '中庸（ZhongYong）新中式原创实木简约新明式北美黑胡桃泰然沙发系列客厅组合北美黑胡桃3+2+圈椅3件套+2角几+茶几', '49350.00', 'images/家具/9c85aa2270df8722.jpg', '//img11.360buyimg.com/n7/jfs/t1/34752/8/7477/121927/5cc7d86bE13e80727/9c85aa2270df8722.jpg', '9c85aa2270df8722.jpg');
INSERT INTO `jiaju` VALUES (2, '紫桐沙发真皮沙发头层牛皮现代简约转角小户型多功能沙发北欧式懒人实木沙发双人沙发客厅整装组合家具【中厚皮】双+单+贵', '3999.00', 'images/家具/42d3efae32a0bada.jpg', '//img10.360buyimg.com/n7/jfs/t1/91185/34/6760/266649/5df5acd3E4078ccb1/42d3efae32a0bada.jpg', '42d3efae32a0bada.jpg');
INSERT INTO `jiaju` VALUES (3, '众淘电视柜茶几组合简约现代客厅家用小户型电视机伸缩地柜1.2M-2M可伸缩', '189.00', 'images/家具/fd2d44f84840d6e8.jpg', '//img14.360buyimg.com/n7/jfs/t1/87541/32/6388/147046/5df332e0E3364b115/fd2d44f84840d6e8.jpg', 'fd2d44f84840d6e8.jpg');
INSERT INTO `jiaju` VALUES (4, '（直降）全友家居电视柜茶几组合套装简约北欧小户型客厅家具石材台面边几120709茶几+电视柜', '2899.00', 'images/家具/74c03e27846416c8.jpg', '//img13.360buyimg.com/n7/jfs/t1/102069/26/7079/234586/5df73036E8d8196fa/74c03e27846416c8.jpg', '74c03e27846416c8.jpg');
INSERT INTO `jiaju` VALUES (5, '芝华仕真皮沙发头等舱沙发单人懒人沙发椅小户型客厅K167象牙色', '1899.00 1849.00', 'images/家具/7c18bd6a7a0bc73b.jpg', '//img10.360buyimg.com/n7/jfs/t1/35834/13/2707/342701/5cb6cb57Ea50b48e8/7c18bd6a7a0bc73b.jpg', '7c18bd6a7a0bc73b.jpg');
INSERT INTO `jiaju` VALUES (6, '北欧沙发布艺实木沙发组合现代简约客厅整装小户型转角沙发精品家具1+2+贵妃(备注左右贵妃)优质透气可拆洗棉麻+全实木框架+高回弹海绵', '3370.00', 'images/家具/2d37fb825e2e8c25.jpg', '//img14.360buyimg.com/n7/jfs/t1/90368/5/6750/196003/5df6fc48E6c46c6bf/2d37fb825e2e8c25.jpg', '2d37fb825e2e8c25.jpg');
INSERT INTO `jiaju` VALUES (7, '【库存告急，详询客服】木月床北欧简约双人床高箱储物床布艺软靠床婚床雅致【木纹灰色】高箱床1.5*2.0米', '1599.00', 'images/家具/eae4a5f5790ab830.jpg', '//img10.360buyimg.com/n7/jfs/t1/14496/38/14735/191969/5ca9ec19E75214c95/eae4a5f5790ab830.jpg', 'eae4a5f5790ab830.jpg');
INSERT INTO `jiaju` VALUES (8, '亲友北欧布艺沙发组合现代简约大小户型乳胶可拆洗布艺沙发客厅整装家具三人位【送4个布凳】旗舰海绵座包【颜色备注】', '1580.00', 'images/家具/98e103f79496ed95.jpg', '//img12.360buyimg.com/n7/jfs/t1/109554/40/774/227566/5df7a7c6E207167db/98e103f79496ed95.jpg', '98e103f79496ed95.jpg');
INSERT INTO `jiaju` VALUES (9, '家具卡其色/防水绒布【全布艺】免洗面料旗舰版二件套【冲孔透气海绵座包】', '1839.00', 'images/家具/5fd7c86eff0eff7d.jpg', '//img12.360buyimg.com/n7/jfs/t1/97905/18/6404/259115/5df3319dEa3a7c212/5fd7c86eff0eff7d.jpg', '5fd7c86eff0eff7d.jpg');
INSERT INTO `jiaju` VALUES (10, '全友家居现代简约衣柜卧室家具住宅家具四门/五门大衣柜106302四门衣柜', '1399.00', 'images/家具/02d5b8c7964eaceb.jpg', '//img13.360buyimg.com/n7/jfs/t1/96520/14/6977/180768/5df72e3aEf4df8a10/02d5b8c7964eaceb.jpg', '02d5b8c7964eaceb.jpg');
INSERT INTO `jiaju` VALUES (11, '大小户型实木框架皮布沙发组合客厅家具三人位+脚踏2.1米【备注颜色】旗舰版【海绵座包/进口松】透气绒布', '1999.00', 'images/家具/ed7da10841224c01.jpg', '//img12.360buyimg.com/n7/jfs/t1/108294/1/132/281112/5df2f4b2E4615a96e/ed7da10841224c01.jpg', 'ed7da10841224c01.jpg');
INSERT INTO `jiaju` VALUES (12, '作木坊沙发实木沙发沙发客厅整装布艺沙发白蜡木新中式客厅沙发家具组合S1620单人位无扶手进口白蜡木', '1990.00', 'images/家具/b30fe0662c3ce5db.jpg', '//img11.360buyimg.com/n7/jfs/t1/91214/15/6322/275261/5df2e709E0e59cf5a/b30fe0662c3ce5db.jpg', 'b30fe0662c3ce5db.jpg');
INSERT INTO `jiaju` VALUES (13, '索菲奈沙发皮沙发真皮沙发头层牛皮家用沙发客厅四人位沙发直排客厅沙发小户型2+1+左贵（带五金）+茶几', '11260.00', 'images/家具/e8efefaf06819c67.jpg', '//img14.360buyimg.com/n7/jfs/t1/96131/39/4335/269487/5de61570E28ad24e9/e8efefaf06819c67.jpg', 'e8efefaf06819c67.jpg');
INSERT INTO `jiaju` VALUES (14, '温斯丹尼床布艺床北欧床现代简约实木双人床高箱储物床卧室家具婚床全拆洗床1.8M2109单床(进口仿羊绒棉麻面料)1800*2000(框架款标准版)', '2030.00', 'images/家具/6abbb5673b4e6ebb.jpg', '//img11.360buyimg.com/n7/jfs/t1/105916/23/7200/440312/5dfa06c4Eec6127b7/6abbb5673b4e6ebb.jpg', '6abbb5673b4e6ebb.jpg');
INSERT INTO `jiaju` VALUES (15, '【秒杀直降1649】中派床卧室双人真皮床1.8*2.0标准床+床垫+床头柜1个', '2350.00', 'images/家具/be8417c2660b63f9.jpg', '//img11.360buyimg.com/n7/jfs/t1/87889/8/7318/193595/5dfad882Eeaadeedf/be8417c2660b63f9.jpg', 'be8417c2660b63f9.jpg');
INSERT INTO `jiaju` VALUES (16, '温斯丹尼火烧石实木餐桌椅北欧现代简约小户型大理石餐桌椅组合6207胡桃色+牛角椅（火烧石）一桌四椅（1.3M)', '2590.00', 'images/家具/ce27803c115c9bbe.jpg', '//img10.360buyimg.com/n7/jfs/t1/98910/24/7271/543274/5dfa06c5E26257aa7/ce27803c115c9bbe.jpg', 'ce27803c115c9bbe.jpg');
INSERT INTO `jiaju` VALUES (17, '【直播秒杀直降1319】中派沙发可拆洗客厅布艺沙发组合颜色双人+单人+贵妃', '1999.00', 'images/家具/2141e516185c1bad.jpg', '//img12.360buyimg.com/n7/jfs/t1/106863/33/7395/213502/5dfad72aEc7bdc05a/2141e516185c1bad.jpg', '2141e516185c1bad.jpg');
INSERT INTO `jiaju` VALUES (18, '亲友布艺沙发组合套装现代简约客厅整装家具大小户型可拆洗乳胶功能布沙发三人位【送两个布凳】旗舰海绵座包【颜色备注】', '965.00', 'images/家具/c9b23fa60512e998.jpg', '//img10.360buyimg.com/n7/jfs/t1/107363/39/1020/180663/5df9f977E689ec1e5/c9b23fa60512e998.jpg', 'c9b23fa60512e998.jpg');
INSERT INTO `jiaju` VALUES (19, '【秒杀】华日沙发实木沙发布艺沙发组合沙发金秋一品胡桃色中式家具单人位', '4399.00', 'images/家具/161d0badc7413b27.jpg', '//img14.360buyimg.com/n7/jfs/t1/95301/3/6861/163504/5df6f6caE56a728af/161d0badc7413b27.jpg', '161d0badc7413b27.jpg');
INSERT INTO `jiaju` VALUES (20, '上林春天实木餐桌可伸缩折叠实木餐桌椅组合大理石餐桌餐椅套装圆形饭桌子钢化玻璃餐桌餐厅家具胡桃色1.35（钢化玻璃桌面））一桌六椅', '1780.00', 'images/家具/83aed4707d223546.jpg', '//img14.360buyimg.com/n7/jfs/t1/110285/37/432/291137/5df50a70Ef7922700/83aed4707d223546.jpg', '83aed4707d223546.jpg');
INSERT INTO `jiaju` VALUES (21, '全友茶几电视柜组合套装现代简约客厅家具全友家居小户型茶几电视柜可伸缩电视柜120358茶几+电视柜', '2699.00', 'images/家具/2a1deef1670959b0.jpg', '//img14.360buyimg.com/n7/jfs/t1/99419/17/6929/290925/5df730ccE896040fb/2a1deef1670959b0.jpg', '2a1deef1670959b0.jpg');
INSERT INTO `jiaju` VALUES (22, '亲友床北欧真皮床1.8米现代简约主卧室双人床软床婚床大小户型榻榻米储物家具真皮床1.8米框架结构【颜色备注】', '1866.00', 'images/家具/661ac6d804e5815d.jpg', '//img13.360buyimg.com/n7/jfs/t1/92849/39/6980/174390/5df7a8fdE52111533/661ac6d804e5815d.jpg', '661ac6d804e5815d.jpg');
INSERT INTO `jiaju` VALUES (23, '诗帝格（SHIDIGE）沙发免洗科技布艺沙发大户型U型贵妃组合实木框架现代简约客厅家具标准版【进口松/海绵座包】绒布-备注颜色三人位+脚踏2.1米', '1980.00', 'images/家具/db814856070519ec.jpg', '//img10.360buyimg.com/n7/jfs/t1/85750/29/6180/277137/5df2ea5eEf6210d3b/db814856070519ec.jpg', 'db814856070519ec.jpg');
INSERT INTO `jiaju` VALUES (24, '全屋家具套装组合脚踏【定制/代拍】【进口白蜡木+全拆洗座包+整块透气海绵】', '2299.00', 'images/家具/b85885e251a5c284.jpg', '//img12.360buyimg.com/n7/jfs/t1/104095/21/7032/249371/5df896dbEcfcc4a52/b85885e251a5c284.jpg', 'b85885e251a5c284.jpg');
INSERT INTO `jiaju` VALUES (25, '全实木沙发客厅整装现代中式胡桃木沙发布艺组合贵妃转角客厅家具', '8890.00', 'images/家具/a422bed24f486704.jpg', '//img12.360buyimg.com/n7/jfs/t1/51305/36/16123/455854/5dd4e574Efb3ec6a4/a422bed24f486704.jpg', 'a422bed24f486704.jpg');
INSERT INTO `jiaju` VALUES (26, '南宜（nanyi）床全实木床新中式床1.8米1.5m双人婚床高箱储物床卧室家具【普通款】实木床1.8*2.0米（颜色备注）', '1399.00', 'images/家具/123002b0db2fd214.jpg', '//img14.360buyimg.com/n7/jfs/t1/104550/25/4253/222589/5de6179cE5aee0bf8/123002b0db2fd214.jpg', '123002b0db2fd214.jpg');
INSERT INTO `jiaju` VALUES (27, '华生缘沙发布艺沙发现代简约客厅多功能可拆洗布艺小户型沙发组合休闲转角沙发布沙发客厅整装客厅家具海绵款三人位', '1499.00', 'images/家具/bb1a56dcee521c9d.jpg', '//img13.360buyimg.com/n7/jfs/t1/99157/2/5995/349681/5df5b9a0Ed3845ade/bb1a56dcee521c9d.jpg', 'bb1a56dcee521c9d.jpg');
INSERT INTO `jiaju` VALUES (28, '新中式北欧客厅家具全屋套装组合单人位+四人位+脚踏【可定制颜色】【进口白蜡木+全拆洗座包+整块透气海绵】', '14299.00', 'images/家具/5f761fac68984cf8.jpg', '//img10.360buyimg.com/n7/jfs/t1/108368/5/854/219014/5df897ceE3c82aa33/5f761fac68984cf8.jpg', '5f761fac68984cf8.jpg');
INSERT INTO `jiaju` VALUES (29, '宣梵简约现代布艺沙发组合套装大小户型可拆洗乳胶功能布沙发客厅整装家具三人位【赠送两个布凳】旗舰版海绵座包【颜色备注】', '1499.00', 'images/家具/13465826f05f683a.jpg', '//img10.360buyimg.com/n7/jfs/t1/93912/1/7020/173367/5df83dbcEbc9a25cf/13465826f05f683a.jpg', '13465826f05f683a.jpg');
INSERT INTO `jiaju` VALUES (30, '【秒杀直降】中派沙发现代布艺沙发可拆洗客厅沙发组合六件套【送4凳子】', '2999.00', 'images/家具/b47ae8ab0b8d240f.jpg', '//img14.360buyimg.com/n7/jfs/t1/89655/34/6302/255069/5df2658fEb8f77949/b47ae8ab0b8d240f.jpg', 'b47ae8ab0b8d240f.jpg');
INSERT INTO `jiaju` VALUES (31, '【库存告急，详询客服】木月床北欧简约双人床高箱储物床布艺软靠床婚床雅致【木纹灰色】高箱床1.5*2.0米', '1599.00', 'images/家具/eae4a5f5790ab830.jpg', '//img10.360buyimg.com/n7/jfs/t1/14496/38/14735/191969/5ca9ec19E75214c95/eae4a5f5790ab830.jpg', 'eae4a5f5790ab830.jpg');
INSERT INTO `jiaju` VALUES (32, '【秒杀直降1649】中派床卧室双人真皮床1.8*2.0标准床+床垫+床头柜1个', '2350.00', 'images/家具/be8417c2660b63f9.jpg', '//img11.360buyimg.com/n7/jfs/t1/87889/8/7318/193595/5dfad882Eeaadeedf/be8417c2660b63f9.jpg', 'be8417c2660b63f9.jpg');
INSERT INTO `jiaju` VALUES (33, '紫桐沙发真皮沙发头层牛皮现代简约转角小户型多功能沙发北欧式懒人实木沙发双人沙发客厅整装组合家具【中厚皮】双+单+贵', '3999.00', 'images/家具/42d3efae32a0bada.jpg', '//img10.360buyimg.com/n7/jfs/t1/91185/34/6760/266649/5df5acd3E4078ccb1/42d3efae32a0bada.jpg', '42d3efae32a0bada.jpg');
INSERT INTO `jiaju` VALUES (34, '芝华仕真皮沙发头等舱沙发单人懒人沙发椅小户型客厅K167深咖色', '1899.00 1849.00', 'images/家具/06f48f43ceb7f5c0.jpg', '//img12.360buyimg.com/n7/jfs/t1/39217/5/691/520622/5cba8924E399e9a80/06f48f43ceb7f5c0.jpg', '06f48f43ceb7f5c0.jpg');
INSERT INTO `jiaju` VALUES (35, '全友餐桌餐桌椅组合现代简约小户型伸缩折叠餐桌钢化玻璃圆桌家用长方形吃饭桌子餐桌椅70562一桌六椅', '3298.00', 'images/家具/b26e923644b0bfe4.jpg', '//img14.360buyimg.com/n7/jfs/t1/101902/13/6880/313502/5df7315bE2430752c/b26e923644b0bfe4.jpg', 'b26e923644b0bfe4.jpg');
INSERT INTO `jiaju` VALUES (36, '丽维家榻榻米床定制整体榻榻米床衣柜一体卧室储物收纳床书桌柜飘窗柜全屋家具定制金', '1000.00', 'images/家具/7bd74681453b8b35.jpg', '//img10.360buyimg.com/n7/jfs/t1/86138/7/7263/192117/5df9c3d2E605d12dc/7bd74681453b8b35.jpg', '7bd74681453b8b35.jpg');
INSERT INTO `jiaju` VALUES (37, '中庸（ZhongYong）新中式原创实木简约新明式北美黑胡桃泰然沙发系列客厅组合北美黑胡桃3+2+圈椅3件套+2角几+茶几', '49350.00', 'images/家具/9c85aa2270df8722.jpg', '//img11.360buyimg.com/n7/jfs/t1/34752/8/7477/121927/5cc7d86bE13e80727/9c85aa2270df8722.jpg', '9c85aa2270df8722.jpg');
INSERT INTO `jiaju` VALUES (38, '全友家居布艺沙发组合现代简约客厅布艺家具可拆洗布沙发实木内架客厅整装套装102137/102136102137布艺沙发(1+3+转)【不分正反向】', '3199.00', 'images/家具/e2e71452375f2be9.jpg', '//img10.360buyimg.com/n7/jfs/t1/94447/37/6267/366551/5df72c20E7db83995/e2e71452375f2be9.jpg', 'e2e71452375f2be9.jpg');
INSERT INTO `jiaju` VALUES (39, '丽维家衣柜定制现代简约卧室整体衣帽间定做玻璃平开门大衣柜衣橱订制全屋家具定制意向金', '1000.00', 'images/家具/ea65eb2082cacd3e.jpg', '//img13.360buyimg.com/n7/jfs/t1/104393/12/7142/261631/5df9c3d2Ed269f1ba/ea65eb2082cacd3e.jpg', 'ea65eb2082cacd3e.jpg');
INSERT INTO `jiaju` VALUES (40, '（直降）全友家居电视柜茶几组合套装简约北欧小户型客厅家具石材台面边几120709茶几+电视柜', '2899.00', 'images/家具/74c03e27846416c8.jpg', '//img13.360buyimg.com/n7/jfs/t1/102069/26/7079/234586/5df73036E8d8196fa/74c03e27846416c8.jpg', '74c03e27846416c8.jpg');
INSERT INTO `jiaju` VALUES (41, '丽维家衣柜定制衣柜卧室整体衣帽间开放式轻奢大衣柜木简易衣橱订做全屋家具定制意向金', '1000.00', 'images/家具/427268de86b69a40.jpg', '//img14.360buyimg.com/n7/jfs/t1/101073/34/7254/252223/5df9c3d2Ea59679a5/427268de86b69a40.jpg', '427268de86b69a40.jpg');
INSERT INTO `jiaju` VALUES (42, '【新品】顾家家居现代简约真皮床北欧主卧1.8米皮床双人床890【60天发货】NL5119灰色送0008C床垫1800mm*2000mm框架结构', '11499.00', 'images/家具/6e270a33f10fc482.jpg', '//img12.360buyimg.com/n7/jfs/t1/86196/39/6848/265985/5df6d833Ee1a16639/6e270a33f10fc482.jpg', '6e270a33f10fc482.jpg');
INSERT INTO `jiaju` VALUES (43, '【秒杀】华日沙发实木沙发布艺沙发组合沙发金秋一品胡桃色中式家具单人位', '4399.00', 'images/家具/161d0badc7413b27.jpg', '//img14.360buyimg.com/n7/jfs/t1/95301/3/6861/163504/5df6f6caE56a728af/161d0badc7413b27.jpg', '161d0badc7413b27.jpg');
INSERT INTO `jiaju` VALUES (44, '全友沙发布艺沙发现代简约沙发北欧客厅整装皮布艺沙发组合可拆洗布沙发套装家具102085C正向布皮沙发(1+3+转)', '3398.00', 'images/家具/dd80825cb7735c1b.jpg', '//img11.360buyimg.com/n7/jfs/t1/103351/11/6910/235597/5df7300aE75c052fb/dd80825cb7735c1b.jpg', 'dd80825cb7735c1b.jpg');
INSERT INTO `jiaju` VALUES (45, '丽维家衣柜定制现代简约推拉门衣柜卧室整体衣帽间大衣橱定做全屋家具定制意向金', '1000.00', 'images/家具/00fc4249bce5bc99.jpg', '//img10.360buyimg.com/n7/jfs/t1/108748/37/958/204833/5df9c3d2Ed9bfdf52/00fc4249bce5bc99.jpg', '00fc4249bce5bc99.jpg');
INSERT INTO `jiaju` VALUES (46, '【直播秒杀直降1319】中派沙发可拆洗客厅布艺沙发组合颜色双人+单人+贵妃', '1999.00', 'images/家具/2141e516185c1bad.jpg', '//img12.360buyimg.com/n7/jfs/t1/106863/33/7395/213502/5dfad72aEc7bdc05a/2141e516185c1bad.jpg', '2141e516185c1bad.jpg');
INSERT INTO `jiaju` VALUES (47, '南宜（nanyi）床全实木床新中式床1.8米1.5m双人婚床高箱储物床卧室家具【普通款】实木床1.8*2.0米（颜色备注）', '1399.00', 'images/家具/123002b0db2fd214.jpg', '//img14.360buyimg.com/n7/jfs/t1/104550/25/4253/222589/5de6179cE5aee0bf8/123002b0db2fd214.jpg', '123002b0db2fd214.jpg');
INSERT INTO `jiaju` VALUES (48, '【秒杀直降1400】中派沙发客厅皮布可拆洗布艺沙发组合颜色备注双人+单人+贵妃', '2299.00', 'images/家具/10fd1f74ec00be4a.jpg', '//img14.360buyimg.com/n7/jfs/t1/85430/4/7368/224059/5dfad723E2ca21909/10fd1f74ec00be4a.jpg', '10fd1f74ec00be4a.jpg');
INSERT INTO `jiaju` VALUES (49, '顾家家居头层牛皮真皮沙发客厅整装组合皮艺沙发现代简约家具DK.1022【60天发货】1.5无(不组)+3左单+躺右单【灰白色】组合', '16099.00', 'images/家具/05847dd7993b4c34.jpg', '//img11.360buyimg.com/n7/jfs/t1/87640/16/6858/320633/5df7279bE821f5904/05847dd7993b4c34.jpg', '05847dd7993b4c34.jpg');
INSERT INTO `jiaju` VALUES (50, '美一度北欧榻榻米板式双人床1.8米储物床1.5m现代简约日式主卧储物高箱床卧室系列家具双抽高箱床1800*2000', '2520.00', 'images/家具/af894786d52d63dc.jpg', '//img12.360buyimg.com/n7/jfs/t1/103407/7/6737/277700/5df6eaaaE7689dad6/af894786d52d63dc.jpg', 'af894786d52d63dc.jpg');
INSERT INTO `jiaju` VALUES (51, '全屋家具套装组合脚踏【定制/代拍】【进口白蜡木+全拆洗座包+整块透气海绵】', '2299.00', 'images/家具/b85885e251a5c284.jpg', '//img12.360buyimg.com/n7/jfs/t1/104095/21/7032/249371/5df896dbEcfcc4a52/b85885e251a5c284.jpg', 'b85885e251a5c284.jpg');
INSERT INTO `jiaju` VALUES (52, '全友家居现代简约衣柜卧室家具住宅家具四门/五门大衣柜106302四门衣柜', '1399.00', 'images/家具/02d5b8c7964eaceb.jpg', '//img13.360buyimg.com/n7/jfs/t1/96520/14/6977/180768/5df72e3aEf4df8a10/02d5b8c7964eaceb.jpg', '02d5b8c7964eaceb.jpg');
INSERT INTO `jiaju` VALUES (53, '丽巢沙发实木沙发冬夏两用沙发客厅家具实木布艺沙发组合中式储物沙发27储物四人位+贵妃榻(颜色备注)沙发', '4550.00', 'images/家具/c63a3a8d18f1d45c.jpg', '//img10.360buyimg.com/n7/jfs/t1/96765/6/6596/212643/5df4da9cEbde55a21/c63a3a8d18f1d45c.jpg', 'c63a3a8d18f1d45c.jpg');
INSERT INTO `jiaju` VALUES (54, '梵爱床真皮床双人床1.5/1.8米现代简约婚床皮艺床主卧室家具标准版床+床头柜*1+3E椰棕床垫', '3475.00', 'images/家具/0eda092859a92296.jpg', '//img11.360buyimg.com/n7/jfs/t1/106491/34/7133/188289/5df9786dEf051fba4/0eda092859a92296.jpg', '0eda092859a92296.jpg');
INSERT INTO `jiaju` VALUES (55, '索菲奈沙发皮沙发真皮沙发头层牛皮家用沙发客厅四人位沙发直排客厅沙发小户型2+1+左贵（带五金）+茶几', '11260.00', 'images/家具/e8efefaf06819c67.jpg', '//img14.360buyimg.com/n7/jfs/t1/96131/39/4335/269487/5de61570E28ad24e9/e8efefaf06819c67.jpg', 'e8efefaf06819c67.jpg');
INSERT INTO `jiaju` VALUES (56, '全友家居布艺沙发现代简约客厅布艺沙发客厅可拆洗布沙发102137布艺沙发（1+3+转）', '3219.00', 'images/家具/dfacb9fd1aed494f.jpg', '//img14.360buyimg.com/n7/jfs/t1/53258/17/14928/496770/5dbbe188E3f2ae69f/dfacb9fd1aed494f.jpg', 'dfacb9fd1aed494f.jpg');
INSERT INTO `jiaju` VALUES (57, '【秒杀直降】丽巢沙发实木沙发组合中式客厅家具实木转角布艺沙发N25四人位+贵妃榻图片色', '3040.00', 'images/家具/2f5a47bedcc1c394.jpg', '//img11.360buyimg.com/n7/jfs/t1/50971/27/12797/206091/5d9c2158Ec888e146/2f5a47bedcc1c394.jpg', '2f5a47bedcc1c394.jpg');
INSERT INTO `jiaju` VALUES (58, '家逸实木餐桌现代简约橡胶木一桌四椅饭桌餐桌椅组合', '1099.00', 'images/家具/536c571b444a29d0.jpg', '//img12.360buyimg.com/n7/jfs/t1/90837/35/7129/430056/5df8a418E334a6780/536c571b444a29d0.jpg', '536c571b444a29d0.jpg');
INSERT INTO `jiaju` VALUES (59, '欧派衣柜定制现代简约推拉门整体衣柜卧室移门大衣橱全屋家具定制定做促预付金', '799.00', 'images/家具/865db39358d30752.jpg', '//img14.360buyimg.com/n7/jfs/t1/89135/12/2197/218940/5dcb97d8Efde197c9/865db39358d30752.jpg', '865db39358d30752.jpg');
INSERT INTO `jiaju` VALUES (60, '丽巢床实木床中式胡桃木床单双人床大床卧室家具婚床6606普通款单床(备注1.5米/1.8米)', '1580.00', 'images/家具/b5ea632d6e97849b.jpg', '//img14.360buyimg.com/n7/jfs/t1/88180/4/6671/199176/5df4e019E21feb891/b5ea632d6e97849b.jpg', 'b5ea632d6e97849b.jpg');

-- ----------------------------
-- Table structure for jitaxian
-- ----------------------------
DROP TABLE IF EXISTS `jitaxian`;
CREATE TABLE `jitaxian`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jitaxian
-- ----------------------------
INSERT INTO `jitaxian` VALUES (1, 'elixir伊利克斯吉他弦16052民谣琴弦一套6根套弦木吉它弦镀膜防锈磷铜黄铜11052黄铜超薄镀膜012-053', '108.00', 'images/吉他弦/5ac5c507Nb1a9c4c4.jpg', '//img11.360buyimg.com/n7/jfs/t18943/266/1319792674/271779/99527637/5ac5c507Nb1a9c4c4.jpg', '5ac5c507Nb1a9c4c4.jpg');
INSERT INTO `jitaxian` VALUES (2, '京东超市达达里奥（D\'Addario）EJ16美国原装进口民谣吉他弦套弦琴弦EJ16(12-53磷铜)', '55.00', 'images/吉他弦/58dce9f8Nc72a4c6c.jpg', '//img14.360buyimg.com/n7/jfs/t4717/27/232197365/134334/d0482760/58dce9f8Nc72a4c6c.jpg', '58dce9f8Nc72a4c6c.jpg');
INSERT INTO `jitaxian` VALUES (3, '京东超市卡马kepma民谣吉他套弦原装琴弦吉他线8根', '29.00', 'images/吉他弦/58abd74bN9f9e9b97.jpg', '//img12.360buyimg.com/n7/jfs/t3871/248/2534364235/361484/9e805f87/58abd74bN9f9e9b97.jpg', '58abd74bN9f9e9b97.jpg');
INSERT INTO `jitaxian` VALUES (4, '京东超市ELIXIR伊利克斯吉他弦民谣琴弦套弦木吉它磷铜16052伊利克斯', '119.00', 'images/吉他弦/ea28ba554f01df85.jpg', '//img13.360buyimg.com/n7/jfs/t1/3488/5/10994/288316/5bcda781E9194ae90/ea28ba554f01df85.jpg', 'ea28ba554f01df85.jpg');
INSERT INTO `jitaxian` VALUES (5, '京东超市达达里奥（D\'Addario）EXP16磷铜民谣吉他弦防锈镀膜标准张力012-053美产原装', '125.00', 'images/吉他弦/5a13d22bN87d4eb72.jpg', '//img12.360buyimg.com/n7/jfs/t13888/183/816786545/232015/704f18ae/5a13d22bN87d4eb72.jpg', '5a13d22bN87d4eb72.jpg');
INSERT INTO `jitaxian` VALUES (6, '达达里奥琴弦（D\'Addario)EJ16EJ15美国原装进口民谣吉他弦通用套弦达达里奥1弦(010)*3根', '25.00', 'images/吉他弦/58a64e4aNdabad028.jpg', '//img11.360buyimg.com/n7/jfs/t3961/207/2277268362/195944/a44e3661/58a64e4aNdabad028.jpg', '58a64e4aNdabad028.jpg');
INSERT INTO `jitaxian` VALUES (7, '夏奇拉(SHAKIRA)便携吉他卷弦器上弦剪弦钳拔锥起锥器三合一换弦器民谣木吉他换弦工具新款灰白色', '19.80', 'images/吉他弦/e3d4a204d58aa93f.jpg', '//img12.360buyimg.com/n7/jfs/t1/35470/34/8410/151819/5ccbd6e5Ed04a9e26/e3d4a204d58aa93f.jpg', 'e3d4a204d58aa93f.jpg');
INSERT INTO `jitaxian` VALUES (8, '雅马哈FS50BT原装进口吉他弦套弦民谣琴弦F310/FG800/FG830/ll16木吉他雅马哈FS50BT吉他套弦', '130.00', 'images/吉他弦/5bf7b381Nf03fa27d.jpg', '//img13.360buyimg.com/n7/jfs/t27427/289/2096742622/225847/4e18e31e/5bf7b381Nf03fa27d.jpg', '5bf7b381Nf03fa27d.jpg');
INSERT INTO `jitaxian` VALUES (9, '爱心东东elixir美国伊利克斯琴弦民谣镀膜防锈木吉它琴弦套装16052磷铜超薄镀膜12-53', '119.00', 'images/吉他弦/5b824ea8N860518f4.jpg', '//img13.360buyimg.com/n7/jfs/t27037/355/39799347/313124/d23835eb/5b824ea8N860518f4.jpg', '5b824ea8N860518f4.jpg');
INSERT INTO `jitaxian` VALUES (10, '京东超市达达里奥（D\'Addario）EZ910美国原装进口民谣吉他弦套弦琴弦EZ910(11-52黄铜)', '51.00', 'images/吉他弦/5953022eN40aabd70.jpg', '//img10.360buyimg.com/n7/jfs/t5743/289/4691769318/297855/386e864b/5953022eN40aabd70.jpg', '5953022eN40aabd70.jpg');
INSERT INTO `jitaxian` VALUES (11, '【抖音同款】吉他自动按弦和弦神器吉他防指痛懒人吉他自动挡吉他和弦器', '158.00 149.00', 'images/吉他弦/749c033ee406d7d8.jpg', '//img14.360buyimg.com/n7/jfs/t1/26603/36/12809/161433/5c9b2589E59d572d2/749c033ee406d7d8.jpg', '749c033ee406d7d8.jpg');
INSERT INTO `jitaxian` VALUES (12, '美国原产elixir1200212027120521900219052镀膜防锈电吉他琴弦12002(09-42)', '79.00', 'images/吉他弦/5a4f9a0bN3c0f3960.jpg', '//img12.360buyimg.com/n7/jfs/t16576/203/1233365046/533798/acc23696/5a4f9a0bN3c0f3960.jpg', '5a4f9a0bN3c0f3960.jpg');
INSERT INTO `jitaxian` VALUES (13, '京东超市达达里奥（D\'Addario）EJ15美国原装进口民谣吉他弦套弦琴弦EJ15(10-47磷铜)', '55.00', 'images/吉他弦/58dce8d4Nb5cbf227.jpg', '//img14.360buyimg.com/n7/jfs/t4924/273/213858178/138542/1e60bd66/58dce8d4Nb5cbf227.jpg', '58dce8d4Nb5cbf227.jpg');
INSERT INTO `jitaxian` VALUES (14, '青歌乐器C33民谣吉他琴弦一套1-6弦钢芯吉他琴弦套弦木吉它JITA琴弦青铜弦防锈耐用C33青铜民谣吉他弦自选1-2-3弦各2根共6根', '19.80', 'images/吉他弦/5aaf711eN5f19c0ec.jpg', '//img14.360buyimg.com/n7/jfs/t19417/7/898882117/55278/9db34da5/5aaf711eN5f19c0ec.jpg', '5aaf711eN5f19c0ec.jpg');
INSERT INTO `jitaxian` VALUES (15, '京东超市ELIXIR伊利克斯吉他弦民谣琴弦套弦木吉它磷铜16027伊利克斯', '119.00', 'images/吉他弦/325358b8302336d9.jpg', '//img11.360buyimg.com/n7/jfs/t1/9716/26/1307/302634/5bcda761E41b71996/325358b8302336d9.jpg', '325358b8302336d9.jpg');
INSERT INTO `jitaxian` VALUES (16, '京东超市莫森(mosen)MS-11P民谣琴弦吉他专用琴弦套弦8根木吉他琴弦磷青铜弦', '26.00', 'images/吉他弦/5b63f3a0Ndb603bec.jpg', '//img11.360buyimg.com/n7/jfs/t25771/68/71230583/270820/13eb356f/5b63f3a0Ndb603bec.jpg', '5b63f3a0Ndb603bec.jpg');
INSERT INTO `jitaxian` VALUES (17, '京东超市爱丽丝Alice民谣吉他弦钢丝吉木他琴弦木吉他套弦1-6弦6根装轻型AW432-L', '39.90', 'images/吉他弦/58c91afaNd0d30814.jpg', '//img13.360buyimg.com/n7/jfs/t3955/79/2041709265/181669/37c93b38/58c91afaNd0d30814.jpg', '58c91afaNd0d30814.jpg');
INSERT INTO `jitaxian` VALUES (18, '京东超市卡马kepma吉他弦010规格磷青铜镀膜琴弦钢丝弦金黄色8根', '29.00', 'images/吉他弦/4164553b79f5aae4.jpg', '//img11.360buyimg.com/n7/jfs/t1/10254/38/8591/197067/5c371a5aE2377569a/4164553b79f5aae4.jpg', '4164553b79f5aae4.jpg');
INSERT INTO `jitaxian` VALUES (19, '自动伴奏吉他辅助练习新手防痛指套指力器民谣按吉他名角和弦名角神器正式版(C调加G调按键)', '159.90', 'images/吉他弦/5c04ce63Nc02c05b5.jpg', '//img11.360buyimg.com/n7/jfs/t27205/131/2537592134/80553/9ad81b4c/5c04ce63Nc02c05b5.jpg', '5c04ce63Nc02c05b5.jpg');
INSERT INTO `jitaxian` VALUES (20, '京东超市雅马哈(YAMAHA)FS50BT原装进口民谣琴弦', '130.00', 'images/吉他弦/5a586545Nbe89b669.jpg', '//img11.360buyimg.com/n7/jfs/t19360/272/31270168/225321/ee3102b6/5a586545Nbe89b669.jpg', '5a586545Nbe89b669.jpg');
INSERT INTO `jitaxian` VALUES (21, '京东超市卡马kepma民谣吉他弦原装琴弦一套8根民谣正品吉他线8根送拨片卡马原装琴弦', '29.00', 'images/吉他弦/83ac7e0bd38866f5.jpg', '//img11.360buyimg.com/n7/jfs/t1/26817/40/5517/128819/5c3d9868E55a10e62/83ac7e0bd38866f5.jpg', '83ac7e0bd38866f5.jpg');
INSERT INTO `jitaxian` VALUES (22, '京东超市达达里奥（D\'Addario）EJ45美产进口古典吉他弦尼龙琴弦套弦高中标准张力', '66.00', 'images/吉他弦/595dcbb1Nd0388e29.jpg', '//img10.360buyimg.com/n7/jfs/t6676/244/2163605706/416257/bebc5945/595dcbb1Nd0388e29.jpg', '595dcbb1Nd0388e29.jpg');
INSERT INTO `jitaxian` VALUES (23, '京东超市达达里奥（D\'Addario）EJ46Pro-Arte高张力尼龙古典吉他弦套弦EJ46', '58.00', 'images/吉他弦/5951b8f7N1de02051.jpg', '//img13.360buyimg.com/n7/jfs/t6517/337/1462339148/419229/8672e15c/5951b8f7N1de02051.jpg', '5951b8f7N1de02051.jpg');
INSERT INTO `jitaxian` VALUES (24, '京东超市达达里奥（D\'Addario）EXP26磷铜民谣吉他弦防锈镀膜美产原装进口较细款011-052', '125.00', 'images/吉他弦/5a273edcN91b0f568.jpg', '//img11.360buyimg.com/n7/jfs/t14254/242/241587336/262363/4e99a2e0/5a273edcN91b0f568.jpg', '5a273edcN91b0f568.jpg');
INSERT INTO `jitaxian` VALUES (25, '青歌民谣吉他乌木弦钉牛骨弦尾卡弦尾钉弦锥乌木固弦椎弦柱琴锥白牛骨弦钉（一套六个）', '26.80', 'images/吉他弦/5cb983a3fa57fd97.jpg', '//img11.360buyimg.com/n7/jfs/t1/32427/15/589/74466/5c3d8b9fE987cc64a/5cb983a3fa57fd97.jpg', '5cb983a3fa57fd97.jpg');
INSERT INTO `jitaxian` VALUES (26, '京东超市达达里奥（D\'Addario）EXL120电吉他弦超细款电吉他琴弦美产套弦EXL120(009-042)', '45.00', 'images/吉他弦/58dce9b2Ne531a8c2.jpg', '//img12.360buyimg.com/n7/jfs/t4687/1/1360655231/139551/61c2c6aa/58dce9b2Ne531a8c2.jpg', '58dce9b2Ne531a8c2.jpg');
INSERT INTO `jitaxian` VALUES (27, '京东超市ELIXIR伊利克斯吉他弦民谣琴弦套弦木吉它磷铜16002伊利克斯', '119.00', 'images/吉他弦/d81345a6b0014430.jpg', '//img11.360buyimg.com/n7/jfs/t1/9423/21/1288/302540/5bcda6c9Eed52d663/d81345a6b0014430.jpg', 'd81345a6b0014430.jpg');
INSERT INTO `jitaxian` VALUES (28, '京东超市达达里奥（D\'Addario）EZ900)美国原装进口民谣吉他弦套弦琴弦EZ900(10-50黄铜)', '51.00', 'images/吉他弦/5953025bNff93303d.jpg', '//img12.360buyimg.com/n7/jfs/t5707/317/4668392437/297147/50ad33cb/5953025bNff93303d.jpg', '5953025bNff93303d.jpg');
INSERT INTO `jitaxian` VALUES (29, 'DUNLOP6582吉他弦油贝斯护弦油琴弦防锈', '47.80', 'images/吉他弦/5beb0fdeNda0f7299.jpg', '//img10.360buyimg.com/n7/jfs/t29599/355/213261401/108500/5e239a89/5beb0fdeNda0f7299.jpg', '5beb0fdeNda0f7299.jpg');
INSERT INTO `jitaxian` VALUES (30, 'elixir伊利克斯吉他弦16052民谣琴弦一套6根套弦木吉它弦镀膜防锈磷铜黄铜16052磷铜超薄镀膜012-053', '119.00', 'images/吉他弦/5aa64c16N6fa2f3db.jpg', '//img10.360buyimg.com/n7/jfs/t18358/223/785638039/393246/c839c173/5aa64c16N6fa2f3db.jpg', '5aa64c16N6fa2f3db.jpg');

-- ----------------------------
-- Table structure for kouhong
-- ----------------------------
DROP TABLE IF EXISTS `kouhong`;
CREATE TABLE `kouhong`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kouhong
-- ----------------------------
INSERT INTO `kouhong` VALUES (1, '海囤全球魅可（MAC)经典唇膏子弹头口红3gChili秀智色/小辣椒色', '156.00', 'images/口红/5b226dd4N211675fa.jpg', '//img14.360buyimg.com/n7/jfs/t21946/165/1208592477/32181/1ecee077/5b226dd4N211675fa.jpg', '5b226dd4N211675fa.jpg');
INSERT INTO `kouhong` VALUES (2, '魅可（MAC)经典唇膏子弹头口红3gMARRAKESH枯叶橘爆款新色', '165.00', 'images/口红/2db6abd3a1cd4f67.jpg', '//img14.360buyimg.com/n7/jfs/t1/8583/17/10941/60585/5c25d787Eff304ce4/2db6abd3a1cd4f67.jpg', '2db6abd3a1cd4f67.jpg');
INSERT INTO `kouhong` VALUES (3, '【520情人节礼物】香奈儿（Chanel）香奈儿Chanel口红/唇膏可可小姐水亮/丝绒系列口红丝绒系列57#枫叶色', '248.00', 'images/口红/c9250ad633b358d1.jpg', '//img13.360buyimg.com/n7/jfs/t1/20701/32/3113/94600/5c24893dE7cd17bc9/c9250ad633b358d1.jpg', 'c9250ad633b358d1.jpg');
INSERT INTO `kouhong` VALUES (4, '卡姿兰（Carslan）轻甜唇爱随心盒1.4g*4(13#暧昧16#炽烈18#嫉妒19#欲望唇盒口红礼物)', '94.00', 'images/口红/5b6bde52N5ffb3955.jpg', '//img11.360buyimg.com/n7/jfs/t25555/49/350163876/331330/c0c09041/5b6bde52N5ffb3955.jpg', '5b6bde52N5ffb3955.jpg');
INSERT INTO `kouhong` VALUES (5, '迪奥（Dior）烈艳蓝金唇膏口红3.5g080(滋润保湿妆感舒悦微笑红色)', '400.00', 'images/口红/5ab47b47N56a9ce8a.jpg', '//img13.360buyimg.com/n7/jfs/t17173/11/987480935/93070/fe9eab1e/5ab47b47N56a9ce8a.jpg', '5ab47b47N56a9ce8a.jpg');
INSERT INTO `kouhong` VALUES (6, '圣罗兰（YSL）纯口红52#', '289.00', 'images/口红/598033beN59973534.jpg', '//img11.360buyimg.com/n7/jfs/t6034/22/7629492554/154114/7b075f83/598033beN59973534.jpg', '598033beN59973534.jpg');
INSERT INTO `kouhong` VALUES (7, 'Dior迪奥口红女士唇膏烈艳蓝金999+888两支装礼盒', '520.00', 'images/口红/8575bc0b8d2d4451.jpg', '//img11.360buyimg.com/n7/jfs/t1/32753/36/10393/125827/5cad68a3Ef970d0de/8575bc0b8d2d4451.jpg', '8575bc0b8d2d4451.jpg');
INSERT INTO `kouhong` VALUES (8, '圣罗兰（YSL）莹亮纯魅唇膏12#', '320.00', 'images/口红/59800d5fNde1e51b3.jpg', '//img11.360buyimg.com/n7/jfs/t5752/134/8869787029/133064/ae12ebe8/59800d5fNde1e51b3.jpg', '59800d5fNde1e51b3.jpg');
INSERT INTO `kouhong` VALUES (9, '迪奥（Dior）口红礼盒（烈艳蓝金滋润9993.5g红色+中样3ml+小样1m+随机礼盒一个）', '359.00', 'images/口红/a6d4ae76f2cb8751.jpg', '//img10.360buyimg.com/n7/jfs/t1/28927/8/9203/225604/5c7cd6e0E5a44df5d/a6d4ae76f2cb8751.jpg', 'a6d4ae76f2cb8751.jpg');
INSERT INTO `kouhong` VALUES (10, '美宝莲（MAYBELLINE）绝色持久唇膏雾感哑光系列R09PM3.9g（女皇色口红新老包装）', '109.00', 'images/口红/ebf9b36eb8314b05.jpg', '//img11.360buyimg.com/n7/jfs/t1/29100/4/3357/106920/5c26edd1Ed3a0fb67/ebf9b36eb8314b05.jpg', 'ebf9b36eb8314b05.jpg');
INSERT INTO `kouhong` VALUES (11, '京东超市芭黎元素水晶之吻口红不掉色不沾杯润唇膏唇釉唇彩唇蜜女士防水保湿非变色非套装小样胭脂红04', '56.00', 'images/口红/5ab8c410N112177fa.jpg', '//img10.360buyimg.com/n7/jfs/t18259/150/1016014971/137037/341a05e6/5ab8c410N112177fa.jpg', '5ab8c410N112177fa.jpg');
INSERT INTO `kouhong` VALUES (12, '圣罗兰（YSL）纯口红1#（正红色）', '320.00', 'images/口红/598031abN1c831ffa.jpg', '//img14.360buyimg.com/n7/jfs/t7198/163/412206933/160938/e18b1d4f/598031abN1c831ffa.jpg', '598031abN1c831ffa.jpg');
INSERT INTO `kouhong` VALUES (13, '【520情人节礼物】Armani阿玛尼口红女士唇釉生日礼物/表白礼物红管402#红色偏橘', '266.00', 'images/口红/b70421df108e616f.jpg', '//img14.360buyimg.com/n7/jfs/t1/10660/4/8938/137584/5c3c5525Ed07b1b2d/b70421df108e616f.jpg', 'b70421df108e616f.jpg');
INSERT INTO `kouhong` VALUES (14, '迪奥（Dior）烈焰蓝金口红唇膏0283.5g(滋润保湿珊瑚红)', '400.00', 'images/口红/5ab47aceN47e0884f.jpg', '//img12.360buyimg.com/n7/jfs/t15940/308/2603243803/93219/3aca7842/5ab47aceN47e0884f.jpg', '5ab47aceN47e0884f.jpg');
INSERT INTO `kouhong` VALUES (15, '京东超市HOLDLIVE慕斯绒情口红套装礼盒哑光雾面196烂番茄316泫雅红棕牛血色5只套装', '67.00', 'images/口红/d4bb814ca65fab56.jpg', '//img14.360buyimg.com/n7/jfs/t1/17102/37/1482/414392/5c12587cE4e8b97fb/d4bb814ca65fab56.jpg', 'd4bb814ca65fab56.jpg');
INSERT INTO `kouhong` VALUES (16, '迪奥（Dior）烈艳蓝金唇膏-哑光系列9993.5g（迪奥口红迪奥999显色持久传奇红）', '400.00', 'images/口红/5ab49e31N9811560d.jpg', '//img13.360buyimg.com/n7/jfs/t19198/297/962642447/95301/4dda0146/5ab49e31N9811560d.jpg', '5ab49e31N9811560d.jpg');
INSERT INTO `kouhong` VALUES (17, '迪奥（Dior）全新烈艳蓝金唇膏口红5203.5g(滋润持久保湿粉红色)', '360.00', 'images/口红/5ab47af1Nbe491777.jpg', '//img13.360buyimg.com/n7/jfs/t17086/344/969056152/93111/a589ea18/5ab47af1Nbe491777.jpg', '5ab47af1Nbe491777.jpg');
INSERT INTO `kouhong` VALUES (18, '海囤全球魅可（MAC)经典唇膏子弹头口红3gLadyBug番茄红', '156.00', 'images/口红/5a23cc3bN94a168f3.jpg', '//img12.360buyimg.com/n7/jfs/t13909/305/1587605118/58885/4f943590/5a23cc3bN94a168f3.jpg', '5a23cc3bN94a168f3.jpg');
INSERT INTO `kouhong` VALUES (19, '【520情人节礼物】MAC魅可口红圣诞款显色丰润唇膏女士口红口红3g生日礼物/表白礼物Chili秀智色/小辣椒色【超级爆款】', '126.00', 'images/口红/76cf74632f20838a.jpg', '//img11.360buyimg.com/n7/jfs/t1/30380/2/475/78482/5c3c54acE1fe6103c/76cf74632f20838a.jpg', '76cf74632f20838a.jpg');
INSERT INTO `kouhong` VALUES (20, '圣罗兰（YSL）纯口红13#（正橘色）', '320.00', 'images/口红/598032bbNfc4f7a0a.jpg', '//img10.360buyimg.com/n7/jfs/t6964/66/1333556320/155984/25f801bc/598032bbNfc4f7a0a.jpg', '598032bbNfc4f7a0a.jpg');
INSERT INTO `kouhong` VALUES (21, '迪奥（Dior）烈艳蓝金唇膏8443.5g（口红妆感舒悦显色持久橘红色）', '320.00', 'images/口红/57ba5fdbN27aa0703.jpg', '//img14.360buyimg.com/n7/jfs/t3004/348/975606602/52874/139a5559/57ba5fdbN27aa0703.jpg', '57ba5fdbN27aa0703.jpg');
INSERT INTO `kouhong` VALUES (22, '【京东秒杀第二支1元明星推荐】绿缘萝口红胡萝卜素变色唇膏丁孕妇口红非不掉色不沾杯滋润唇膏#1裸色口红', '59.00', 'images/口红/5bee3099N7301d22c.jpg', '//img11.360buyimg.com/n7/jfs/t29911/351/297196040/233812/2b303fc/5bee3099N7301d22c.jpg', '5bee3099N7301d22c.jpg');
INSERT INTO `kouhong` VALUES (23, '海囤全球迪奥（Dior）烈艳蓝金唇膏口红3.5g999号正红色', '358.00', 'images/口红/5b597d80Nb02f568c.jpg', '//img12.360buyimg.com/n7/jfs/t21967/59/2501276815/22038/85fa1282/5b597d80Nb02f568c.jpg', '5b597d80Nb02f568c.jpg');
INSERT INTO `kouhong` VALUES (24, '迪奥（Dior）魅惑润唇蜜0043.5g(变色润唇膏口红丰唇膏滋润保湿)珊瑚色', '300.00', 'images/口红/5be9423cN275afeae.jpg', '//img13.360buyimg.com/n7/jfs/t27961/220/149815602/57106/cc9d2c25/5be9423cN275afeae.jpg', '5be9423cN275afeae.jpg');
INSERT INTO `kouhong` VALUES (25, '【520情人节礼物】汤姆.福特（TOMFORD）TF口红/唇膏黑管/白管3g套装特烈焰幻TF黑管09号奶油粉橘色', '325.00', 'images/口红/02d361fae9d5f3b3.jpg', '//img12.360buyimg.com/n7/jfs/t1/20062/17/5121/358322/5c389643E9f5e5cea/02d361fae9d5f3b3.jpg', '02d361fae9d5f3b3.jpg');
INSERT INTO `kouhong` VALUES (26, '【专柜正品】迪奥（Dior）口红礼盒装3.5g保湿滋润烈艳蓝金（新）999#滋润经典正红', '278.00', 'images/口红/c6e4674b4e9bad79.jpg', '//img13.360buyimg.com/n7/jfs/t1/44434/37/409/53319/5cd10f72E67cb0a2c/c6e4674b4e9bad79.jpg', 'c6e4674b4e9bad79.jpg');
INSERT INTO `kouhong` VALUES (27, '纪梵希（Givenchy）高定香榭天鹅绒唇膏307(又名：高级定制系列唇膏小羊皮口红）（复古红）', '355.00', 'images/口红/5ad9882bNe2e20457.jpg', '//img10.360buyimg.com/n7/jfs/t17692/299/1830596192/186582/706ce223/5ad9882bNe2e20457.jpg', '5ad9882bNe2e20457.jpg');
INSERT INTO `kouhong` VALUES (28, '【故宫联名限量版】故宫口红套装礼盒中国风开运红情人节女朋友礼物唇膏唇釉学生非小样颐和园口红彩妆礼盒红鸾心动口红礼盒（6支）', '158.00', 'images/口红/87c59a5f4ac85849.jpg', '//img11.360buyimg.com/n7/jfs/t1/32671/17/15514/480412/5cc2a21fE013053b8/87c59a5f4ac85849.jpg', '87c59a5f4ac85849.jpg');
INSERT INTO `kouhong` VALUES (29, '迪奥（DIOR)克丽丝汀烈艳蓝金唇膏6663.5g（迪奥口红哑光红色）', '299.00', 'images/口红/5baedc54N315b9533.jpg', '//img13.360buyimg.com/n7/jfs/t24961/340/1364362990/51400/f5ea4c98/5baedc54N315b9533.jpg', '5baedc54N315b9533.jpg');
INSERT INTO `kouhong` VALUES (30, '魅可（M.A.C）柔感哑光唇膏01#（CHILI）3g', '179.00', 'images/口红/5ad6ff90Nec047272.jpg', '//img13.360buyimg.com/n7/jfs/t19033/18/1806931213/88737/6f848015/5ad6ff90Nec047272.jpg', '5ad6ff90Nec047272.jpg');

-- ----------------------------
-- Table structure for lanmao
-- ----------------------------
DROP TABLE IF EXISTS `lanmao`;
CREATE TABLE `lanmao`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lanmao
-- ----------------------------
INSERT INTO `lanmao` VALUES (1, '星脉英短蓝猫活体宠物猫猫咪活体异国短毛猫幼崽小猫猫咪上海杭州苏州武汉可上门挑选全国配送宠物级公', '2500.00', 'images/蓝猫/7d4305712d9bf6ef.jpg', '//img11.360buyimg.com/n7/jfs/t1/58187/21/346/205482/5cd4e90dEb1963f9d/7d4305712d9bf6ef.jpg', '7d4305712d9bf6ef.jpg');
INSERT INTO `lanmao` VALUES (2, '【买1送9礼包】一尾猫舍英短蓝猫幼体银渐层蓝白活体宠物蓝猫幼崽猫咪异国短毛猫宠物猫咪异国短毛猫-蓝猫', '1799.00', 'images/蓝猫/d3b7db97c311dc73.jpg', '//img13.360buyimg.com/n7/jfs/t1/31909/13/3661/242025/5c76c7c3Ec32e1f65/d3b7db97c311dc73.jpg', 'd3b7db97c311dc73.jpg');
INSERT INTO `lanmao` VALUES (3, '英短蓝猫就是这个价|土炮哥宠物|全国包邮|猫咪活体蓝猫活体|北京|广州|上海|成都|连锁实体', '2499.00', 'images/蓝猫/5b57e6e9N04b8417a.jpg', '//img11.360buyimg.com/n7/jfs/t20275/347/2399714918/192148/5a9a0e67/5b57e6e9N04b8417a.jpg', '5b57e6e9N04b8417a.jpg');
INSERT INTO `lanmao` VALUES (4, '蓝猫蓝猫活体蓝猫幼猫蓝猫幼崽英短蓝猫活体英短蓝猫幼猫英短蓝猫母英短蓝猫活体母北京', '2499.00', 'images/蓝猫/5d0b027a2c3a69b8.jpg', '//img14.360buyimg.com/n7/jfs/t1/23364/30/9984/173007/5c823b78E2598f07f/5d0b027a2c3a69b8.jpg', '5d0b027a2c3a69b8.jpg');
INSERT INTO `lanmao` VALUES (5, '爱心东东蓝猫活体蓝猫活体宠物英短蓝猫活体TJDH纯种健康保活猫咪活体蓝猫宠物活体猫宠物级', '1899.00', 'images/蓝猫/5bf930acN7de74a5a.jpg', '//img11.360buyimg.com/n7/jfs/t29584/128/616896522/100016/4b1daa15/5bf930acN7de74a5a.jpg', '5bf930acN7de74a5a.jpg');
INSERT INTO `lanmao` VALUES (6, '宁宠英短蓝猫活体猫咪活体英短蓝白宠物猫活体宠物级公', '2299.00', 'images/蓝猫/5b5d610aN7df48835.jpg', '//img12.360buyimg.com/n7/jfs/t23260/283/1358425711/715983/b32ea920/5b5d610aN7df48835.png', '5b5d610aN7df48835.jpg');
INSERT INTO `lanmao` VALUES (7, '蓝猫幼崽宠物猫活体蓝猫猫咪活体幼猫纯种家养英短蓝猫活体蓝猫幼体活体缘宠蓝猫活体', '1988.00', 'images/蓝猫/a21fadbbcf481e76.jpg', '//img13.360buyimg.com/n7/jfs/t1/23499/18/4279/200019/5c2f54e8E796b4923/a21fadbbcf481e76.jpg', 'a21fadbbcf481e76.jpg');
INSERT INTO `lanmao` VALUES (8, '壹萌英短蓝猫活体宠物猫猫咪活体异国短毛猫幼崽小猫猫咪上海杭州苏州武汉可上门挑选全国配送宠物A级公', '1999.00', 'images/蓝猫/5cd51b96N8be7a55c.jpg', '//img14.360buyimg.com/n7/jfs/t27706/299/2566061942/290899/ee0926ea/5cd51b96N8be7a55c.jpg', '5cd51b96N8be7a55c.jpg');
INSERT INTO `lanmao` VALUES (9, '凯林英国短毛猫宠物猫活体英短蓝猫英短蓝白猫咪活体幼崽宠物级', '1999.00', 'images/蓝猫/b5d8fe9ce4f75fc9.jpg', '//img13.360buyimg.com/n7/jfs/t1/37380/5/7636/133241/5cc880aeEddedf938/b5d8fe9ce4f75fc9.jpg', 'b5d8fe9ce4f75fc9.jpg');
INSERT INTO `lanmao` VALUES (10, '蓝猫童鞋男儿童网鞋女孩夏季网面鞋套脚一脚蹬中大童透气单网大码运动鞋蓝色36码/鞋垫长23.0cm', '129.00', 'images/蓝猫/1fac8b4e4e0d8853.jpg', '//img13.360buyimg.com/n7/jfs/t1/36501/39/648/153068/5cab6088E8a5759c3/1fac8b4e4e0d8853.jpg', '1fac8b4e4e0d8853.jpg');
INSERT INTO `lanmao` VALUES (11, '蓝猫童鞋男儿童运动鞋中童跑步鞋百搭跑步鞋小童鞋男女童鞋镂空透气网面框子鞋灰黄色33', '159.00', 'images/蓝猫/fe4dd676fe672143.jpg', '//img10.360buyimg.com/n7/jfs/t1/34486/28/7699/131892/5ccf289dE3df3d0c2/fe4dd676fe672143.jpg', 'fe4dd676fe672143.jpg');
INSERT INTO `lanmao` VALUES (12, '心宠优选纯种英国短毛猫蓝猫蓝白幼猫宠物猫宠物猫活体出售上门挑选视频观看同城配送公母可选宠物R级', '2100.00', 'images/蓝猫/5afd2680N38f02a7b.jpg', '//img10.360buyimg.com/n7/jfs/t20668/220/117993178/242238/2d8e7326/5afd2680N38f02a7b.jpg', '5afd2680N38f02a7b.jpg');
INSERT INTO `lanmao` VALUES (13, '缘宠蓝猫蓝猫活体蓝猫幼体活体英短蓝猫活体宠物幼崽小猫咪北京可实地挑选', '2180.00', 'images/蓝猫/6b033e3a84f9546a.jpg', '//img13.360buyimg.com/n7/jfs/t1/31746/3/8940/139390/5ca2b828E4450bbe4/6b033e3a84f9546a.jpg', '6b033e3a84f9546a.jpg');
INSERT INTO `lanmao` VALUES (14, '狗时代DOGTIMES英国短毛猫宠物猫活体英短蓝猫英短蓝白金渐层银渐层幼猫小猫活体猫咪英短蓝猫宠物级', '3499.00', 'images/蓝猫/5aa248f37da51f62.jpg', '//img10.360buyimg.com/n7/jfs/t1/37395/26/113/171359/5cac443eE008903b2/5aa248f37da51f62.jpg', '5aa248f37da51f62.jpg');
INSERT INTO `lanmao` VALUES (15, '景宠纯种加菲猫活体宠物猫咪蓝白猫英国短毛猫小猫咪英短美短加菲布偶石虎无毛猫蓝猫暹罗猫幼猫活体英短蓝猫公', '1999.00', 'images/蓝猫/7559cae474be7fba.jpg', '//img13.360buyimg.com/n7/jfs/t1/35058/6/7270/524141/5cc6ceafEa41140f4/7559cae474be7fba.png', '7559cae474be7fba.jpg');
INSERT INTO `lanmao` VALUES (16, '酷迪熊宠物猫活体小猫咪幼猫英国短毛猫布偶猫加菲猫英短蓝猫幼猫幼崽折耳美短美国纯种渐层短腿乳色可爱无惊讶脸蓝白', '1599.00', 'images/蓝猫/ef7e0d04772e1391.jpg', '//img13.360buyimg.com/n7/jfs/t1/44413/39/4478/100480/5cd3f36aE6c2fc023/ef7e0d04772e1391.jpg', 'ef7e0d04772e1391.jpg');
INSERT INTO `lanmao` VALUES (17, '蓝猫男童女童袜子鞋镂空网面透气运动鞋夏中大童懒人一脚蹬儿童单网鞋灰色28', '149.00', 'images/蓝猫/a82b68167224a270.jpg', '//img10.360buyimg.com/n7/jfs/t1/11689/6/15826/121125/5caae6c7E5aaa773c/a82b68167224a270.jpg', 'a82b68167224a270.jpg');
INSERT INTO `lanmao` VALUES (18, '土炮哥宠物|全国包邮|宠物活体|猫咪活体|英国短毛猫伴侣英短蓝猫幼崽小猫纯种猫英国短毛猫', '2299.00', 'images/蓝猫/5b5beaf8N4dae0034.jpg', '//img11.360buyimg.com/n7/jfs/t20605/322/2551662367/91576/52ee64d7/5b5beaf8N4dae0034.jpg', '5b5beaf8N4dae0034.jpg');
INSERT INTO `lanmao` VALUES (19, '兽友猫活体猫咪活体宠物猫活体英短蓝猫活体短毛蓝猫纯种英国短毛猫宠物级公', '2499.00', 'images/蓝猫/5b5ab6acNc2088eae.jpg', '//img13.360buyimg.com/n7/jfs/t24118/342/1279357991/222007/502273f5/5b5ab6acNc2088eae.jpg', '5b5ab6acNc2088eae.jpg');
INSERT INTO `lanmao` VALUES (20, '卡兔蓝猫儿童男童夏装套装短袖帅气汪汪队小猪佩奇衣服2-3-4岁5宝宝两件套绿色110', '78.00', 'images/蓝猫/5ac4609aNc4cf1ecc.jpg', '//img14.360buyimg.com/n7/jfs/t17659/341/1324951510/139683/71f95f54/5ac4609aNc4cf1ecc.jpg', '5ac4609aNc4cf1ecc.jpg');
INSERT INTO `lanmao` VALUES (21, '卡兔蓝猫夏装女童12-15岁t恤13短袖时尚夏天中大童洋气宽松上衣儿童打底衫白色160', '49.00', 'images/蓝猫/5ac0e3aeN7a3f48aa.jpg', '//img14.360buyimg.com/n7/jfs/t17392/149/1172887236/149792/bf9adc2b/5ac0e3aeN7a3f48aa.jpg', '5ac0e3aeN7a3f48aa.jpg');
INSERT INTO `lanmao` VALUES (22, '蓝猫男童镂空运动凉鞋中童大童鞋学生网眼网布夏季透气大码运动鞋宝蓝色37', '149.00', 'images/蓝猫/0c2b3a87ff7c6684.jpg', '//img14.360buyimg.com/n7/jfs/t1/22857/30/14218/184567/5ca57dc4Ec25c59f5/0c2b3a87ff7c6684.jpg', '0c2b3a87ff7c6684.jpg');
INSERT INTO `lanmao` VALUES (23, '卡兔蓝猫男童夏装套装儿童洋气短袖两件套装2019夏季新款大童男孩衣服韩版浅蓝色120', '79.00', 'images/蓝猫/5b2e13743ea20984.jpg', '//img13.360buyimg.com/n7/jfs/t1/33112/30/4389/152898/5cb73c00Ebb1b327f/5b2e13743ea20984.jpg', '5b2e13743ea20984.jpg');
INSERT INTO `lanmao` VALUES (24, '卡兔蓝猫女童春装连衣裙2019新款儿童牛仔背带裙套装春秋中大童吊带两件套蓝色150', '99.00', 'images/蓝猫/c1a862bf04174fc5.jpg', '//img10.360buyimg.com/n7/jfs/t1/27822/23/11810/196799/5c934f62E9bcee4b8/c1a862bf04174fc5.jpg', 'c1a862bf04174fc5.jpg');
INSERT INTO `lanmao` VALUES (25, '卡兔蓝猫童装女童套装秋装2018秋季新款儿童中大童牛仔三件套时尚韩版休闲运动长袖外套长裤小女孩衣蓝色150建议身高1米4左右', '149.00', 'images/蓝猫/bf231b35a1505bd9.jpg', '//img11.360buyimg.com/n7/jfs/t1/2903/1/1416/248444/5b93f575Eae474f2d/bf231b35a1505bd9.jpg', 'bf231b35a1505bd9.jpg');
INSERT INTO `lanmao` VALUES (26, '宠物猫活体美国短毛猫幼崽折耳蓝猫渐层猫美短虎斑猫活体猫折耳美短', '2500.00', 'images/蓝猫/0bb2d70cba874db0.jpg', '//img12.360buyimg.com/n7/jfs/t1/34968/6/1759/53676/5cb446bdE07f14e8f/0bb2d70cba874db0.jpg', '0bb2d70cba874db0.jpg');
INSERT INTO `lanmao` VALUES (27, '宠物猫活体曼基康矮脚猫幼崽幼猫矮脚猫活体曼基康矮脚猫拿破仑矮脚猫英国矮脚猫矮脚蓝猫母/宠物级', '5500.00', 'images/蓝猫/5bf7ab06Na400d08f.jpg', '//img14.360buyimg.com/n7/jfs/t29965/310/567549556/90193/491016e1/5bf7ab06Na400d08f.jpg', '5bf7ab06Na400d08f.jpg');
INSERT INTO `lanmao` VALUES (28, '萝伦Lauren杭州猫舍宠物猫咪活体蓝猫进口猫咪英国短毛猫包售后可上门看猫定金', '1000.00', 'images/蓝猫/6c84a9e557f797de.jpg', '//img14.360buyimg.com/n7/jfs/t1/11898/26/13600/220131/5c9b471aE106ba127/6c84a9e557f797de.jpg', '6c84a9e557f797de.jpg');
INSERT INTO `lanmao` VALUES (29, '淘狗无忧蓝猫活体幼猫异国短毛英短猫咪活体宠物猫咪活体小猫幼崽疫苗齐全全国配送宠物级公', '2699.00', 'images/蓝猫/0bc6a9456ddfed6e.jpg', '//img14.360buyimg.com/n7/jfs/t1/34909/21/9162/230046/5cd52c96E77e40ecc/0bc6a9456ddfed6e.jpg', '0bc6a9456ddfed6e.jpg');
INSERT INTO `lanmao` VALUES (30, '萝伦Lauren上海猫舍英国短毛猫矮脚蓝猫宠物猫英国短毛猫活体蓝猫幼猫包售后可上门看猫定金---若因个人原因未成交定金不退', '2000.00', 'images/蓝猫/b130449abbbe7380.jpg', '//img14.360buyimg.com/n7/jfs/t1/26652/39/10504/233426/5c9b2039Ebac5d74d/b130449abbbe7380.jpg', 'b130449abbbe7380.jpg');

-- ----------------------------
-- Table structure for lingshi
-- ----------------------------
DROP TABLE IF EXISTS `lingshi`;
CREATE TABLE `lingshi`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lingshi
-- ----------------------------
INSERT INTO `lingshi` VALUES (1, '京东超市良品铺子高端零食鸭肉大礼包卤味鸭脖鸭掌肉类零食大礼包一整箱490g*1', '55.90', 'images/零食/2c007b3144c383f2.jpg', '//img13.360buyimg.com/n7/jfs/t1/26548/12/13648/269002/5ca1b9f3E211f6914/2c007b3144c383f2.jpg', '2c007b3144c383f2.jpg');
INSERT INTO `lingshi` VALUES (2, '京东超市三只松鼠每日坚果零食干果坚果礼盒大礼包孕妇零食小吃榛子巴旦木仁开心果混合果仁30袋装750g/盒', '149.00', 'images/零食/0a0ec4be7251df87.jpg', '//img12.360buyimg.com/n7/jfs/t1/4527/1/5981/186643/5ba1b24bE6c76c507/0a0ec4be7251df87.jpg', '0a0ec4be7251df87.jpg');
INSERT INTO `lingshi` VALUES (3, '六一儿童节休闲零食大礼包礼盒含进口食品零食小吃好吃的一整箱送男女友儿童女生团购麻辣包邮礼盒装', '128.00', 'images/零食/c3c0dae9d0506101.jpg', '//img12.360buyimg.com/n7/jfs/t1/4306/17/4183/321875/5b9b7474E9b2d66b9/c3c0dae9d0506101.png', 'c3c0dae9d0506101.jpg');
INSERT INTO `lingshi` VALUES (4, 'Orion好丽友营养早餐点心零食礼盒巧克力派30枚1020g/盒（新老包装随机发货）', '32.80', 'images/零食/bc52c02a786034b9.jpg', '//img13.360buyimg.com/n7/jfs/t1/36834/38/2878/174538/5cb6f4baE6b5c0b85/bc52c02a786034b9.jpg', 'bc52c02a786034b9.jpg');
INSERT INTO `lingshi` VALUES (5, '京东超市三只松鼠营养早餐口袋面包网红零食饼干蛋糕乳酸菌小伴侣面包520g整箱装', '28.90', 'images/零食/dc2268445a844a54.jpg', '//img12.360buyimg.com/n7/jfs/t1/2368/4/10421/132826/5bcb476bEeec43273/dc2268445a844a54.jpg', 'dc2268445a844a54.jpg');
INSERT INTO `lingshi` VALUES (6, '京东超市雀巢(Nestle)脆脆鲨休闲零食威化饼干巧克力口味独立包装24条*20g送8条*20g', '28.80', 'images/零食/5b7b9167N1a48e42d.jpg', '//img11.360buyimg.com/n7/jfs/t24466/364/2305915215/208098/67e6d60/5b7b9167N1a48e42d.jpg', '5b7b9167N1a48e42d.jpg');
INSERT INTO `lingshi` VALUES (7, '酷兮兮休闲零食大礼包一整箱送女友女生儿童礼盒网红进口好吃的组合装1500g', '149.90', 'images/零食/f4c041add32be6ed.jpg', '//img14.360buyimg.com/n7/jfs/t1/28652/20/5452/102665/5c3e8f4cE914c355e/f4c041add32be6ed.jpg', 'f4c041add32be6ed.jpg');
INSERT INTO `lingshi` VALUES (8, '京东超市良品铺子猪事顺利零食大礼包一箱零食猪饲料送女友生日礼物3157g', '199.00', 'images/零食/3808076b67fc2295.jpg', '//img11.360buyimg.com/n7/jfs/t1/37049/15/9991/95158/5cd24460E37fddda9/3808076b67fc2295.jpg', '3808076b67fc2295.jpg');
INSERT INTO `lingshi` VALUES (9, '京东超市杉城休闲零食大礼包一整箱送女友女生儿童礼盒食品网红进口好吃的组合装1500g', '146.90', 'images/零食/d0083ec0bef2f487.jpg', '//img13.360buyimg.com/n7/jfs/t1/24356/9/5486/101630/5c3e8eb4E6343b1bc/d0083ec0bef2f487.jpg', 'd0083ec0bef2f487.jpg');
INSERT INTO `lingshi` VALUES (10, '京东超市麦酥园肉类休闲零食大礼包一整箱送女友女生儿童礼盒豆干食品超市网红好吃的组合装1500g', '79.90', 'images/零食/5baddaacN2068de9e.jpg', '//img14.360buyimg.com/n7/jfs/t25429/345/1351017193/901258/821966a9/5baddaacN2068de9e.jpg', '5baddaacN2068de9e.jpg');
INSERT INTO `lingshi` VALUES (11, '京东超市口水娃零食大礼包肉类豆干鱼肉每食量贩组合500g/袋', '21.90', 'images/零食/b101d948abe73bd0.jpg', '//img13.360buyimg.com/n7/jfs/t1/33393/30/11571/881961/5cd50a78E745f0f7f/b101d948abe73bd0.jpg', 'b101d948abe73bd0.jpg');
INSERT INTO `lingshi` VALUES (12, '京东超市港荣蒸蛋糕饼干蛋糕手撕面包口袋吐司营养早餐食品休闲零食小吃奶香整箱900g', '39.90', 'images/零食/e97073b9fee27e1d.jpg', '//img10.360buyimg.com/n7/jfs/t1/24719/4/15377/376386/5caff612Ed2715284/e97073b9fee27e1d.jpg', 'e97073b9fee27e1d.jpg');
INSERT INTO `lingshi` VALUES (13, '麦酥园肉类休闲零食大礼包一整箱送女友女生儿童礼盒辣味豆干网红食品超市好吃的1500g', '79.90', 'images/零食/5b83451fN7006faa6.jpg', '//img11.360buyimg.com/n7/jfs/t22687/25/2447765717/506313/4de5bf2c/5b83451fN7006faa6.jpg', '5b83451fN7006faa6.jpg');
INSERT INTO `lingshi` VALUES (14, '京东超市杉城网红休闲零食大礼包一整箱送女友女生儿童礼盒食品超市进口好吃的2000g', '109.90', 'images/零食/e41e267d7838c33e.jpg', '//img12.360buyimg.com/n7/jfs/t1/7129/16/6388/222716/5be0ed4eE4c290ec2/e41e267d7838c33e.jpg', 'e41e267d7838c33e.jpg');
INSERT INTO `lingshi` VALUES (15, '京东超市三只松鼠巨型网红零食大礼包2.0升级版30包抖音一整箱送礼肩扛大零食猪饲料送女友礼盒（新老包装交替发货）', '189.00', 'images/零食/b565f2ba9497c87d.jpg', '//img12.360buyimg.com/n7/jfs/t1/35845/9/5347/185483/5cc8350fEfc8733a8/b565f2ba9497c87d.jpg', 'b565f2ba9497c87d.jpg');
INSERT INTO `lingshi` VALUES (16, '京东超市良品铺子高端零食手撕面包棒糕点面包营养早餐即食小吃750g*1', '35.80', 'images/零食/b76380e82eb20a53.jpg', '//img14.360buyimg.com/n7/jfs/t1/32165/14/8941/182550/5ca1ba21E799ad2ae/b76380e82eb20a53.jpg', 'b76380e82eb20a53.jpg');
INSERT INTO `lingshi` VALUES (17, '京东超市馋小贝休闲零食大礼包一整箱送女友女生儿童网红礼盒食品超市进口好吃的组合装2000g', '109.90', 'images/零食/5b149695N8225ba76.jpg', '//img13.360buyimg.com/n7/jfs/t21679/22/694083500/810221/a991e513/5b149695N8225ba76.jpg', '5b149695N8225ba76.jpg');
INSERT INTO `lingshi` VALUES (18, '京东超市咪咪虾条虾味怀旧好吃膨化零食大礼包网红休闲小点心糕点（18g*20包）360g/袋', '9.90', 'images/零食/59583a1dN16748a8e.jpg', '//img12.360buyimg.com/n7/jfs/t6277/218/1823355660/323342/cdbcaddc/59583a1dN16748a8e.jpg', '59583a1dN16748a8e.jpg');
INSERT INTO `lingshi` VALUES (19, '杉城休闲零食大礼包一整箱送女友女生儿童网红礼盒食品超市进口好吃的组合装1800g', '149.90', 'images/零食/69066f3f65a38ffa.jpg', '//img13.360buyimg.com/n7/jfs/t1/19679/9/5600/346107/5c404999E247610bb/69066f3f65a38ffa.jpg', '69066f3f65a38ffa.jpg');
INSERT INTO `lingshi` VALUES (20, '京东超市口水娃休闲零食零食大礼包生日礼物送女友肉类豆干薯片零食一整箱礼盒1100g', '39.90', 'images/零食/5cda8846N1ee2a317.jpg', '//img10.360buyimg.com/n7/jfs/t11062/168/2889319382/420151/cd91231b/5cda8846N1ee2a317.jpg', '5cda8846N1ee2a317.jpg');
INSERT INTO `lingshi` VALUES (21, '京东超市三只松鼠休闲零食网红孕妇儿童早餐面包蛋糕糕点办公室点心礼盒氧气吐司800g整箱装', '36.90', 'images/零食/9b907d319268ce79.jpg', '//img11.360buyimg.com/n7/jfs/t1/6640/40/1070/166628/5bcb4a78E395a3505/9b907d319268ce79.jpg', '9b907d319268ce79.jpg');
INSERT INTO `lingshi` VALUES (22, '京东超市三只松鼠芒果干蜜饯果干芒果片休闲零食办公室小吃果脯水果干116g/袋', '9.90', 'images/零食/5b45a90fNf52c7f98.jpg', '//img13.360buyimg.com/n7/jfs/t24172/102/854767124/252353/94c6986d/5b45a90fNf52c7f98.jpg', '5b45a90fNf52c7f98.jpg');
INSERT INTO `lingshi` VALUES (23, '京东超市三只松鼠休闲零食肉脯牛肉干手撕牛肉麻辣味蜀香牛肉100g', '20.90', 'images/零食/5b31bb7eNff817be1.jpg', '//img13.360buyimg.com/n7/jfs/t23227/272/499658916/323598/83fa1b90/5b31bb7eNff817be1.jpg', '5b31bb7eNff817be1.jpg');
INSERT INTO `lingshi` VALUES (24, '京东超市三只松鼠手撕面包饼干蛋糕零食大礼包酵母面包早餐口袋软面包礼盒1000g/盒', '29.90', 'images/零食/31c436371d9f7e38.jpg', '//img11.360buyimg.com/n7/jfs/t1/12014/36/14625/150163/5ca95d3cEa1a391ea/31c436371d9f7e38.jpg', '31c436371d9f7e38.jpg');
INSERT INTO `lingshi` VALUES (25, '六一儿童节休闲零食大礼包礼盒进口食品零食好吃的一整箱送女友儿童女生团购我的女神', '118.00', 'images/零食/73a0df3cfeabe191.jpg', '//img11.360buyimg.com/n7/jfs/t1/4349/29/4187/359517/5b9b7848Ed5d6fd03/73a0df3cfeabe191.png', '73a0df3cfeabe191.jpg');
INSERT INTO `lingshi` VALUES (26, '京东超市派力特休闲零食掌心脆干脆面办公室休闲零食方便面干吃面混合口味50包1050g', '24.80', 'images/零食/301bb015489afb78.jpg', '//img12.360buyimg.com/n7/jfs/t1/12087/14/4343/344116/5c2f1032Efd2344ee/301bb015489afb78.jpg', '301bb015489afb78.jpg');
INSERT INTO `lingshi` VALUES (27, '京东超市泰国原装进口休闲零食老板仔调味炸海苔脆紫菜经典原味32g/袋', '9.90', 'images/零食/5afeced2N8d5eb907.jpg', '//img12.360buyimg.com/n7/jfs/t20344/312/151155848/217344/e0403b13/5afeced2N8d5eb907.jpg', '5afeced2N8d5eb907.jpg');
INSERT INTO `lingshi` VALUES (28, '京东超市印尼进口Tango威化饼干休闲零食咔咔脆威化饼干巧克力味160g/盒', '17.80', 'images/零食/5b5804b3Nb7638cf7.jpg', '//img11.360buyimg.com/n7/jfs/t21871/219/2471606850/476457/63e63438/5b5804b3Nb7638cf7.jpg', '5b5804b3Nb7638cf7.jpg');
INSERT INTO `lingshi` VALUES (29, '京东超市葡记长崎蛋糕蜂蜜味1000g整箱大包装休闲零食饼干早餐小蛋糕点代餐口袋面包', '34.90', 'images/零食/5aaa3e06N77e00da6.jpg', '//img12.360buyimg.com/n7/jfs/t15313/204/2594437802/143900/92f3e34c/5aaa3e06N77e00da6.jpg', '5aaa3e06N77e00da6.jpg');
INSERT INTO `lingshi` VALUES (30, '京东超市卫龙休闲零食辣条网红怀旧零食大礼包办公室零食亲嘴烧1250g/袋约80片（口味随机发货）', '29.90', 'images/零食/5860e2c8N0883857a.jpg', '//img13.360buyimg.com/n7/jfs/t3127/141/5082684848/239996/b37d5dd8/5860e2c8N0883857a.jpg', '5860e2c8N0883857a.jpg');

-- ----------------------------
-- Table structure for macbook
-- ----------------------------
DROP TABLE IF EXISTS `macbook`;
CREATE TABLE `macbook`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of macbook
-- ----------------------------
INSERT INTO `macbook` VALUES (1, 'AppleMacbookAir13.3|Corei58G128GSSD苹果笔记本电脑轻薄本银色MQD32CH/A', '5799.00', 'images/macbook/f3fb909386a790a4.jpg', '//img11.360buyimg.com/n7/jfs/t1/19909/19/2981/167543/5c231ea8Ed0bfe0c0/f3fb909386a790a4.jpg', 'f3fb909386a790a4.jpg');
INSERT INTO `macbook` VALUES (2, 'AppleMacbookPro13.3【带触控栏】Corei58G256GSSD深空灰苹果笔记本电脑轻薄本MR9Q2CH/A', '12599.00', 'images/macbook/6c2a5e9f2d14489a.jpg', '//img13.360buyimg.com/n7/jfs/t1/15445/5/2946/178160/5c2325f9Ee9236ae9/6c2a5e9f2d14489a.jpg', '6c2a5e9f2d14489a.jpg');
INSERT INTO `macbook` VALUES (3, 'AppleMacbookPro13.3【带触控栏】Corei58G256GSSD银色苹果笔记本电脑轻薄本MR9U2CH/A', '12588.00', 'images/macbook/5b4ee806N5fdcb463.jpg', '//img13.360buyimg.com/n7/jfs/t21631/84/2298558907/306845/1e75dd0c/5b4ee806N5fdcb463.jpg', '5b4ee806N5fdcb463.jpg');
INSERT INTO `macbook` VALUES (4, 'AppleMacBookAir13.3|Corei58G256GSSD银色苹果笔记本电脑轻薄本Z0UU00056原MQD42CH/A', '7399.00', 'images/macbook/a2ad5e2122fb9cce.jpg', '//img11.360buyimg.com/n7/jfs/t1/20264/11/2997/167543/5c231efeEa139f83d/a2ad5e2122fb9cce.jpg', 'a2ad5e2122fb9cce.jpg');
INSERT INTO `macbook` VALUES (5, 'AppleMacBookAir13.3|定制升级Corei78G128GSSD硬盘银色苹果笔记本电脑轻薄本Z0UU00022', '6999.00', 'images/macbook/0fb5eb90a6cb7066.jpg', '//img11.360buyimg.com/n7/jfs/t1/21878/9/2966/167543/5c231e4fE1817c631/0fb5eb90a6cb7066.jpg', '0fb5eb90a6cb7066.jpg');
INSERT INTO `macbook` VALUES (6, 'APPLE苹果2018新款MacBookPro13.3英寸苹果笔记本电脑2017款超薄笔记本18新款MR9U2CH/A银色-256G带Bar', '11838.00', 'images/macbook/5cda97c0Nb255805d.jpg', '//img13.360buyimg.com/n7/jfs/t10459/72/2848021776/160944/ffb76300/5cda97c0Nb255805d.jpg', '5cda97c0Nb255805d.jpg');
INSERT INTO `macbook` VALUES (7, 'AppleMacbookPro13.3【无触控栏】Corei58G256GSSD深空灰苹果笔记本电脑轻薄本MPXT2CH/A', '10499.00', 'images/macbook/1dccc3f8d3ac7aec.jpg', '//img10.360buyimg.com/n7/jfs/t1/18145/6/3031/160202/5c234ef2E3dcdaedd/1dccc3f8d3ac7aec.jpg', '1dccc3f8d3ac7aec.jpg');
INSERT INTO `macbook` VALUES (8, 'AppleMacbookPro15.4【带触控栏】Corei716G512GRP560X深空灰苹果笔记本电脑轻薄本工作站MR942CH/A', '19499.00', 'images/macbook/5b4f0e3aN262237fc.jpg', '//img10.360buyimg.com/n7/jfs/t23386/9/1066712099/277967/615ccafb/5b4f0e3aN262237fc.jpg', '5b4f0e3aN262237fc.jpg');
INSERT INTO `macbook` VALUES (9, 'AppleMacbookPro15.4【带触控栏】Corei716G256GRP555X深空灰苹果笔记本电脑轻薄本MR932CH/A', '17499.00', 'images/macbook/5b4f0dd7Nf3eb96b8.jpg', '//img14.360buyimg.com/n7/jfs/t19960/20/1662777286/277967/615ccafb/5b4f0dd7Nf3eb96b8.jpg', '5b4f0dd7Nf3eb96b8.jpg');
INSERT INTO `macbook` VALUES (10, 'AppleMacBookAir13.3|2018款RetinaCorei58G128GSSD银色苹果笔记本电脑轻薄本MREA2CH/A', '8799.00', 'images/macbook/153210ae11da3aaa.jpg', '//img13.360buyimg.com/n7/jfs/t1/3796/23/13488/146183/5bd8a3f5E4062cffd/153210ae11da3aaa.jpg', '153210ae11da3aaa.jpg');
INSERT INTO `macbook` VALUES (11, 'AppleMacBookAir13.3|2018款Retina屏幕Corei58G128GSSD金色苹果笔记本电脑轻薄本MREE2CH/A', '8799.00', 'images/macbook/1b39cd443cf592c4.jpg', '//img12.360buyimg.com/n7/jfs/t1/4454/11/13674/165981/5bd8a565Ed41f5707/1b39cd443cf592c4.jpg', '1b39cd443cf592c4.jpg');
INSERT INTO `macbook` VALUES (12, 'APPLE苹果MacBookair苹果笔记本电脑13.3英寸超薄笔记本（套餐下单送大礼包）标配+防水手提包+苹果原装鼠标版（下单送大礼包）i5+8GB内存+128GB闪存【D32】', '6258.00', 'images/macbook/5cda9774Nd4b6418f.jpg', '//img14.360buyimg.com/n7/jfs/t11407/289/2917540835/164494/52ff916e/5cda9774Nd4b6418f.jpg', '5cda9774Nd4b6418f.jpg');
INSERT INTO `macbook` VALUES (13, 'AppleMacbookPro13.3【带触控栏】Corei58G512GSSD深空灰苹果笔记本电脑轻薄本MR9R2CH/A', '13999.00', 'images/macbook/5b4ee7b0N71d257c8.jpg', '//img13.360buyimg.com/n7/jfs/t22198/231/2279924230/129068/a3c297f3/5b4ee7b0N71d257c8.jpg', '5b4ee7b0N71d257c8.jpg');
INSERT INTO `macbook` VALUES (14, 'AppleMacBookAir13.3|2018款RetinaCorei58G128GSSD深空灰苹果笔记本电脑轻薄本MRE82CH/A', '8799.00', 'images/macbook/b3cc2f3bf386bcbb.jpg', '//img11.360buyimg.com/n7/jfs/t1/1220/37/13788/157410/5bd8a51bEe66a9536/b3cc2f3bf386bcbb.jpg', 'b3cc2f3bf386bcbb.jpg');
INSERT INTO `macbook` VALUES (15, 'AppleMacbookPro15.4【带触控栏】Corei716G256GRP555X银色苹果笔记本电脑轻薄本MR962CH/A', '17499.00', 'images/macbook/36d8bfda38f63ed0.jpg', '//img11.360buyimg.com/n7/jfs/t1/16306/7/3018/159586/5c23291eE705b275f/36d8bfda38f63ed0.jpg', '36d8bfda38f63ed0.jpg');
INSERT INTO `macbook` VALUES (16, 'AppleMacbookPro13.3【带触控栏】Corei58G512GSSD银色苹果笔记本电脑轻薄本MR9V2CH/A', '13999.00', 'images/macbook/5b4ee86aN167038da.jpg', '//img14.360buyimg.com/n7/jfs/t20248/181/2296155383/306845/1e75dd0c/5b4ee86aN167038da.jpg', '5b4ee86aN167038da.jpg');
INSERT INTO `macbook` VALUES (17, 'AppleMacbookPro13.3【无触控栏】Corei58G256GSSD银色苹果笔记本电脑轻薄本MPXU2CH/A', '10499.00', 'images/macbook/604cacf9c46c65e9.jpg', '//img12.360buyimg.com/n7/jfs/t1/12172/17/3176/154601/5c234f20E1eb75385/604cacf9c46c65e9.jpg', '604cacf9c46c65e9.jpg');
INSERT INTO `macbook` VALUES (18, '【二手95新】AppleMacbookPro苹果笔记本电脑1315寸二手苹果电脑UQ2i52.08G256G13寸银新款', '7379.00', 'images/macbook/5cdb94d0N3d6e29b9.jpg', '//img12.360buyimg.com/n7/jfs/t28294/210/1276927995/221666/5b318a30/5cdb94d0N3d6e29b9.jpg', '5cdb94d0N3d6e29b9.jpg');
INSERT INTO `macbook` VALUES (19, 'AppleMacBookAir13.3|2018款Retina屏幕Corei58G256GSSD银色苹果笔记本电脑轻薄本MREC2CH/A', '10099.00', 'images/macbook/13815b707de3ec6e.jpg', '//img12.360buyimg.com/n7/jfs/t1/4010/6/13649/146183/5bd8a5a8Eee0af7c3/13815b707de3ec6e.jpg', '13815b707de3ec6e.jpg');
INSERT INTO `macbook` VALUES (20, '苹果（Apple）MacBookPro13.3英寸2018新款/2017款苹果笔记本电脑17款银色/128G/无Bar/MPXR2CH/A', '8688.00', 'images/macbook/5cda2f1cN3c471aed.jpg', '//img10.360buyimg.com/n7/jfs/t28792/28/1236344612/198808/c7cb386f/5cda2f1cN3c471aed.jpg', '5cda2f1cN3c471aed.jpg');
INSERT INTO `macbook` VALUES (21, 'AppleMacBookAir13.3|2018款Retina屏幕Corei58G256GSSD金色苹果笔记本电脑轻薄本MREF2CH/A', '10099.00', 'images/macbook/1a48271868141791.jpg', '//img13.360buyimg.com/n7/jfs/t1/6818/4/4307/165981/5bd8a646E4e9af211/1a48271868141791.jpg', '1a48271868141791.jpg');
INSERT INTO `macbook` VALUES (22, 'AppleMacBook12|Corei58G512GSSD硬盘深空灰苹果笔记本电脑轻薄本MNYG2CH/A', '11399.00', 'images/macbook/20e14f4311233e11.jpg', '//img10.360buyimg.com/n7/jfs/t1/8566/7/12329/112535/5c347b07E4e221ee8/20e14f4311233e11.jpg', '20e14f4311233e11.jpg');
INSERT INTO `macbook` VALUES (23, 'AppleMacBookAir13.3|定制升级Corei78G256GSSD硬盘银色苹果笔记本电脑轻薄本Z0UU0004J', '8399.00', 'images/macbook/f1c1e7172e6a77b1.jpg', '//img13.360buyimg.com/n7/jfs/t1/9418/29/10639/167543/5c231e77E3158d25c/f1c1e7172e6a77b1.jpg', 'f1c1e7172e6a77b1.jpg');
INSERT INTO `macbook` VALUES (24, '【二手95新】AppleMacbook苹果笔记本电脑12寸金银灰色二手超薄苹果笔记本16年金色He21.18G256GM3/256', '5679.00', 'images/macbook/5cdb94d0Nc683e9d4.jpg', '//img14.360buyimg.com/n7/jfs/t30487/263/1295069829/263356/8d6bcaf4/5cdb94d0Nc683e9d4.jpg', '5cdb94d0Nc683e9d4.jpg');
INSERT INTO `macbook` VALUES (25, 'AppleMacBookAir13.3|2018款Retina屏幕Corei58G256GSSD深空灰苹果笔记本电脑轻薄本MRE92CH/A', '10099.00', 'images/macbook/45456bbadbf461c0.jpg', '//img12.360buyimg.com/n7/jfs/t1/7954/37/3926/157410/5bd8a616Eb03ea2cb/45456bbadbf461c0.jpg', '45456bbadbf461c0.jpg');
INSERT INTO `macbook` VALUES (26, 'AppleMacBook12|Corem38G256GSSD硬盘深空灰苹果笔记本电脑轻薄本MNYF2CH/A', '9499.00', 'images/macbook/abee40d62d83a3fc.jpg', '//img11.360buyimg.com/n7/jfs/t1/29030/16/4754/112535/5c347a43E46791211/abee40d62d83a3fc.jpg', 'abee40d62d83a3fc.jpg');
INSERT INTO `macbook` VALUES (27, 'AppleMacbookPro13.3【无触控栏】Corei58G128GSSD深空灰苹果笔记本电脑轻薄本MPXQ2CH/A', '9099.00', 'images/macbook/73b1be81ffb3a40a.jpg', '//img11.360buyimg.com/n7/jfs/t1/24388/26/3020/160202/5c234dddE63137725/73b1be81ffb3a40a.jpg', '73b1be81ffb3a40a.jpg');
INSERT INTO `macbook` VALUES (28, 'AppleMacbookPro15.4【带触控栏】Corei716G512GRP560X银色苹果笔记本电脑轻薄本工作站MR972CH/A', '19499.00', 'images/macbook/059172d9637b2933.jpg', '//img14.360buyimg.com/n7/jfs/t1/11563/29/3866/159586/5c2329c8E0f30ab16/059172d9637b2933.jpg', '059172d9637b2933.jpg');
INSERT INTO `macbook` VALUES (29, '【二手95新】Apple/苹果MacBookPro苹果笔记本电脑Retina视网膜屏MF839i58G128G13.3寸', '4899.00', 'images/macbook/5cd67a6fN2cccb8d8.jpg', '//img11.360buyimg.com/n7/jfs/t26743/161/2630040242/165495/2f6d70ff/5cd67a6fN2cccb8d8.jpg', '5cd67a6fN2cccb8d8.jpg');

-- ----------------------------
-- Table structure for meibaijinghua
-- ----------------------------
DROP TABLE IF EXISTS `meibaijinghua`;
CREATE TABLE `meibaijinghua`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meibaijinghua
-- ----------------------------
INSERT INTO `meibaijinghua` VALUES (1, 'SK-II小银瓶50ml护肤套装化妆品礼盒（赠神仙水+氨基酸洗面奶）SK2精华液洁面乳补水保湿美白祛斑祛痘印', '1440.00', 'images/美白精华/5cdc121eN60607cb3.jpg', '//img11.360buyimg.com/n7/jfs/t11533/319/2911974534/320223/26d1fb96/5cdc121eN60607cb3.jpg', '5cdc121eN60607cb3.jpg');
INSERT INTO `meibaijinghua` VALUES (2, '玉兰油OLAY护肤套装博研诗Prox纯白方程式亮洁皙颜护肤品礼盒3件套(淡斑小白瓶精华液+面霜+爽肤水)保湿美白', '339.00 329.00', 'images/美白精华/3f4f8936b093153c.jpg', '//img10.360buyimg.com/n7/jfs/t1/28974/1/13762/135324/5ca2c445E173101a3/3f4f8936b093153c.jpg', '3f4f8936b093153c.jpg');
INSERT INTO `meibaijinghua` VALUES (3, '玉兰油OLAY精华液水感透白光塑精华露30ml（烟酰胺光感小白瓶面部精华女士美白祛斑新老包装随机发货）', '229.00', 'images/美白精华/5dda1139b329a618.jpg', '//img13.360buyimg.com/n7/jfs/t1/38403/24/3944/149492/5cc6c500E77c69a23/5dda1139b329a618.jpg', '5dda1139b329a618.jpg');
INSERT INTO `meibaijinghua` VALUES (4, '玉兰油OLAY护肤套装水感透白光塑精华露护肤品礼盒(光感小白瓶精华液30ml+面膜水100ml)补水保湿美白精华露', '239.00', 'images/美白精华/1334a72d7a0ba352.jpg', '//img10.360buyimg.com/n7/jfs/t1/42542/30/609/207839/5cc2cd9eE857ee2fb/1334a72d7a0ba352.jpg', '1334a72d7a0ba352.jpg');
INSERT INTO `meibaijinghua` VALUES (5, '海囤全球日本进口乐敦（ROHTO）MelanoCC药用美白精华液20ml/支淡斑淡痘印祛黄美白', '139.00', 'images/美白精华/599123c9N494d9d9f.jpg', '//img12.360buyimg.com/n7/jfs/t7831/132/289431591/335838/456933a0/599123c9N494d9d9f.jpg', '599123c9N494d9d9f.jpg');
INSERT INTO `meibaijinghua` VALUES (6, '玉兰油OLAY精华液博研诗Prox纯白方程式亮洁晳颜袪斑精华40ml（烟酰胺淡斑小白瓶美白新老包装随机发送）', '329.00 319.00', 'images/美白精华/e75ec2d21fee67a9.jpg', '//img12.360buyimg.com/n7/jfs/t1/37263/36/6359/130457/5cc5784bE705cf0ce/e75ec2d21fee67a9.jpg', 'e75ec2d21fee67a9.jpg');
INSERT INTO `meibaijinghua` VALUES (7, '绿叶美白精华套装礼盒（美白祛斑精华精华液修复肌底面部精华补水保湿淡斑美白提亮肤色细致毛孔）', '138.00', 'images/美白精华/b948bfe4221f1cc9.jpg', '//img11.360buyimg.com/n7/jfs/t1/9617/12/2609/123191/5bd2cae0Ec1ce04a7/b948bfe4221f1cc9.jpg', 'b948bfe4221f1cc9.jpg');
INSERT INTO `meibaijinghua` VALUES (8, 'SK-II小灯泡30ml（SK2精华液护肤品补水保湿美白祛斑祛痘印提亮肤色化妆品）', '1040.00', 'images/美白精华/5cdc10e3N4a16f01f.jpg', '//img11.360buyimg.com/n7/jfs/t29701/168/1311584628/179699/da938b81/5cdc10e3N4a16f01f.jpg', '5cdc10e3N4a16f01f.jpg');
INSERT INTO `meibaijinghua` VALUES (9, '珀莱雅PROYA烟酰胺美白精华液发光瓶护肤品套装提亮肤色改善暗哑补水保湿收缩毛孔化妆品', '169.00', 'images/美白精华/fa7ef246e80498c3.jpg', '//img14.360buyimg.com/n7/jfs/t1/27696/12/15303/188191/5cafea43E59f14bc7/fa7ef246e80498c3.jpg', 'fa7ef246e80498c3.jpg');
INSERT INTO `meibaijinghua` VALUES (10, '京东超市【买一送一】赫恩男士滋养美白保湿乳霜补水保湿润肤祛斑精华霜控油抗痘乳液面霜擦脸油护脸霜50g', '69.00', 'images/美白精华/590c12793a721297.jpg', '//img13.360buyimg.com/n7/jfs/t1/40381/17/5406/200985/5ccd554cE6f46890d/590c12793a721297.jpg', '590c12793a721297.jpg');
INSERT INTO `meibaijinghua` VALUES (11, '温碧泉力透白玻尿酸精华烟酰胺美白补水保湿护肤化妆品套装礼盒女（洁面乳+柔肤水+乳液+面霜+修颜霜+泥膜）', '199.00', 'images/美白精华/5b8df524N405917ca.jpg', '//img11.360buyimg.com/n7/jfs/t24985/273/1244886741/85117/ba1b1c3c/5b8df524N405917ca.jpg', '5b8df524N405917ca.jpg');
INSERT INTO `meibaijinghua` VALUES (12, '片仔癀珍珠臻白精华液40ml(补水保湿提亮肤色祛斑美白精华乳)', '202.00', 'images/美白精华/832d1b5f2e89726f.jpg', '//img13.360buyimg.com/n7/jfs/t1/9800/10/12703/153313/5c35a572E78dff90b/832d1b5f2e89726f.jpg', '832d1b5f2e89726f.jpg');
INSERT INTO `meibaijinghua` VALUES (13, '欧莱雅（LOREAL）科研致白三重源白精华液30ml（女士面部美白精华焕白亮肤保湿补水修复肌肤）', '257.90', 'images/美白精华/5da3560b49a5b05d.jpg', '//img10.360buyimg.com/n7/jfs/t1/18978/7/948/203367/5c0e3c6eE3b6efbb3/5da3560b49a5b05d.jpg', '5da3560b49a5b05d.jpg');
INSERT INTO `meibaijinghua` VALUES (14, '海囤全球韩国进口伊思（It’sskin）能量10美白保湿精华原液VC30ml提拉紧致细致毛孔', '69.00', 'images/美白精华/564abc16Ncedd826e.jpg', '//img13.360buyimg.com/n7/jfs/t1921/282/1222086815/159122/11f6516f/564abc16Ncedd826e.jpg', '564abc16Ncedd826e.jpg');
INSERT INTO `meibaijinghua` VALUES (15, '玉兰油OLAY精华液水感透白奇迹赋能肌底液护肤品30ml（深入美白焕醒肌肤提升后续吸收细致毛孔改善肤质）', '280.00', 'images/美白精华/5abb3334Neb4405c0.jpg', '//img11.360buyimg.com/n7/jfs/t15904/109/2744245667/116264/b30196b5/5abb3334Neb4405c0.jpg', '5abb3334Neb4405c0.jpg');
INSERT INTO `meibaijinghua` VALUES (16, '肤草集美白祛斑霜男女士去雀斑遗传斑晒斑老年斑黑斑淡化黑色素去黄护肤产品素颜面霜去斑精华', '149.00', 'images/美白精华/92669bd41a45e651.jpg', '//img13.360buyimg.com/n7/jfs/t1/47747/7/415/122941/5cd616f6E356c0d8e/92669bd41a45e651.jpg', '92669bd41a45e651.jpg');
INSERT INTO `meibaijinghua` VALUES (17, '欧缇丽(Caudalie)臻美亮白精华液30ml（淡斑小奶瓶美白淡斑提亮肤色均匀肤色）', '510.00', 'images/美白精华/5cd92da8Nf5646f63.jpg', '//img13.360buyimg.com/n7/jfs/t28852/60/1237287367/140608/a43f0bee/5cd92da8Nf5646f63.jpg', '5cd92da8Nf5646f63.jpg');
INSERT INTO `meibaijinghua` VALUES (18, '玉兰油OLAY护肤套装水感透白光塑精华露护肤品9件套（限量版星光护肤礼盒光感小白瓶美白祛斑保湿化妆品）', '489.00', 'images/美白精华/7962f80b331630ca.jpg', '//img13.360buyimg.com/n7/jfs/t1/34552/22/5291/375062/5cc55d57Ef0cca0c0/7962f80b331630ca.jpg', '7962f80b331630ca.jpg');
INSERT INTO `meibaijinghua` VALUES (19, '爱肤宜美白水光针涂抹式水光针玻尿酸原液精华液美肌白皙淡化斑精华面部精华补水保湿水光针面膜', '39.00', 'images/美白精华/5b1934a5N539a04bc.jpg', '//img12.360buyimg.com/n7/jfs/t22336/192/844674426/333630/7d20baf4/5b1934a5N539a04bc.jpg', '5b1934a5N539a04bc.jpg');
INSERT INTO `meibaijinghua` VALUES (20, '京东超市HFP烟酰胺原液精华补水保湿面部美肤白皙祛黄提亮肤色小白瓶15ml', '145.00', 'images/美白精华/5cda7ffcNa865205a.jpg', '//img12.360buyimg.com/n7/jfs/t10471/272/2873100473/58968/3c5a1240/5cda7ffcNa865205a.jpg', '5cda7ffcNa865205a.jpg');
INSERT INTO `meibaijinghua` VALUES (21, '玉兰油OLAY精华液水感透白臻粹修护精华露30ml（紧致小白瓶日本进口透白有光美白紧致女士烟酰胺精华）', '419.00 389.00', 'images/美白精华/16fcd4d1f8ad4bb0.jpg', '//img13.360buyimg.com/n7/jfs/t1/34443/27/8793/151831/5cce94a4E10038ba6/16fcd4d1f8ad4bb0.jpg', '16fcd4d1f8ad4bb0.jpg');
INSERT INTO `meibaijinghua` VALUES (22, '高姿（COGI）匀净美肌修护套装（洁面乳+大白水+透亮乳+面霜+精华液+面膜）护肤品套装女美白保湿提亮肤色', '440.00', 'images/美白精华/61e7ff1664c845a4.jpg', '//img12.360buyimg.com/n7/jfs/t1/19970/40/6320/158723/5c50113bEd06eb891/61e7ff1664c845a4.jpg', '61e7ff1664c845a4.jpg');
INSERT INTO `meibaijinghua` VALUES (23, '欧诗漫OSM珍珠白美白淡斑护肤化妆品套装礼盒女补水保湿提亮肤色（洗面奶+爽肤水+乳液+眼霜）', '329.00', 'images/美白精华/5cd92eabNa35fe587.jpg', '//img11.360buyimg.com/n7/jfs/t11395/76/2824571545/180027/dcddfdf8/5cd92eabNa35fe587.jpg', '5cd92eabNa35fe587.jpg');
INSERT INTO `meibaijinghua` VALUES (24, '玉兰油（OLAY）小白瓶美白淡斑烟酰胺补水保湿面部精华液水感透白光塑精华露', '169.90', 'images/美白精华/5cdcc818Nd3bc6df1.jpg', '//img14.360buyimg.com/n7/jfs/t11212/254/2940575912/76367/6324a635/5cdcc818Nd3bc6df1.jpg', '5cdcc818Nd3bc6df1.jpg');
INSERT INTO `meibaijinghua` VALUES (25, '美丽加芬维他命C美白精华液30ml补水保湿提肤亮色', '118.00', 'images/美白精华/5b2376d3N6526939b.jpg', '//img14.360buyimg.com/n7/jfs/t23572/154/35999976/189715/68cfa7a2/5b2376d3N6526939b.jpg', '5b2376d3N6526939b.jpg');
INSERT INTO `meibaijinghua` VALUES (26, '京东超市亚缇克兰(URTEKRAM)美白祛斑精华乳30ml(美白祛斑补水保湿)', '69.90', 'images/美白精华/5b8f9ddaN1c942c59.jpg', '//img10.360buyimg.com/n7/jfs/t26290/94/391398811/86121/b37744cd/5b8f9ddaN1c942c59.jpg', '5b8f9ddaN1c942c59.jpg');
INSERT INTO `meibaijinghua` VALUES (27, '玉兰油OLAY护肤套装水感透白臻粹蝴蝶节护肤品礼盒（紧致小白瓶精华液30ml+小哑铃7000）烟酰胺美白精华露', '629.00 599.00', 'images/美白精华/17117f7013592014.jpg', '//img13.360buyimg.com/n7/jfs/t1/30670/24/8352/218710/5c9e595dE2b434bbe/17117f7013592014.jpg', '17117f7013592014.jpg');
INSERT INTO `meibaijinghua` VALUES (28, '透真美白精华露30ml（美白祛斑肌底液烟酰胺淡斑补水保湿面部精华原液男女士）', '138.00', 'images/美白精华/5af92753c64fd012.jpg', '//img14.360buyimg.com/n7/jfs/t1/9512/18/8875/60473/5c0f990eEe61d7b80/5af92753c64fd012.jpg', '5af92753c64fd012.jpg');
INSERT INTO `meibaijinghua` VALUES (29, '欧诗漫OSM化妆品套装营养美肤晶彩无暇补水保湿洁水乳护肤品礼盒女（洗面奶+爽肤水+眼霜+乳液+面霜）', '139.00', 'images/美白精华/ce22cbb721b9d39f.jpg', '//img11.360buyimg.com/n7/jfs/t1/38776/4/7022/166969/5cd906f4Ef92c8516/ce22cbb721b9d39f.jpg', 'ce22cbb721b9d39f.jpg');
INSERT INTO `meibaijinghua` VALUES (30, '萃然美祛斑美白霜男士女精华淡去斑产品素颜套装正品去黄马油面霜乳液补水保湿护肤品', '68.00', 'images/美白精华/90fa828df4a9cfeb.jpg', '//img14.360buyimg.com/n7/jfs/t1/53308/18/439/173994/5cd57f62E8f5f8a50/90fa828df4a9cfeb.jpg', '90fa828df4a9cfeb.jpg');

-- ----------------------------
-- Table structure for mianmo
-- ----------------------------
DROP TABLE IF EXISTS `mianmo`;
CREATE TABLE `mianmo`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mianmo
-- ----------------------------
INSERT INTO `mianmo` VALUES (1, '赫恩男士面膜美肤白皙补水保湿控油去痘印收缩毛孔去黑头约会面膜27片', '89.00', 'images/面膜/92a6224f9250d513.jpg', '//img12.360buyimg.com/n7/jfs/t1/24060/5/8821/148135/5c78a315E32e9e8a2/92a6224f9250d513.jpg', '92a6224f9250d513.jpg');
INSERT INTO `mianmo` VALUES (2, '京东超市WIS隐形水润面膜【24片装】补水保湿玻尿酸清洁控油收缩毛孔提亮肤色男女士学生贴化妆品套装', '89.00', 'images/面膜/9552d1d312d7511d.jpg', '//img11.360buyimg.com/n7/jfs/t1/75624/10/2/234006/5cd24abcE424549f3/9552d1d312d7511d.png', '9552d1d312d7511d.jpg');
INSERT INTO `mianmo` VALUES (3, '美迪惠尔(Mediheal)水润保湿面膜10片水库针剂(补水男女护肤适用）可莱丝韩国进口', '128.00 109.00', 'images/面膜/5b34ee1afb443c29.jpg', '//img11.360buyimg.com/n7/jfs/t1/27975/37/11766/291481/5c93570dE81e4386c/5b34ee1afb443c29.jpg', '5b34ee1afb443c29.jpg');
INSERT INTO `mianmo` VALUES (4, '一叶子补水面膜营润亮颜奢养面膜礼盒30片（新鲜奢养15片+黑松露15片)保湿去黑头收缩毛孔男女护肤品套装', '129.00', 'images/面膜/6068650d2d28087f.jpg', '//img13.360buyimg.com/n7/jfs/t1/26611/4/12001/342301/5c93038cE7ccb606c/6068650d2d28087f.jpg', '6068650d2d28087f.jpg');
INSERT INTO `mianmo` VALUES (5, 'MG美即面膜净采保湿亮肤京东定制款护肤面膜礼盒40片（补水控油清洁亮肤男女面膜套装）', '79.00', 'images/面膜/5cda6f16N9274b126.jpg', '//img14.360buyimg.com/n7/jfs/t10249/36/2837874500/275478/d5c35141/5cda6f16N9274b126.jpg', '5cda6f16N9274b126.jpg');
INSERT INTO `mianmo` VALUES (6, '海囤全球韩国进口蒂佳婷(Dr.jart+)水动力活力水润蓝色药丸面膜5片/盒快速紧急补水', '109.00', 'images/面膜/58fdb6a5N68dde194.jpg', '//img14.360buyimg.com/n7/jfs/t5551/160/329741133/205414/3ac1307/58fdb6a5N68dde194.jpg', '58fdb6a5N68dde194.jpg');
INSERT INTO `mianmo` VALUES (7, 'utena佑天兰黄金果冻玻尿酸面膜3片/盒(红色款深层补水面膜男女士适用)日本面膜', '89.00', 'images/面膜/457ee3d83886dd2b.jpg', '//img14.360buyimg.com/n7/jfs/t1/30730/4/2083/284794/5c652180Ed0d703f6/457ee3d83886dd2b.jpg', '457ee3d83886dd2b.jpg');
INSERT INTO `mianmo` VALUES (8, '京东超市自然堂（CHANDO）喜马拉雅膜法雪域百合补水面膜26ml*5片（保湿补水男女士面膜贴）', '36.00', 'images/面膜/7857d2ec3c531849.jpg', '//img10.360buyimg.com/n7/jfs/t1/26554/1/9442/129933/5c7e685eE9325e95f/7857d2ec3c531849.jpg', '7857d2ec3c531849.jpg');
INSERT INTO `mianmo` VALUES (9, '海囤全球韩国进口春雨(paparecipe)蜂蜜面膜补水保湿舒缓滋润面膜敏感肌可用黄色经典版10片/盒新旧款随机发货', '129.00', 'images/面膜/5638db5ca2f65107.jpg', '//img13.360buyimg.com/n7/jfs/t1/20922/8/3027/100806/5c232559E36fae382/5638db5ca2f65107.jpg', '5638db5ca2f65107.jpg');
INSERT INTO `mianmo` VALUES (10, '御泥坊鲜果水嫩缤纷面膜套装35片（熬夜补水面膜女玻尿酸保湿提亮晒后修护烟酰胺男女学生护肤化妆品）', '86.00', 'images/面膜/825561e0a34c188d.jpg', '//img12.360buyimg.com/n7/jfs/t1/34942/31/7044/406711/5cc66e21E77ac129a/825561e0a34c188d.jpg', '825561e0a34c188d.jpg');
INSERT INTO `mianmo` VALUES (11, '自然堂(CHANDO)喜马拉雅植物沁润补水面膜贴28片护肤套装(补水保湿滋润控油平衡提拉紧致男女士面贴膜)', '119.00', 'images/面膜/01402443b65c7120.jpg', '//img12.360buyimg.com/n7/jfs/t1/15954/19/1422/181597/5c122a62Ebc5c4ba4/01402443b65c7120.jpg', '01402443b65c7120.jpg');
INSERT INTO `mianmo` VALUES (12, '京东超市WIS玻尿酸极润面膜24片补水保湿提亮肤色收缩毛孔控油清洁男女士学生面膜贴片式化妆品套装', '119.00', 'images/面膜/c21052d5299716e9.jpg', '//img11.360buyimg.com/n7/jfs/t1/55423/32/340/71398/5cd4e104E775de5a0/c21052d5299716e9.jpg', 'c21052d5299716e9.jpg');
INSERT INTO `mianmo` VALUES (13, 'utena佑天兰黄金果冻面膜3盒9片补水保湿提亮肤色紧致面膜(男女护肤套装)日本面膜', '150.00', 'images/面膜/422720f56dc4785c.jpg', '//img10.360buyimg.com/n7/jfs/t1/20807/33/14290/160735/5ca5a68aE97bdb899/422720f56dc4785c.jpg', '422720f56dc4785c.jpg');
INSERT INTO `mianmo` VALUES (14, '京东超市一叶子嫩石榴净透补水面膜25ml*5片/盒（提亮嫩肤补水滋润水嫩净透补水保湿面膜女）', '58.00', 'images/面膜/5afe4bc6N5283db79.jpg', '//img14.360buyimg.com/n7/jfs/t16720/278/2598137633/89690/de7c403d/5afe4bc6N5283db79.jpg', '5afe4bc6N5283db79.jpg');
INSERT INTO `mianmo` VALUES (15, 'JMsolution肌司研莹润蜂胶面膜30ml*10片(JM水光蜂蜜面膜补水保湿韩国进口新老包装随机发货）', '69.90', 'images/面膜/69fb1c1f061ba558.jpg', '//img11.360buyimg.com/n7/jfs/t1/6922/31/5086/183308/5bdbba67E2dd05516/69fb1c1f061ba558.jpg', '69fb1c1f061ba558.jpg');
INSERT INTO `mianmo` VALUES (16, '韩后（Hanhoo）水嘟嘟补水鲜嫩面膜贴套装30片（面膜女补水保湿提亮肤色清洁收缩毛孔男女护肤品套装）', '99.00', 'images/面膜/5cd64166N362a31c3.jpg', '//img12.360buyimg.com/n7/jfs/t10579/213/2728667357/189096/310fe523/5cd64166N362a31c3.jpg', '5cd64166N362a31c3.jpg');
INSERT INTO `mianmo` VALUES (17, '海囤全球泰国进口妆蕾RAY金色蚕丝面膜10片/盒提亮修复抗皱紧致轻透祛痘品牌直供', '88.00', 'images/面膜/5b179388Nbe5d93fb.jpg', '//img12.360buyimg.com/n7/jfs/t20797/91/764337379/276201/466eaf2a/5b179388Nbe5d93fb.jpg', '5b179388Nbe5d93fb.jpg');
INSERT INTO `mianmo` VALUES (18, '欧诗漫(osm)补水面膜女水润隐形清洁玻尿酸面膜贴28片保湿护肤化妆品免洗套装(敏感肌肤男女通用）加赠7片', '89.90', 'images/面膜/5cd92393Nf90aa782.jpg', '//img14.360buyimg.com/n7/jfs/t28354/186/1170995877/273999/7c6ff8a0/5cd92393Nf90aa782.jpg', '5cd92393Nf90aa782.jpg');
INSERT INTO `mianmo` VALUES (19, '麦吉丽（mageline）生物质石墨烯面膜四盒', '752.00', 'images/面膜/5cdc0b63N937114c9.jpg', '//img14.360buyimg.com/n7/jfs/t10456/271/2921018634/73295/f2fdab5e/5cdc0b63N937114c9.jpg', '5cdc0b63N937114c9.jpg');
INSERT INTO `mianmo` VALUES (20, '海囤全球韩国进口JMsolutionJM面膜水光针剂急救面膜10片/盒', '99.00', 'images/面膜/5afa785aN45225f40.jpg', '//img12.360buyimg.com/n7/jfs/t21916/26/83835851/150465/1c00bff/5afa785aN45225f40.jpg', '5afa785aN45225f40.jpg');
INSERT INTO `mianmo` VALUES (21, '美迪惠尔(Mediheal)美白保湿黑炭面膜10片水库针剂(补水美白男女护肤适用）可莱丝韩国进口', '128.00', 'images/面膜/e04bc6c34d517309.jpg', '//img11.360buyimg.com/n7/jfs/t1/15817/6/12033/205946/5c93682eEd44b147a/e04bc6c34d517309.jpg', 'e04bc6c34d517309.jpg');
INSERT INTO `mianmo` VALUES (22, 'WIS玻尿酸面膜24片（三重玻尿酸精华深层补水保湿面膜男女护肤品套装礼盒）', '138.00 116.00', 'images/面膜/5a6e50b7ef646a6e.jpg', '//img10.360buyimg.com/n7/jfs/t1/3357/7/6675/205285/5ba340f5E8d372e62/5a6e50b7ef646a6e.jpg', '5a6e50b7ef646a6e.jpg');
INSERT INTO `mianmo` VALUES (23, '膜法世家吸黑水润雪肌黑面膜贴21片装补水面膜保湿化妆品护肤套装', '59.90', 'images/面膜/5be710eaNabd6425a.jpg', '//img14.360buyimg.com/n7/jfs/t27331/297/1604653086/90954/64d59392/5be710eaNabd6425a.jpg', '5be710eaNabd6425a.jpg');
INSERT INTO `mianmo` VALUES (24, '欧莱雅LOREAL男士炭爽净油保湿面膜套装（面膜18片）（男士面膜面膜男补水面膜）', '126.00', 'images/面膜/854039711a95302f.jpg', '//img14.360buyimg.com/n7/jfs/t1/34784/22/7246/243306/5cc6b7ceE8fed4259/854039711a95302f.jpg', '854039711a95302f.jpg');
INSERT INTO `mianmo` VALUES (25, 'utena佑天兰黄金果冻艳肌面膜4盒13片(深层补水修护面膜套装京东自营)日本面膜', '185.00', 'images/面膜/1d042f53933b8bbb.jpg', '//img12.360buyimg.com/n7/jfs/t1/30024/21/9478/171030/5ca5a6d5E941fcbc2/1d042f53933b8bbb.jpg', '1d042f53933b8bbb.jpg');
INSERT INTO `mianmo` VALUES (26, '海囤全球韩国进口蒂佳婷（Dr.Jart+）水动力舒缓补水绿色药丸面膜25g*5片/盒（舒缓镇静快速补水晒后修复）', '109.00', 'images/面膜/5907e98fN49d55e09.jpg', '//img14.360buyimg.com/n7/jfs/t5557/253/833072874/116314/97bb9662/5907e98fN49d55e09.jpg', '5907e98fN49d55e09.jpg');
INSERT INTO `mianmo` VALUES (27, 'JMsolution肌司研水光针剂急救面膜35g*10片（韩国原装进口补水保湿、水润亮肤、舒缓修复）', '69.90', 'images/面膜/8f2dcd8c2ed03df7.jpg', '//img10.360buyimg.com/n7/jfs/t1/16531/11/7515/405464/5c6cc7d7E4e8ea234/8f2dcd8c2ed03df7.jpg', '8f2dcd8c2ed03df7.jpg');
INSERT INTO `mianmo` VALUES (28, '美迪惠尔(Mediheal)胶原蛋白面膜10片水库针剂(补水男女护肤适用）可莱丝韩国进口', '109.00', 'images/面膜/73a0d8a62498cebc.jpg', '//img10.360buyimg.com/n7/jfs/t1/22339/40/11879/242652/5c9367dfEf9949a92/73a0d8a62498cebc.jpg', '73a0d8a62498cebc.jpg');
INSERT INTO `mianmo` VALUES (29, '海囤全球韩国进口JMsolutionJM面膜水光蜂蜜面膜10片/盒玻尿酸精华补水保湿', '99.00', 'images/面膜/5afa77d3Nea396237.jpg', '//img10.360buyimg.com/n7/jfs/t20911/35/82545071/265523/f5adefb/5afa77d3Nea396237.jpg', '5afa77d3Nea396237.jpg');
INSERT INTO `mianmo` VALUES (30, '海囤全球美迪惠尔(Mediheal)可莱丝N.M.F针剂水库面膜贴（升级版）深层补水保湿进口直采可追溯10片/盒', '99.00', 'images/面膜/aeb1e9ebb76f47fa.jpg', '//img11.360buyimg.com/n7/jfs/t1/7740/27/12192/340645/5c344d88Ec0f8ccbe/aeb1e9ebb76f47fa.jpg', 'aeb1e9ebb76f47fa.jpg');

-- ----------------------------
-- Table structure for neicuntiao
-- ----------------------------
DROP TABLE IF EXISTS `neicuntiao`;
CREATE TABLE `neicuntiao`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of neicuntiao
-- ----------------------------
INSERT INTO `neicuntiao` VALUES (1, '逸星家园（yixingjiayuan)海盗船8G/16GDDR43000/3200台式机电脑内存条32008G单条', '319.00', 'images/内存条/9779dbcfb748c549.jpg', '//img13.360buyimg.com/n7/jfs/t1/52950/6/5927/91851/5d383c79E9e778930/9779dbcfb748c549.jpg', '9779dbcfb748c549.jpg');
INSERT INTO `neicuntiao` VALUES (2, '金士顿(Kingston)DDR426668GB台式机内存骇客神条Fury雷电系列', '279.00', 'images/内存条/7a0d147bba28cf27.jpg', '//img14.360buyimg.com/n7/jfs/t1/53107/12/7612/48848/5d52aabeE27bdcf2c/7a0d147bba28cf27.jpg', '7a0d147bba28cf27.jpg');
INSERT INTO `neicuntiao` VALUES (3, '金士顿(Kingston)DDR424008GB台式机内存骇客神条Fury雷电系列', '269.00', 'images/内存条/5a1cd523N27f9b8a2.jpg', '//img12.360buyimg.com/n7/jfs/t12451/166/1227532677/90377/6155f6a0/5a1cd523N27f9b8a2.jpg', '5a1cd523N27f9b8a2.jpg');
INSERT INTO `neicuntiao` VALUES (4, '金士顿(Kingston)DDR4266616GB(8G×2)套装台式机内存骇客神条Fury雷电系列', '559.00', 'images/内存条/6b588b78f503d411.jpg', '//img11.360buyimg.com/n7/jfs/t1/59662/12/7014/61062/5d52abeaEa6e678e1/6b588b78f503d411.jpg', '6b588b78f503d411.jpg');
INSERT INTO `neicuntiao` VALUES (5, '芝奇（G.SKILL）16GB(8G×2)套装DDR43200频率台式机内存条幻光戟RGB灯条(C16)', '799.00', 'images/内存条/589a7190N62b6ee82.jpg', '//img10.360buyimg.com/n7/jfs/t3082/185/5978515992/258515/dc6beac1/589a7190N62b6ee82.jpg', '589a7190N62b6ee82.jpg');
INSERT INTO `neicuntiao` VALUES (6, '金士顿(Kingston)DDR4320016GB台式机内存骇客神条Fury雷电系列', '599.00', 'images/内存条/fb491c03cbc33720.jpg', '//img10.360buyimg.com/n7/jfs/t1/63335/4/7095/48848/5d52acafE49d0aeb6/fb491c03cbc33720.jpg', 'fb491c03cbc33720.jpg');
INSERT INTO `neicuntiao` VALUES (7, '联想ThinkCentre盒装4GB/8GBDDR42400台式电脑内存条三年全国联保4GBDDR4-2400Mhz内存盒装(三年保修)', '299.00', 'images/内存条/25deda34e2263ee1.jpg', '//img14.360buyimg.com/n7/jfs/t1/17518/33/8122/210962/5c74c1c5Efb86b1af/25deda34e2263ee1.jpg', '25deda34e2263ee1.jpg');
INSERT INTO `neicuntiao` VALUES (8, '金士顿(Kingston)DDR4266616GB台式机内存骇客神条Fury雷电系列', '549.00', 'images/内存条/5b4eb2f2Nb6efc3c0.jpg', '//img14.360buyimg.com/n7/jfs/t23662/108/1043510783/90377/6155f6a0/5b4eb2f2Nb6efc3c0.jpg', '5b4eb2f2Nb6efc3c0.jpg');
INSERT INTO `neicuntiao` VALUES (9, '威刚（ADATA）DDR4300016GB(8GBx2)套装台式机内存XPG-Z1游戏威龙(金色)', '539.00', 'images/内存条/ab9d9eacf39f7bb0.jpg', '//img13.360buyimg.com/n7/jfs/t1/43384/27/564/374410/5cc2c849E96f59699/ab9d9eacf39f7bb0.jpg', 'ab9d9eacf39f7bb0.jpg');
INSERT INTO `neicuntiao` VALUES (10, '金士顿(Kingston)DDR432008GB台式机内存骇客神条Fury雷电系列', '315.00', 'images/内存条/0ef52ef1f487391d.jpg', '//img11.360buyimg.com/n7/jfs/t1/54536/10/7537/48848/5d52ac61E97005fec/0ef52ef1f487391d.jpg', '0ef52ef1f487391d.jpg');
INSERT INTO `neicuntiao` VALUES (11, '金士顿(Kingston)DDR4320016GB(8G×2)套装台式机内存骇客神条Predator掠食者系列RGB灯条', '769.00', 'images/内存条/5bb0c0baNb5eca769.jpg', '//img12.360buyimg.com/n7/jfs/t24592/180/1396845503/136217/c1e78a14/5bb0c0baNb5eca769.jpg', '5bb0c0baNb5eca769.jpg');
INSERT INTO `neicuntiao` VALUES (12, '金士顿(Kingston)DDR426668GB笔记本内存骇客神条Impact系列', '289.00', 'images/内存条/5b4eb44eNe2fbd8d5.jpg', '//img12.360buyimg.com/n7/jfs/t21262/266/2244880094/138007/cca26763/5b4eb44eNe2fbd8d5.jpg', '5b4eb44eNe2fbd8d5.jpg');
INSERT INTO `neicuntiao` VALUES (13, '三星（SAMSUNG）笔记本内存条DDR3/DDR4戴尔华硕联想惠普宏碁微星神舟苹果电脑适用DDR426668G笔记本内存条', '278.00', 'images/内存条/23de55a00ceafbbe.jpg', '//img10.360buyimg.com/n7/jfs/t1/72177/19/9151/225972/5d706718Ed4ea256c/23de55a00ceafbbe.jpg', '23de55a00ceafbbe.jpg');
INSERT INTO `neicuntiao` VALUES (14, '金士顿(Kingston)DDR316008GB台式机内存', '299.00', 'images/内存条/5a1cd5d8N84f979a4.jpg', '//img13.360buyimg.com/n7/jfs/t11731/146/2690004918/61615/4323eb45/5a1cd5d8N84f979a4.jpg', '5a1cd5d8N84f979a4.jpg');
INSERT INTO `neicuntiao` VALUES (15, '美商海盗船(USCORSAIR)DDR4320016GB(8G×2)套装台式机内存条复仇者LPX系列双通道游戏型', '649.00', 'images/内存条/5a2e3fdbN833e26c5.jpg', '//img14.360buyimg.com/n7/jfs/t14749/293/476597803/95781/d0dd0396/5a2e3fdbN833e26c5.jpg', '5a2e3fdbN833e26c5.jpg');
INSERT INTO `neicuntiao` VALUES (16, '金士顿(Kingston)DDR4240016GB台式机内存骇客神条Fury雷电系列', '529.00', 'images/内存条/5a1cd573Ncf674889.jpg', '//img11.360buyimg.com/n7/jfs/t12049/198/1257960463/90377/6155f6a0/5a1cd573Ncf674889.jpg', '5a1cd573Ncf674889.jpg');
INSERT INTO `neicuntiao` VALUES (17, '十铨(Team)火神系列DDR426668G台式机内存红色', '239.00', 'images/内存条/9243681ff334ead6.jpg', '//img12.360buyimg.com/n7/jfs/t1/7753/35/16069/62126/5c779735E5a0ac957/9243681ff334ead6.jpg', '9243681ff334ead6.jpg');
INSERT INTO `neicuntiao` VALUES (18, '金士顿(Kingston)DDR316004GB台式机内存', '159.00', 'images/内存条/5a17dbadN912b8357.jpg', '//img11.360buyimg.com/n7/jfs/t13318/74/995467297/66350/dcdfa6f6/5a17dbadN912b8357.jpg', '5a17dbadN912b8357.jpg');
INSERT INTO `neicuntiao` VALUES (19, '美商海盗船（USCORSAIR）内存复仇者DDR4台式机电脑超频马甲内存条LPX马甲条8G-3000单条(8G*1条)', '299.00', 'images/内存条/6c0bdcc1759463be.jpg', '//img11.360buyimg.com/n7/jfs/t1/72148/38/9268/134970/5d706718E477be1fe/6c0bdcc1759463be.jpg', '6c0bdcc1759463be.jpg');
INSERT INTO `neicuntiao` VALUES (20, '美商海盗船(USCORSAIR)DDR4320016GB台式机内存条复仇者LPX系列游戏型', '609.00', 'images/内存条/5b066af6N26e99c0c.jpg', '//img11.360buyimg.com/n7/jfs/t22096/5/238754257/55158/57e69548/5b066af6N26e99c0c.jpg', '5b066af6N26e99c0c.jpg');
INSERT INTO `neicuntiao` VALUES (21, '美商海盗船(USCORSAIR)DDR4320016GB(8G×2)套装台式机内存条复仇者RGBPRO灯条黑色电竞玩家款', '739.00', 'images/内存条/5b20b990N53eac2d6.jpg', '//img13.360buyimg.com/n7/jfs/t22309/49/1130620606/402665/2ebf1a11/5b20b990N53eac2d6.jpg', '5b20b990N53eac2d6.jpg');
INSERT INTO `neicuntiao` VALUES (22, '十铨(Team)DELTARGB系列DDR4300016G(8G×2)套装台式机内存黑色', '589.00', 'images/内存条/17b0e365561c985b.jpg', '//img14.360buyimg.com/n7/jfs/t1/7312/36/15650/106560/5c77968fEe8f4c477/17b0e365561c985b.jpg', '17b0e365561c985b.jpg');
INSERT INTO `neicuntiao` VALUES (23, '芝奇（G.SKILL）16GB(8Gx2)套装3600频率DDR4台式机内存皇家戟RGB灯条(花耀银)', '1299.00', 'images/内存条/bf64971e7ada6a9c.jpg', '//img10.360buyimg.com/n7/jfs/t1/47485/37/2623/106818/5d072dcfE045cdd87/bf64971e7ada6a9c.jpg', 'bf64971e7ada6a9c.jpg');
INSERT INTO `neicuntiao` VALUES (24, '金士顿(Kingston)DDR316008GB台式机内存骇客神条Fury雷电系列蓝色', '289.00', 'images/内存条/5a1cd5b7Nb515157d.jpg', '//img10.360buyimg.com/n7/jfs/t12142/305/1234691750/59810/95c6f5f/5a1cd5b7Nb515157d.jpg', '5a1cd5b7Nb515157d.jpg');
INSERT INTO `neicuntiao` VALUES (25, '协德(xiede)笔记本DDR313334G内存条1.5VPC3电脑内存', '89.90', 'images/内存条/02f2903d44a7e1a4.jpg', '//img12.360buyimg.com/n7/jfs/t1/55933/18/9509/274829/5d6e8185E9af3a2c0/02f2903d44a7e1a4.jpg', '02f2903d44a7e1a4.jpg');
INSERT INTO `neicuntiao` VALUES (26, '威刚（ADATA）DDR426668GB台式机内存万紫千红', '259.00', 'images/内存条/9baf9417f4df4afb.jpg', '//img11.360buyimg.com/n7/jfs/t1/31564/33/15618/117401/5cc2bf97E891cf4ac/9baf9417f4df4afb.jpg', '9baf9417f4df4afb.jpg');
INSERT INTO `neicuntiao` VALUES (27, '宇瞻（Apacer）8GB2666频率DDR4台式机内存条/黑豹系列-呈现游戏真髓', '239.00', 'images/内存条/2762b3edbdf98331.jpg', '//img14.360buyimg.com/n7/jfs/t1/32390/36/5671/77680/5c87180eE63a72dee/2762b3edbdf98331.jpg', '2762b3edbdf98331.jpg');
INSERT INTO `neicuntiao` VALUES (28, '金士顿(Kingston)DDR4320016GB(8G×2)套装台式机内存骇客神条Fury雷电系列', '649.00', 'images/内存条/7079eab9a03471a0.jpg', '//img11.360buyimg.com/n7/jfs/t1/60353/15/7058/61062/5d52ad0cEf0355aed/7079eab9a03471a0.jpg', '7079eab9a03471a0.jpg');
INSERT INTO `neicuntiao` VALUES (29, '三星(SAMSUNG)笔记本内存条DDR4DDR3DDR3L4G8G16G兼容联想戴尔华硕惠普DDR3L16001.35V【笔记本内存条】8G', '235.00', 'images/内存条/2816064dc1b79d3b.jpg', '//img14.360buyimg.com/n7/jfs/t1/42821/40/13883/137683/5d7082c6Ed7cb647e/2816064dc1b79d3b.jpg', '2816064dc1b79d3b.jpg');
INSERT INTO `neicuntiao` VALUES (30, '美商海盗船(USCORSAIR)DDR430008GB台式机内存条复仇者LPX系列游戏型', '299.00', 'images/内存条/5a336257N8c29cbef.jpg', '//img11.360buyimg.com/n7/jfs/t12088/133/2140918787/51851/750ab8e1/5a336257N8c29cbef.jpg', '5a336257N8c29cbef.jpg');

-- ----------------------------
-- Table structure for neiyi
-- ----------------------------
DROP TABLE IF EXISTS `neiyi`;
CREATE TABLE `neiyi`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of neiyi
-- ----------------------------
INSERT INTO `neiyi` VALUES (1, '都市丽人光面无痕薄款文胸3/4杯聚拢舒适女士内衣调整胸罩文胸女2B7205黑色34/75B杯', '79.90 73.90', 'images/内衣/6a94f3e57f0623c5.jpg', '//img13.360buyimg.com/n7/jfs/t1/3136/12/10741/335112/5bcfee4cEfc605562/6a94f3e57f0623c5.jpg', '6a94f3e57f0623c5.jpg');
INSERT INTO `neiyi` VALUES (2, '英诺莉斯女士内裤女丁字裤蕾丝性感低腰诱惑透明T裤内裤黑色4条装均码', '49.00', 'images/内衣/c1a2893469c84d95.jpg', '//img14.360buyimg.com/n7/jfs/t1/33731/15/9419/142767/5ccaf074Ecf5c3a02/c1a2893469c84d95.jpg', 'c1a2893469c84d95.jpg');
INSERT INTO `neiyi` VALUES (3, '蜜格儿光面无痕无钢圈胸罩聚拢薄款性感女士内衣学生少女文胸套装WN4494银灰色75B', '88.00', 'images/内衣/5b80f2b3N0d888111.jpg', '//img13.360buyimg.com/n7/jfs/t26692/339/26042141/225897/c999d75c/5b80f2b3N0d888111.jpg', '5b80f2b3N0d888111.jpg');
INSERT INTO `neiyi` VALUES (4, '侨樱琪日本无钢圈文胸聚拢防滑少女无痕背心式运动内衣女套装薄款防震睡眠胸罩跑步学生瑜伽抹胸灰色+肤色M（建议100-120斤75BCD&80AB', '69.00', 'images/内衣/e15a5f3a892e571f.jpg', '//img11.360buyimg.com/n7/jfs/t1/33152/19/8501/76299/5cc6c01dE66ad69b7/e15a5f3a892e571f.jpg', 'e15a5f3a892e571f.jpg');
INSERT INTO `neiyi` VALUES (5, '雅黛琳文胸无钢圈聚拢女士收副乳刺绣调整型本命年红色性感大码内衣女胸罩绿色AB同杯80/36', '69.00', 'images/内衣/a2b3f6ca6f2bdca6.jpg', '//img12.360buyimg.com/n7/jfs/t1/14117/25/15498/216267/5cb17bccEe50ba7b0/a2b3f6ca6f2bdca6.jpg', 'a2b3f6ca6f2bdca6.jpg');
INSERT INTO `neiyi` VALUES (6, '法国KJ内衣套装女聚拢无钢圈文胸上托性感调整型胸罩收副乳防下垂小胸绿色75A=34A(配M码内裤)', '168.00', 'images/内衣/5b880db2N0c81c47d.jpg', '//img10.360buyimg.com/n7/jfs/t27874/276/177475213/355757/5bebd6aa/5b880db2N0c81c47d.jpg', '5b880db2N0c81c47d.jpg');
INSERT INTO `neiyi` VALUES (7, '贝芙丽无钢圈三角杯女内衣舒适文胸套装法式bralette性感胸罩酒红XL(85A85B85C)+内裤XL', '79.00', 'images/内衣/42e54c5ab68da016.jpg', '//img11.360buyimg.com/n7/jfs/t1/18213/31/8598/324338/5c77aa8fE09322239/42e54c5ab68da016.jpg', '42e54c5ab68da016.jpg');
INSERT INTO `neiyi` VALUES (8, '前扣文胸新品无钢圈性感蕾丝美背小胸聚拢少女内衣厚薄胸罩咖啡色75B=34B', '75.00', 'images/内衣/a5169fcb2db03627.jpg', '//img11.360buyimg.com/n7/jfs/t1/34835/2/2843/152010/5cb6f05cEbe6cb1ac/a5169fcb2db03627.jpg', 'a5169fcb2db03627.jpg');
INSERT INTO `neiyi` VALUES (9, '法国KJ无钢圈前扣蕾丝收副乳聚拢调整型文胸女士内衣套装肤色【套装】75B', '168.00 134.40', 'images/内衣/a1f892c14d717314.jpg', '//img10.360buyimg.com/n7/jfs/t1/30110/13/4936/145149/5c812b84Eae0cb6b0/a1f892c14d717314.jpg', 'a1f892c14d717314.jpg');
INSERT INTO `neiyi` VALUES (10, '京东超市都市丽人文胸套装聚拢无钢圈薄款性感蕾丝胸罩手掌杯女士内衣套装2B7558黑色34/75B', '119.90 99.90', 'images/内衣/f5c3965f4b4a696d.jpg', '//img10.360buyimg.com/n7/jfs/t1/4104/19/2132/163818/5b95e762E9eff60d8/f5c3965f4b4a696d.jpg', 'f5c3965f4b4a696d.jpg');
INSERT INTO `neiyi` VALUES (11, '雅黛琳【2件价】聚拢无钢圈文胸调整型性感女士条纹大码薄款深V美背内衣女胸罩深蓝+酒红34/75AB', '69.00', 'images/内衣/d3bcf8c8c3d98e1e.jpg', '//img12.360buyimg.com/n7/jfs/t1/33767/2/2429/187908/5caf03f2E07e799a6/d3bcf8c8c3d98e1e.jpg', 'd3bcf8c8c3d98e1e.jpg');
INSERT INTO `neiyi` VALUES (12, '法国KJ无肩带性感文胸隐形内衣无钢圈聚拢小胸加厚一字肩胸贴加厚抹胸胸罩女肤色75B=34B(单文胸)', '138.00 112.00', 'images/内衣/5af33b89N26c00370.jpg', '//img11.360buyimg.com/n7/jfs/t18031/98/2390361589/53787/3def7841/5af33b89N26c00370.jpg', '5af33b89N26c00370.jpg');
INSERT INTO `neiyi` VALUES (13, '南极人（Nanjiren）NTX15191条装性感安全裤防走光裤舒适打底裤平角女士内裤黑色均码', '20.00', 'images/内衣/5b55a8a4Nde1cd236.jpg', '//img13.360buyimg.com/n7/jfs/t20236/215/2466124449/132615/14d8f64c/5b55a8a4Nde1cd236.jpg', '5b55a8a4Nde1cd236.jpg');
INSERT INTO `neiyi` VALUES (14, '都市丽人无钢圈文胸性感抹胸全罩杯防走光女士内衣舒适文胸2B6502肤色75B', '79.90 69.90', 'images/内衣/5ae16996Nd73f3255.jpg', '//img12.360buyimg.com/n7/jfs/t17305/66/2014695478/390255/4db26d68/5ae16996Nd73f3255.jpg', '5ae16996Nd73f3255.jpg');
INSERT INTO `neiyi` VALUES (15, '爱心东东南极人聚拢无钢圈文胸大码内衣文胸女士本命年红色内衣女调整型胸罩性感美背套装【升级版#无钢圈】孔雀绿34/75A送配套内裤', '78.00 69.00', 'images/内衣/6cfd1054e22a6593.jpg', '//img13.360buyimg.com/n7/jfs/t1/27052/15/4965/327142/5c36e7a9E726372e5/6cfd1054e22a6593.jpg', '6cfd1054e22a6593.jpg');
INSERT INTO `neiyi` VALUES (16, '文胸套装女甜美少女蝴蝶结透气胸罩内衣女美背聚拢无钢圈粉色套装34/75AB', '128.00', 'images/内衣/31780bd9cb8f00ee.jpg', '//img13.360buyimg.com/n7/jfs/t1/10707/13/7949/267182/5c30467eEa4ea2112/31780bd9cb8f00ee.jpg', '31780bd9cb8f00ee.jpg');
INSERT INTO `neiyi` VALUES (17, '2019新款无痕无钢圈文胸豹眼性感聚拢舒适调整型收副乳欧美风内衣女套装豹眼34/75B', '168.00 138.00', 'images/内衣/44c2ad764ed86460.jpg', '//img12.360buyimg.com/n7/jfs/t1/37210/13/2550/209857/5cb61367Ec18cbabf/44c2ad764ed86460.jpg', '44c2ad764ed86460.jpg');
INSERT INTO `neiyi` VALUES (18, '京东超市浪莎丝袜性感开档免脱包芯丝超薄情趣丝袜女内衣连裤袜均码黑肤各1双', '29.00', 'images/内衣/90d6ad043e1b54e8.jpg', '//img10.360buyimg.com/n7/jfs/t1/29996/29/7650/335349/5c6e3446E227b4fd6/90d6ad043e1b54e8.jpg', '90d6ad043e1b54e8.jpg');
INSERT INTO `neiyi` VALUES (19, '纯树（4条装）内裤女士纯棉中腰抗菌内裆女学生无痕性感三角裤包臀底裤抑菌透气少女式蕾丝边三角裤头A【肤色+浅蓝+浅灰+黑色】L（1.9-2.2尺）', '59.90', 'images/内衣/5bbeeed4N0ae05d53.jpg', '//img13.360buyimg.com/n7/jfs/t24688/43/1899313726/448950/22d1970c/5bbeeed4N0ae05d53.jpg', '5bbeeed4N0ae05d53.jpg');
INSERT INTO `neiyi` VALUES (20, '侨樱琪内衣一片式无钢圈聚拢文胸女调整型美背舒适套装薄款性感胸罩粉色(AB同杯)80/36', '69.00', 'images/内衣/5de509f111e92618.jpg', '//img11.360buyimg.com/n7/jfs/t1/27958/30/6105/170197/5c4abdc7E0c4dbad9/5de509f111e92618.jpg', '5de509f111e92618.jpg');
INSERT INTO `neiyi` VALUES (21, '俞兆林肚兜女内裤2件套睡衣裤春夏网纱蕾丝拼接性感情趣家居服内衣酒红色均码', '39.00', 'images/内衣/4535d4878671703b.jpg', '//img14.360buyimg.com/n7/jfs/t1/25854/37/12415/87485/5c988759Ef05a9fb5/4535d4878671703b.jpg', '4535d4878671703b.jpg');
INSERT INTO `neiyi` VALUES (22, '蒙娜诗琦5条装内裤女网纱性感蕾丝无痕透明女士内裤红色/黑色/天蓝色/粉色/紫色均码(合适2.3尺腰围以内)', '55.00', 'images/内衣/5a9dd7ff920690b9.jpg', '//img10.360buyimg.com/n7/jfs/t1/12000/40/4358/76148/5c282207E547a3ad4/5a9dd7ff920690b9.jpg', '5a9dd7ff920690b9.jpg');
INSERT INTO `neiyi` VALUES (23, '紫曼羽新款内衣女薄款红色半杯文胸套装聚拢棉杯本命年红蕾丝大码美背舒适薄杯小胸罩酒红色75B+M', '168.00', 'images/内衣/5cd9bcefNe3d97076.jpg', '//img11.360buyimg.com/n7/jfs/t10903/248/2832731645/143230/dd7b7878/5cd9bcefNe3d97076.jpg', '5cd9bcefNe3d97076.jpg');
INSERT INTO `neiyi` VALUES (24, '法国KJ新款夏季蕾丝边光面运动睡眠肌肤棉内衣无痕舒适透气柔软无肩带文胸套装黑色【套装】75B=34B(配M码内裤)', '168.00', 'images/内衣/9ed1284dd864c17a.jpg', '//img12.360buyimg.com/n7/jfs/t1/31785/28/11012/170591/5cb36316E1b21b19d/9ed1284dd864c17a.jpg', '9ed1284dd864c17a.jpg');
INSERT INTO `neiyi` VALUES (25, '欧迪芬聚拢文胸性感蕾丝内衣内裤女文胸套装XA83523妃粉色B75(B34)+M(160/90)', '194.00', 'images/内衣/5cda14eaNbd897105.jpg', '//img12.360buyimg.com/n7/jfs/t29554/175/1229376276/170970/af38d4a8/5cda14eaNbd897105.jpg', '5cda14eaNbd897105.jpg');
INSERT INTO `neiyi` VALUES (26, '硅胶胸贴无肩带乳贴聚拢文胸隐形婚纱文胸游泳抹胸性感一片式无痕内衣硅胶肤色均码', '59.00', 'images/内衣/59bb8217N41a0a0c0.jpg', '//img11.360buyimg.com/n7/jfs/t9181/247/1553934593/126579/acf0861e/59bb8217N41a0a0c0.jpg', '59bb8217N41a0a0c0.jpg');
INSERT INTO `neiyi` VALUES (27, '茵淇娜一片式无钢圈聚拢舒适性感文胸内衣女调整型薄款美背套装性感胸罩浅蓝+粉色(AB同杯)75/34', '79.00', 'images/内衣/04b8a2d2b78dc830.jpg', '//img12.360buyimg.com/n7/jfs/t1/30678/22/5812/153062/5c88b140Ea458f449/04b8a2d2b78dc830.jpg', '04b8a2d2b78dc830.jpg');
INSERT INTO `neiyi` VALUES (28, '都市丽人刺绣无钢圈文胸性感蕾丝聚拢女士胸罩内衣2B6513黑色36/80B杯', '89.90 83.90', 'images/内衣/6e281b7eb20a30e8.jpg', '//img13.360buyimg.com/n7/jfs/t1/1422/26/16444/128288/5be293f0E936de113/6e281b7eb20a30e8.jpg', '6e281b7eb20a30e8.jpg');
INSERT INTO `neiyi` VALUES (29, '法国KJ无钢圈文胸小胸聚拢深V性感调整型蕾丝文胸套装女士本命年品牌胸罩上托侧收少女内衣新款绿色75B=34B(配内裤)', '168.00', 'images/内衣/5b858917N16f724e9.jpg', '//img12.360buyimg.com/n7/jfs/t27880/339/127741203/156378/afb77cf/5b858917N16f724e9.jpg', '5b858917N16f724e9.jpg');
INSERT INTO `neiyi` VALUES (30, '【第2件5折】浪莎（langsha）哺乳文胸透气无钢圈全罩杯无痕喂奶胸罩大码聚拢防下垂孕妇内衣豆沙紫M', '98.00', 'images/内衣/2015689f002f7192.jpg', '//img11.360buyimg.com/n7/jfs/t1/7554/20/13254/160099/5c412ce4E9a02943d/2015689f002f7192.jpg', '2015689f002f7192.jpg');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(11) NOT NULL,
  `tablename` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goodname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `question` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `answer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '示例', '示例', '示例', '示例');
INSERT INTO `question` VALUES (2, '布偶猫', '土炮哥宠物布偶猫活体宠物猫咪活体纯种宠物猫幼猫活体宠物活体海豹双色蓝双布偶猫咪活体双血统', 'zmksb?', NULL);
INSERT INTO `question` VALUES (3, '布偶猫', '缘宠布偶猫布偶猫活体幼体宠物猫幼崽活体仙女猫可爱小猫咪北京可实地挑选', '搞些什么东西?', NULL);

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply`  (
  `id` int(11) NOT NULL,
  `tablename` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goodname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `words` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `commentowner` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES (1, '布偶猫', '淘狗无忧布偶猫宠物猫活体猫咪活体布偶双色纯种猫纯种布拉多尔猫幼崽疫苗齐全全国配送宠物级公', '你说得好', 'driver king', 'driver king');
INSERT INTO `reply` VALUES (2, '布偶猫', '【超美仙女猫】Lauren上海猫舍布偶猫活体海双色布偶猫咪可爱布偶猫宠物猫仙女猫可上门看猫全款', '哈哈哈', 'You happy just Ok', 'You happy just Ok');
INSERT INTO `reply` VALUES (3, '蓝猫', '宁宠英短蓝猫活体猫咪活体英短蓝白宠物猫活体宠物级公', '左梦珂傻逼', 'You happy just Ok', 'You happy just Ok');

-- ----------------------------
-- Table structure for sanxing
-- ----------------------------
DROP TABLE IF EXISTS `sanxing`;
CREATE TABLE `sanxing`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sanxing
-- ----------------------------
INSERT INTO `sanxing` VALUES (1, '三星GalaxyS108GB+128GB炭晶黑（SM-G9730）3D超声波屏下指纹超感官全视屏骁龙855双卡双待全网通4G手机', '5999.00', 'images/三星/a1bda439038caa12.jpg', '//img13.360buyimg.com/n7/jfs/t1/15957/19/8176/189352/5c74b16fE441603e8/a1bda439038caa12.jpg', 'a1bda439038caa12.jpg');
INSERT INTO `sanxing` VALUES (2, '三星GalaxyS84GB+64GB谜夜黑（SM-G9500）全视曲面屏虹膜识别全网通4G双卡双待', '2798.00', 'images/三星/5b0d4f5cN32701716.jpg', '//img14.360buyimg.com/n7/jfs/t22399/256/428796627/286211/4107e0de/5b0d4f5cN32701716.jpg', '5b0d4f5cN32701716.jpg');
INSERT INTO `sanxing` VALUES (3, '三星GalaxyS8+6GB+128GB谜夜黑（SM-G9550）全视曲面屏虹膜识别全网通4G双卡双待', '3599.00', 'images/三星/59000294Ncfd9f9ee.jpg', '//img13.360buyimg.com/n7/jfs/t4894/345/2426573341/236389/f4e04f62/59000294Ncfd9f9ee.jpg', '59000294Ncfd9f9ee.jpg');
INSERT INTO `sanxing` VALUES (4, '三星GalaxyS108GB+128GB皓玉白（SM-G9730）超感官全视屏骁龙855双卡双待全网通4G游戏手机', '5999.00', 'images/三星/8a9eaa0ea1365ed0.jpg', '//img12.360buyimg.com/n7/jfs/t1/32472/22/3371/192059/5c74b147Ee2eaefb4/8a9eaa0ea1365ed0.jpg', '8a9eaa0ea1365ed0.jpg');
INSERT INTO `sanxing` VALUES (5, '三星GalaxyS10+8GB+128GB炭晶黑（SM-G9750）3D超声波屏下指纹超感官全视屏骁龙855双卡双待全网通4G手机', '6999.00', 'images/三星/cd5e37c9f7d2c0e3.jpg', '//img12.360buyimg.com/n7/jfs/t1/18901/8/8364/195905/5c74b243Ea5ec177a/cd5e37c9f7d2c0e3.jpg', 'cd5e37c9f7d2c0e3.jpg');
INSERT INTO `sanxing` VALUES (6, '三星GalaxyS10+8GB+128GB皓玉白（SM-G9750）3D超声波屏下指纹超感官全视屏双卡双待全网通4G游戏手机', '6999.00', 'images/三星/7abac18ca0e45f30.jpg', '//img12.360buyimg.com/n7/jfs/t1/10258/31/11947/205232/5c74b21eE06b4a484/7abac18ca0e45f30.jpg', '7abac18ca0e45f30.jpg');
INSERT INTO `sanxing` VALUES (7, '三星GalaxyA60元气版黑瞳全视屏3200万超广角拍照手机骁龙6756GB+64GB丹宁黑全网通4G双卡双待', '1499.00', 'images/三星/4e744548d22fc5ee.jpg', '//img10.360buyimg.com/n7/jfs/t1/36052/13/2917/90447/5cb6f8e6Edcf7ccf1/4e744548d22fc5ee.jpg', '4e744548d22fc5ee.jpg');
INSERT INTO `sanxing` VALUES (8, '【独角精灵版】三星GalaxyA8s6GB+128GB莓什么（SM-G8870）黑瞳全视屏手机骁龙710芯片全网通4G双卡双待', '2449.00', 'images/三星/8773086c82c1f708.jpg', '//img12.360buyimg.com/n7/jfs/t1/12201/24/6735/222034/5c60e01aEf9147784/8773086c82c1f708.jpg', '8773086c82c1f708.jpg');
INSERT INTO `sanxing` VALUES (9, '三星GalaxyS108GB+128GB琉璃绿（SM-G9730）3D超声波屏下指纹超感官全视屏骁龙855双卡双待全网通4G手机', '5999.00', 'images/三星/28427e48e5445f77.jpg', '//img14.360buyimg.com/n7/jfs/t1/25195/38/8303/214452/5c74b0fdE6988f08a/28427e48e5445f77.jpg', '28427e48e5445f77.jpg');
INSERT INTO `sanxing` VALUES (10, '三星GalaxyA9s(SM-A9200)全面屏手机后置四摄Bixby6GB+128GB鱼子黑全网通4G双卡双待', '2497.00', 'images/三星/7a3c99ac63859bbd.jpg', '//img11.360buyimg.com/n7/jfs/t1/30434/1/12126/290527/5cb6d6cbE4b4bc578/7a3c99ac63859bbd.jpg', '7a3c99ac63859bbd.jpg');
INSERT INTO `sanxing` VALUES (11, '三星GalaxyS84GB+64GB烟晶灰（SM-G9500）全视曲面屏虹膜识别全网通4G双卡双待', '2798.00', 'images/三星/5b233f3cNb4009bff.jpg', '//img13.360buyimg.com/n7/jfs/t20821/313/1254086768/83658/2f840167/5b233f3cNb4009bff.jpg', '5b233f3cNb4009bff.jpg');
INSERT INTO `sanxing` VALUES (12, '三星（SAMSUNG）128GBTF（MicroSD）存储卡U34KEVO升级版+读速100MB/s写速90MB/s支持4K高品质拍摄', '109.90', 'images/三星/a92438f8b5848da8.jpg', '//img11.360buyimg.com/n7/jfs/t1/19074/10/1824/75664/5c170543Eccb11d15/a92438f8b5848da8.jpg', 'a92438f8b5848da8.jpg');
INSERT INTO `sanxing` VALUES (13, '三星GalaxyS10e6GB+128GB沁柠黄（SM-G9700）超感官全视屏骁龙855双卡双待全网通4G手机', '4999.00', 'images/三星/8fcb5a40d337d292.jpg', '//img10.360buyimg.com/n7/jfs/t1/27996/22/8174/205185/5c74b083E4802f963/8fcb5a40d337d292.jpg', '8fcb5a40d337d292.jpg');
INSERT INTO `sanxing` VALUES (14, '三星GalaxyS10+8GB+128GB琉璃绿（SM-G9750）超感官全视屏骁龙855双卡双待全网通4G游戏手机', '6999.00', 'images/三星/e1c3e09fa028f865.jpg', '//img11.360buyimg.com/n7/jfs/t1/30890/9/3464/217742/5c74b1f6Ea4fa3179/e1c3e09fa028f865.jpg', 'e1c3e09fa028f865.jpg');
INSERT INTO `sanxing` VALUES (15, '三星GalaxyA9Star4GB+64GB极昼白（SM-G8850）全面屏手机BixbyAI美拍全网通4G双卡双待', '1699.00', 'images/三星/7e0909bf9af1e21e.jpg', '//img10.360buyimg.com/n7/jfs/t1/35855/19/1697/122270/5cb6d85aE286541fc/7e0909bf9af1e21e.jpg', '7e0909bf9af1e21e.jpg');
INSERT INTO `sanxing` VALUES (16, '三星GalaxyA9s6GB+128GB柠沁蓝(SM-A9200)全面屏手机后置四摄Bixby全网通4G双卡双待', '2497.00', 'images/三星/e6e743f2094026ec.jpg', '//img11.360buyimg.com/n7/jfs/t1/31039/22/12207/318508/5cb6d717E91680942/e6e743f2094026ec.jpg', 'e6e743f2094026ec.jpg');
INSERT INTO `sanxing` VALUES (17, '三星GalaxyS84GB+64GB雾屿蓝（SM-G9500）全视曲面屏虹膜识别全网通4G双卡双待', '2798.00', 'images/三星/5b233f56N26b86e97.jpg', '//img12.360buyimg.com/n7/jfs/t21721/111/1229903078/112369/bf5b42c2/5b233f56N26b86e97.jpg', '5b233f56N26b86e97.jpg');
INSERT INTO `sanxing` VALUES (18, '三星（SAMSUNG）250GBSSD固态硬盘SATA3.0接口860EVO（MZ-76E250B）', '339.00', 'images/三星/5bc05552N2aa18fd8.jpg', '//img10.360buyimg.com/n7/jfs/t25027/279/1994410610/120964/18425cab/5bc05552N2aa18fd8.jpg', '5bc05552N2aa18fd8.jpg');
INSERT INTO `sanxing` VALUES (19, '三星（SAMSUNG）27英寸曲面可壁挂HDMI接口节能爱眼认证FreeSync技术电脑显示器（C27F390F）', '1089.00', 'images/三星/e7930f61a5d2c106.jpg', '//img11.360buyimg.com/n7/jfs/t1/17100/3/1415/194637/5c121befEfda1e4b4/e7930f61a5d2c106.jpg', 'e7930f61a5d2c106.jpg');
INSERT INTO `sanxing` VALUES (20, '三星SAMSUNGGalaxyBuds真无线无线蓝牙入耳式耳机环境感知立体声运动耳机智能触控AKG品质音效魔力黑', '999.00', 'images/三星/4538334dfeb44e4b.jpg', '//img13.360buyimg.com/n7/jfs/t1/37671/14/9640/121571/5cd0fd04E8e3fb426/4538334dfeb44e4b.jpg', '4538334dfeb44e4b.jpg');
INSERT INTO `sanxing` VALUES (21, '爱心东东【3期免息豪礼套装】三星GalaxyA6s(SM-G6200)全面屏性价比智能手机撒浪黑全网通(6G+64G)+3期免息套装', '1438.00', 'images/三星/5bfbbdcfN47e2856f.jpg', '//img14.360buyimg.com/n7/jfs/t29938/23/702562137/99436/3e735506/5bfbbdcfN47e2856f.jpg', '5bfbbdcfN47e2856f.jpg');
INSERT INTO `sanxing` VALUES (22, '三星（SAMSUNG）23.5英寸1800R曲面广视角可壁挂HDMI高清接口爱眼电脑液晶显示器（C24F390FHC）', '829.00', 'images/三星/3e824376820ef711.jpg', '//img12.360buyimg.com/n7/jfs/t1/28636/3/15318/75805/5caee2daEeb13be94/3e824376820ef711.jpg', '3e824376820ef711.jpg');
INSERT INTO `sanxing` VALUES (23, '三星GalaxyNote96GB+128G丹青黑（SM-N9600）智能SPen大容量电池液冷散热系统全网通4G双卡双待', '5997.00', 'images/三星/36f8fb23dc003d39.jpg', '//img11.360buyimg.com/n7/jfs/t1/29020/33/6838/263557/5c661ff4Ea61427ec/36f8fb23dc003d39.jpg', '36f8fb23dc003d39.jpg');
INSERT INTO `sanxing` VALUES (24, '三星（SAMSUNG）1TBSSD固态硬盘SATA3.0接口860QVO（MZ-76Q1T0B）', '799.00', 'images/三星/bcae5b8c957cc0b9.jpg', '//img10.360buyimg.com/n7/jfs/t1/20099/19/2786/187887/5c208d8eEb0cc9a84/bcae5b8c957cc0b9.jpg', 'bcae5b8c957cc0b9.jpg');
INSERT INTO `sanxing` VALUES (25, '三星GalaxyA8s6GB+128GB极光黑（SM-G8870）黑瞳全视屏手机骁龙710芯片后置三摄全网通4G双卡双待', '2299.00', 'images/三星/7e40e4f56636d58d.jpg', '//img13.360buyimg.com/n7/jfs/t1/10497/19/4736/330833/5c0f7d5bE14201c6d/7e40e4f56636d58d.jpg', '7e40e4f56636d58d.jpg');
INSERT INTO `sanxing` VALUES (26, '三星(SAMSUNG)500GBType-cUSB3.1移动硬盘固态（PSSD）T5珊瑚蓝最大传输速度540MB/s安全便携', '639.00', 'images/三星/30a896f19cf46dd2.jpg', '//img10.360buyimg.com/n7/jfs/t1/23766/21/5447/136671/5c3ec54eE51f105b2/30a896f19cf46dd2.jpg', '30a896f19cf46dd2.jpg');
INSERT INTO `sanxing` VALUES (27, '三星GalaxyA6s(SM-G6200)全面屏渐变色性价比智能手机6GB+128GB花仙紫全网通4G双卡双待', '1499.00', 'images/三星/5c94b69c9ca97ee8.jpg', '//img12.360buyimg.com/n7/jfs/t1/3923/9/11025/67845/5bcd7d95E165d3374/5c94b69c9ca97ee8.jpg', '5c94b69c9ca97ee8.jpg');
INSERT INTO `sanxing` VALUES (28, '三星（SAMSUNG）256GBTF（MicroSD）存储卡U34KEVO升级版+读速100MB/s写速90MB/s完美释放设备潜能', '289.00', 'images/三星/5bbd6d30Nffcc7a60.jpg', '//img13.360buyimg.com/n7/jfs/t27220/253/965286624/77172/922e6cee/5bbd6d30Nffcc7a60.jpg', '5bbd6d30Nffcc7a60.jpg');
INSERT INTO `sanxing` VALUES (29, '三星（SAMSUNG）250GBSSD固态硬盘M.2接口(NVMe协议)970EVOPlus（MZ-V7S250B）', '469.00', 'images/三星/3634bb4d6ae74471.jpg', '//img14.360buyimg.com/n7/jfs/t1/31846/12/1562/46506/5c517101E5128d752/3634bb4d6ae74471.jpg', '3634bb4d6ae74471.jpg');
INSERT INTO `sanxing` VALUES (30, '三星GalaxyA6s6GB+64GB花木蓝(SM-G6200)全面屏渐变色全网通4G双卡双待', '1448.00', 'images/三星/613143d28388e176.jpg', '//img13.360buyimg.com/n7/jfs/t1/7527/16/1143/256278/5bcd7902E342bd89e/613143d28388e176.jpg', '613143d28388e176.jpg');

-- ----------------------------
-- Table structure for shopcars
-- ----------------------------
DROP TABLE IF EXISTS `shopcars`;
CREATE TABLE `shopcars`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tablename` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goodid` int(11) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `imageUrl` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shopcars
-- ----------------------------
INSERT INTO `shopcars` VALUES (1, 'You happy just Ok', '仙女', 1, '黛苇连衣裙女雪纺2019夏装新品时尚修身显瘦短袖印花性感蕾丝连衣裙女假两件套装裙夏季女装沙滩裙子天蓝色M（85-100斤）', 'images/仙女/86126cac6c8e0701.jpg', '99.00');
INSERT INTO `shopcars` VALUES (11, 'You happy just Ok', 'buoumao', 1, '【超美仙女猫】Lauren上海猫舍布偶猫活体海双色布偶猫咪可爱布偶猫宠物猫仙女猫可上门看猫全款', 'images/布偶猫/51f3378d146e8ea0.jpg', '35000.00');
INSERT INTO `shopcars` VALUES (12, 'You happy just Ok', 'buoumao', 2, '缘宠布偶猫布偶猫活体幼体宠物猫幼崽活体仙女猫可爱小猫咪北京可实地挑选', 'images/布偶猫/4ca4ba7bf1ba2cf1.jpg', '3600.00');
INSERT INTO `shopcars` VALUES (13, 'You happy just Ok', 'lanmao', 2, '【买1送9礼包】一尾猫舍英短蓝猫幼体银渐层蓝白活体宠物蓝猫幼崽猫咪异国短毛猫宠物猫咪异国短毛猫-蓝猫', 'images/蓝猫/d3b7db97c311dc73.jpg', '1799.00');
INSERT INTO `shopcars` VALUES (14, 'You happy just Ok', 'xiannu', 2, '佐莎朵长袖连衣裙2019春夏季女装碎花白色收腰中长款修身雪纺A字裙海边度假沙滩裙白色XL建议110~118斤', 'images/仙女/f310e43e083c76b6.jpg', '178.00');
INSERT INTO `shopcars` VALUES (15, 'You happy just Ok', 'neiyi', 2, '英诺莉斯女士内裤女丁字裤蕾丝性感低腰诱惑透明T裤内裤黑色4条装均码', 'images/内衣/c1a2893469c84d95.jpg', '49.00');
INSERT INTO `shopcars` VALUES (16, 'You happy just Ok', '仙女', 30, '2019新款新品泰国普吉岛三亚沙滩裙春夏秋季系带波西米亚长裙碎花雪纺海边海滩度假收腰显瘦女装连衣裙子图片色L', 'images/仙女/57a5eb58Na6bc032b.jpg', '99.00');

-- ----------------------------
-- Table structure for shoubiao
-- ----------------------------
DROP TABLE IF EXISTS `shoubiao`;
CREATE TABLE `shoubiao`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoubiao
-- ----------------------------
INSERT INTO `shoubiao` VALUES (1, '飞亚达手表Hunter系列进口牛皮带男表自动机械表防水机芯手表男士商务学生情侣百搭', '1299.00', 'images/手表/21281a98e9dd0a93.jpg', '//img12.360buyimg.com/n7/jfs/t1/22115/40/11789/41685/5c9349edEb0bab351/21281a98e9dd0a93.jpg', '21281a98e9dd0a93.jpg');
INSERT INTO `shoubiao` VALUES (2, '邦顿（Bestdon）镂空夜光防水全自动机械表简约男士手表精钢手表大表盘运动军表男表钟表2019新款运动军表/黑壳黑面钢带7108', '499.00', 'images/手表/5ad83b05N580147c4.jpg', '//img12.360buyimg.com/n7/jfs/t18448/231/1879103330/911527/59885ab9/5ad83b05N580147c4.png', '5ad83b05N580147c4.jpg');
INSERT INTO `shoubiao` VALUES (3, '邦顿（Bestdon）夜光日历手表多功能防水男士手表简约时尚石英表运动概念男表学生新款钟表时尚休闲型男装备/玫壳咖面男表', '199.00', 'images/手表/5a715d5cN1a99bcd8.jpg', '//img14.360buyimg.com/n7/jfs/t19462/350/396277820/275939/15373410/5a715d5cN1a99bcd8.jpg', '5a715d5cN1a99bcd8.jpg');
INSERT INTO `shoubiao` VALUES (4, '叉旗彩屏手环智能运动手环男血压心率监测微信来电拒接游泳防水记步器手表适配iOS&安卓科技黑', '188.00 178.00', 'images/手表/5b1dd013N41786565.jpg', '//img14.360buyimg.com/n7/jfs/t21814/244/1002650582/128734/36190f9e/5b1dd013N41786565.jpg', '5b1dd013N41786565.jpg');
INSERT INTO `shoubiao` VALUES (5, '梭伦（SOLLEN）手表正品手表男表商务镂空全自动机械男士手表夜光男腕表防水精钢带手表钟表全黑面多功能商务机械风', '688.00', 'images/手表/4025ee61deb95ecd.jpg', '//img11.360buyimg.com/n7/jfs/t1/20292/37/9347/134055/5c7dd087E6fad6e10/4025ee61deb95ecd.jpg', '4025ee61deb95ecd.jpg');
INSERT INTO `shoubiao` VALUES (6, '梭伦手表男表商务镂空机械表男士手表经典时尚大表盘六指针防水腕表新款日历钟表幻彩蓝光镜面/全黑色', '398.00', 'images/手表/8f9de6686ec6f5c9.jpg', '//img11.360buyimg.com/n7/jfs/t1/20242/24/12835/161232/5c9b744aE514136a9/8f9de6686ec6f5c9.jpg', '8f9de6686ec6f5c9.jpg');
INSERT INTO `shoubiao` VALUES (7, '艾戈勒（agelocer）博世月相系列瑞士进口手表男全自动机械表全景背透80小时长动能潮男腕表经典银鳄鱼纹80小时动能全景背透6401A1', '4399.00', 'images/手表/2e49defe60df9b2e.jpg', '//img12.360buyimg.com/n7/jfs/t1/29339/15/10530/107291/5c872c15Ec465b7af/2e49defe60df9b2e.jpg', '2e49defe60df9b2e.jpg');
INSERT INTO `shoubiao` VALUES (8, '手表男学生休闲电子表时尚腕表韩版潮流薄钢带皮带防水运动非智能机械表款钟表石英表男士手表男表黑色钢带刻字(请在订单里备注刻字内容)', '35.00', 'images/手表/5b0d641dN8f9f10cd.jpg', '//img10.360buyimg.com/n7/jfs/t20053/305/854651450/406448/690d2ae1/5b0d641dN8f9f10cd.jpg', '5b0d641dN8f9f10cd.jpg');
INSERT INTO `shoubiao` VALUES (9, '爱心东东【特价秒杀】FEDYLON手表男表精钢捷克钻镀金双日历商务休闲时尚石英表非运动机械表款男士腕表', '98.00', 'images/手表/f780b7e702c7d49a.jpg', '//img13.360buyimg.com/n7/jfs/t1/22900/38/12984/181797/5c9cf341Ed7fbc3ba/f780b7e702c7d49a.jpg', 'f780b7e702c7d49a.jpg');
INSERT INTO `shoubiao` VALUES (10, '西罗(CILORE)手表简约男士时尚超薄非机械手表潮流商务防水男表学生休闲石英情侣手表超薄简约/白壳白面男款', '298.00', 'images/手表/5b16ad0fN0a92f8a4.jpg', '//img13.360buyimg.com/n7/jfs/t21391/355/758177702/249755/b0feab30/5b16ad0fN0a92f8a4.jpg', '5b16ad0fN0a92f8a4.jpg');
INSERT INTO `shoubiao` VALUES (11, 'HUAWEIWATCHGT运动版黑色华为手表(两周续航+户外运动手表+实时心率+高清彩屏+睡眠/压力监测+NFC支付)', '1188.00', 'images/手表/b698b3928abb6680.jpg', '//img13.360buyimg.com/n7/jfs/t1/22776/35/5033/275026/5c38691dE46b3bb7e/b698b3928abb6680.jpg', 'b698b3928abb6680.jpg');
INSERT INTO `shoubiao` VALUES (12, '梭伦（SOLLEN）男表商务休闲时尚绅士手表全自动机械表镂空飞轮钢带手表男士手表镂空陀飞轮/精钢蓝色804', '688.00', 'images/手表/574400daNc1eb14bd.jpg', '//img12.360buyimg.com/n7/jfs/t2671/114/1635973838/361069/1c4ea20e/574400daNc1eb14bd.jpg', '574400daNc1eb14bd.jpg');
INSERT INTO `shoubiao` VALUES (13, '斯诺威登（任达华同款)手表男进口机芯商务男士全自动机械表双日历夜光防水8119G玫瑰金黑面', '1689.00', 'images/手表/5b6576faN21fd2f2b.jpg', '//img14.360buyimg.com/n7/jfs/t24058/54/1661356614/327725/9f7a6b2c/5b6576faN21fd2f2b.jpg', '5b6576faN21fd2f2b.jpg');
INSERT INTO `shoubiao` VALUES (14, '正港(zgo)学生手表青少年男款中学生韩版简约石英手表潮男生初高中生防水夜光电子表男孩男士非机械表114黑壳黑面银钉【皮带款、日历、秒盘、蓝...', '89.00 79.00', 'images/手表/48495811e1342e45.jpg', '//img13.360buyimg.com/n7/jfs/t1/18479/6/4830/137310/5c35d08bE6907d2c6/48495811e1342e45.jpg', '48495811e1342e45.jpg');
INSERT INTO `shoubiao` VALUES (15, '梭伦（SOLLEN）2019新款双面透视镂空全自动机械表男士手表男运动手表夜光潮牌男表全黑蓝钉/双面透视镂空/进口机芯', '788.00', 'images/手表/c36f307185b20983.jpg', '//img12.360buyimg.com/n7/jfs/t1/28233/5/8466/138709/5c764f45Eb5b973e8/c36f307185b20983.jpg', 'c36f307185b20983.jpg');
INSERT INTO `shoubiao` VALUES (16, '欧利时（OLEVS）手表男女士石英男表女表时尚简约防水皮表带情侣手表98棕皮全金黑面男表', '128.00', 'images/手表/5a12bba5N60aabd82.jpg', '//img11.360buyimg.com/n7/jfs/t12493/160/728072378/348431/849a519b/5a12bba5N60aabd82.jpg', '5a12bba5N60aabd82.jpg');
INSERT INTO `shoubiao` VALUES (17, '【抖音爆款】时刻美（skmei）手表男学生运动电子表创意个性无指针概念石英表男防水多功能腕表经典黑色', '128.00', 'images/手表/108b7d3d75f88a31.jpg', '//img13.360buyimg.com/n7/jfs/t1/8417/25/8033/267745/5c09c830E1d2f3fa6/108b7d3d75f88a31.jpg', '108b7d3d75f88a31.jpg');
INSERT INTO `shoubiao` VALUES (18, '罗西尼(ROSSINI)手表雅尊商务系列钢带石英男表情侣表男士腕表618573W04B/618573W04F', '418.00', 'images/手表/5b6cf135N5107bf29.jpg', '//img12.360buyimg.com/n7/jfs/t25543/356/360029541/183851/e24a9076/5b6cf135N5107bf29.jpg', '5b6cf135N5107bf29.jpg');
INSERT INTO `shoubiao` VALUES (19, 'HONORWatchMagic荣耀时尚智能户外运动手表熔岩黑50米防水/一周续航/GPS/心率睡眠/NFC支付/信息通知', '899.00', 'images/手表/969535c55f0f9122.jpg', '//img10.360buyimg.com/n7/jfs/t1/8196/14/15420/132722/5c6e4197E4d382b4f/969535c55f0f9122.jpg', '969535c55f0f9122.jpg');
INSERT INTO `shoubiao` VALUES (20, '梭伦（SOLLEN）正品全自动机械表经典时尚男士手表防水手表精钢网织带男腕表新款钟表精致超薄/玫壳黑面', '688.00', 'images/手表/fa0d8dfec67844d5.jpg', '//img10.360buyimg.com/n7/jfs/t1/22133/21/5061/148420/5c3959faE4b54baf6/fa0d8dfec67844d5.jpg', 'fa0d8dfec67844d5.jpg');
INSERT INTO `shoubiao` VALUES (21, '梭伦（SOLLEN）2019新款手表男士手表全自动机械表防水镂空陀飞轮真皮带潮时尚学生男表玫金黑面/镂空陀飞轮/皮带', '398.00', 'images/手表/59e9a501Nbd99f870.jpg', '//img13.360buyimg.com/n7/jfs/t11695/220/190058075/437741/73f16acc/59e9a501Nbd99f870.jpg', '59e9a501Nbd99f870.jpg');
INSERT INTO `shoubiao` VALUES (22, '时刻美skmei手表男士运动表户外青少年学生夜光双显电子表黑色1155B', '85.00', 'images/手表/176730c466f1d696.jpg', '//img14.360buyimg.com/n7/jfs/t1/21085/18/11910/203496/5c933a72E53b5fa4d/176730c466f1d696.jpg', '176730c466f1d696.jpg');
INSERT INTO `shoubiao` VALUES (23, '正港电子表手表男女学生运动智能手环夜光超薄儿童手表男孩防水闹钟腕表韩版简约潮流中学生情侣对表黑色【圆形轻薄设计，联系客服可换发同款...', '44.90', 'images/手表/a08065ee11005727.jpg', '//img13.360buyimg.com/n7/jfs/t1/37096/6/4877/174035/5cc6a084Ebd6f890f/a08065ee11005727.jpg', 'a08065ee11005727.jpg');
INSERT INTO `shoubiao` VALUES (24, '【京选尚品XDW】丹尼尔惠灵顿DanielWellingtonDW女表金边钢带28mm简约白盘欧美学生石英表DW00100219', '1239.00', 'images/手表/5cd6a4f8N0baab9b2.jpg', '//img10.360buyimg.com/n7/jfs/t26980/183/2350567714/133820/9ef5ada0/5cd6a4f8N0baab9b2.jpg', '5cd6a4f8N0baab9b2.jpg');
INSERT INTO `shoubiao` VALUES (25, '艾戈勒（agelocer）布达佩斯瑞士进口手表三针多功能商务男表全自动机械表防水带日历银壳黑皮带动能指示4101A1【推荐】', '3199.00', 'images/手表/d972d79455a01a7a.jpg', '//img14.360buyimg.com/n7/jfs/t1/25176/13/10472/93098/5c871e82Ea52d21e8/d972d79455a01a7a.jpg', 'd972d79455a01a7a.jpg');
INSERT INTO `shoubiao` VALUES (26, 'HUAWEIWATCHGT雅致款黑色华为手表(一周续航+户外运动手表+实时心率+睡眠监测+NFC支付)', '1388.00', 'images/手表/3a7b83331180374c.jpg', '//img13.360buyimg.com/n7/jfs/t1/33855/12/2274/94445/5cadab38Ebb62407a/3a7b83331180374c.jpg', '3a7b83331180374c.jpg');
INSERT INTO `shoubiao` VALUES (27, '邦顿（Bestdon）手表超薄简约男表情侣手表时尚商务精钢带男士女士腕表新款钟表石英表超薄玫壳黑面网带/男款', '358.00', 'images/手表/9e597ee7370271af.jpg', '//img10.360buyimg.com/n7/jfs/t1/23779/26/8646/174509/5c7899a4Ea5dcd3c6/9e597ee7370271af.jpg', '9e597ee7370271af.jpg');
INSERT INTO `shoubiao` VALUES (28, '卡瑞达（kairoda）正品方形陶瓷手表男表简约情侣手表对表防水商务腕表男女士手表时尚钟表方形陶瓷男表-黑色（带日历）', '298.00', 'images/手表/5b52e6f1N182ed8e0.jpg', '//img10.360buyimg.com/n7/jfs/t21148/167/2314305351/93438/df1b2f2c/5b52e6f1N182ed8e0.jpg', '5b52e6f1N182ed8e0.jpg');
INSERT INTO `shoubiao` VALUES (29, '邦顿（Bestdon）夜光双日历手表时尚防水男士手表简约石英表多功能运动非机械男表简约随性双日历/夜光黑色/概念手表', '435.00', 'images/手表/f19757d207a4c1b6.jpg', '//img10.360buyimg.com/n7/jfs/t1/29368/14/9081/195517/5c7b6fe4Ee0a56de6/f19757d207a4c1b6.jpg', 'f19757d207a4c1b6.jpg');
INSERT INTO `shoubiao` VALUES (30, '瑞士I&W手表男表男士机械表全自动时尚腕表超薄进口机芯/多色可选商务休闲百搭工业蓝宝石玻璃IW本色黑皮表带白面/原装进口机芯', '898.00', 'images/手表/0e478aecf1b08f05.jpg', '//img13.360buyimg.com/n7/jfs/t1/34089/31/11120/237768/5cd13a70E2cfd5365/0e478aecf1b08f05.png', '0e478aecf1b08f05.jpg');

-- ----------------------------
-- Table structure for shubiao
-- ----------------------------
DROP TABLE IF EXISTS `shubiao`;
CREATE TABLE `shubiao`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shubiao
-- ----------------------------
INSERT INTO `shubiao` VALUES (1, '英菲克（inphic）可充电无线静音鼠标', '39.00', 'images/鼠标/47a7102b4e125e44.jpg', '//img11.360buyimg.com/n7/jfs/t1/25506/34/7917/98527/5c701237Eba3e0f6a/47a7102b4e125e44.jpg', '47a7102b4e125e44.jpg');
INSERT INTO `shubiao` VALUES (2, '戴尔（DELL）MS116有线鼠标商务办公鼠标（黑色）京东自营', '29.00 21.90', 'images/鼠标/5b23893bN79038082.jpg', '//img13.360buyimg.com/n7/jfs/t23317/276/34908225/172116/c13c1368/5b23893bN79038082.jpg', '5b23893bN79038082.jpg');
INSERT INTO `shubiao` VALUES (3, '罗技（G）G102游戏鼠标8000DPIRGB鼠标黑色吃鸡鼠标绝地求生', '139.00', 'images/鼠标/59080db2N7ae9168e.jpg', '//img14.360buyimg.com/n7/jfs/t4642/55/3978388666/72688/c8b2dcf/59080db2N7ae9168e.jpg', '59080db2N7ae9168e.jpg');
INSERT INTO `shubiao` VALUES (4, '雷蛇（Razer）蝰蛇标准版有线游戏鼠标人体工程学设计6400DPI吃鸡鼠标黑色', '149.00 139.00', 'images/鼠标/5b39c194N08b88266.jpg', '//img14.360buyimg.com/n7/jfs/t19840/61/1770706751/133752/c4b792de/5b39c194N08b88266.jpg', '5b39c194N08b88266.jpg');
INSERT INTO `shubiao` VALUES (5, '罗技（G）G502主宰者游戏鼠标全线升级Hero引擎16000DPIRGB炫光', '399.00 379.00', 'images/鼠标/5c00ac2cNe242a4d4.jpg', '//img12.360buyimg.com/n7/jfs/t29338/297/862339806/61742/72dc83bd/5c00ac2cNe242a4d4.jpg', '5c00ac2cNe242a4d4.jpg');
INSERT INTO `shubiao` VALUES (6, '罗技（Logitech）M220无线静音鼠标畅销外形灰色M185升级版', '79.00', 'images/鼠标/57df9324Nd9250f7f.jpg', '//img12.360buyimg.com/n7/jfs/t3295/102/2307167478/95859/c28e4dc0/57df9324Nd9250f7f.jpg', '57df9324Nd9250f7f.jpg');
INSERT INTO `shubiao` VALUES (7, '英菲克（INPHIC）PM9铝合金可充电无线鼠标静音超薄便携2.4G小手家用电脑台式机办公苹果MAC笔记本鼠标银色', '49.00', 'images/鼠标/12848b2ba8fb4474.jpg', '//img14.360buyimg.com/n7/jfs/t1/22161/21/12094/56516/5c95fb8aEb2d931a8/12848b2ba8fb4474.jpg', '12848b2ba8fb4474.jpg');
INSERT INTO `shubiao` VALUES (8, '联想（Lenovo）鼠标有线鼠标办公鼠标联想大红点M120Pro有线鼠标台式机鼠标笔记本鼠标京东自营', '29.00 28.00', 'images/鼠标/14f062751af6ce26.jpg', '//img13.360buyimg.com/n7/jfs/t1/5916/10/5128/160256/5b9f0e9bEbc9f4db4/14f062751af6ce26.jpg', '14f062751af6ce26.jpg');
INSERT INTO `shubiao` VALUES (9, '罗技（Logitech）M185（M186）无线鼠标黑色灰边', '59.00', 'images/鼠标/56f20611N924b233c.jpg', '//img13.360buyimg.com/n7/jfs/t1960/281/2094375806/154873/6944e77f/56f20611N924b233c.jpg', '56f20611N924b233c.jpg');
INSERT INTO `shubiao` VALUES (10, '小米便携鼠标小米无线鼠标小米无线蓝牙4.0男女生家用/笔记本电脑办公/鼠标银色', '99.00 89.00', 'images/鼠标/581fdc2eN5e1c92ae.jpg', '//img10.360buyimg.com/n7/jfs/t3745/310/1174294890/61978/975f7b0/581fdc2eN5e1c92ae.jpg', '581fdc2eN5e1c92ae.jpg');
INSERT INTO `shubiao` VALUES (11, '罗技（Logitech）M100r光电鼠标即插即用三年质保（黑色）', '45.00', 'images/鼠标/58d8c345Nb9154a84.jpg', '//img13.360buyimg.com/n7/jfs/t4399/69/1096230420/105927/323eeeea/58d8c345Nb9154a84.jpg', '58d8c345Nb9154a84.jpg');
INSERT INTO `shubiao` VALUES (12, '罗技（Logitech）M546（M545）无线鼠标侧键双向滚轮黑色', '129.00', 'images/鼠标/55b88983Ndfcad297.jpg', '//img14.360buyimg.com/n7/jfs/t1609/62/1037107892/73463/1d77ed98/55b88983Ndfcad297.jpg', '55b88983Ndfcad297.jpg');
INSERT INTO `shubiao` VALUES (13, '【京仓发货热卖推荐】加重静音有线游戏鼠标', '39.00', 'images/鼠标/5f91135616c79898.jpg', '//img11.360buyimg.com/n7/jfs/t1/26008/9/6672/132968/5c621ac6Eaf469f7c/5f91135616c79898.jpg', '5f91135616c79898.jpg');
INSERT INTO `shubiao` VALUES (14, '前行者牧马人3代电竞游戏绝地求生lolcf吃鸡机械2代台式电脑笔记本家用有线宏鼠标办公光电静音非无声3代牧马人黑鼠标【静音升级版】', '39.00', 'images/鼠标/5b6acf31N9a0a1b6f.jpg', '//img10.360buyimg.com/n7/jfs/t25498/266/296141314/154580/f4422dab/5b6acf31N9a0a1b6f.jpg', '5b6acf31N9a0a1b6f.jpg');
INSERT INTO `shubiao` VALUES (15, '罗技（G）G402高速追踪游戏鼠标吃鸡鼠标绝地求生FPS', '269.00', 'images/鼠标/53f157f7N94e24338.jpg', '//img14.360buyimg.com/n7/jfs/t217/235/780207740/62489/3ffe774a/53f157f7N94e24338.jpg', '53f157f7N94e24338.jpg');
INSERT INTO `shubiao` VALUES (16, '赛睿（SteelSeries）RIVAL106自营游戏鼠标有线鼠标镜面RGB背光电竞吃鸡鼠标', '199.00', 'images/鼠标/313944dbc90aad1a.jpg', '//img10.360buyimg.com/n7/jfs/t1/35506/4/1637/60199/5cb4009fEe11477a1/313944dbc90aad1a.jpg', '313944dbc90aad1a.jpg');
INSERT INTO `shubiao` VALUES (17, '双飞燕（A4TECH)WM-100有线鼠标办公鼠标USB鼠标笔记本鼠标黑色', '29.00', 'images/鼠标/5698baebN7a831f7d.jpg', '//img13.360buyimg.com/n7/jfs/t2461/125/1980737781/51817/1ccfc4fc/5698baebN7a831f7d.jpg', '5698baebN7a831f7d.jpg');
INSERT INTO `shubiao` VALUES (18, '英菲克（INPHIC）PM6可充电无线鼠标电脑笔记本办公家用便携2.4G锂电池光电LOL无线游戏鼠标黑色（无光）', '39.80 29.80', 'images/鼠标/5b7d1afcN0c07d4a4.jpg', '//img12.360buyimg.com/n7/jfs/t25615/301/825251101/57977/11411936/5b7d1afcN0c07d4a4.jpg', '5b7d1afcN0c07d4a4.jpg');
INSERT INTO `shubiao` VALUES (19, '联想ThinkPad小黑鼠标笔记本电脑办公鼠标（可选款式：有线、无线、蓝牙、双模）蓝牙无线激光—石墨黑（6414）', '139.00', 'images/鼠标/1172a7ce79fd25ed.jpg', '//img11.360buyimg.com/n7/jfs/t1/31000/6/1914/57498/5c63be58E957e39a0/1172a7ce79fd25ed.jpg', '1172a7ce79fd25ed.jpg');
INSERT INTO `shubiao` VALUES (20, '罗技（Logitech）M170（M171）无线鼠标灰色', '39.00', 'images/鼠标/56542402N10cdf01d.jpg', '//img10.360buyimg.com/n7/jfs/t2071/69/1402200086/171685/a9410329/56542402N10cdf01d.jpg', '56542402N10cdf01d.jpg');
INSERT INTO `shubiao` VALUES (21, '微软（Microsoft）Sculpt无线鼠标人体工学鼠标舒适办公', '299.00', 'images/鼠标/rBEhWlJdCiUIAAAAAADxyN-LWOUAAEK7ADqv2wAAPHg264.jpg', '//img14.360buyimg.com/n7/g15/M05/0F/11/rBEhWlJdCiUIAAAAAADxyN-LWOUAAEK7ADqv2wAAPHg264.jpg', 'rBEhWlJdCiUIAAAAAADxyN-LWOUAAEK7ADqv2wAAPHg264.jpg');
INSERT INTO `shubiao` VALUES (22, '双飞燕（A4TECH)N-810FX有线鼠标办公鼠标USB鼠标笔记本鼠标黑色', '44.00', 'images/鼠标/57c64b1dNe0dd4a74.jpg', '//img12.360buyimg.com/n7/jfs/t3172/349/1080389735/130983/689dc73f/57c64b1dNe0dd4a74.jpg', '57c64b1dNe0dd4a74.jpg');
INSERT INTO `shubiao` VALUES (23, '达尔优（dareu）EM915经典裂纹版鼠标游戏鼠标鼠标有线鼠标宏吃鸡鼠标6000DPI黑色达尔优（dareu）机械师+EM915键鼠机械键盘鼠标套装键鼠套装键鼠套装有线游戏键鼠套装黑色', '128.00 287.00', 'images/鼠标/5e548fc1f2dd760f.jpg', '//img11.360buyimg.com/n7/jfs/t1/17904/22/2388/358345/5c1c5224E903cead5/5e548fc1f2dd760f.jpg', '5e548fc1f2dd760f.jpg');
INSERT INTO `shubiao` VALUES (24, '罗技（G）G403游戏鼠标RGB鼠标吃鸡鼠标绝地求生12000DPIFPS鼠标压枪怪', '289.00', 'images/鼠标/5a9ce1b5Ncdd1e48e.jpg', '//img11.360buyimg.com/n7/jfs/t14839/84/2442826715/107917/df53062c/5a9ce1b5Ncdd1e48e.jpg', '5a9ce1b5Ncdd1e48e.jpg');
INSERT INTO `shubiao` VALUES (25, '雷蛇（Razer）蝰蛇标准版有线游戏鼠标人体工程学设计6400DPI吃鸡鼠标白色', '149.00 139.00', 'images/鼠标/5b51af3aN2560cb73.jpg', '//img13.360buyimg.com/n7/jfs/t20761/127/2292513285/97637/4d9fb592/5b51af3aN2560cb73.jpg', '5b51af3aN2560cb73.jpg');
INSERT INTO `shubiao` VALUES (26, '雷柏（Rapoo）V20S电竞鼠标游戏鼠标吃鸡鼠标有线鼠标笔记本鼠标黑色', '79.00', 'images/鼠标/74974dd151277374.jpg', '//img11.360buyimg.com/n7/jfs/t1/19157/13/6736/306245/5c62603cE3c067b54/74974dd151277374.jpg', '74974dd151277374.jpg');
INSERT INTO `shubiao` VALUES (27, '英菲克（INPHIC）PG1电竞机械游戏鼠标金属加重水冷台式笔记本电脑usb有线cf绝地求生吃鸡压枪专用宏家用lol', '99.00 95.00', 'images/鼠标/aa04f2feb259e90e.jpg', '//img12.360buyimg.com/n7/jfs/t1/1972/2/5325/82750/5b9f1f6dEcaa737f3/aa04f2feb259e90e.jpg', 'aa04f2feb259e90e.jpg');
INSERT INTO `shubiao` VALUES (28, '雷蛇（RAZER）蝰蛇标准版有线电竞游戏鼠标黑色（2000DPI中大手可选键盘套装）标准版单色光行业包装（双侧键）', '119.00 103.00', 'images/鼠标/5cd52d45N0e9e1bea.jpg', '//img11.360buyimg.com/n7/jfs/t29500/250/1080974425/113255/b885a5df/5cd52d45N0e9e1bea.jpg', '5cd52d45N0e9e1bea.jpg');
INSERT INTO `shubiao` VALUES (29, '罗技（Logitech）M275（M280）无线鼠标舒适曲线黑色', '79.00', 'images/鼠标/5853bda8N7b77dcb5.jpg', '//img10.360buyimg.com/n7/jfs/t3910/360/532801863/101656/ddaf7e28/5853bda8N7b77dcb5.jpg', '5853bda8N7b77dcb5.jpg');
INSERT INTO `shubiao` VALUES (30, '雷柏（Rapoo）VT300电竞鼠标游戏鼠标有线鼠标FPS鼠标绝地求生吃鸡鼠标黑色', '149.00', 'images/鼠标/5afe9d44Na84f1022.jpg', '//img10.360buyimg.com/n7/jfs/t21226/161/140639611/112541/7c09a212/5afe9d44Na84f1022.jpg', '5afe9d44Na84f1022.jpg');

-- ----------------------------
-- Table structure for springboot
-- ----------------------------
DROP TABLE IF EXISTS `springboot`;
CREATE TABLE `springboot`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of springboot
-- ----------------------------
INSERT INTO `springboot` VALUES (1, '深入浅出SpringBoot2.x', '78.20', 'images/springboot/5b46ddd0N0e99663d.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t22465/12/900897894/181167/6cdc011/5b46ddd0N0e99663d.jpg', '5b46ddd0N0e99663d.jpg');
INSERT INTO `springboot` VALUES (2, 'SpringBoot编程思想（核心篇）（限量版亲笔签名书签随机发售）', '108.60', 'images/springboot/114c8b9389a9cca8.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/25586/6/12013/353666/5c946c61Ed5674914/114c8b9389a9cca8.jpg', '114c8b9389a9cca8.jpg');
INSERT INTO `springboot` VALUES (3, 'SpringBoot实战', '41.60', 'images/springboot/592bf16fN150235d2.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t6028/153/757041799/410919/1d6eab95/592bf16fN150235d2.jpg', '592bf16fN150235d2.jpg');
INSERT INTO `springboot` VALUES (4, 'JavaEE开发的颠覆者：SpringBoot实战', '81.90', 'images/springboot/56ef4a73Na00d39cb.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t2107/53/2057024910/287539/276b11f9/56ef4a73Na00d39cb.jpg', '56ef4a73Na00d39cb.jpg');
INSERT INTO `springboot` VALUES (5, 'SpringBoot+Vue全栈开发实战', '49.40', 'images/springboot/65e4adb40247f3e6.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t1/17605/24/4237/58421/5c2f060fE80b1ebab/65e4adb40247f3e6.jpg', '65e4adb40247f3e6.jpg');
INSERT INTO `springboot` VALUES (6, 'Spring微服务实战', '62.40', 'images/springboot/5af00598Nfee90481.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t19360/90/2337141980/193933/ab27ce6a/5af00598Nfee90481.jpg', '5af00598Nfee90481.jpg');
INSERT INTO `springboot` VALUES (7, 'SpringBoot2精髓：从构建小系统到架构分布式大系统', '72.70', 'images/springboot/59ef697bNf340592f.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t10486/76/2080601322/117968/c234592a/59ef697bNf340592f.jpg', '59ef697bNf340592f.jpg');
INSERT INTO `springboot` VALUES (8, 'SpringBoot2.0企业级应用开发实战Spring微服务2大利器：SpringBoot2企业级应用开发+SpringCloud微服务架构开发（全新升级版）', '71.50 129.10', 'images/springboot/5ac9f223Nef0315ef.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t19762/271/1453092789/385694/8b0216c5/5ac9f223Nef0315ef.jpg', '5ac9f223Nef0315ef.jpg');
INSERT INTO `springboot` VALUES (9, '现货3本套装SpringBoot实战+微服务实战+实战第4版spring开发三剑客', '169.00', 'images/springboot/5b7fb892Ncbe2866a.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t24913/275/910733492/453320/899d57ce/5b7fb892Ncbe2866a.jpg', '5b7fb892Ncbe2866a.jpg');
INSERT INTO `springboot` VALUES (10, '云原生Java：SpringBoot、SpringCloud与CloudFoundry弹性系统设计', '117.80', 'images/springboot/5b485a97N3fca9deb.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t21202/297/2191687647/195662/290fdabe/5b485a97N3fca9deb.jpg', '5b485a97N3fca9deb.jpg');
INSERT INTO `springboot` VALUES (11, 'SpringBoot2企业应用实战', '53.40', 'images/springboot/5b0df55eN35642750.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t21049/265/448134480/215336/78c8dced/5b0df55eN35642750.jpg', '5b0df55eN35642750.jpg');
INSERT INTO `springboot` VALUES (12, '现货包邮SpringBoot编程思想核心篇小马哥著', '86.90', 'images/springboot/e69393676b86012e.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t1/33009/1/6194/931274/5cbd5d6eE14d26642/e69393676b86012e.png', 'e69393676b86012e.jpg');
INSERT INTO `springboot` VALUES (13, 'SpringBoot2+Thymeleaf企业应用实战', '63.50', 'images/springboot/457cb7441528b0f2.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/2314/11/7017/328555/5ba4a37fEd43a423f/457cb7441528b0f2.jpg', '457cb7441528b0f2.jpg');
INSERT INTO `springboot` VALUES (14, '微服务架构实战基于SpringBoot、SpringCloud、Docker', '47.20', 'images/springboot/5bf51ecbNb7b4818a.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t26422/114/2022312084/274963/a82cf106/5bf51ecbNb7b4818a.jpg', '5bf51ecbNb7b4818a.jpg');
INSERT INTO `springboot` VALUES (15, '深入实践SpringBoot', '46.60', 'images/springboot/58257b27Nca5e796f.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t3328/255/1461551530/120811/3d8e2919/58257b27Nca5e796f.jpg', '58257b27Nca5e796f.jpg');
INSERT INTO `springboot` VALUES (16, '3本Spring微服务实战+深入浅出SpringBoot2.x+实战spring开发三剑客', '198.00', 'images/springboot/747649db072e46ea.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/20512/16/4754/113039/5c35b9e3E8500bf4f/747649db072e46ea.jpg', '747649db072e46ea.jpg');
INSERT INTO `springboot` VALUES (17, 'SpringBoot2一步一步学微服务项目实战', '46.60', 'images/springboot/5b4c1cd4N47e31317.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t21934/59/2213610257/122253/6ad74dde/5b4c1cd4N47e31317.jpg', '5b4c1cd4N47e31317.jpg');
INSERT INTO `springboot` VALUES (18, 'SpringBoot+Vue全栈开发实战SpringBoot2spring微服务项目实战', '145.00', 'images/springboot/a2d0562b2bf30143.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/26139/29/7741/219460/5c6e05e5E84fb4544/a2d0562b2bf30143.png', 'a2d0562b2bf30143.jpg');
INSERT INTO `springboot` VALUES (19, '微服务架构基础（SpringBoot+SpringCloud+Docker）', '27.60', 'images/springboot/5ae186a1N3373641b.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t16900/260/2010244474/225398/23f92f5f/5ae186a1N3373641b.jpg', '5ae186a1N3373641b.jpg');
INSERT INTO `springboot` VALUES (20, '2本深入浅出SpringBoot2.x+深入理解SpringCloud与微服务构建', '120.00', 'images/springboot/5b7a7ef7Ne0bb56cf.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t24694/127/759333369/332350/8bda8c8f/5b7a7ef7Ne0bb56cf.jpg', '5b7a7ef7Ne0bb56cf.jpg');
INSERT INTO `springboot` VALUES (21, 'SpringBoot+Vue全栈开发实战编程大型SPA应用Java软件开发企业级开发', '47.50', 'images/springboot/0d30beeb7e10b361.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t1/18727/13/4950/158876/5c38141cEa6c63347/0d30beeb7e10b361.jpg', '0d30beeb7e10b361.jpg');
INSERT INTO `springboot` VALUES (22, 'SpringBoot揭秘：快速构建微服务体系', '45.80', 'images/springboot/57450e66N724b6160.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t2581/194/1677153664/219489/c904963b/57450e66N724b6160.jpg', '57450e66N724b6160.jpg');
INSERT INTO `springboot` VALUES (23, 'SpringBoot开发实战', '73.40', 'images/springboot/5b751fd0N416ec5f8.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t20035/203/2333012353/156676/73afbf88/5b751fd0N416ec5f8.jpg', '5b751fd0N416ec5f8.jpg');
INSERT INTO `springboot` VALUES (24, 'Spring开发三剑客Spring微服务实战+SpringBoot实战+Spring实战正版', '168.20', 'images/springboot/5af105aeNd4c91737.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t19393/2/2293883182/153621/4c42dd27/5af105aeNd4c91737.jpg', '5af105aeNd4c91737.jpg');
INSERT INTO `springboot` VALUES (25, 'SpringCloud微服务架构开发实战', '61.30', 'images/springboot/5b680eb1N2037c052.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t23371/188/1744716425/120625/6b1d4602/5b680eb1N2037c052.jpg', '5b680eb1N2037c052.jpg');
INSERT INTO `springboot` VALUES (26, 'SpringBoot+Vue全栈开发实战编程Vue.js快速入门Web前端开发Java开发', '99.80', 'images/springboot/662b523829ac04b1.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/15319/5/3922/197171/5c2d65d6Ebf789ad0/662b523829ac04b1.png', '662b523829ac04b1.jpg');
INSERT INTO `springboot` VALUES (27, 'SpringCloud与Docker微服务架构实战', '63.50', 'images/springboot/591a5f78Ndb6d4c3f.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t5512/310/2376190886/103242/d195c954/591a5f78Ndb6d4c3f.jpg', '591a5f78Ndb6d4c3f.jpg');
INSERT INTO `springboot` VALUES (28, '3本SpringCloud与Docker微服务架构第二版+SpringBoot揭秘+微服务实战', '155.00', 'images/springboot/5bf0cecdN45c8d84c.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t30298/124/363001964/362640/6f6e7d9/5bf0cecdN45c8d84c.png', '5bf0cecdN45c8d84c.jpg');
INSERT INTO `springboot` VALUES (29, 'SpringCloud微服务架构开发实战（全新升级版）Spring微服务2大利器：SpringBoot2企业级应用开发+SpringCloud微服务架构开发（全新升级版）', '57.60 129.10', 'images/springboot/5b20d094Nfced217f.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t22219/204/1158252272/516574/affc2d66/5b20d094Nfced217f.jpg', '5b20d094Nfced217f.jpg');
INSERT INTO `springboot` VALUES (30, 'Spring微服务实战+微服务架构基础SpringBoot+SpringCloud+Docker', '85.00', 'images/springboot/5aee6dbdNf6be273b.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t16855/34/2334567140/348977/8f69e451/5aee6dbdNf6be273b.jpg', '5aee6dbdNf6be273b.jpg');

-- ----------------------------
-- Table structure for springcloud
-- ----------------------------
DROP TABLE IF EXISTS `springcloud`;
CREATE TABLE `springcloud`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of springcloud
-- ----------------------------
INSERT INTO `springcloud` VALUES (1, 'SpringCloud与Docker微服务架构实战（第2版）SpringCloud与Docker微服务架构实战+设计实施', '72.70 145.40', 'images/springcloud/5b4edc72Na05c6b5e.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t24208/328/1040295184/342622/49b0b2e7/5b4edc72Na05c6b5e.jpg', '5b4edc72Na05c6b5e.jpg');
INSERT INTO `springcloud` VALUES (2, 'SpringCloud微服务实战', '81.90', 'images/springcloud/58ed7f42Nf16d6b20.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t4483/332/2284794111/122812/4bf353/58ed7f42Nf16d6b20.jpg', '58ed7f42Nf16d6b20.jpg');
INSERT INTO `springcloud` VALUES (3, '深入理解SpringCloud与微服务构建', '54.50', 'images/springcloud/5a7a56c7Nded86e37.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t17869/13/456538386/235007/89669308/5a7a56c7Nded86e37.jpg', '5a7a56c7Nded86e37.jpg');
INSERT INTO `springcloud` VALUES (4, '重新定义SpringCloud实战', '100.20', 'images/springcloud/7a2783cc9a5aaca5.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/3238/30/6972/296271/5ba49806E42040fda/7a2783cc9a5aaca5.jpg', '7a2783cc9a5aaca5.jpg');
INSERT INTO `springcloud` VALUES (5, 'SpringCloud与Docker高并发微服务架构设计实施SpringCloud与Docker微服务架构实战+设计实施', '72.70 145.40', 'images/springcloud/5b28d0acNdd65b569.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t20287/139/1390186180/82261/13bf4edb/5b28d0acNdd65b569.jpg', '5b28d0acNdd65b569.jpg');
INSERT INTO `springcloud` VALUES (6, 'SpringCloud微服务架构进阶', '70.30', 'images/springcloud/5baf2088N827c8887.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t26275/21/470038477/322079/3e509176/5baf2088N827c8887.jpg', '5baf2088N827c8887.jpg');
INSERT INTO `springcloud` VALUES (7, 'SpringCloud微服务架构开发实战（全新升级版）Spring微服务2大利器：SpringBoot2企业级应用开发+SpringCloud微服务架构开发（全新升级版）', '57.60 129.10', 'images/springcloud/5b20d094Nfced217f.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t22219/204/1158252272/516574/affc2d66/5b20d094Nfced217f.jpg', '5b20d094Nfced217f.jpg');
INSERT INTO `springcloud` VALUES (8, '云原生Java：SpringBoot、SpringCloud与CloudFoundry弹性系统设计', '117.80', 'images/springcloud/5b485a97N3fca9deb.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t21202/297/2191687647/195662/290fdabe/5b485a97N3fca9deb.jpg', '5b485a97N3fca9deb.jpg');
INSERT INTO `springcloud` VALUES (9, '高可用可伸缩微服务架构：基于Dubbo、SpringCloud和ServiceMesh', '99.40', 'images/springcloud/574886090ce5dabb.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t1/30360/1/10328/300722/5cad6201Ecb1e223f/574886090ce5dabb.jpg', '574886090ce5dabb.jpg');
INSERT INTO `springcloud` VALUES (10, 'SpringCloud微服务架构开发实战', '61.30', 'images/springcloud/5b680eb1N2037c052.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t23371/188/1744716425/120625/6b1d4602/5b680eb1N2037c052.jpg', '5b680eb1N2037c052.jpg');
INSERT INTO `springcloud` VALUES (11, '微服务架构实战基于SpringBoot、SpringCloud、Docker', '47.20', 'images/springcloud/5bf51ecbNb7b4818a.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t26422/114/2022312084/274963/a82cf106/5bf51ecbNb7b4818a.jpg', '5bf51ecbNb7b4818a.jpg');
INSERT INTO `springcloud` VALUES (12, 'SpringCloud微服务:全栈技术与案例解析', '61.30', 'images/springcloud/5b4d9209N09874140.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t22879/173/1043362844/127187/f98e92a5/5b4d9209N09874140.jpg', '5b4d9209N09874140.jpg');
INSERT INTO `springcloud` VALUES (13, '疯狂SpringCloud微服务架构实战疯狂SpringCloud微服务架构实战+Spring+MyBatis企业应用实战', '53.40 106.80', 'images/springcloud/5a4b4e5fNfdd753db.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t15187/81/1259626363/418267/fe55067e/5a4b4e5fNfdd753db.jpg', '5a4b4e5fNfdd753db.jpg');
INSERT INTO `springcloud` VALUES (14, 'SpringCloud与Docker微服务架构实战', '63.50', 'images/springcloud/591a5f78Ndb6d4c3f.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t5512/310/2376190886/103242/d195c954/591a5f78Ndb6d4c3f.jpg', '591a5f78Ndb6d4c3f.jpg');
INSERT INTO `springcloud` VALUES (15, '现货正版重新定义SpringCloud实战/云计算与虚拟化技术丛书|8052586', '90.30', 'images/springcloud/183ff2e7bdff2faa.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t1/31960/39/6584/179153/5c90a3cbEfd9ace0f/183ff2e7bdff2faa.jpg', '183ff2e7bdff2faa.jpg');
INSERT INTO `springcloud` VALUES (16, '微服务架构基础（SpringBoot+SpringCloud+Docker）', '27.60', 'images/springcloud/5ae186a1N3373641b.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t16900/260/2010244474/225398/23f92f5f/5ae186a1N3373641b.jpg', '5ae186a1N3373641b.jpg');
INSERT INTO `springcloud` VALUES (17, 'SpringCloud与Docker微服务架构实战(第2版)', '57.70', 'images/springcloud/5b6cebe7Ne2d3de1b.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t25012/49/350730447/50774/b76525e0/5b6cebe7Ne2d3de1b.jpg', '5b6cebe7Ne2d3de1b.jpg');
INSERT INTO `springcloud` VALUES (18, '2本深入浅出SpringBoot2.x+深入理解SpringCloud与微服务构建', '120.00', 'images/springcloud/5b7a7ef7Ne0bb56cf.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t24694/127/759333369/332350/8bda8c8f/5b7a7ef7Ne0bb56cf.jpg', '5b7a7ef7Ne0bb56cf.jpg');
INSERT INTO `springcloud` VALUES (19, 'SpringCloud微服务分布式架构开发实战', '33.30', 'images/springcloud/dc174e067d8bd521.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/24485/36/5969/224783/5c453544E4ecb9b88/dc174e067d8bd521.jpg', 'dc174e067d8bd521.jpg');
INSERT INTO `springcloud` VALUES (20, '3本深入浅出SpringBoo+Spring实战+深入理解SpringCloud与微服务构建', '183.60', 'images/springcloud/5b7a7a19N4d553a0b.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t25999/142/745305468/495464/353baa83/5b7a7a19N4d553a0b.jpg', '5b7a7a19N4d553a0b.jpg');
INSERT INTO `springcloud` VALUES (21, '重新定义SpringCloud实战+SpringCloud微服务架构进阶+微服务:全栈技术与案例', '285.00', 'images/springcloud/cf475c6b759e00b7.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t1/22557/23/1490/386111/5c134a22E31c3d093/cf475c6b759e00b7.png', 'cf475c6b759e00b7.jpg');
INSERT INTO `springcloud` VALUES (22, 'SpringCloud微服务实战', '64.10', 'images/springcloud/5bea7932N501c3115.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t25900/94/2611673163/49905/cab3b10a/5bea7932N501c3115.jpg', '5bea7932N501c3115.jpg');
INSERT INTO `springcloud` VALUES (23, '现货高可用可伸缩微服务架构-基于Dubbo和SpringCloud、Servicemesh', '79.00', 'images/springcloud/fc70e57b2eb608f3.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/39592/13/3553/161551/5cc55d7dE92ebcc81/fc70e57b2eb608f3.jpg', 'fc70e57b2eb608f3.jpg');
INSERT INTO `springcloud` VALUES (24, '3本SpringCloud与Docker微服务架构第二版+SpringBoot揭秘+微服务实战', '155.00', 'images/springcloud/5bf0cecdN45c8d84c.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t30298/124/363001964/362640/6f6e7d9/5bf0cecdN45c8d84c.png', '5bf0cecdN45c8d84c.jpg');
INSERT INTO `springcloud` VALUES (25, '微服务架构基础SpringBoot+SpringCloud+Docker计', '26.70', 'images/springcloud/5b835f27N1b5284e6.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t27844/277/68429157/284378/231b9e87/5b835f27N1b5284e6.jpg', '5b835f27N1b5284e6.jpg');
INSERT INTO `springcloud` VALUES (26, '预售深入理解SpringBoot2.x+SpringCloud与微服务构建+源码深度解析', '192.00', 'images/springcloud/ebed2de6fc0c41c6.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/11249/2/6920/145545/5c49210eEd2f8a8f9/ebed2de6fc0c41c6.jpg', 'ebed2de6fc0c41c6.jpg');
INSERT INTO `springcloud` VALUES (27, 'SpringCloud微服务实战+SpringCloud与Docker微服务架构实战第二版', '125.00', 'images/springcloud/5bf0c5e9Ncc8739d3.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t30595/75/350424190/306144/8d498397/5bf0c5e9Ncc8739d3.png', '5bf0c5e9Ncc8739d3.jpg');
INSERT INTO `springcloud` VALUES (28, 'Spring微服务实战+微服务架构基础SpringBoot+SpringCloud+Docker', '85.00', 'images/springcloud/5aee6dbdNf6be273b.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t16855/34/2334567140/348977/8f69e451/5aee6dbdNf6be273b.jpg', '5aee6dbdNf6be273b.jpg');
INSERT INTO `springcloud` VALUES (29, '包邮高可用可伸缩微服务架构-基于Dubbo和SpringCloud、Servicemesh', '79.00', 'images/springcloud/2c105441c8c0060f.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t1/26801/37/14973/371615/5cad7a58Ee486929c/2c105441c8c0060f.png', '2c105441c8c0060f.jpg');
INSERT INTO `springcloud` VALUES (30, '微服务那些事儿纪晓峰著SpringCloud微服务框架架构设计教程书籍', '45.50', 'images/springcloud/5913ec56N5074cf9b.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t5137/220/1723465424/65579/4013f21e/5913ec56N5074cf9b.jpg', '5913ec56N5074cf9b.jpg');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '布偶猫', 'buoumao');
INSERT INTO `test` VALUES (2, '二哈', 'erha');
INSERT INTO `test` VALUES (3, '耳机', 'erji');
INSERT INTO `test` VALUES (4, '服饰', 'fushi');
INSERT INTO `test` VALUES (5, '华为', 'huawei');
INSERT INTO `test` VALUES (6, 'iphone', 'iphone');
INSERT INTO `test` VALUES (7, '家电', 'jiadian');
INSERT INTO `test` VALUES (8, '口红', 'kouhong');
INSERT INTO `test` VALUES (9, '蓝猫', 'lanmao');
INSERT INTO `test` VALUES (10, '零食', 'lingshi');
INSERT INTO `test` VALUES (11, '美白精华', 'meibaijinghua');
INSERT INTO `test` VALUES (12, '内衣', 'neiyi');
INSERT INTO `test` VALUES (13, '新百伦', 'xinbailun');
INSERT INTO `test` VALUES (14, '手表', 'shoubiao');
INSERT INTO `test` VALUES (15, '仙女', 'xiannu');
INSERT INTO `test` VALUES (16, '小米', 'xiaomi');
INSERT INTO `test` VALUES (17, '小仙女', 'xiaoxiannu');
INSERT INTO `test` VALUES (18, 'ipad', 'ipad');
INSERT INTO `test` VALUES (19, '香奈儿', 'xiangnaier');
INSERT INTO `test` VALUES (20, 'macbook', 'macbook');
INSERT INTO `test` VALUES (21, '吉他弦', 'jitaxian');
INSERT INTO `test` VALUES (22, '哈士奇幼犬', 'hashiqiyouquan');
INSERT INTO `test` VALUES (23, '面膜', 'mianmo');
INSERT INTO `test` VALUES (24, '香水', 'xiangshui');
INSERT INTO `test` VALUES (25, '三星', 'sanxing');
INSERT INTO `test` VALUES (26, '风扇', 'fengshan');
INSERT INTO `test` VALUES (27, '鼠标', 'shubiao');
INSERT INTO `test` VALUES (28, 'springcloud', 'springcloud');
INSERT INTO `test` VALUES (29, 'springboot', 'springboot');
INSERT INTO `test` VALUES (30, '外星人', 'waixingren');
INSERT INTO `test` VALUES (31, '投影灯', 'touyingdeng');
INSERT INTO `test` VALUES (32, '电子书', 'dianzishu');
INSERT INTO `test` VALUES (33, '图书', 'tushu');
INSERT INTO `test` VALUES (34, '电视机', 'dianshiji');
INSERT INTO `test` VALUES (35, 'iphonex', 'iphonex');
INSERT INTO `test` VALUES (36, '华硕', 'huashuo');
INSERT INTO `test` VALUES (37, '指纹锁', 'zhiwensuo');
INSERT INTO `test` VALUES (38, '内存条', 'neicuntiao');
INSERT INTO `test` VALUES (39, '火炮', 'huopao');
INSERT INTO `test` VALUES (40, '家具', 'jiaju');

-- ----------------------------
-- Table structure for touyingdeng
-- ----------------------------
DROP TABLE IF EXISTS `touyingdeng`;
CREATE TABLE `touyingdeng`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of touyingdeng
-- ----------------------------
INSERT INTO `touyingdeng` VALUES (1, 'Am8广告投影灯地面logo投影灯门店户外超高清定制logo广告投射灯10瓦（静止款）', '85.00', 'images/投影灯/0c7f9c2eeac0af84.jpg', '//img12.360buyimg.com/n7/jfs/t1/74806/23/8373/127376/5d63f33bE5ae0f478/0c7f9c2eeac0af84.jpg', '0c7f9c2eeac0af84.jpg');
INSERT INTO `touyingdeng` VALUES (2, '京东超市彩坤生日礼物女生情人节礼物送女友女朋友老婆闺蜜儿童男孩小女孩特别实用创意教师节礼品抖音同款星空投影灯【旋转】星座款精美礼盒', '88.00', 'images/投影灯/594f45beN91f3971f.jpg', '//img11.360buyimg.com/n7/jfs/t6469/42/1338682372/204848/335f6261/594f45beN91f3971f.jpg', '594f45beN91f3971f.jpg');
INSERT INTO `touyingdeng` VALUES (3, '京东超市生日礼物女生七夕情人节礼物教师节礼物送女友星空投影灯老婆女朋友儿童男女孩子创意礼品抖音同款玩具黑科技蓝小鱼', '85.00', 'images/投影灯/5ae04775N3b080cd3.jpg', '//img13.360buyimg.com/n7/jfs/t19324/62/1996135033/302826/1b3802ca/5ae04775N3b080cd3.jpg', '5ae04775N3b080cd3.jpg');
INSERT INTO `touyingdeng` VALUES (4, '热带森林生日礼物女生父亲节教师节圣诞节七夕情人节礼物送女男友女男孩生日投影灯情侣儿童实用浪漫创意礼品', '79.00 65.55', 'images/投影灯/5b39fadcN4a857720.jpg', '//img12.360buyimg.com/n7/jfs/t20914/33/1819019597/371487/ab809f27/5b39fadcN4a857720.jpg', '5b39fadcN4a857720.jpg');
INSERT INTO `touyingdeng` VALUES (5, '星空投影灯教师节礼物女老师生日礼物女生送女友女朋友男友送老婆闺蜜儿童玩具礼物抖音黑科技创意礼品小夜灯', '79.00 72.00', 'images/投影灯/7b301a4c23f9f8f4.jpg', '//img14.360buyimg.com/n7/jfs/t1/60532/2/2427/565151/5d0c7b31Ea1e229b4/7b301a4c23f9f8f4.jpg', '7b301a4c23f9f8f4.jpg');
INSERT INTO `touyingdeng` VALUES (6, '京东超市星空投影灯教师节礼物女老师实用生日礼物女生送老师女友老婆女朋友闺蜜抖音中秋节礼品小夜灯音乐盒八音盒八音盒款+送6张灯片+精美包装+礼品袋', '99.00', 'images/投影灯/82d717213fa03d26.jpg', '//img14.360buyimg.com/n7/jfs/t1/52207/5/8996/217195/5d661687E8dd909bf/82d717213fa03d26.jpg', '82d717213fa03d26.jpg');
INSERT INTO `touyingdeng` VALUES (7, 'AM8广告投影灯logo户外地面防水壁灯led门店广告投影射灯【室内】黑广告投影灯支持工程批购', '5.00', 'images/投影灯/0e1b16ca4d996d8f.jpg', '//img10.360buyimg.com/n7/jfs/t1/63046/1/9367/128969/5d713bd8Efbfa8a07/0e1b16ca4d996d8f.jpg', '0e1b16ca4d996d8f.jpg');
INSERT INTO `touyingdeng` VALUES (8, '京东超市星空灯投影灯小夜灯生日礼物女生儿童七夕情人节礼物送女朋友小孩子圣诞节礼物浪漫夜光星光灯发光玩具浪漫星空蓝光', '49.00 46.50', 'images/投影灯/5b72d00cNa6e34730.jpg', '//img10.360buyimg.com/n7/jfs/t23644/55/2012625345/782649/a453c6a4/5b72d00cNa6e34730.jpg', '5b72d00cNa6e34730.jpg');
INSERT INTO `touyingdeng` VALUES (9, '宫薰生日装饰投影仪创意表白浪漫星空投影灯LED加亮星空灯礼品灯情人节装饰布置礼物生日快乐', '19.90', 'images/投影灯/9accca280922bed4.jpg', '//img11.360buyimg.com/n7/jfs/t1/6692/2/1567/241386/5bcd6177E477993b5/9accca280922bed4.jpg', '9accca280922bed4.jpg');
INSERT INTO `touyingdeng` VALUES (10, '生日礼物女生星空投影灯七夕情人节礼物星空灯创意礼品抖音同款送女友闺蜜男孩女孩同学蓝牙音响', '148.00 138.00', 'images/投影灯/52e5373d1d16ba4a.jpg', '//img12.360buyimg.com/n7/jfs/t1/65444/10/3322/645517/5d1968f4Eca3574a2/52e5373d1d16ba4a.jpg', '52e5373d1d16ba4a.jpg');
INSERT INTO `touyingdeng` VALUES (11, '京东超市星空投影灯教师节礼物生日礼物女生送女友男孩实用创意礼品女生情侣送老师女友母亲梦幻星空充电款（5种图案+5种灯光+旋转）', '69.00', 'images/投影灯/fbba20cb357f5d20.jpg', '//img10.360buyimg.com/n7/jfs/t1/34223/3/9407/236778/5ccfcdfaEf3fd0826/fbba20cb357f5d20.jpg', 'fbba20cb357f5d20.jpg');
INSERT INTO `touyingdeng` VALUES (12, '京东超市星空投影灯仪满天星小夜灯小男孩生日礼物送小女孩女生男生情人节礼物送男友女友女朋友男朋友浪漫实用礼品蓝牙遥控充电款', '148.00 138.00', 'images/投影灯/87f2a0fce22667cd.jpg', '//img13.360buyimg.com/n7/jfs/t1/71597/5/5649/278146/5d3c19dfE14d588cb/87f2a0fce22667cd.jpg', '87f2a0fce22667cd.jpg');
INSERT INTO `touyingdeng` VALUES (13, '广告投影灯嵌入式室内酒店KTV服装门店广告logo文字图案定做店铺招牌广告射灯25瓦-静止【有遥控】PKQ', '378.00', 'images/投影灯/a9fcc1d1357aa2aa.jpg', '//img13.360buyimg.com/n7/jfs/t1/47831/12/7585/89342/5d53b334E5acb567a/a9fcc1d1357aa2aa.jpg', 'a9fcc1d1357aa2aa.jpg');
INSERT INTO `touyingdeng` VALUES (14, '笑耀闪防水遥控logo广告投影灯高清打字灯旋转投影灯旋转射灯20W高清+静止（不带遥控）', '198.00', 'images/投影灯/598eb866N39ae560f.jpg', '//img14.360buyimg.com/n7/jfs/t7588/38/70167811/238430/3719888d/598eb866N39ae560f.jpg', '598eb866N39ae560f.jpg');
INSERT INTO `touyingdeng` VALUES (15, '京东超市情人节礼物情侣星空投影灯夜灯生日礼物女生送女友老婆闺蜜女朋友男女孩抖音同款实用礼品投影仪旋转蓝鱼（蓝黄白三色灯光+旋转+遥控+充电+6款...', '88.00 83.00', 'images/投影灯/677b1f06f1476ca8.jpg', '//img13.360buyimg.com/n7/jfs/t1/31632/39/65/376116/5c371a95Ea1c53986/677b1f06f1476ca8.png', '677b1f06f1476ca8.jpg');
INSERT INTO `touyingdeng` VALUES (16, '京东超市星空灯投影灯生日礼物女生送女友老婆闺蜜蓝牙音乐投影仪教师节礼物女老师实用公司福利礼物蓝牙遥控旋转投影灯+4套投影片', '128.00', 'images/投影灯/5ce256b0N4a9eba4a.jpg', '//img12.360buyimg.com/n7/jfs/t30370/303/1498573676/397557/29a01d50/5ce256b0N4a9eba4a.jpg', '5ce256b0N4a9eba4a.jpg');
INSERT INTO `touyingdeng` VALUES (17, '【豪华版彩灯版】花仙子礼盒+S925银投影项链', '269.00', 'images/投影灯/e8c4b8908886cb41.jpg', '//img14.360buyimg.com/n7/jfs/t1/79690/22/6325/137862/5d462a8eEf862bb7e/e8c4b8908886cb41.jpg', 'e8c4b8908886cb41.jpg');
INSERT INTO `touyingdeng` VALUES (18, '【可定制】生日礼物女生情人节礼物送女友送老婆朋友老师浪漫教师节创意梦幻星空投影灯小夜灯抖音网红异地恋猪猪灯（蓝牙音箱+台灯+投影灯）...', '158.00 148.00', 'images/投影灯/04007b99cd07bc27.jpg', '//img10.360buyimg.com/n7/jfs/t1/881/30/389/478645/5b8f5d34Ea5ab1a6a/04007b99cd07bc27.jpg', '04007b99cd07bc27.jpg');
INSERT INTO `touyingdeng` VALUES (19, '广告射灯logo投影灯定制防水旋转led文字图案店铺门头招牌地面户外室内外广告投影灯15瓦黑色', '258.00', 'images/投影灯/80e27956b975521e.jpg', '//img12.360buyimg.com/n7/jfs/t1/5182/32/14334/492574/5bdaf7d2E8454a7d8/80e27956b975521e.jpg', '80e27956b975521e.jpg');
INSERT INTO `touyingdeng` VALUES (20, '京东超市嘉柏兰生日礼物女生七夕情人节礼物送女友女朋友老婆闺蜜儿童男孩女孩子创意毕业礼品抖音星空投影灯小夜灯【旋转】星座款-赠5套投影片', '88.00', 'images/投影灯/4bd0426e4bc9a9a3.jpg', '//img12.360buyimg.com/n7/jfs/t1/49595/36/4992/137356/5d2bd9faE0e24d3eb/4bd0426e4bc9a9a3.jpg', '4bd0426e4bc9a9a3.jpg');
INSERT INTO `touyingdeng` VALUES (21, '浪漫玩转星空投影灯蓝牙音响小夜灯生日礼物女生男生送男友女友女朋友男朋友实用创意教师节礼物送男女老师【蓝牙播放】白黄蓝【三色】【遥控...', '148.00 138.00', 'images/投影灯/bd657cc314142b9f.jpg', '//img11.360buyimg.com/n7/jfs/t1/76640/8/484/211059/5ceb4695E7efc40e0/bd657cc314142b9f.jpg', 'bd657cc314142b9f.jpg');
INSERT INTO `touyingdeng` VALUES (22, '京东超市生日礼物女生七夕情人节礼物送女友女朋友老婆闺蜜儿童男孩女孩抖音同款黑科技创意实用礼品星空投影灯蓝鱼（蓝黄白三色灯光+旋转+遥控+充电+6...', '88.00', 'images/投影灯/a8b06969f817447d.jpg', '//img13.360buyimg.com/n7/jfs/t1/61064/30/5032/291065/5d33303eE384be19b/a8b06969f817447d.jpg', 'a8b06969f817447d.jpg');
INSERT INTO `touyingdeng` VALUES (23, '京东超市美青（MEIQING）生日装饰布置送儿童闺蜜女朋友网红派对惊喜投影灯求婚彩灯闪灯满天星星灯生日彩色投影灯可旋转礼盒装', '78.00', 'images/投影灯/51fc1dd19f975e20.jpg', '//img12.360buyimg.com/n7/jfs/t1/55867/21/3603/129870/5d15bd60E9aa75314/51fc1dd19f975e20.jpg', '51fc1dd19f975e20.jpg');
INSERT INTO `touyingdeng` VALUES (24, '情人教师节礼物生日礼物女生男孩子创意小礼品小夜灯藤球灯星空投影灯送男女朋友同学闺蜜实用毕业小礼物女友蓝色铁艺款15cm(按钮开关)usb款', '36.00', 'images/投影灯/5b23593cNadebd9d7.jpg', '//img13.360buyimg.com/n7/jfs/t22090/49/1236492966/348357/baf65e21/5b23593cNadebd9d7.jpg', '5b23593cNadebd9d7.jpg');
INSERT INTO `touyingdeng` VALUES (25, '广告投影灯logo定制地面室外户外防水旋转店铺门头招牌图案带文字led投影灯广告射灯logo投影灯双色图案片', '100.00', 'images/投影灯/5ce4ff90N5ea654b6.jpg', '//img10.360buyimg.com/n7/jfs/t29089/300/1597024202/93048/c2d21aea/5ce4ff90N5ea654b6.jpg', '5ce4ff90N5ea654b6.jpg');
INSERT INTO `touyingdeng` VALUES (26, '星空投影灯生日礼物女生教师节定制礼物送女友老婆闺蜜儿童男孩女孩老师抖音黑科技创意礼品定制蓝+（6套胶片+白/蓝/黄三色渐变+旋转遥控）', '88.00 78.00', 'images/投影灯/51664cadaf080436.jpg', '//img14.360buyimg.com/n7/jfs/t1/11709/38/15292/204425/5ca7f658Ef6727a95/51664cadaf080436.jpg', '51664cadaf080436.jpg');
INSERT INTO `touyingdeng` VALUES (27, '星空灯女朋友生日礼物女生送女孩老婆女友水晶球小夜灯星空投影灯安睡灯创意礼品教师节女老师结婚纪念日礼物旋转星空灯星星投影灯宇宙小夜灯...', '78.00', 'images/投影灯/5bfb6b9cN4d701c64.jpg', '//img12.360buyimg.com/n7/jfs/t26359/167/2181112730/204980/4e121cdf/5bfb6b9cN4d701c64.jpg', '5bfb6b9cN4d701c64.jpg');
INSERT INTO `touyingdeng` VALUES (28, '京东超市创意星空投影灯抖音同款生日礼物女生送小朋友女孩子圣诞节儿童黑科技实用礼品七夕情人节老婆闺蜜浪漫表白粉色精美礼品盒装（旋转+遥控+充电+4...', '88.00 83.20', 'images/投影灯/5b81174eN658d11a6.jpg', '//img14.360buyimg.com/n7/jfs/t25192/284/922773571/426254/a2b8be0b/5b81174eN658d11a6.jpg', '5b81174eN658d11a6.jpg');
INSERT INTO `touyingdeng` VALUES (29, '四季星空灯星座投影仪创意浪漫生日礼物少女心卧室旋转投影灯四季星座投影灯（送3色灯泡）', '38.80', 'images/投影灯/5b7bcd46Nf697baa4.jpg', '//img11.360buyimg.com/n7/jfs/t24952/176/788927070/996126/5dce983f/5b7bcd46Nf697baa4.jpg', '5b7bcd46Nf697baa4.jpg');
INSERT INTO `touyingdeng` VALUES (30, '京东超市生日礼物女生送女朋友老婆教师节礼物送女老师闺蜜儿童男孩女孩子水晶球实用创意星空投影灯台灯旋转锂电池+粉色+六套胶片+触摸感应夜灯+礼盒', '69.00', 'images/投影灯/10a4f64240263408.jpg', '//img14.360buyimg.com/n7/jfs/t1/50592/24/5892/130295/5d3926d9E0a84bacd/10a4f64240263408.jpg', '10a4f64240263408.jpg');

-- ----------------------------
-- Table structure for tushu
-- ----------------------------
DROP TABLE IF EXISTS `tushu`;
CREATE TABLE `tushu`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tushu
-- ----------------------------
INSERT INTO `tushu` VALUES (1, '【抖音热荐】鬼谷子人性的弱点墨菲定律狼道羊皮卷口才三绝为人三会修心三不成功励志书籍', '48.80', 'images/图书/eda6a3376924f187.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/42880/39/9133/209878/5d299b97E638a7316/eda6a3376924f187.jpg', 'eda6a3376924f187.jpg');
INSERT INTO `tushu` VALUES (2, '一看就停不下来的中国史(京东定制版)', '37.40', 'images/图书/8d695a662e7732a8.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/3188/6/5712/618881/5ba0b625E6a0d6535/8d695a662e7732a8.jpg', '8d695a662e7732a8.jpg');
INSERT INTO `tushu` VALUES (3, '抖音推荐12册鬼谷子全集正版墨菲定律狼道羊皮卷人性的弱点读心术九型人格心理学自控力无厚黑学励志图书籍', '69.80', 'images/图书/2b4970456b7bf49f.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/62813/29/6305/184592/5d43e610E69db8d51/2b4970456b7bf49f.jpg', '2b4970456b7bf49f.jpg');
INSERT INTO `tushu` VALUES (4, '抖音推荐12册鬼谷子正版全集狼道墨菲定律人性的弱点羊皮卷读心术高情商聊天方与圆心理学无厚黑学励志书籍', '45.80', 'images/图书/154397a7c2536f53.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t1/53425/15/5852/195486/5d398322Eed7fbd2b/154397a7c2536f53.jpg', '154397a7c2536f53.jpg');
INSERT INTO `tushu` VALUES (5, '美国国家地理儿童小百科中英文双语读物（套装共6册）', '118.50', 'images/图书/5950e1af27559558.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/21426/6/8449/805536/5c75feb0Ef10c0e3a/5950e1af27559558.jpg', '5950e1af27559558.jpg');
INSERT INTO `tushu` VALUES (6, '人生海海（教育部推荐阅读！莫言、董卿、杨洋、王家卫倾力推荐）', '41.20', 'images/图书/d1920605a6f0476b.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/26823/35/12434/358367/5c98a826E55e6fe0d/d1920605a6f0476b.jpg', 'd1920605a6f0476b.jpg');
INSERT INTO `tushu` VALUES (7, '人间失格', '12.50', 'images/图书/583408d8N807dd142.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t3715/66/1895635005/167409/c8a0c796/583408d8N807dd142.jpg', '583408d8N807dd142.jpg');
INSERT INTO `tushu` VALUES (8, '余生很长，别慌张，别失望', '9.90', 'images/图书/5bfb571bN407bfa35.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t29086/155/678303512/196690/31039bd0/5bfb571bN407bfa35.jpg', '5bfb571bN407bfa35.jpg');
INSERT INTO `tushu` VALUES (9, '浮生六记（畅销300万册，全译本，蝉联京东图书2017，2018年度十大畅销书）【果麦经典】', '16.00', 'images/图书/63bd60b02e7566b8.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t1/9019/35/9126/341306/5c1222feE54a86dc1/63bd60b02e7566b8.jpg', '63bd60b02e7566b8.jpg');
INSERT INTO `tushu` VALUES (10, '深度思考：不断逼近问题的本质', '24.00', 'images/图书/5b863aa7Nfb96ba8b.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t23191/84/2588279951/200826/3d12b2da/5b863aa7Nfb96ba8b.jpg', '5b863aa7Nfb96ba8b.jpg');
INSERT INTO `tushu` VALUES (11, '正版12册鬼谷子全集九型人格墨菲定律人性的弱点方与圆狼道羊皮卷无口才三绝为人三会修心三不厚黑学书籍', '69.80', 'images/图书/9b79107ec5d77f86.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/78253/28/7684/172258/5d5ba116E9f3badad/9b79107ec5d77f86.png', '9b79107ec5d77f86.jpg');
INSERT INTO `tushu` VALUES (12, '格局思路决定出路格局决定结局为人处世人际交往说话沟通技巧管理狼性社交职场创业经商生意谈判成功励', '1.00', 'images/图书/7c7672f3e176dd94.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/10176/18/11498/100995/5c6f724eE177959a2/7c7672f3e176dd94.jpg', '7c7672f3e176dd94.jpg');
INSERT INTO `tushu` VALUES (13, '李娟的书全套10册羊道三部曲+阿勒泰的角落+冬牧场+走夜路请放声歌唱+我的阿勒泰等现当代散文随笔', '330.00', 'images/图书/b301635548a1da0d.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/46833/20/2905/165590/5d0ae54bEddeceba9/b301635548a1da0d.jpg', 'b301635548a1da0d.jpg');
INSERT INTO `tushu` VALUES (14, '3-6岁行为习惯养成绘本：我会爱自己（情绪管理篇套装共6册）学会自我保护，懂得自我管理', '42.70', 'images/图书/5b1f8145N1939105a.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t21736/87/1064862922/200228/ff2ad5fc/5b1f8145N1939105a.jpg', '5b1f8145N1939105a.jpg');
INSERT INTO `tushu` VALUES (15, '余华作品：活着', '21.00', 'images/图书/59e02214N37418280.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t10162/279/1390942739/246693/50c56f9d/59e02214N37418280.jpg', '59e02214N37418280.jpg');
INSERT INTO `tushu` VALUES (16, '一看就停不下来的中国史1+2（套装全2册）', '74.80', 'images/图书/bafc4cb59ba2aef3.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/46902/16/2263/614215/5d020006E314033b5/bafc4cb59ba2aef3.jpg', 'bafc4cb59ba2aef3.jpg');
INSERT INTO `tushu` VALUES (17, '作家榜经典：月亮与六便士（2018京东小说销量桂冠！2017豆瓣阅读销量桂冠！上海国际学校指定必读版）', '9.90', 'images/图书/5ce26f70N83fa8a5c.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t28270/239/1525421834/309114/c8e6f306/5ce26f70N83fa8a5c.jpg', '5ce26f70N83fa8a5c.jpg');
INSERT INTO `tushu` VALUES (18, '牛津高阶英汉双解词典（第9版）', '144.00', 'images/图书/5b2c1db4N9d0201d0.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t23197/32/319564335/186353/2455a507/5b2c1db4N9d0201d0.jpg', '5b2c1db4N9d0201d0.jpg');
INSERT INTO `tushu` VALUES (19, '你不努力没人能给你想要的生活谁也给不了全十册10没有伞的孩子必须努力奔跑青春青少年励志成长书籍抖音【正版】你不努力全套书', '38.80', 'images/图书/9dcc1cdcdcd66796.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/51773/30/6648/189687/5d43e088E83d63832/9dcc1cdcdcd66796.jpg', '9dcc1cdcdcd66796.jpg');
INSERT INTO `tushu` VALUES (20, '思维导图记忆力训练法教你简单快速有效的提升记忆快速提高左右脑思维和技巧可搭配最强大脑书籍', '1.00', 'images/图书/5b6ab13dNeb998f87.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t23179/312/1862691384/385365/cd68a2dd/5b6ab13dNeb998f87.jpg', '5b6ab13dNeb998f87.jpg');
INSERT INTO `tushu` VALUES (21, '二三年级课外书小学生必备阅读名著10册昆虫记彩图注音版儿童文学7-10岁海底两万里一年级鲁滨孙漂流记', '29.90', 'images/图书/f7394b320903678c.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/18935/34/14519/205691/5ca8b9d9E249a7f98/f7394b320903678c.jpg', 'f7394b320903678c.jpg');
INSERT INTO `tushu` VALUES (22, '正版14册狼道墨菲定律鬼谷子全集人性的弱点羊皮卷方与圆无厚黑学口才三绝励志书籍', '68.80', 'images/图书/f1bd698956f35b86.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/45208/13/10036/143525/5d730b3aE90b6b43e/f1bd698956f35b86.jpg', 'f1bd698956f35b86.jpg');
INSERT INTO `tushu` VALUES (23, '长安十二时辰（上下共两册）', '54.70', 'images/图书/5840ecb0N8be4af6d.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t3796/307/2114382153/274712/cbf9aa64/5840ecb0N8be4af6d.jpg', '5840ecb0N8be4af6d.jpg');
INSERT INTO `tushu` VALUES (24, '高难度沟通（麻省理工高人气沟通课）', '23.00', 'images/图书/f2fc59c47296638f.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/36188/1/11587/270409/5cf76572Eea4b9219/f2fc59c47296638f.jpg', 'f2fc59c47296638f.jpg');
INSERT INTO `tushu` VALUES (25, '人间失格+罗生门+我是猫+月亮与六便士文学小说全4册外国文学世界名著畅销书籍', '29.80', 'images/图书/c6777e0096ff87af.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/78036/36/8621/83389/5d6625bdEe5394f5b/c6777e0096ff87af.jpg', 'c6777e0096ff87af.jpg');
INSERT INTO `tushu` VALUES (26, '漫长的告别（怪不得村上春树读了12遍！每每陷入困境，村上春树便打开《漫长的告别》！全新精装插图珍藏版）', '52.40', 'images/图书/5bea3dceN10e51b04.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t29623/161/163538582/162899/4dded798/5bea3dceN10e51b04.jpg', '5bea3dceN10e51b04.jpg');
INSERT INTO `tushu` VALUES (27, '明朝那些事儿（全套共9册增补版）', '149.00', 'images/图书/5bb03d7cN10a683fd.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t26536/47/496667061/170109/23a378fd/5bb03d7cN10a683fd.jpg', '5bb03d7cN10a683fd.jpg');
INSERT INTO `tushu` VALUES (28, '人生', '18.80', 'images/图书/607f3d85-38a8-40f9-9634-a2a8e7248690.jpg', '//img12.360buyimg.com/n1/s200x200_18913/607f3d85-38a8-40f9-9634-a2a8e7248690.jpg', '607f3d85-38a8-40f9-9634-a2a8e7248690.jpg');
INSERT INTO `tushu` VALUES (29, '原则', '60.80', 'images/图书/5a373299N4978d724.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t15667/160/563569281/151713/d4fab374/5a373299N4978d724.jpg', '5a373299N4978d724.jpg');
INSERT INTO `tushu` VALUES (30, '米小圈漫画成语（套装共4册）', '33.30', 'images/图书/5760b6c5N8537e3b0.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t2833/360/2356290198/499895/543de4d6/5760b6c5N8537e3b0.jpg', '5760b6c5N8537e3b0.jpg');
INSERT INTO `tushu` VALUES (31, '汪曾祺全集全4册人间草木+人间有味+人间小暖+人生有趣作品集名家典藏散文集现当代随笔文学小说书籍', '54.80', 'images/图书/3ec78472c9e44048.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/25507/5/15340/175103/5caef0a7Ed805daea/3ec78472c9e44048.jpg', '3ec78472c9e44048.jpg');
INSERT INTO `tushu` VALUES (32, '墨菲定律', '19.10', 'images/图书/51f42bafbc54576c.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/11088/9/8851/163437/5c7251c6Ebe25c43b/51f42bafbc54576c.jpg', '51f42bafbc54576c.jpg');
INSERT INTO `tushu` VALUES (33, '正版20册人性的弱点狼道鬼谷子全集羊皮卷墨菲定律九型人格读心术口才三绝修心三不为人三会成功学图书籍', '88.00 78.00', 'images/图书/a73e1f2b4b5392c8.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/76764/19/7877/187621/5d5d0354Eb0b30070/a73e1f2b4b5392c8.png', 'a73e1f2b4b5392c8.jpg');
INSERT INTO `tushu` VALUES (34, '全20册鬼谷子全集正版九型人格墨菲定律人性的弱点格局方与圆狼道羊皮卷口才三绝无厚黑学成人书籍', '78.80', 'images/图书/03633c1e22aa56af.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/43153/3/11917/162671/5d53cda0E94154fa1/03633c1e22aa56af.jpg', '03633c1e22aa56af.jpg');
INSERT INTO `tushu` VALUES (35, '影响孩子一生的世界名著全8册小王子书绿野仙踪小学生课外阅读书籍儿童文学7-12岁三四五六年级读物', '36.80', 'images/图书/c5d02fa39ef55766.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/63554/27/8749/345063/5d68e3f7E1ecaae19/c5d02fa39ef55766.jpg', 'c5d02fa39ef55766.jpg');
INSERT INTO `tushu` VALUES (36, '现代汉语词典（第7版）', '93.00', 'images/图书/57fc87a3N82181b12.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t3757/38/34269690/485570/3f12bc2/57fc87a3N82181b12.jpg', '57fc87a3N82181b12.jpg');
INSERT INTO `tushu` VALUES (37, '【全国获奖绘本】绘本3-6岁暖心绘本系列全8册儿童绘本儿童图书儿童书宝宝绘本故事书图画书', '39.80', 'images/图书/0aa9c5f1f36219ad.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/67556/34/904/195364/5cf215e4Ea95d00fc/0aa9c5f1f36219ad.jpg', '0aa9c5f1f36219ad.jpg');
INSERT INTO `tushu` VALUES (38, '全7册人间失格+月亮与六便士+瓦尔登湖+局外人+我是猫+菊与刀+1984世界名著文学小说书籍', '45.80', 'images/图书/8068113c5cf0de3d.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/84031/27/9012/161931/5d6cd99eEcd0fbc0a/8068113c5cf0de3d.jpg', '8068113c5cf0de3d.jpg');
INSERT INTO `tushu` VALUES (39, '我们的中国', '18.60', 'images/图书/5b1f2c4fN7047d2fa.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t22192/17/1011997914/284933/6ac1711d/5b1f2c4fN7047d2fa.jpg', '5b1f2c4fN7047d2fa.jpg');
INSERT INTO `tushu` VALUES (40, '皮囊（畅销300万册的国民读本，韩寒监制，刘德华、李敬泽作序。）', '19.90', 'images/图书/741453cbb05d2026.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/78192/8/314/185301/5ce7ca05E79f62911/741453cbb05d2026.jpg', '741453cbb05d2026.jpg');
INSERT INTO `tushu` VALUES (41, '0-3岁幼儿生活情景游戏绘本和我一起玩（套装全6册）（新版）', '33.40', 'images/图书/5abb0c0aNbef78147.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t17056/331/1093049564/441321/95ec6862/5abb0c0aNbef78147.jpg', '5abb0c0aNbef78147.jpg');
INSERT INTO `tushu` VALUES (42, '0-3岁幼儿启蒙认知小百科（套装全2册）', '32.80', 'images/图书/059a07979ee5eb6d.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t1/31851/7/8225/471007/5c9d7f28E6a339ca7/059a07979ee5eb6d.jpg', '059a07979ee5eb6d.jpg');
INSERT INTO `tushu` VALUES (43, '成功法则12册全集狼道鬼谷子羊皮卷卡耐基人性的弱点墨菲定律心理学书籍九型人格无厚黑学', '69.80', 'images/图书/a38c4d54641e2d6c.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/57400/11/9521/199995/5d6e2189E270886a1/a38c4d54641e2d6c.jpg', 'a38c4d54641e2d6c.jpg');
INSERT INTO `tushu` VALUES (44, '和朋友们一起想办法（学习解决问题的图画书套装全8册）', '27.10', 'images/图书/b16cd63ff6f54a03.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/6549/26/4711/491372/5bda617aEb3ca1f5d/b16cd63ff6f54a03.jpg', 'b16cd63ff6f54a03.jpg');
INSERT INTO `tushu` VALUES (45, '超有趣幼儿十万个为什么（礼品装套装共8册）', '55.00', 'images/图书/5664ee0aN1d55d624.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t2170/210/1645211715/221020/7c8756e4/5664ee0aN1d55d624.jpg', '5664ee0aN1d55d624.jpg');
INSERT INTO `tushu` VALUES (46, '不一样的卡梅拉手绘版·第一季（套装12册）', '60.00 46.80', 'images/图书/209dade9d0281535.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t1/47521/31/1401/250507/5cf29905Eabf913e8/209dade9d0281535.jpg', '209dade9d0281535.jpg');
INSERT INTO `tushu` VALUES (47, '成功学：鬼谷子+墨菲定律+狼道+羊皮卷+方与圆+人性的弱点+九型人格等（套装共12册）', '163.50', 'images/图书/5ce62e71Na855d6bf.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t29956/186/1603505201/281246/4863f5f6/5ce62e71Na855d6bf.jpg', '5ce62e71Na855d6bf.jpg');
INSERT INTO `tushu` VALUES (48, '中国少年儿童百科全书青少年版全套中国少年儿童百科彩图精装16开4册青少年百科动植物百科少儿', '68.00', 'images/图书/fbaee6f143e0bd81.jpg', '//img11.360buyimg.com/n1/s200x200_jfs/t1/39822/30/48/92576/5cb83e2eE34150fd3/fbaee6f143e0bd81.jpg', 'fbaee6f143e0bd81.jpg');
INSERT INTO `tushu` VALUES (49, '正版我在为自己读书10册爸妈不是我的佣人全套小学生课外阅读书籍儿童励志9-10-12岁成长励志系列', '29.90', 'images/图书/efce985a228cd5fc.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/46306/28/1961/201819/5cfc6b5eE0646c2a9/efce985a228cd5fc.jpg', 'efce985a228cd5fc.jpg');
INSERT INTO `tushu` VALUES (50, '昆虫记美文美绘版（科学素养与审美教育读本）（套装共4册）', '70.00', 'images/图书/d8f09527ff2a2456.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t1/60112/17/3604/218112/5d1c64daEa82770d1/d8f09527ff2a2456.jpg', 'd8f09527ff2a2456.jpg');
INSERT INTO `tushu` VALUES (51, '孩子的第一本经济学启蒙绘本：当动物有钱了(教会孩子如何看待财富，获得幸福)', '14.80', 'images/图书/5b20bde9Nef1532b6.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t21268/132/1177276619/108245/e5a8c5b1/5b20bde9Nef1532b6.jpg', '5b20bde9Nef1532b6.jpg');
INSERT INTO `tushu` VALUES (52, '儿童绘本3-6岁我能表达自己8册适合3-4-5-6-7宝宝图画书故事书成长教育情商培育语言表达能力', '38.50', 'images/图书/d6763da08c4c8791.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/51537/16/8753/426004/5d63b422E02bfc1dd/d6763da08c4c8791.jpg', 'd6763da08c4c8791.jpg');
INSERT INTO `tushu` VALUES (53, '林徽因：不慌不忙的坚强', '24.90', 'images/图书/5a45b0a7Ned0a673d.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t14473/219/1123201220/596396/73f13bf/5a45b0a7Ned0a673d.jpg', '5a45b0a7Ned0a673d.jpg');
INSERT INTO `tushu` VALUES (54, '人间失格太宰治正版无删减精装小说家太宰治的自传体原版外国小说经典文学国外小说书籍', '16.80', 'images/图书/1623f71dc533dac2.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/18922/19/2700/179321/5c207e03Eebf8bfba/1623f71dc533dac2.jpg', '1623f71dc533dac2.jpg');
INSERT INTO `tushu` VALUES (55, '平凡的世界：全三册', '81.00', 'images/图书/59521501N4c19726f.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t5587/350/4618116432/255954/cd4c1951/59521501N4c19726f.jpg', '59521501N4c19726f.jpg');
INSERT INTO `tushu` VALUES (56, '中国科幻基石丛书：三体（套装1-3册）', '62.80', 'images/图书/55dab54dN5271c377.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t1705/189/702227414/177982/cc8c12f0/55dab54dN5271c377.jpg', '55dab54dN5271c377.jpg');
INSERT INTO `tushu` VALUES (57, '全套22本墨菲定律鬼谷子羊皮卷狼道正版全集人性的弱点优点口才三绝励志书籍', '129.80', 'images/图书/419c01a6b55c7af6.jpg', '//img10.360buyimg.com/n1/s200x200_jfs/t1/69529/8/8501/208356/5d671a8aEac4b9a8e/419c01a6b55c7af6.jpg', '419c01a6b55c7af6.jpg');
INSERT INTO `tushu` VALUES (58, '可爱的数学（套装全8册加法、减法、时间、对比、分类、规律、图形、长短-恐龙小Q）', '67.50', 'images/图书/5a8e6f98N737ef060.jpg', '//img14.360buyimg.com/n1/s200x200_jfs/t18544/232/488447750/606085/375a5cb8/5a8e6f98N737ef060.jpg', '5a8e6f98N737ef060.jpg');
INSERT INTO `tushu` VALUES (59, '八册别在吃苦的年纪选择安逸+你不努力没人能给你想要的生活+将来的你一定会感谢现在拼命的自己励志书籍', '35.80', 'images/图书/29a9084ffd8ed1fc.jpg', '//img12.360buyimg.com/n1/s200x200_jfs/t1/76530/26/9205/246252/5d707210E732b46bc/29a9084ffd8ed1fc.jpg', '29a9084ffd8ed1fc.jpg');
INSERT INTO `tushu` VALUES (60, '动物小说大王沈石溪品藏书系新版：狼王梦第七条猎狗斑羚飞渡最后一头战象等（黄绿特辑套装共12册）', '120.00', 'images/图书/07cc7edb918cbe1a.jpg', '//img13.360buyimg.com/n1/s200x200_jfs/t1/27290/1/13026/86830/5c9db103Eb1869eef/07cc7edb918cbe1a.jpg', '07cc7edb918cbe1a.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `post` int(11) NULL DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '张自强', 'wowangle', 'You happy just Ok', '13208171125', '郫县', '男', 610081, '787390869@qq.com');
INSERT INTO `user` VALUES (2, '左梦珂', 'wowangle', 'driver king', '13880111510', '成都', '女', 610081, '787390869@qq.com');
INSERT INTO `user` VALUES (3, '何琦', 'wowangle', 'hahah', '13208171125', '成都', '男', 610081, '787390869@qq.com');
INSERT INTO `user` VALUES (4, '姚瑶', 'wowangle', 'pink pink ', '13208171125', '成都', '女', 610081, '787390869@qq.com');

-- ----------------------------
-- Table structure for waixingren
-- ----------------------------
DROP TABLE IF EXISTS `waixingren`;
CREATE TABLE `waixingren`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waixingren
-- ----------------------------
INSERT INTO `waixingren` VALUES (1, '外星人AlienwareAurora英特尔酷睿i9水冷游戏台式主机(九代i9-9900k32G512GSSD2TRTX2080Ti11G独显)', '32999.00', 'images/外星人/f2422d4d4b67216b.jpg', '//img14.360buyimg.com/n7/jfs/t1/10931/35/9960/179833/5c525732Eabf32e15/f2422d4d4b67216b.jpg', 'f2422d4d4b67216b.jpg');
INSERT INTO `waixingren` VALUES (2, '外星人AlienwareAurora水冷游戏台式电脑主机(八代i7-870016G256GSSD1TRX580X8G独显850W三年上门)', '13999.00', 'images/外星人/500d12488a117c80.jpg', '//img11.360buyimg.com/n7/jfs/t1/14433/18/7722/179943/5c6f851dE0e125737/500d12488a117c80.jpg', '500d12488a117c80.jpg');
INSERT INTO `waixingren` VALUES (3, '外星人AlienwarePro版AW768机械/茶轴游戏电竞背光键盘(AlienFX灯效全键无冲15个宏按键)黑银', '1299.00 1199.00', 'images/外星人/59afcaccN7b2a8ebf.jpg', '//img14.360buyimg.com/n7/jfs/t7369/83/2475917286/149817/6405cecb/59afcaccN7b2a8ebf.jpg', '59afcaccN7b2a8ebf.jpg');
INSERT INTO `waixingren` VALUES (4, '外星人17.3英寸游戏笔记本电脑(i7-8750H16G256G固态1TGTX10606G独显QHD)黑', '15999.00', 'images/外星人/9fc0e92d7c078687.jpg', '//img12.360buyimg.com/n7/jfs/t1/31482/35/3576/130977/5c760e5aE3f29d772/9fc0e92d7c078687.jpg', '9fc0e92d7c078687.jpg');
INSERT INTO `waixingren` VALUES (5, '外星人15.6英寸英特酷睿i5轻薄游戏笔记本电脑(i5-8300H8G512G固态GTX1050Ti4G独显)经典银', '10999.00', 'images/外星人/5b03af2957118d42.jpg', '//img10.360buyimg.com/n7/jfs/t1/30591/36/4611/93925/5c7f4070E4ea03158/5b03af2957118d42.jpg', '5b03af2957118d42.jpg');
INSERT INTO `waixingren` VALUES (6, '外星人15.6英寸轻薄游戏笔记本电脑(i7-8750H16G256GSSD1TRTX2070MQ8G独显144Hz)星云红', '22999.00', 'images/外星人/4f1a8e04558f5384.jpg', '//img14.360buyimg.com/n7/jfs/t1/27513/25/5694/110780/5c41bb98Ebf77881c/4f1a8e04558f5384.jpg', '4f1a8e04558f5384.jpg');
INSERT INTO `waixingren` VALUES (7, '外星人（alienware）全新M1515.6英寸标压独显IPS屏游戏笔记本电脑单主机1523银预订i5-8300H/GTX1050Ti', '9999.00', 'images/外星人/72ee7ac3832a5f44.jpg', '//img12.360buyimg.com/n7/jfs/t1/3120/3/9890/323106/5bc96c86E09d2fcdc/72ee7ac3832a5f44.jpg', '72ee7ac3832a5f44.jpg');
INSERT INTO `waixingren` VALUES (8, '外星人15.6英寸轻薄游戏笔记本电脑(i5-8300H8G256GSSDGTX1050Ti4G独显)经典银', '10999.00', 'images/外星人/e71d5c39e0b18ae7.jpg', '//img13.360buyimg.com/n7/jfs/t1/20343/31/14882/88611/5caac21cE51d9d586/e71d5c39e0b18ae7.jpg', 'e71d5c39e0b18ae7.jpg');
INSERT INTO `waixingren` VALUES (9, '外星人17.3英寸游戏笔记本电脑(九代i9-9900K32G512GSSDX21TRTX20808G独显144Hz)白', '47999.00', 'images/外星人/fa508d322076917f.jpg', '//img13.360buyimg.com/n7/jfs/t1/14221/16/15036/108281/5cac2f32Ea4034cf8/fa508d322076917f.jpg', 'fa508d322076917f.jpg');
INSERT INTO `waixingren` VALUES (10, '外星人（Alienware）AW2518HF24.5英寸240Hz刷新专业游戏电竞显示器', '2899.00', 'images/外星人/5a5daf3eN8664288f.jpg', '//img11.360buyimg.com/n7/jfs/t18196/99/114125808/202213/2a70c3b3/5a5daf3eN8664288f.jpg', '5a5daf3eN8664288f.jpg');
INSERT INTO `waixingren` VALUES (11, '外星人17.3英寸游戏笔记本电脑(九代i9-9900K32G512GSSDX21TRTX20808G独显144Hz)黑', '47699.00', 'images/外星人/61e9f22808e5ede0.jpg', '//img13.360buyimg.com/n7/jfs/t1/30749/39/10009/110935/5cac3051E7a4d6908/61e9f22808e5ede0.jpg', '61e9f22808e5ede0.jpg');
INSERT INTO `waixingren` VALUES (12, '外星人（alienware）全新ALWA51M九代八核17.3英寸独显144hz游戏笔记本电脑单主机1968黑预订i9-9900K/RTX2080', '47699.00', 'images/外星人/56b55fb8d3b4c9f0.jpg', '//img13.360buyimg.com/n7/jfs/t1/24024/22/14886/43209/5cac33baE4ee62a21/56b55fb8d3b4c9f0.jpg', '56b55fb8d3b4c9f0.jpg');
INSERT INTO `waixingren` VALUES (13, '外星人17.3英寸游戏笔记本电脑(九代i7-9700K16G512GSSDX2RTX20808G独显144Hz)白', '36999.00', 'images/外星人/e8a5efdb7a6e22a2.jpg', '//img13.360buyimg.com/n7/jfs/t1/20642/17/14954/108281/5cac2f93E12046cff/e8a5efdb7a6e22a2.jpg', 'e8a5efdb7a6e22a2.jpg');
INSERT INTO `waixingren` VALUES (14, '外星人17.3英寸英特尔酷睿i7游戏笔记本电脑(九代i7-9700K16G256GSSD1TRTX20708G独显144Hz)白', '29299.00', 'images/外星人/1820fd0561cd3128.jpg', '//img13.360buyimg.com/n7/jfs/t1/41955/22/3312/98815/5cce5ff0E1cc5e09d/1820fd0561cd3128.jpg', '1820fd0561cd3128.jpg');
INSERT INTO `waixingren` VALUES (15, '外星人17.3英寸轻薄游戏笔记本电脑(i7-8750H16G256G固态1TRTX20606G独显)银', '17999.00', 'images/外星人/4be6d5fc03db9234.jpg', '//img13.360buyimg.com/n7/jfs/t1/30845/7/850/98182/5c41b6d8E5eb653d5/4be6d5fc03db9234.jpg', '4be6d5fc03db9234.jpg');
INSERT INTO `waixingren` VALUES (16, '外星人AlienwareAdvanced版AW558游戏鼠标(AlienFX灯效5000DPI-3档飞敏设置9个可编程按键)黑银', '449.00', 'images/外星人/59afcb25Nd60520eb.jpg', '//img12.360buyimg.com/n7/jfs/t8746/22/823107460/127872/f4868019/59afcb25Nd60520eb.jpg', '59afcb25Nd60520eb.jpg');
INSERT INTO `waixingren` VALUES (17, '外星人（alienware）AW988无线有线双模7.1声环绕音效电竞游戏耳机黑', '1988.00', 'images/外星人/5b1f5042N741d8dfc.jpg', '//img12.360buyimg.com/n7/jfs/t21604/328/1082490348/48712/aa879e2/5b1f5042N741d8dfc.jpg', '5b1f5042N741d8dfc.jpg');
INSERT INTO `waixingren` VALUES (18, '外星人（alienware）R5ALW17C17.3英寸八代标压高清独显游戏笔记本电脑戴尔单主机3749PBi7-8750H/GTX1070', '17999.00', 'images/外星人/5b8699262acb8dd5.jpg', '//img13.360buyimg.com/n7/jfs/t1/37734/22/2098/44129/5cb69152Ed718c685/5b8699262acb8dd5.jpg', '5b8699262acb8dd5.jpg');
INSERT INTO `waixingren` VALUES (19, '外星人（Alienware）AW3418DW34英寸专业电竞曲面显示器120Hz刷新率1900R曲率', '11999.00', 'images/外星人/5a5daf5fN4703cb24.jpg', '//img14.360buyimg.com/n7/jfs/t16693/100/107975045/364414/af0c386/5a5daf5fN4703cb24.jpg', '5a5daf5fN4703cb24.jpg');
INSERT INTO `waixingren` VALUES (20, '外星人15.6英寸Gsync游戏笔记本电脑(i9-8950HK32G512G固态1TGTX1080MQ8G独显FHD)', '31499.00', 'images/外星人/341ff1a22a85e1e6.jpg', '//img12.360buyimg.com/n7/jfs/t1/34269/27/9296/151913/5ccfe3e7E4d7f0021/341ff1a22a85e1e6.jpg', '341ff1a22a85e1e6.jpg');
INSERT INTO `waixingren` VALUES (21, '外星人AlienwareAurora游戏台式电脑主机(八代i5-84008G256GSSD1TGTX1050Ti4G独显三年上门售后)', '7999.00', 'images/外星人/c11150a642af8f99.jpg', '//img14.360buyimg.com/n7/jfs/t1/9626/29/14526/142988/5c6a1306Ea7fd3f6f/c11150a642af8f99.jpg', 'c11150a642af8f99.jpg');
INSERT INTO `waixingren` VALUES (22, '外星人AlienwareAdvanced版AW568机械/茶轴游戏电竞键盘(AlienFX灯效全键无冲5个宏按键)黑', '899.00', 'images/外星人/59afcae4Ne097c6eb.jpg', '//img10.360buyimg.com/n7/jfs/t8077/276/853554525/148313/7b56d9be/59afcae4Ne097c6eb.jpg', '59afcae4Ne097c6eb.jpg');
INSERT INTO `waixingren` VALUES (23, '外星人15.6英寸轻薄游戏笔记本电脑(i7-8750H8G256G固态GTX1050Ti4G独显)经典银', '13999.00', 'images/外星人/9b74935904ec370c.jpg', '//img13.360buyimg.com/n7/jfs/t1/28687/17/3/93215/5c064668E08cd102d/9b74935904ec370c.jpg', '9b74935904ec370c.jpg');
INSERT INTO `waixingren` VALUES (24, '外星人（alienware）ALW全新m17-R1八代17.3英寸高清独显游戏笔记本手提电脑单主机2737银i7-8750H/RTX2060', '17999.00', 'images/外星人/00686340bb8d23a0.jpg', '//img11.360buyimg.com/n7/jfs/t1/36446/40/4707/42115/5cbd20afE83433eeb/00686340bb8d23a0.jpg', '00686340bb8d23a0.jpg');
INSERT INTO `waixingren` VALUES (25, '外星人AlienwareAW988无线有线双模游戏电竞耳机电脑头戴式耳麦耳机黑京东自营', '1999.00', 'images/外星人/467da08156214764.jpg', '//img11.360buyimg.com/n7/jfs/t1/21275/6/1493/63176/5c1326f6E900b3f70/467da08156214764.jpg', '467da08156214764.jpg');
INSERT INTO `waixingren` VALUES (26, '外星人17.3英寸游戏笔记本电脑(九代i7-9700K16G256GSSD1TRTX20708G独显144Hz)黑', '28999.00', 'images/外星人/8250ee7eb833d0aa.jpg', '//img10.360buyimg.com/n7/jfs/t1/14888/28/15002/106779/5cac30d1E242081ed/8250ee7eb833d0aa.jpg', '8250ee7eb833d0aa.jpg');
INSERT INTO `waixingren` VALUES (27, '外星人17.3英寸机皇4K游戏笔记本电脑(i9-8950HK32G1T固态X21TGTX10808G独显UHD)', '32999.00', 'images/外星人/d28e649fda323593.jpg', '//img10.360buyimg.com/n7/jfs/t1/26136/35/466/129464/5c0a0fbcEc8aed611/d28e649fda323593.jpg', 'd28e649fda323593.jpg');
INSERT INTO `waixingren` VALUES (28, '外星人AlienwareEliteAW959有线游戏电竞鼠标(AlienFX灯效12000DPI-5档飞敏设置11个可编程按键)黑银', '899.00 799.00', 'images/外星人/6e6b163509f46f20.jpg', '//img11.360buyimg.com/n7/jfs/t1/23239/1/2796/116934/5c20444aE71773224/6e6b163509f46f20.jpg', '6e6b163509f46f20.jpg');
INSERT INTO `waixingren` VALUES (29, '外星人AlienwareAurora水冷游戏台式电脑主机(八代i7-8086K16G256GSSD2TGTX1080Ti11G独显三年上门)', '19999.00', 'images/外星人/46f65046161e6f95.jpg', '//img10.360buyimg.com/n7/jfs/t1/5373/18/9749/181719/5bad8aecE07dd739c/46f65046161e6f95.jpg', '46f65046161e6f95.jpg');

-- ----------------------------
-- Table structure for weishengzhi
-- ----------------------------
DROP TABLE IF EXISTS `weishengzhi`;
CREATE TABLE `weishengzhi`  (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `imageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `imageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weishengzhi
-- ----------------------------
INSERT INTO `weishengzhi` VALUES (1, '京东超市维达(Vinda)卷纸蓝色经典4层140g卫生纸巾*27卷（整箱销售）', '55.90', 'images/卫生纸/278f3a7d5a3e6cbd.jpg', '//img14.360buyimg.com/n7/jfs/t1/40215/37/12462/482504/5d3ab584Ee44c0ec7/278f3a7d5a3e6cbd.jpg', '278f3a7d5a3e6cbd.jpg');
INSERT INTO `weishengzhi` VALUES (2, '京东超市维达(Vinda)卷纸蓝色经典4层200g卫生纸巾*27卷(整箱销售)', '79.90', 'images/卫生纸/a190056275dded09.jpg', '//img11.360buyimg.com/n7/jfs/t1/106550/20/7188/176317/5df9ba20E0989e8b8/a190056275dded09.jpg', 'a190056275dded09.jpg');
INSERT INTO `weishengzhi` VALUES (3, '清风卷纸卫生纸整箱32卷原木纯品3层240段卷筒纸27卷+5卷纸巾卷纸包邮', '55.90 52.90', 'images/卫生纸/0efc617a9c7c07ee.jpg', '//img14.360buyimg.com/n7/jfs/t1/97565/21/6433/200412/5df263feE68747aaa/0efc617a9c7c07ee.jpg', '0efc617a9c7c07ee.jpg');
INSERT INTO `weishengzhi` VALUES (4, '京东超市清风(APP)卷纸卫生纸马蹄莲3层80克*10卷无芯卷纸(平纹长卷)', '10.90', 'images/卫生纸/5abceb06N51235a1c.jpg', '//img12.360buyimg.com/n7/jfs/t17011/58/1145937167/184235/224e2d47/5abceb06N51235a1c.jpg', '5abceb06N51235a1c.jpg');
INSERT INTO `weishengzhi` VALUES (5, '京东超市清风（APP）卷纸原木纯品3层270段卫生纸*27卷（整箱销售）', '49.90', 'images/卫生纸/8dc8f2a68339f851.jpg', '//img11.360buyimg.com/n7/jfs/t1/55197/23/4483/184613/5d2314b8Edef124e6/8dc8f2a68339f851.jpg', '8dc8f2a68339f851.jpg');
INSERT INTO `weishengzhi` VALUES (6, '霏羽卫生纸卷筒纸5斤4层35卷原木浆妇婴无芯卫生纸巾厕所厕纸家用家庭实惠手纸巾F1140', '29.90', 'images/卫生纸/5bc6d4a9N921ab127.jpg', '//img12.360buyimg.com/n7/jfs/t26188/346/1365022450/84821/fc47b8d1/5bc6d4a9N921ab127.jpg', '5bc6d4a9N921ab127.jpg');
INSERT INTO `weishengzhi` VALUES (7, '京东超市维达(Vinda)卷纸蓝色经典4层140g卫生纸巾*10卷', '20.50', 'images/卫生纸/b2787efebb0919da.jpg', '//img11.360buyimg.com/n7/jfs/t1/82427/17/2777/204477/5d10aadcEdd4d2118/b2787efebb0919da.jpg', 'b2787efebb0919da.jpg');
INSERT INTO `weishengzhi` VALUES (8, '京东超市维达(Vinda)卷纸蓝色经典3层200g卫生纸巾*10卷（3层与4层随机发货）', '29.90', 'images/卫生纸/5ac9912bN1bc632a9.jpg', '//img13.360buyimg.com/n7/jfs/t18781/153/1425386767/332450/46a1682d/5ac9912bN1bc632a9.jpg', '5ac9912bN1bc632a9.jpg');
INSERT INTO `weishengzhi` VALUES (9, '京东超市顺清柔卫生纸出口装4层180g有芯卷纸*27卷（新老包装随机发货）', '59.99', 'images/卫生纸/c80d1df8cf7e3248.jpg', '//img12.360buyimg.com/n7/jfs/t1/86777/23/6981/497837/5df83336E2d68ab30/c80d1df8cf7e3248.jpg', 'c80d1df8cf7e3248.jpg');
INSERT INTO `weishengzhi` VALUES (10, '京东超市洁柔(C&S)厚卷纸黑Face加厚4层140g卫生纸*30卷（整箱销售面子系列柔韧升级母婴可用）', '62.90', 'images/卫生纸/4b016534ca0ae823.jpg', '//img13.360buyimg.com/n7/jfs/t1/59311/36/8863/408370/5d639e2bE2b070fb7/4b016534ca0ae823.jpg', '4b016534ca0ae823.jpg');
INSERT INTO `weishengzhi` VALUES (11, '京东超市洁柔(C&S)无芯卷纸自然木食品级加厚4层70g卫生纸*48卷（实芯卷纸母婴可用低白度类本色纸巾）整箱销售', '55.90', 'images/卫生纸/b0c9a46212daca00.jpg', '//img14.360buyimg.com/n7/jfs/t1/46472/4/11973/119466/5d917be3E8723e2a7/b0c9a46212daca00.jpg', 'b0c9a46212daca00.jpg');
INSERT INTO `weishengzhi` VALUES (12, '京东超市维达(Vinda)卷纸蓝色经典3层140g卫生纸巾*30卷（3层与4层随机发货）', '62.50', 'images/卫生纸/31b89058e355f06d.jpg', '//img10.360buyimg.com/n7/jfs/t1/51985/32/6986/285485/5d48e622E60f8ed3a/31b89058e355f06d.jpg', '31b89058e355f06d.jpg');
INSERT INTO `weishengzhi` VALUES (13, '京东超市心相印卷纸心柔系列卫生纸巾3层140g*27卷筒纸厕纸（整箱销售）', '55.90', 'images/卫生纸/fbd90a57b4b63d3a.jpg', '//img14.360buyimg.com/n7/jfs/t1/110040/5/966/268795/5df99625Ed107020a/fbd90a57b4b63d3a.jpg', 'fbd90a57b4b63d3a.jpg');
INSERT INTO `weishengzhi` VALUES (14, '京东超市清风（APP）无芯卷纸马蹄莲系列3层100克卫生纸*40卷平纹长卷（整箱销售）', '54.90 53.80', 'images/卫生纸/5acf0c23N571be319.jpg', '//img14.360buyimg.com/n7/jfs/t19618/102/1581840421/328888/f791e94b/5acf0c23N571be319.jpg', '5acf0c23N571be319.jpg');
INSERT INTO `weishengzhi` VALUES (15, '京东超市洁柔(C&S)卷纸粉Face加厚4层70g卫生纸*10卷(4D立体印花冲水速溶不堵塞物理压花无粘胶无芯实芯卷纸)', '9.90', 'images/卫生纸/190c2b9d97f0309d.jpg', '//img10.360buyimg.com/n7/jfs/t1/14075/9/7059/236760/5c64d879Edf0ffa61/190c2b9d97f0309d.jpg', '190c2b9d97f0309d.jpg');
INSERT INTO `weishengzhi` VALUES (16, '京东超市清风（APP）卷纸原木纯品3层270段卫生纸*10卷（新老包装交替发货）', '18.90', 'images/卫生纸/5abce959N870c0f8a.jpg', '//img11.360buyimg.com/n7/jfs/t17224/263/1104219723/292358/6c43d957/5abce959N870c0f8a.jpg', '5abce959N870c0f8a.jpg');
INSERT INTO `weishengzhi` VALUES (17, '京东超市维达(Vinda)无芯卷纸超韧4层140g卫生纸巾*12卷（3层4层交替发货）', '20.90', 'images/卫生纸/a72b01c2b8978593.jpg', '//img12.360buyimg.com/n7/jfs/t1/53973/16/5225/234654/5d2fe0b0Eb40e2512/a72b01c2b8978593.jpg', 'a72b01c2b8978593.jpg');
INSERT INTO `weishengzhi` VALUES (18, '京东超市维达(Vinda)卷纸超韧无芯卫生纸巾4层130g*30卷整箱销售', '49.80', 'images/卫生纸/71df300afe0ff8ab.jpg', '//img12.360buyimg.com/n7/jfs/t1/55934/14/7180/103774/5d4b7febE489066ef/71df300afe0ff8ab.jpg', '71df300afe0ff8ab.jpg');
INSERT INTO `weishengzhi` VALUES (19, '京东超市泉林本色卷纸3层280节*27卷（耐用高节数易溶不堵塞马桶不漂白本色卫生厕卷纸）', '49.90', 'images/卫生纸/59b25b03N866a6e50.jpg', '//img13.360buyimg.com/n7/jfs/t7216/136/2639410753/1088863/fe5892cb/59b25b03N866a6e50.jpg', '59b25b03N866a6e50.jpg');
INSERT INTO `weishengzhi` VALUES (20, '京东超市维达(Vinda)无芯卷纸超韧4层78g卫生纸*30卷整箱销售母婴可用', '37.90', 'images/卫生纸/a595d505b9fd7ea7.jpg', '//img13.360buyimg.com/n7/jfs/t1/29463/36/14007/235397/5ca4604eEf5b21ccf/a595d505b9fd7ea7.jpg', 'a595d505b9fd7ea7.jpg');
INSERT INTO `weishengzhi` VALUES (21, '一晨卫生纸48卷布感本色卷纸竹浆纸巾厕所手纸大包装家庭用纸批发', '25.80', 'images/卫生纸/2a6676e09d1e2f96.jpg', '//img14.360buyimg.com/n7/jfs/t1/60654/8/2362/113178/5d0b0445E4cfe9456/2a6676e09d1e2f96.jpg', '2a6676e09d1e2f96.jpg');
INSERT INTO `weishengzhi` VALUES (22, '京东超市维达(Vinda)卷纸蓝色经典4层160g卫生纸巾*27卷(整箱销售)', '64.90', 'images/卫生纸/3febf97d102a015b.jpg', '//img11.360buyimg.com/n7/jfs/t1/47165/20/6932/197778/5d47fddcEd68de992/3febf97d102a015b.jpg', '3febf97d102a015b.jpg');
INSERT INTO `weishengzhi` VALUES (23, '京东超市维达(Vinda)无芯卷纸纸巾超韧3层100g卫生纸巾*40卷整箱销售（新旧交替发货）', '57.90', 'images/卫生纸/0726981cba581f4b.jpg', '//img10.360buyimg.com/n7/jfs/t1/45236/21/6650/103461/5d42a2a5Ee0da79b4/0726981cba581f4b.jpg', '0726981cba581f4b.jpg');
INSERT INTO `weishengzhi` VALUES (24, '京东超市清风（APP）卷纸原木纯品金装系列4层140克卫生纸巾10卷（新老包装交替发货）', '19.80', 'images/卫生纸/5733ecf5N05eb3e1a.jpg', '//img13.360buyimg.com/n7/jfs/t2701/201/1089940463/114833/487ae399/5733ecf5N05eb3e1a.jpg', '5733ecf5N05eb3e1a.jpg');
INSERT INTO `weishengzhi` VALUES (25, '京东超市维达(Vinda)卷纸蓝色经典3层160g卫生纸巾*10卷', '22.60', 'images/卫生纸/98822bf104c6515a.jpg', '//img14.360buyimg.com/n7/jfs/t1/69676/15/14008/186831/5db80902Ed5989f3d/98822bf104c6515a.jpg', '98822bf104c6515a.jpg');
INSERT INTO `weishengzhi` VALUES (26, '京东超市心相印卷纸茶语系列卫生纸巾4层200g*27卷筒纸（整箱销售）', '76.80', 'images/卫生纸/8b70189421122aa1.jpg', '//img10.360buyimg.com/n7/jfs/t1/101852/14/7093/337854/5df988c5E11ce5343/8b70189421122aa1.jpg', '8b70189421122aa1.jpg');
INSERT INTO `weishengzhi` VALUES (27, '京东超市心相印卷纸柔肤系列卫生纸巾3层180g*27卷筒纸厕纸（整箱销售）', '66.80', 'images/卫生纸/5cda7660Nb3077abd.jpg', '//img10.360buyimg.com/n7/jfs/t30715/248/1192972013/339692/d47eec3e/5cda7660Nb3077abd.jpg', '5cda7660Nb3077abd.jpg');
INSERT INTO `weishengzhi` VALUES (28, '京东超市心相印卷纸心柔系列卫生纸巾3层180g*27卷筒纸厕纸（整箱销售）', '68.80', 'images/卫生纸/c28f4c12b68b6c41.jpg', '//img12.360buyimg.com/n7/jfs/t1/36875/25/10413/245755/5cda7331Ec4031752/c28f4c12b68b6c41.jpg', 'c28f4c12b68b6c41.jpg');
INSERT INTO `weishengzhi` VALUES (29, '京东超市洁柔(C&S)厚卷纸黑Face加厚4层180g卫生纸*23卷（柔软亲肤面子系列一格就够吸水耐用易降解）整箱销售', '62.90', 'images/卫生纸/5ae3004cNfecf27b4.jpg', '//img12.360buyimg.com/n7/jfs/t18319/202/2073450599/334400/ff9ff3c8/5ae3004cNfecf27b4.jpg', '5ae3004cNfecf27b4.jpg');
INSERT INTO `weishengzhi` VALUES (30, '京东超市维达(Vinda)无芯卷纸超韧3层100g卫生纸*10卷母婴可用', '13.90', 'images/卫生纸/549148bcNb415c84e.jpg', '//img11.360buyimg.com/n7/jfs/t745/352/192623547/98443/9b5de5b4/549148bcNb415c84e.jpg', '549148bcNb415c84e.jpg');
INSERT INTO `weishengzhi` VALUES (31, '京东超市斑布(BABO)本色卫生纸无漂白竹浆BASE系列3层125克27卷有芯卷纸（整箱销售）', '55.00', 'images/卫生纸/14dd8c82f5b79077.jpg', '//img11.360buyimg.com/n7/jfs/t1/102612/14/2465/238326/5dd1fef0Ebaea71b3/14dd8c82f5b79077.jpg', '14dd8c82f5b79077.jpg');
INSERT INTO `weishengzhi` VALUES (32, '京东超市心相印卷纸柔肤系列卫生纸巾3层180g*10卷筒纸厕纸（提装销售）', '23.50', 'images/卫生纸/5820262cN24a884b7.jpg', '//img12.360buyimg.com/n7/jfs/t3328/148/1223998427/323447/cf6d4a28/5820262cN24a884b7.jpg', '5820262cN24a884b7.jpg');
INSERT INTO `weishengzhi` VALUES (33, '清风（APP）无芯卷纸马蹄莲系列3层140克卫生纸巾*10卷平纹长卷', '19.90', 'images/卫生纸/5abdfef8N25938c4c.jpg', '//img13.360buyimg.com/n7/jfs/t19507/145/1151729355/188867/d4e5862d/5abdfef8N25938c4c.jpg', '5abdfef8N25938c4c.jpg');
INSERT INTO `weishengzhi` VALUES (34, '京东超市无染(wuro)本色抽纸竹浆纸巾柔韧3层100抽24包面巾纸餐巾纸孕婴儿卫生纸整箱', '53.80', 'images/卫生纸/d52e78bdd7872c47.jpg', '//img11.360buyimg.com/n7/jfs/t1/107789/17/849/245469/5df850caE00ee7c79/d52e78bdd7872c47.jpg', 'd52e78bdd7872c47.jpg');
INSERT INTO `weishengzhi` VALUES (35, '京东超市清风(APP)卷纸原木纯品金装系列4层200克卫生纸*27卷(整箱销售)', '78.30', 'images/卫生纸/a04f8336a231d87b.jpg', '//img14.360buyimg.com/n7/jfs/t1/66526/13/6123/186252/5d424b1bEa7a05fdc/a04f8336a231d87b.jpg', 'a04f8336a231d87b.jpg');
INSERT INTO `weishengzhi` VALUES (36, '京东超市斑布(BABO)本色卫生纸无漂白竹浆BASE系列3层70g无芯卷纸*40卷', '45.00', 'images/卫生纸/b5cfdb970344095a.jpg', '//img14.360buyimg.com/n7/jfs/t1/41829/9/13241/130412/5d672b35E36125d1b/b5cfdb970344095a.jpg', 'b5cfdb970344095a.jpg');
INSERT INTO `weishengzhi` VALUES (37, '维达有芯卷纸蓝色经典款4层加厚140g家用27卷纸巾卷筒纸厕纸卫生纸擦手纸整箱实惠家庭装整箱', '56.90', 'images/卫生纸/c681cd79f23158b4.jpg', '//img12.360buyimg.com/n7/jfs/t1/106198/23/6360/376990/5df26d40Ea89d1a34/c681cd79f23158b4.jpg', 'c681cd79f23158b4.jpg');
INSERT INTO `weishengzhi` VALUES (38, '京东超市斑布(BABO)本色卫生纸无漂白竹浆BASE系列3层200g有芯卷纸*27卷', '85.00', 'images/卫生纸/0776f75c5af876ac.jpg', '//img14.360buyimg.com/n7/jfs/t1/41280/16/14134/549238/5d70a4fdE9d546bb9/0776f75c5af876ac.jpg', '0776f75c5af876ac.jpg');
INSERT INTO `weishengzhi` VALUES (39, '京东超市维达(Vinda)卷纸超韧4层180g卫生纸巾*27卷(整箱销售)', '68.80', 'images/卫生纸/82772dc34546827d.jpg', '//img10.360buyimg.com/n7/jfs/t1/75323/21/6401/193441/5d48dc03Eed5a86cf/82772dc34546827d.jpg', '82772dc34546827d.jpg');
INSERT INTO `weishengzhi` VALUES (40, '京东超市维达（Vinda)卷纸棉韧系列4层120g无芯卫生纸*12卷母婴可用', '19.50', 'images/卫生纸/5bbdcbc0Nb0a3a60c.jpg', '//img13.360buyimg.com/n7/jfs/t27613/222/950456601/81942/f1f93df1/5bbdcbc0Nb0a3a60c.jpg', '5bbdcbc0Nb0a3a60c.jpg');
INSERT INTO `weishengzhi` VALUES (41, '维达（Vinda）绵柔婴儿抽纸3层100抽*24包S码儿童宝宝软抽卫生纸巾面巾纸抽无香（整箱）浅蓝色', '57.90', 'images/卫生纸/46166a186e6c79da.jpg', '//img11.360buyimg.com/n7/jfs/t1/101987/10/6516/197562/5df3b2a1Eb83ff6cd/46166a186e6c79da.jpg', '46166a186e6c79da.jpg');
INSERT INTO `weishengzhi` VALUES (42, '京东超市心相印卷纸心柔系列卫生纸巾3层200g*27卷筒纸厕纸（整箱销售）（新老包装随机发货）', '78.50', 'images/卫生纸/5cda6ec8Ncb809a01.jpg', '//img13.360buyimg.com/n7/jfs/t29557/260/1218711098/339896/8920a42b/5cda6ec8Ncb809a01.jpg', '5cda6ec8Ncb809a01.jpg');
INSERT INTO `weishengzhi` VALUES (43, '清风（APP）卷纸原木Junior系列卫生纸巾4层110克27卷（整箱销售）', '58.89', 'images/卫生纸/a81283e5dcfa5bd6.jpg', '//img12.360buyimg.com/n7/jfs/t1/71168/22/4680/291492/5d2fe024E0083985b/a81283e5dcfa5bd6.jpg', 'a81283e5dcfa5bd6.jpg');
INSERT INTO `weishengzhi` VALUES (44, '清风满199减100抽纸餐巾纸原木纯品金装3层150抽20包面巾纸巾抽卫生纸整箱婴儿适用包邮', '108.40', 'images/卫生纸/7c7ad8edefc02112.jpg', '//img13.360buyimg.com/n7/jfs/t1/106839/40/2316/209073/5dce9414E8fa05f7e/7c7ad8edefc02112.jpg', '7c7ad8edefc02112.jpg');
INSERT INTO `weishengzhi` VALUES (45, '京东超市洁柔抽纸餐巾纸粉Face3层24包可湿水面巾纸擦手纸卫生纸抽婴儿纸巾', '59.90', 'images/卫生纸/2a80a2cce94ea4a3.jpg', '//img11.360buyimg.com/n7/jfs/t1/95717/16/7201/207696/5df9a7edE748b7bf5/2a80a2cce94ea4a3.jpg', '2a80a2cce94ea4a3.jpg');
INSERT INTO `weishengzhi` VALUES (46, '京东超市植护婴儿原木抽纸3层30包面巾纸卫生纸巾纸抽', '29.90', 'images/卫生纸/5b61696dNd9d1c9b9.jpg', '//img10.360buyimg.com/n7/jfs/t20431/163/2701497128/93246/f3bd4a08/5b61696dNd9d1c9b9.jpg', '5b61696dNd9d1c9b9.jpg');
INSERT INTO `weishengzhi` VALUES (47, '京东超市清风抽纸纸巾整箱24包金装原木3层130抽婴儿适用卫生纸餐巾纸抽包邮', '58.80', 'images/卫生纸/2ffed22244142209.jpg', '//img10.360buyimg.com/n7/jfs/t1/87147/28/6296/206935/5df2642eEaed79d3a/2ffed22244142209.jpg', '2ffed22244142209.jpg');
INSERT INTO `weishengzhi` VALUES (48, '京东超市泉林本色卷纸3层270节*27卷（源自天然田园易溶不堵塞马桶本色卫生厕卷纸）', '56.90', 'images/卫生纸/b21d0a7ae74dee74.jpg', '//img11.360buyimg.com/n7/jfs/t1/85497/19/7115/644759/5df83dbfEd6390161/b21d0a7ae74dee74.jpg', 'b21d0a7ae74dee74.jpg');
INSERT INTO `weishengzhi` VALUES (49, '京东超市植护无芯卷纸卫生纸巾家用家庭装手纸卷筒纸36卷', '29.90', 'images/卫生纸/5b0fb82bN0008096a.jpg', '//img12.360buyimg.com/n7/jfs/t20890/264/531751075/95677/d4f8b469/5b0fb82bN0008096a.jpg', '5b0fb82bN0008096a.jpg');
INSERT INTO `weishengzhi` VALUES (50, '京东超市洁柔卷纸卫生纸4层27卷140g有芯卷纸筒厕纸加厚家庭装擦手纸巾卷纸', '56.90', 'images/卫生纸/b037aae925edb09f.jpg', '//img13.360buyimg.com/n7/jfs/t1/104622/25/7078/219430/5df84fe9E237a9348/b037aae925edb09f.jpg', 'b037aae925edb09f.jpg');
INSERT INTO `weishengzhi` VALUES (51, '京东超市维达(Vinda)卷纸至有分量3层180g卫生纸巾*10卷', '23.30', 'images/卫生纸/35307912d102b73a.jpg', '//img10.360buyimg.com/n7/jfs/t1/1761/36/3228/289909/5b98ce42E1d773715/35307912d102b73a.jpg', '35307912d102b73a.jpg');
INSERT INTO `weishengzhi` VALUES (52, '京东超市无染(wuro)本色抽纸竹浆纸巾加大3层130抽18包面巾纸餐巾纸孕婴儿卫生纸整箱', '63.80', 'images/卫生纸/3fe70497d0dbcdb0.jpg', '//img14.360buyimg.com/n7/jfs/t1/106759/35/7044/24338/5df9bfa1E796fcee5/3fe70497d0dbcdb0.jpg', '3fe70497d0dbcdb0.jpg');
INSERT INTO `weishengzhi` VALUES (53, '京东超市维达(Vinda)卷纸立体美4层160g卫生纸*27卷(整箱销售母婴可用)', '75.90', 'images/卫生纸/40da1c7adba7411a.jpg', '//img14.360buyimg.com/n7/jfs/t1/75998/23/6601/183089/5d4b80c3E741a43a8/40da1c7adba7411a.jpg', '40da1c7adba7411a.jpg');
INSERT INTO `weishengzhi` VALUES (54, '京东超市洁云平板纸加韧200张压花方包卫生纸8包装新老包装交替发货', '27.90', 'images/卫生纸/591185a5Nf3c4c627.jpg', '//img14.360buyimg.com/n7/jfs/t5227/14/1535779848/353137/6c675ede/591185a5Nf3c4c627.jpg', '591185a5Nf3c4c627.jpg');
INSERT INTO `weishengzhi` VALUES (55, '惠艾佳卫生纸家庭装10元免邮无芯卷纸原生竹浆本色面巾纸4层加厚卷筒手纸实心可湿水厕用厨房纸抽4提48卷实惠装（约85%客户购买）', '29.90', 'images/卫生纸/7363ac35652ce9d1.jpg', '//img12.360buyimg.com/n7/jfs/t1/99541/15/6387/167898/5df2e8f6Ea99dd6bd/7363ac35652ce9d1.png', '7363ac35652ce9d1.jpg');
INSERT INTO `weishengzhi` VALUES (56, '山丘抽纸竹浆本色无漂白擦手纸巾3层100抽30包XS码（小规格）', '39.90 35.90', 'images/卫生纸/65e30b8498aa351e.jpg', '//img10.360buyimg.com/n7/jfs/t1/69060/13/182/510983/5ce51ab3E2479779c/65e30b8498aa351e.jpg', '65e30b8498aa351e.jpg');
INSERT INTO `weishengzhi` VALUES (57, '维达(Vinda)抽纸超韧3层150抽软抽纸巾*24包(中规格)整箱销售', '78.80', 'images/卫生纸/436104af9917fe09.jpg', '//img13.360buyimg.com/n7/jfs/t1/80984/26/5525/274913/5d3ab5e5Ec6a71f1f/436104af9917fe09.jpg', '436104af9917fe09.jpg');
INSERT INTO `weishengzhi` VALUES (58, '本色抽纸家用纸巾整箱40包/30包/10包/6包装餐巾纸商用卫生纸批发40包', '28.70', 'images/卫生纸/7adc98011ad39d13.jpg', '//img12.360buyimg.com/n7/jfs/t1/76482/23/4256/190179/5d26b3e5E935ff1f5/7adc98011ad39d13.jpg', '7adc98011ad39d13.jpg');
INSERT INTO `weishengzhi` VALUES (59, '京东超市洁柔(C&S)卷纸自然木食品级加厚4层140g卫生纸*27卷（母婴健康用纸低白度类本色纸巾黄色纸）整箱销售', '58.80', 'images/卫生纸/3a0b69c6891b849b.jpg', '//img13.360buyimg.com/n7/jfs/t1/51414/5/10435/193182/5d786fd8E73dcb197/3a0b69c6891b849b.jpg', '3a0b69c6891b849b.jpg');
INSERT INTO `weishengzhi` VALUES (60, '京东超市霏羽卫生纸9斤49卷四层无芯卷纸巾家用卫生间卷筒纸手纸厕纸卫生纸FY-8818', '49.90', 'images/卫生纸/5bc6d3cbNde70495d.jpg', '//img14.360buyimg.com/n7/jfs/t27754/201/1318940049/72474/9434d7d1/5bc6d3cbNde70495d.jpg', '5bc6d3cbNde70495d.jpg');

-- ----------------------------
-- Table structure for xiangnaier
-- ----------------------------
DROP TABLE IF EXISTS `xiangnaier`;
CREATE TABLE `xiangnaier`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiangnaier
-- ----------------------------
INSERT INTO `xiangnaier` VALUES (1, '【情人礼物】香奈儿Chanel口红/唇膏可可小姐水亮/丝绒系列润唇保湿口红配玫瑰花礼盒丝绒系列58#豆沙色', '298.00', 'images/香奈儿/d1a670fa7ec460d6.jpg', '//img14.360buyimg.com/n7/jfs/t1/45132/13/9164/95361/5d66907fEa3de828d/d1a670fa7ec460d6.jpg', 'd1a670fa7ec460d6.jpg');
INSERT INTO `xiangnaier` VALUES (2, 'chanel香奈儿炫亮魅力唇膏（99号）3.5g', '313.00', 'images/香奈儿/rBEQWVEwR0YIAAAAAAEMetKEjSMAABPFADwfBAAAQyS974.jpg', '//img10.360buyimg.com/n7/g10/M00/06/0A/rBEQWVEwR0YIAAAAAAEMetKEjSMAABPFADwfBAAAQyS974.jpg', 'rBEQWVEwR0YIAAAAAAEMetKEjSMAABPFADwfBAAAQyS974.jpg');
INSERT INTO `xiangnaier` VALUES (3, '海囤全球【两件九折】chanel香奈儿香水女香氛小样礼盒套装生日礼物情人节礼物粉邂逅+绿邂逅+橙邂逅7.5ml', '168.00', 'images/香奈儿/7b6340e602f2b8b8.jpg', '//img11.360buyimg.com/n7/jfs/t1/84621/17/4761/89760/5d2859f2E0cf788b2/7b6340e602f2b8b8.jpg', '7b6340e602f2b8b8.jpg');
INSERT INTO `xiangnaier` VALUES (4, '【情人礼物】香奈儿Chanel口红/唇膏可可小姐水亮/丝绒系列润唇保湿口红配玫瑰花礼盒丝绒系列43#斩男色', '298.00', 'images/香奈儿/4aadbb9e5a100127.jpg', '//img10.360buyimg.com/n7/jfs/t1/58247/20/9092/97865/5d668ffdE2ca6ab23/4aadbb9e5a100127.jpg', '4aadbb9e5a100127.jpg');
INSERT INTO `xiangnaier` VALUES (5, '香奈儿邂逅清新淡香水50ml新老包装随机发放', '850.00', 'images/香奈儿/rBEhWVK31N4IAAAAAAECbbecVJAAAHHiAC6MlQAAQKF849.jpg', '//img13.360buyimg.com/n7/g15/M05/1E/08/rBEhWVK31N4IAAAAAAECbbecVJAAAHHiAC6MlQAAQKF849.jpg', 'rBEhWVK31N4IAAAAAAECbbecVJAAAHHiAC6MlQAAQKF849.jpg');
INSERT INTO `xiangnaier` VALUES (6, '【专柜正品京东送达】香奈儿（Chanel）口红/唇膏可可小姐水亮/丝绒系列口红丝绒系列58#热卖豆沙红【李佳琦推荐】', '298.00', 'images/香奈儿/4bf1217588289e8d.jpg', '//img11.360buyimg.com/n7/jfs/t1/27478/16/15663/54402/5cb1e23eEe165b864/4bf1217588289e8d.jpg', '4bf1217588289e8d.jpg');
INSERT INTO `xiangnaier` VALUES (7, '【专柜正品】香奈儿（Chanel）口红丝绒58#43#魅力炫亮系列唇膏保湿不易掉色哑光湿润口红套装99#正红色+赠精美礼盒礼品袋', '298.00', 'images/香奈儿/483ee6f1e87985d1.jpg', '//img13.360buyimg.com/n7/jfs/t1/63877/36/2996/103483/5d147705E21737ae0/483ee6f1e87985d1.jpg', '483ee6f1e87985d1.jpg');
INSERT INTO `xiangnaier` VALUES (8, '香奈儿Chanel炫亮魅力唇膏丝绒系列43号3.5g', '313.00', 'images/香奈儿/56a5de72N203c8df1.jpg', '//img14.360buyimg.com/n7/jfs/t2563/144/1327215278/68102/ec526ec0/56a5de72N203c8df1.jpg', '56a5de72N203c8df1.jpg');
INSERT INTO `xiangnaier` VALUES (9, '【专柜正品】香奈儿(Chanel)女士香水持久淡香氛邂逅系列/五号系列粉色邂逅柔情发香雾35ml', '375.00', 'images/香奈儿/3dd84b0ee031ada0.jpg', '//img11.360buyimg.com/n7/jfs/t1/72685/8/1632/56476/5cff4f72E7876b82f/3dd84b0ee031ada0.jpg', '3dd84b0ee031ada0.jpg');
INSERT INTO `xiangnaier` VALUES (10, '海囤全球【两件九折】香奈儿香水女士持久淡香香氛粉邂逅2ml+真我5ml+甜心5ml+魅惑5ml', '128.00', 'images/香奈儿/5bebcf48N4b01e48a.jpg', '//img12.360buyimg.com/n7/jfs/t26020/82/2657111992/370353/ea0c575a/5bebcf48N4b01e48a.jpg', '5bebcf48N4b01e48a.jpg');
INSERT INTO `xiangnaier` VALUES (11, '香奈儿（Chanel）炫亮魅力唇膏丝绒系列57号3.5g（亮红色）', '313.00', 'images/香奈儿/5809cf54N0cc246d5.jpg', '//img13.360buyimg.com/n7/jfs/t3601/335/450812967/119263/7761ffc6/5809cf54N0cc246d5.jpg', '5809cf54N0cc246d5.jpg');
INSERT INTO `xiangnaier` VALUES (12, '香奈儿（Chanel）炫亮魅力唇膏（152号）3.5g', '300.00', 'images/香奈儿/599a45d4N78a976c1.jpg', '//img10.360buyimg.com/n7/jfs/t7537/331/1103510474/69213/bad2e81b/599a45d4N78a976c1.jpg', '599a45d4N78a976c1.jpg');
INSERT INTO `xiangnaier` VALUES (13, '香奈儿（Chanel）女士香水邂逅/5号/可可小姐淡香水粉邂逅柔情淡香水EDT50ml', '618.00', 'images/香奈儿/bed7cfe4f8153e07.jpg', '//img13.360buyimg.com/n7/jfs/t1/30176/23/11346/290015/5cb53756E028c6204/bed7cfe4f8153e07.jpg', 'bed7cfe4f8153e07.jpg');
INSERT INTO `xiangnaier` VALUES (14, '海囤全球Chanel/香奈儿口红女士唇釉雾面丝绒短管炫亮魅力印记提升气色#154姨妈色', '258.00', 'images/香奈儿/af335c68ba152053.jpg', '//img11.360buyimg.com/n7/jfs/t1/58943/5/11641/330833/5d897e07E8849fc7b/af335c68ba152053.jpg', 'af335c68ba152053.jpg');
INSERT INTO `xiangnaier` VALUES (15, '【专柜正品京东送达】香奈儿（Chanel）口红/唇膏可可小姐水亮/丝绒系列口红圣诞限量版116#哑光柔雾磨砂黑管(热卖)', '298.00', 'images/香奈儿/8709f6f0b667af03.jpg', '//img10.360buyimg.com/n7/jfs/t1/21861/4/15726/50397/5cb1e248Ecf416d37/8709f6f0b667af03.jpg', '8709f6f0b667af03.jpg');
INSERT INTO `xiangnaier` VALUES (16, '海囤全球香奈儿（Chanel）香奈儿154唇釉丝绒雾面短管口红154#姨妈色（热卖）', '255.00', 'images/香奈儿/e742a980da2c737e.jpg', '//img10.360buyimg.com/n7/jfs/t1/58691/36/2621/101683/5d0dedecE571e5819/e742a980da2c737e.jpg', 'e742a980da2c737e.jpg');
INSERT INTO `xiangnaier` VALUES (17, '【专柜供货】香奈儿（Chanel）香水COCO可可小姐邂逅柔情清新淡五号之水淡香生日礼物情人节礼盒粉色邂逅35ml赠礼盒礼袋', '328.00', 'images/香奈儿/04cae5cc219f4ac6.jpg', '//img10.360buyimg.com/n7/jfs/t1/43050/34/11543/350960/5d4e3a25E51767300/04cae5cc219f4ac6.jpg', '04cae5cc219f4ac6.jpg');
INSERT INTO `xiangnaier` VALUES (18, '【专柜正品】香奈儿(Chanel)女士香水持久淡香氛邂逅系列/五号系列粉色柔情邂逅淡香水50ml', '668.00', 'images/香奈儿/b9e41ed4069f3b99.jpg', '//img11.360buyimg.com/n7/jfs/t1/41724/39/6382/91469/5cff4f97E493efb52/b9e41ed4069f3b99.jpg', 'b9e41ed4069f3b99.jpg');
INSERT INTO `xiangnaier` VALUES (19, '海囤全球香奈儿（Chanel）香奈儿洗面奶山茶花三合一温和泡沫洁面乳150ML新款清洁毛孔温和保湿', '368.00', 'images/香奈儿/5acf2330Nd05670e2.jpg', '//img14.360buyimg.com/n7/jfs/t17011/164/1551214534/71342/1dc039e9/5acf2330Nd05670e2.jpg', '5acf2330Nd05670e2.jpg');
INSERT INTO `xiangnaier` VALUES (20, '海囤全球香港直邮香奈儿（Chanel）女士香水小样套装礼盒7.5ml混装三件套(粉色邂逅+coco小姐+5号香水)', '168.00', 'images/香奈儿/dbf1ce6290d0db8b.jpg', '//img12.360buyimg.com/n7/jfs/t1/45017/37/9635/240627/5d6e7273Ec9cbb63c/dbf1ce6290d0db8b.jpg', 'dbf1ce6290d0db8b.jpg');
INSERT INTO `xiangnaier` VALUES (21, '【京东仓库发货】【精美礼盒贺卡】香奈儿（Chanel）Chanel香奈儿口红女士丝绒43#珊瑚红', '299.00', 'images/香奈儿/85a78876b11e23dd.jpg', '//img12.360buyimg.com/n7/jfs/t1/73296/37/6606/117419/5d4a79fbE0c9d3356/85a78876b11e23dd.jpg', '85a78876b11e23dd.jpg');
INSERT INTO `xiangnaier` VALUES (22, '【京东秒送专柜直邮】Chanel香奈儿口红女士唇膏58#豆沙色', '298.00', 'images/香奈儿/4ff274aa06b6300d.jpg', '//img12.360buyimg.com/n7/jfs/t1/42400/27/9608/109118/5d3338f9E1caf0f26/4ff274aa06b6300d.jpg', '4ff274aa06b6300d.jpg');
INSERT INTO `xiangnaier` VALUES (23, '【专柜正品】香奈儿口红（CHANEL）丝绒炫亮魅力系列唇膏口红礼盒套装圣诞限量版116#【哑光柔雾磨砂黑管-热卖款】', '298.00 283.00', 'images/香奈儿/158d8b9f24a35cd4.jpg', '//img14.360buyimg.com/n7/jfs/t1/50059/16/5137/282312/5d2d41efE06def7e8/158d8b9f24a35cd4.png', '158d8b9f24a35cd4.jpg');
INSERT INTO `xiangnaier` VALUES (24, '香奈儿（Chanel）口红唇膏丝绒魅力炫亮系列58#-豆沙色-丝绒', '298.00', 'images/香奈儿/e07acf7d3b5142d0.jpg', '//img13.360buyimg.com/n7/jfs/t1/45000/36/8009/56541/5d5ad12fE93c2f3bb/e07acf7d3b5142d0.jpg', 'e07acf7d3b5142d0.jpg');
INSERT INTO `xiangnaier` VALUES (25, '【包邮专柜正品】香奈儿（Chanel）CocoFlash口红变色炫光唇膏送精美礼盒礼袋70#草莓红赠精美礼盒礼袋', '218.00', 'images/香奈儿/3063158c485be3ed.jpg', '//img13.360buyimg.com/n7/jfs/t1/68097/1/5130/92995/5d35748cE86e1c1a8/3063158c485be3ed.jpg', '3063158c485be3ed.jpg');
INSERT INTO `xiangnaier` VALUES (26, '香奈儿（Chanel）山茶花保湿精华水（滋润）150ml（又名：山茶花保湿精华水（润泽））', '547.00', 'images/香奈儿/rBEHaFCgjgEIAAAAAACiGYBbca0AACxUQECi1cAAKIx996.jpg', '//img10.360buyimg.com/n7/g8/M03/0E/05/rBEHaFCgjgEIAAAAAACiGYBbca0AACxUQECi1cAAKIx996.jpg', 'rBEHaFCgjgEIAAAAAACiGYBbca0AACxUQECi1cAAKIx996.jpg');
INSERT INTO `xiangnaier` VALUES (27, '【专柜直供京东秒送】Chanel香奈儿口红女士58#豆沙色', '298.00', 'images/香奈儿/ad15bef477c19ef0.jpg', '//img13.360buyimg.com/n7/jfs/t1/84494/6/6008/114310/5d41f150E87e7f832/ad15bef477c19ef0.jpg', 'ad15bef477c19ef0.jpg');
INSERT INTO `xiangnaier` VALUES (28, '香奈儿（Chanel）口红/唇膏可可小姐水亮/丝绒系列口红丝绒系列58#豆沙红-枣红色', '298.00', 'images/香奈儿/4bf38095a8c2a4b2.jpg', '//img12.360buyimg.com/n7/jfs/t1/32111/23/13826/58942/5cbbcfd1E9e0e01af/4bf38095a8c2a4b2.jpg', '4bf38095a8c2a4b2.jpg');
INSERT INTO `xiangnaier` VALUES (29, '【京东仓库发货】【精美礼盒】香奈儿（Chanel）Chanel香奈儿香水女士邂逅系列粉色柔情发香雾35ml', '378.00', 'images/香奈儿/5aabdc90N80b57bde.jpg', '//img14.360buyimg.com/n7/jfs/t18505/262/855698588/316640/1a1dc5c7/5aabdc90N80b57bde.jpg', '5aabdc90N80b57bde.jpg');
INSERT INTO `xiangnaier` VALUES (30, '香奈儿（Chanel）炫亮魅力印记唇釉148号6ml（红色调珊瑚色）', '313.00', 'images/香奈儿/58044379N4a762029.jpg', '//img12.360buyimg.com/n7/jfs/t3451/119/268054458/63900/83cbd47a/58044379N4a762029.jpg', '58044379N4a762029.jpg');

-- ----------------------------
-- Table structure for xiangshui
-- ----------------------------
DROP TABLE IF EXISTS `xiangshui`;
CREATE TABLE `xiangshui`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiangshui
-- ----------------------------
INSERT INTO `xiangshui` VALUES (1, 'CKONECalvinKlein卡莱优中性淡香水100ml（又名卡尔文克雷恩卡雷优男女士通用香水）', '269.00', 'images/香水/1a61efaa3b34c6cf.jpg', '//img11.360buyimg.com/n7/jfs/t1/75137/28/10930/64960/5d849470E65a902e3/1a61efaa3b34c6cf.png', '1a61efaa3b34c6cf.jpg');
INSERT INTO `xiangshui` VALUES (2, '迪奥（Dior）迪奥小姐花漾淡香氛(EDT)50ml（喷装清新淡花香调初恋的气息花漾淡香水）', '830.00', 'images/香水/d4166bd377ff386d.jpg', '//img14.360buyimg.com/n7/jfs/t1/60419/22/10874/261196/5d8340d2Ef49b6847/d4166bd377ff386d.jpg', 'd4166bd377ff386d.jpg');
INSERT INTO `xiangshui` VALUES (3, '伊丽莎白雅顿第五大道香水75ml（香氛女士淡香持久化妆品）', '169.00', 'images/香水/82282a7f402e8295.jpg', '//img13.360buyimg.com/n7/jfs/t1/71696/30/10205/124512/5d7c759dEb3ebaf7c/82282a7f402e8295.jpg', '82282a7f402e8295.jpg');
INSERT INTO `xiangshui` VALUES (4, 'Dior/迪奥女士香水小样套装甜心+花漾+魅惑+真我淡香+浓香五件套送礼盒礼袋', '158.00', 'images/香水/ae17c5b033a52eee.jpg', '//img13.360buyimg.com/n7/jfs/t1/56396/36/5488/217724/5d3306a4Ec4b3ab60/ae17c5b033a52eee.jpg', 'ae17c5b033a52eee.jpg');
INSERT INTO `xiangshui` VALUES (5, '百事（pepsi）汽车香水车载香水车用固体香薰香膏座式香水摆件车内净化除味除甲醛花果味香薰黑色', '99.00', 'images/香水/3fecddaa1e79303f.jpg', '//img10.360buyimg.com/n7/jfs/t1/44784/33/9780/493906/5d708b62E411d5444/3fecddaa1e79303f.jpg', '3fecddaa1e79303f.jpg');
INSERT INTO `xiangshui` VALUES (6, '海囤全球兰蔻（LANCOME）奇迹香氛30ml', '259.00', 'images/香水/5b83a1deN52d0b932.jpg', '//img11.360buyimg.com/n7/jfs/t23641/242/2505695570/323769/35163012/5b83a1deN52d0b932.jpg', '5b83a1deN52d0b932.jpg');
INSERT INTO `xiangshui` VALUES (7, '完美日记（PERFECTDIARY）完美日记浮光系列淡香水N07白日梦30ml', '109.00', 'images/香水/1ef57c714a1a28bf.jpg', '//img12.360buyimg.com/n7/jfs/t1/40281/22/14673/126769/5d5bf049E4b58192c/1ef57c714a1a28bf.jpg', '1ef57c714a1a28bf.jpg');
INSERT INTO `xiangshui` VALUES (8, '迪奥（Dior）真我香氛（EDP）50ml（女士香水浓香氛持久香氛气质优雅喷装花果香调）', '950.00', 'images/香水/370587696a68801a.jpg', '//img11.360buyimg.com/n7/jfs/t1/44223/5/15546/142819/5d834095E3db0b73c/370587696a68801a.jpg', '370587696a68801a.jpg');
INSERT INTO `xiangshui` VALUES (9, '海囤全球【两件九折】chanel香奈儿香水女香氛小样礼盒套装生日礼物情人节礼物粉邂逅+绿邂逅+橙邂逅7.5ml', '168.00', 'images/香水/7b6340e602f2b8b8.jpg', '//img11.360buyimg.com/n7/jfs/t1/84621/17/4761/89760/5d2859f2E0cf788b2/7b6340e602f2b8b8.jpg', '7b6340e602f2b8b8.jpg');
INSERT INTO `xiangshui` VALUES (10, '【专柜供货】香奈儿（Chanel）香水COCO可可小姐邂逅柔情清新淡五号之水淡香生日礼物情人节礼盒粉色邂逅35ml赠礼盒礼袋', '328.00', 'images/香水/04cae5cc219f4ac6.jpg', '//img10.360buyimg.com/n7/jfs/t1/43050/34/11543/350960/5d4e3a25E51767300/04cae5cc219f4ac6.jpg', '04cae5cc219f4ac6.jpg');
INSERT INTO `xiangshui` VALUES (11, '海囤全球【两件九折】迪奥（Dior）香水女士淡香持久情人节礼物生日礼物真我5ml*2+甜心5ml+魅惑5ml四件套', '129.00', 'images/香水/5bfcc0b1Nb5956af8.jpg', '//img12.360buyimg.com/n7/jfs/t28822/105/761761358/138987/8a0770b1/5bfcc0b1Nb5956af8.jpg', '5bfcc0b1Nb5956af8.jpg');
INSERT INTO `xiangshui` VALUES (12, '京东超市【品牌自营】法颂浪漫梦境精美女士香水女士持久淡香清新50ml精美礼盒专柜正品女人味送小样', '86.90', 'images/香水/f49e1ca631cbea0b.jpg', '//img10.360buyimg.com/n7/jfs/t1/21531/36/6030/123914/5c4ad16eEe6c1bd6c/f49e1ca631cbea0b.jpg', 'f49e1ca631cbea0b.jpg');
INSERT INTO `xiangshui` VALUES (13, '蔻依（Chloe）女士淡香氛30ml（ROSE）（又名蔻依女士淡香氛）', '419.00', 'images/香水/2342f1cb7757c46c.jpg', '//img14.360buyimg.com/n7/jfs/t1/75487/32/770/101277/5cefa54cEcd7c5235/2342f1cb7757c46c.jpg', '2342f1cb7757c46c.jpg');
INSERT INTO `xiangshui` VALUES (14, '海囤全球兰蔻LANCOME女士淡香精小样礼盒(珍爱7.5ml+珍爱爱恋5ml+奇迹5ml+梦魅情迷5ml+美丽人生4ml）', '259.00', 'images/香水/a01be091208eb231.jpg', '//img11.360buyimg.com/n7/jfs/t1/10481/5/5679/100620/5c19a8aaEc9cef552/a01be091208eb231.jpg', 'a01be091208eb231.jpg');
INSERT INTO `xiangshui` VALUES (15, 'Dior/迪奥女士香水小样套装甜心+魅惑+真我浓香+真我淡香四件套送礼盒礼袋', '129.00', 'images/香水/546a608bb14c5bf7.jpg', '//img12.360buyimg.com/n7/jfs/t1/64580/5/5613/70891/5d3bd894E15452d8f/546a608bb14c5bf7.jpg', '546a608bb14c5bf7.jpg');
INSERT INTO `xiangshui` VALUES (16, '京东超市【李佳琦推荐】冰希黎流沙金女士香水60ml持久淡香学生少女清新幻彩鎏金网红抖音香水爆款法国送小样', '198.00', 'images/香水/5be6f9e9Nda08b5e5.jpg', '//img10.360buyimg.com/n7/jfs/t26473/64/1574865655/88337/c3bddefc/5be6f9e9Nda08b5e5.jpg', '5be6f9e9Nda08b5e5.jpg');
INSERT INTO `xiangshui` VALUES (17, '京东超市京东【品牌自营】亚菲儿精美礼盒女士香水女士持久淡香清新50ml法国专柜正品学生女人味', '89.00', 'images/香水/5b1f2928Nb92d08db.jpg', '//img14.360buyimg.com/n7/jfs/t20344/104/1065145974/248224/f0c55b5d/5b1f2928Nb92d08db.jpg', '5b1f2928Nb92d08db.jpg');
INSERT INTO `xiangshui` VALUES (18, '古驰（GUCCI）女士香水罪爱淡香水30ml', '289.00', 'images/香水/2055303b8f11e287.jpg', '//img14.360buyimg.com/n7/jfs/t1/51523/24/11494/161841/5d858080E0ffbe899/2055303b8f11e287.jpg', '2055303b8f11e287.jpg');
INSERT INTO `xiangshui` VALUES (19, '迪奥(Dior)真我香水女士持久自然EDT/EDP香氛系列50ml真我香水浓香EDP30ml', '398.00', 'images/香水/2b0bf79a37ef2c95.jpg', '//img10.360buyimg.com/n7/jfs/t1/40746/32/5158/53082/5cebaab7E8ae5c285/2b0bf79a37ef2c95.jpg', '2b0bf79a37ef2c95.jpg');
INSERT INTO `xiangshui` VALUES (20, '古驰（GUCCI）香氛男士女士香水花之舞栀子花淡香水EDT50ml', '348.00', 'images/香水/e3ff34566d1a063c.jpg', '//img13.360buyimg.com/n7/jfs/t1/80974/36/7708/139558/5d5a614eE67569366/e3ff34566d1a063c.jpg', 'e3ff34566d1a063c.jpg');
INSERT INTO `xiangshui` VALUES (21, '【专柜正品】香奈儿(Chanel)女士香水持久淡香氛邂逅系列/五号系列粉色邂逅柔情发香雾35ml', '375.00', 'images/香水/3dd84b0ee031ada0.jpg', '//img11.360buyimg.com/n7/jfs/t1/72685/8/1632/56476/5cff4f72E7876b82f/3dd84b0ee031ada0.jpg', '3dd84b0ee031ada0.jpg');
INSERT INTO `xiangshui` VALUES (22, '宝格丽（BVLGARI）男士淡香水50ml（又名：大吉岭茶男士淡香水香氛）', '560.00', 'images/香水/6b716bf4f5a686fb.jpg', '//img12.360buyimg.com/n7/jfs/t1/84459/32/11474/76021/5d86fc3dE20408af1/6b716bf4f5a686fb.jpg', '6b716bf4f5a686fb.jpg');
INSERT INTO `xiangshui` VALUES (23, '祖玛珑（jomalone）女士香水祖马龙古龙水9mlx5套装礼盒限量版9585', '299.00', 'images/香水/9fa11c514bfd3449.jpg', '//img14.360buyimg.com/n7/jfs/t1/46502/23/8670/78609/5d60b06eE2657f380/9fa11c514bfd3449.jpg', '9fa11c514bfd3449.jpg');
INSERT INTO `xiangshui` VALUES (24, '可可小姐经典魅惑邂逅香水持久淡香女神魅惑香水香薰香水清新自然少女体香邂逅多种香味支持货到付款！粉色2瓶69元', '69.00', 'images/香水/213796b3c09a1c42.jpg', '//img10.360buyimg.com/n7/jfs/t1/48453/33/6364/243862/5d3d71beEbb2e99e6/213796b3c09a1c42.jpg', '213796b3c09a1c42.jpg');
INSERT INTO `xiangshui` VALUES (25, '蔻依（Chloe）爱语誓言女士香氛30ml', '479.00', 'images/香水/7cf27caa4f8db44c.jpg', '//img11.360buyimg.com/n7/jfs/t1/63489/38/799/98908/5cefa535Ed06148cb/7cf27caa4f8db44c.jpg', '7cf27caa4f8db44c.jpg');
INSERT INTO `xiangshui` VALUES (26, '兰蔻（LANCOME）Miracle奇迹女士香水香氛奇迹30ml', '258.00', 'images/香水/e0a22ea7d79cc129.jpg', '//img13.360buyimg.com/n7/jfs/t1/50814/9/11076/176654/5d81cee6Ec2e7f09f/e0a22ea7d79cc129.jpg', 'e0a22ea7d79cc129.jpg');
INSERT INTO `xiangshui` VALUES (27, '京东超市【第二件1元】花之物语男士香水持久淡香清新自然男人味男女可用香氛费洛蒙非古龙水蔚蓝男士香水50ml', '59.00', 'images/香水/afd7c2f06f1e7ee5.jpg', '//img11.360buyimg.com/n7/jfs/t1/64824/34/7047/90293/5d514407Ee40b50aa/afd7c2f06f1e7ee5.jpg', 'afd7c2f06f1e7ee5.jpg');
INSERT INTO `xiangshui` VALUES (28, '海囤全球【王嘉尔代言】阿玛尼GIORGIOARMANI红色挚爱女士香水50ml花果香调', '489.00', 'images/香水/efcedab9ddb84245.jpg', '//img14.360buyimg.com/n7/jfs/t1/8197/27/13607/72049/5c45917bEb10f0e51/efcedab9ddb84245.jpg', 'efcedab9ddb84245.jpg');
INSERT INTO `xiangshui` VALUES (29, '和风雨男士香水男小样礼盒调氛情持久淡大地香邂逅古龙水优雅蓝', '69.00 65.48', 'images/香水/9c71748f273f73a5.jpg', '//img10.360buyimg.com/n7/jfs/t1/55814/16/11467/208565/5d865335Edb22b8d3/9c71748f273f73a5.jpg', '9c71748f273f73a5.jpg');
INSERT INTO `xiangshui` VALUES (30, '菲拉格慕（Ferragamo）梦中彩虹淡香水30ml女士香水淡香持久少女学生自然清新女意大利品牌进口李佳琦推荐', '119.00', 'images/香水/2ec40ebacc44ed6f.jpg', '//img13.360buyimg.com/n7/jfs/t1/53315/37/11238/385881/5d832ea4E0ac830d7/2ec40ebacc44ed6f.jpg', '2ec40ebacc44ed6f.jpg');

-- ----------------------------
-- Table structure for xiannu
-- ----------------------------
DROP TABLE IF EXISTS `xiannu`;
CREATE TABLE `xiannu`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiannu
-- ----------------------------
INSERT INTO `xiannu` VALUES (1, '黛苇连衣裙女雪纺2019夏装新品时尚修身显瘦短袖印花性感蕾丝连衣裙女假两件套装裙夏季女装沙滩裙子天蓝色M（85-100斤）', '99.00', 'images/仙女/86126cac6c8e0701.jpg', '//img10.360buyimg.com/n7/jfs/t1/80991/5/1669/175871/5cffd786Ea641804d/86126cac6c8e0701.jpg', '86126cac6c8e0701.jpg');
INSERT INTO `xiannu` VALUES (2, '歌蜜奴女连衣裙2019秋季女装新品韩版时尚减龄宽松大码显瘦秋装两件套套装裙A1171米黄套装M', '149.00', 'images/仙女/dc25c0b65340a0a9.jpg', '//img10.360buyimg.com/n7/jfs/t1/48150/12/10281/90879/5d764bb2E18f8b891/dc25c0b65340a0a9.jpg', 'dc25c0b65340a0a9.jpg');
INSERT INTO `xiannu` VALUES (3, '芙绮姿连衣裙2019新品韩版时尚性感套装修身中高腰雪纺格子碎花仙女裙大码女装两件套套装女百搭气质衬衫图片色M', '158.00 138.002人拼', 'images/仙女/855346bc029450b9.jpg', '//img14.360buyimg.com/n7/jfs/t1/73780/39/9277/170516/5d71071eE990de8ea/855346bc029450b9.jpg', '855346bc029450b9.jpg');
INSERT INTO `xiannu` VALUES (4, 'SXA香港潮牌改良汉服连衣裙女2019夏季新款中国风复古花纹刺绣雪纺有女人味的修身高腰连衣裙长裙子白色M', '439.00', 'images/仙女/804837918bcc9c69.jpg', '//img13.360buyimg.com/n7/jfs/t1/71032/12/3549/199105/5d1ba20aEb66c0b60/804837918bcc9c69.jpg', '804837918bcc9c69.jpg');
INSERT INTO `xiannu` VALUES (5, '芙绮姿连衣裙2019新品韩版时尚性感套装修身中高腰雪纺碎花仙女大码女装两件套套装女百搭气质圆领短袖图片色M', '168.00 138.002人拼', 'images/仙女/9252bec42e1ea796.jpg', '//img12.360buyimg.com/n7/jfs/t1/79733/30/9233/97362/5d6f5ff1E3daa358d/9252bec42e1ea796.jpg', '9252bec42e1ea796.jpg');
INSERT INTO `xiannu` VALUES (6, '芙绮姿连衣裙2019秋冬新品韩版时尚性感套装修身中高腰雪纺碎花仙女裙大码女装百搭气质两件套套装女图片色M', '158.00 138.002人拼', 'images/仙女/c130475ab150c1a3.jpg', '//img13.360buyimg.com/n7/jfs/t1/77568/6/8432/139122/5d64ffc9E02c8aeed/c130475ab150c1a3.jpg', 'c130475ab150c1a3.jpg');
INSERT INTO `xiannu` VALUES (7, '芙绮姿法式气质连衣裙两件套装女神范秋季新款毛衣配初秋仙女裙温柔格子仙气百搭图片色M', '118.00', 'images/仙女/abcfc95db0e890b7.jpg', '//img10.360buyimg.com/n7/jfs/t1/80927/6/7847/142460/5d5e1178E06bc7943/abcfc95db0e890b7.jpg', 'abcfc95db0e890b7.jpg');
INSERT INTO `xiannu` VALUES (8, '梦灵雪女装连衣裙2019夏秋新品新款韩版修身时尚大码假两件套装翻领牛仔镶钻长袖连衣裙2019女图片色L【L建议102-112】', '158.00', 'images/仙女/fa8c979f8f0265cd.jpg', '//img14.360buyimg.com/n7/jfs/t1/36356/29/15163/85524/5d3040a7Eb2061d99/fa8c979f8f0265cd.jpg', 'fa8c979f8f0265cd.jpg');
INSERT INTO `xiannu` VALUES (9, '依黛琳连衣裙套装女2019新款女装早秋装很仙的洋气网红拼色a字裙子时尚两件套夏9628图片色套装M', '148.00', 'images/仙女/619ae0e435717025.jpg', '//img11.360buyimg.com/n7/jfs/t1/57821/11/10088/176834/5d7529efEd9c2fc92/619ae0e435717025.jpg', '619ae0e435717025.jpg');
INSERT INTO `xiannu` VALUES (10, '梦灵雪女装连衣裙2019春夏新品新款韩版修身时尚大码假两件套装翻领条纹牛仔七分长袖连衣裙2019女图片色L【L建议102-112】', '158.00', 'images/仙女/13ad48a1e1050517.jpg', '//img13.360buyimg.com/n7/jfs/t1/46662/34/5332/143277/5d3053acEfb78a730/13ad48a1e1050517.jpg', '13ad48a1e1050517.jpg');
INSERT INTO `xiannu` VALUES (11, '依黛琳连衣裙小香风套装女秋冬2019年新款女装韩版很仙的两件套名媛气质洋气套装裙女蓝色套装【9633】M', '198.00', 'images/仙女/45f47b4311756d51.jpg', '//img11.360buyimg.com/n7/jfs/t1/65642/7/8674/348968/5d679da4E8720c056/45f47b4311756d51.jpg', '45f47b4311756d51.jpg');
INSERT INTO `xiannu` VALUES (12, '连衣裙长袖2019秋季新品女装收腰显瘦气质仙女黑色裙子女图片色M', '168.00', 'images/仙女/bdb863b7b86626fa.jpg', '//img12.360buyimg.com/n7/jfs/t1/70967/27/8316/91829/5d639931Eca5be469/bdb863b7b86626fa.jpg', 'bdb863b7b86626fa.jpg');
INSERT INTO `xiannu` VALUES (13, 'ZITANHUA2019连衣裙秋季新品女装韩版收腰显瘦小香风长袖a字针织连衣裙黑色M', '129.00', 'images/仙女/602a1c4dacfd07fe.jpg', '//img12.360buyimg.com/n7/jfs/t1/84367/5/8300/109596/5d5e3606Efe89a943/602a1c4dacfd07fe.jpg', '602a1c4dacfd07fe.jpg');
INSERT INTO `xiannu` VALUES (14, '欧蒙莱早秋连衣裙2019秋装新品女装夏季新款韩版仙女长袖裙子休闲运动时尚宽松显瘦两件套装女2525黑色L', '148.00', 'images/仙女/bc97b4f0b2d23aab.jpg', '//img14.360buyimg.com/n7/jfs/t1/80434/34/8599/104678/5d68c00cE64b3999b/bc97b4f0b2d23aab.jpg', 'bc97b4f0b2d23aab.jpg');
INSERT INTO `xiannu` VALUES (15, 'Vekee’s连衣裙针织套装2019秋冬新款韩版毛衣女马甲两件套女装显瘦中长款仙女裙子卡其马甲+连衣裙S', '168.00', 'images/仙女/6e7c25a5ba1309d8.jpg', '//img14.360buyimg.com/n7/jfs/t1/79514/11/8739/176954/5d68fa4eE6c97ff1d/6e7c25a5ba1309d8.jpg', '6e7c25a5ba1309d8.jpg');
INSERT INTO `xiannu` VALUES (16, '兰诗缇娜2019夏秋季女装新款韩版针织连衣裙印花显瘦套装女两件套时尚套装裙甜美森系小个子仙女绿色S', '138.00', 'images/仙女/4f50df68e7f71c80.jpg', '//img12.360buyimg.com/n7/jfs/t1/42666/29/14740/134614/5d786f37Ee66e3800/4f50df68e7f71c80.jpg', '4f50df68e7f71c80.jpg');
INSERT INTO `xiannu` VALUES (17, '贝婉连衣裙套装女2019秋季新款针织衫两件套V领套头毛衣休闲女装显瘦仙女网纱半身裙图片色套装M', '179.00', 'images/仙女/3266963c95a5c4a5.jpg', '//img10.360buyimg.com/n7/jfs/t1/53985/13/9106/175062/5d668faeE3af9198f/3266963c95a5c4a5.jpg', '3266963c95a5c4a5.jpg');
INSERT INTO `xiannu` VALUES (18, '梵菈早秋连衣裙2019秋装新品女装夏季新款韩版仙女长袖裙子休闲运动时尚宽松显瘦两件套装女880黑色L', '148.00', 'images/仙女/3fb9410d5d2e935e.jpg', '//img10.360buyimg.com/n7/jfs/t1/67172/8/8712/108845/5d68c27cE4069ea45/3fb9410d5d2e935e.jpg', '3fb9410d5d2e935e.jpg');
INSERT INTO `xiannu` VALUES (19, '连衣裙雪纺2019秋新时尚显瘦仙女碎花百搭打底长裙子女潮黑色碎花M', '128.00', 'images/仙女/e1f11ddd9e39fbba.jpg', '//img11.360buyimg.com/n7/jfs/t1/39200/2/14354/213689/5d5660cbEbfd7b6a1/e1f11ddd9e39fbba.jpg', 'e1f11ddd9e39fbba.jpg');
INSERT INTO `xiannu` VALUES (20, '绘兮连衣裙女2019秋装新款小香风拼接格子长袖连衣裙秋季智熏裙法式桔梗裙子粉色M', '158.00', 'images/仙女/be62b0c80de6eac1.jpg', '//img13.360buyimg.com/n7/jfs/t1/38413/15/15228/537261/5d623f33Ed3353ab6/be62b0c80de6eac1.jpg', 'be62b0c80de6eac1.jpg');
INSERT INTO `xiannu` VALUES (21, '岚后2019夏秋季女装新款韩版时尚套装女两件套雪纺套装裙连衣裙衫花苞裙仙女超仙短裙小香风黑色套装S', '138.00', 'images/仙女/ba7a42d08b5b482c.jpg', '//img11.360buyimg.com/n7/jfs/t1/66698/22/9422/127973/5d731b38E937408ba/ba7a42d08b5b482c.jpg', 'ba7a42d08b5b482c.jpg');
INSERT INTO `xiannu` VALUES (22, 'VLZ香港潮牌长袖网纱连衣裙女珠花亮片绣花3D拼接灯笼袖2019春秋新款复古温柔气质仙女裙子粉色M', '456.00', 'images/仙女/a8a1840634fbb480.jpg', '//img14.360buyimg.com/n7/jfs/t1/49227/21/9270/221468/5d6bd44aE6bf4908d/a8a1840634fbb480.jpg', 'a8a1840634fbb480.jpg');
INSERT INTO `xiannu` VALUES (23, '桐系连衣裙2019秋季新款女装时尚显瘦长袖连衣裙针织衫毛衣+半身裙两件套装裙子图片色套装M', '198.00', 'images/仙女/d144fcb6e6ae0880.jpg', '//img13.360buyimg.com/n7/jfs/t1/52424/34/9101/600895/5d665861Ea5d8007d/d144fcb6e6ae0880.jpg', 'd144fcb6e6ae0880.jpg');
INSERT INTO `xiannu` VALUES (24, '柒伍连衣裙2019年秋季新款网纱长裙chic温柔裙子仙女超仙甜美森系长款气质连衣裙蓝色XL【建议1130-145斤】', '138.00', 'images/仙女/b90480e74f209ea0.jpg', '//img14.360buyimg.com/n7/jfs/t1/41827/5/11881/155763/5d54224cE6ca2e005/b90480e74f209ea0.jpg', 'b90480e74f209ea0.jpg');
INSERT INTO `xiannu` VALUES (25, '欧偲麦长袖连衣裙2019新款春秋天时尚女装潮气质中长款雪纺KED-QC11-100黑色L', '298.00', 'images/仙女/69796152e4f6ed8a.jpg', '//img13.360buyimg.com/n7/jfs/t1/45815/31/9061/299958/5d662c3bE1c6984b4/69796152e4f6ed8a.jpg', '69796152e4f6ed8a.jpg');
INSERT INTO `xiannu` VALUES (26, '波菲熊连衣裙2019秋季女装新款韩版时尚套装女新品长袖宽松显瘦大码休闲衣服女士性感两件套装裙子女秋装白色M', '158.00', 'images/仙女/fa7a4b35c4137d6f.jpg', '//img12.360buyimg.com/n7/jfs/t1/81896/25/9668/136200/5d75108cE17d3c90d/fa7a4b35c4137d6f.jpg', 'fa7a4b35c4137d6f.jpg');
INSERT INTO `xiannu` VALUES (27, '利芙娜秋季女装连衣裙新品2019秋装新款流行中长款收腰显瘦百搭休闲气质仙女超仙针织条纹两件套装裙子图片色L', '139.00 125.102人拼', 'images/仙女/eaf5c425d8d29196.jpg', '//img10.360buyimg.com/n7/jfs/t1/72974/2/9745/146776/5d7645e0E2cc4dfc3/eaf5c425d8d29196.jpg', 'eaf5c425d8d29196.jpg');
INSERT INTO `xiannu` VALUES (28, '韩芯莉连衣裙2019秋季新款吊带裙两件套镂空针织衫毛衣时尚套装女中长款休闲显瘦女装豆沙粉M', '168.00', 'images/仙女/f5e423ddc8b4e728.jpg', '//img13.360buyimg.com/n7/jfs/t1/51134/21/8000/204871/5d5971b0E4d9b9949/f5e423ddc8b4e728.jpg', 'f5e423ddc8b4e728.jpg');
INSERT INTO `xiannu` VALUES (29, '梦灵雪连衣裙2019秋季新品新款女装韩版修身时尚大码两件套装毛呢短外套格子毛呢连衣裙2019女图片色L', '188.00', 'images/仙女/c45148978cdb32b8.jpg', '//img10.360buyimg.com/n7/jfs/t1/52646/15/9197/96402/5d67e647E7f576a00/c45148978cdb32b8.jpg', 'c45148978cdb32b8.jpg');
INSERT INTO `xiannu` VALUES (30, '2019新款新品泰国普吉岛三亚沙滩裙春夏秋季系带波西米亚长裙碎花雪纺海边海滩度假收腰显瘦女装连衣裙子图片色L', '99.00', 'images/仙女/57a5eb58Na6bc032b.jpg', '//img14.360buyimg.com/n7/jfs/t3178/339/120684372/554949/884e6f3f/57a5eb58Na6bc032b.jpg', '57a5eb58Na6bc032b.jpg');

-- ----------------------------
-- Table structure for xiaomi
-- ----------------------------
DROP TABLE IF EXISTS `xiaomi`;
CREATE TABLE `xiaomi`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiaomi
-- ----------------------------
INSERT INTO `xiaomi` VALUES (1, '小米8SE全面屏智能游戏拍照手机6GB+64GB灰色骁龙710处理器全网通4G双卡双待', '1299.00', 'images/小米/5b0fbaabN3229c7a3.jpg', '//img11.360buyimg.com/n7/jfs/t22330/332/515182850/188708/3dbe80f8/5b0fbaabN3229c7a3.jpg', '5b0fbaabN3229c7a3.jpg');
INSERT INTO `xiaomi` VALUES (2, '小米红米RedmiNote7幻彩渐变AI双摄4GB+64GB梦幻蓝全网通4G双卡双待水滴全面屏拍照游戏智能手机', '1199.00', 'images/小米/4f4ba51aed682207.jpg', '//img13.360buyimg.com/n7/jfs/t1/9085/2/12381/146200/5c371c5bE08328383/4f4ba51aed682207.jpg', '4f4ba51aed682207.jpg');
INSERT INTO `xiaomi` VALUES (3, '小米红米RedmiNote7AI双摄4GB+64GB亮黑色全网通4G双卡双待水滴全面屏拍照游戏智能手机', '1199.00', 'images/小米/c1f49cd69e6c7e6a.jpg', '//img12.360buyimg.com/n7/jfs/t1/14081/40/4987/124705/5c371b20E53786645/c1f49cd69e6c7e6a.jpg', 'c1f49cd69e6c7e6a.jpg');
INSERT INTO `xiaomi` VALUES (4, '小米红米RedmiNote7ProAI双摄6GB+128GB梦幻蓝全网通4G双卡双待水滴屏拍照游戏手机', '1599.00', 'images/小米/9cd57e3a481c7160.jpg', '//img10.360buyimg.com/n7/jfs/t1/22746/35/11162/104085/5c8b6a19Eb8e8f34e/9cd57e3a481c7160.jpg', '9cd57e3a481c7160.jpg');
INSERT INTO `xiaomi` VALUES (5, '小米红米RedmiNote7ProAI双摄6GB+128GB亮黑色全网通4G双卡双待水滴屏拍照游戏手机', '1599.00', 'images/小米/3054e7cd8d3d0e68.jpg', '//img11.360buyimg.com/n7/jfs/t1/19699/33/11137/76839/5c8b69acEaa4b91dd/3054e7cd8d3d0e68.jpg', '3054e7cd8d3d0e68.jpg');
INSERT INTO `xiaomi` VALUES (6, '小米红米Redmi7AI双摄3GB+32GB亮黑色全网通4G双卡双待水滴全面屏拍照游戏智能手机', '799.00', 'images/小米/fb7b968a62eb10ef.jpg', '//img12.360buyimg.com/n7/jfs/t1/29397/16/14664/80814/5cb06a28E3de55670/fb7b968a62eb10ef.jpg', 'fb7b968a62eb10ef.jpg');
INSERT INTO `xiaomi` VALUES (7, '小米94800万超广角三摄8GB+128GB全息幻彩蓝骁龙855全网通4G双卡双待水滴全面屏拍照游戏智能手机', '3299.00', 'images/小米/ce6c1dee969fb626.jpg', '//img10.360buyimg.com/n7/jfs/t1/16130/39/12690/305219/5caac12aEbb843fa5/ce6c1dee969fb626.jpg', 'ce6c1dee969fb626.jpg');
INSERT INTO `xiaomi` VALUES (8, '小米8SE全面屏智能游戏拍照手机6GB+64GB红色骁龙710处理器全网通4G双卡双待', '1399.00', 'images/小米/5b0fc70eNcd96bf37.jpg', '//img11.360buyimg.com/n7/jfs/t22012/59/492550531/194352/a3d53909/5b0fc70eNcd96bf37.jpg', '5b0fc70eNcd96bf37.jpg');
INSERT INTO `xiaomi` VALUES (9, '小米红米RedmiNote7ProAI双摄6GB+128GB暮光金全网通4G双卡双待水滴屏拍照游戏手机', '1599.00', 'images/小米/6eec05206d18d53c.jpg', '//img11.360buyimg.com/n7/jfs/t1/25890/30/10991/101856/5c8b69e8E1062991c/6eec05206d18d53c.jpg', '6eec05206d18d53c.jpg');
INSERT INTO `xiaomi` VALUES (10, '小米红米Redmi7幻彩渐变AI双摄3GB+32GB魅夜红全网通4G双卡双待水滴全面屏拍照游戏智能手机', '799.00', 'images/小米/f1243f5308575757.jpg', '//img10.360buyimg.com/n7/jfs/t1/26401/3/15366/172081/5cb06b66Ea5be5ce3/f1243f5308575757.jpg', 'f1243f5308575757.jpg');
INSERT INTO `xiaomi` VALUES (11, '小米红米RedmiNote7幻彩渐变AI双摄4GB+64GB暮光金全网通4G双卡双待水滴全面屏拍照游戏智能手机', '1199.00', 'images/小米/102c2223999f3893.jpg', '//img13.360buyimg.com/n7/jfs/t1/11494/39/5833/148091/5c371d4cE7f024c83/102c2223999f3893.jpg', '102c2223999f3893.jpg');
INSERT INTO `xiaomi` VALUES (12, '小米红米6AAI美颜3GB+32GB流沙金全网通4G手机双卡双待', '649.00', 'images/小米/5b4edfdcN5a7d6faf.jpg', '//img13.360buyimg.com/n7/jfs/t22099/97/2250481418/237159/c4a1502d/5b4edfdcN5a7d6faf.jpg', '5b4edfdcN5a7d6faf.jpg');
INSERT INTO `xiaomi` VALUES (13, '小米红米Redmi7幻彩渐变AI双摄3GB+32GB梦幻蓝全网通4G双卡双待水滴全面屏拍照游戏智能手机', '799.00', 'images/小米/ba2f927d3c29bbaf.jpg', '//img14.360buyimg.com/n7/jfs/t1/23933/2/15475/188550/5cb06b0dE349ba69c/ba2f927d3c29bbaf.jpg', 'ba2f927d3c29bbaf.jpg');
INSERT INTO `xiaomi` VALUES (14, '小米8青春版镜面渐变AI双摄6GB+64GB深空灰全网通4G双卡双待全面屏拍照游戏智能手机', '1499.00', 'images/小米/b34c5ccc4c4fd548.jpg', '//img12.360buyimg.com/n7/jfs/t1/4136/40/6201/250287/5ba1f333E745fc8b9/b34c5ccc4c4fd548.jpg', 'b34c5ccc4c4fd548.jpg');
INSERT INTO `xiaomi` VALUES (15, '爱心东东小米（MI）小米电视4X55英寸L55M5-AD2GB+8GBHDR4K超高清蓝牙语音遥控人工智能语音网络液晶平板电视', '2099.00', 'images/小米/5be66874N2b394fba.jpg', '//img11.360buyimg.com/n7/jfs/t29518/5/50591075/273007/2bc96965/5be66874N2b394fba.jpg', '5be66874N2b394fba.jpg');
INSERT INTO `xiaomi` VALUES (16, '小米94800万超广角三摄8GB+128GB深空灰骁龙855全网通4G双卡双待水滴全面屏拍照游戏智能手机', '3299.00', 'images/小米/6ba3f9e586071a2a.jpg', '//img14.360buyimg.com/n7/jfs/t1/20272/6/14832/205257/5caac0feE202042b6/6ba3f9e586071a2a.jpg', '6ba3f9e586071a2a.jpg');
INSERT INTO `xiaomi` VALUES (17, '小米8全面屏游戏智能拍照手机6GB+128GB黑色骁龙845全网通4G双卡双待', '2599.00', 'images/小米/5b0fcbafNc30f70ec.jpg', '//img11.360buyimg.com/n7/jfs/t22144/336/515447244/297549/8c269ff0/5b0fcbafNc30f70ec.jpg', '5b0fcbafNc30f70ec.jpg');
INSERT INTO `xiaomi` VALUES (18, '小米94800万超广角三摄6GB+128GB全息幻彩蓝骁龙855全网通4G双卡双待水滴全面屏拍照游戏智能手机', '2999.00', 'images/小米/a57323b77d9c53e5.jpg', '//img13.360buyimg.com/n7/jfs/t1/20934/9/14668/305219/5caac06cEb41f2374/a57323b77d9c53e5.jpg', 'a57323b77d9c53e5.jpg');
INSERT INTO `xiaomi` VALUES (19, '小米8屏幕指纹版8GB+128GB透明版全网通4G双卡双待全面屏拍照游戏智能手机', '2699.00', 'images/小米/3ec982e47f5256f1.jpg', '//img12.360buyimg.com/n7/jfs/t1/5212/17/6131/296533/5ba1ee39E18d4f475/3ec982e47f5256f1.jpg', '3ec982e47f5256f1.jpg');
INSERT INTO `xiaomi` VALUES (20, '小米红米Redmi7AI双摄4GB+64GB亮黑色全网通4G双卡双待水滴全面屏拍照游戏智能手机', '999.00', 'images/小米/59332b5ac00a297c.jpg', '//img10.360buyimg.com/n7/jfs/t1/15697/35/15502/80814/5cb06aa7Efbb90aac/59332b5ac00a297c.jpg', '59332b5ac00a297c.jpg');
INSERT INTO `xiaomi` VALUES (21, '小米红米RedmiNote7幻彩渐变AI双摄6GB+64GB梦幻蓝全网通4G双卡双待水滴全面屏拍照游戏智能手机', '1399.00', 'images/小米/d44bdb1c5e5f709a.jpg', '//img11.360buyimg.com/n7/jfs/t1/25067/14/4953/146200/5c371c8dE0999a312/d44bdb1c5e5f709a.jpg', 'd44bdb1c5e5f709a.jpg');
INSERT INTO `xiaomi` VALUES (22, '小米8SE全面屏智能游戏拍照手机6GB+128GB灰色骁龙710处理器全网通4G双卡双待', '1699.00', 'images/小米/5b76bab9N13246041.jpg', '//img13.360buyimg.com/n7/jfs/t25654/160/647607027/188708/3dbe80f8/5b76bab9N13246041.jpg', '5b76bab9N13246041.jpg');
INSERT INTO `xiaomi` VALUES (23, '爱心东东小米（MI）小米电视4A65英寸L65M5-AZ/L65M5-AD/L65M5-5A2GB+8GBHDR4K超高清人工智能网络液晶平板电视', '3199.00', 'images/小米/5be66a11Nb72df941.jpg', '//img10.360buyimg.com/n7/jfs/t27922/153/63458201/314845/541dab6a/5be66a11Nb72df941.jpg', '5be66a11Nb72df941.jpg');
INSERT INTO `xiaomi` VALUES (24, '小米红米RedmiNote7AI双摄6GB+64GB亮黑色全网通4G双卡双待水滴全面屏拍照游戏智能手机', '1399.00', 'images/小米/a43559bf47669fdd.jpg', '//img13.360buyimg.com/n7/jfs/t1/22950/16/4935/124705/5c371b4eE04e1813a/a43559bf47669fdd.jpg', 'a43559bf47669fdd.jpg');
INSERT INTO `xiaomi` VALUES (25, '小米红米6AAI美颜3GB+32GB铂银灰全网通4G手机双卡双待', '649.00', 'images/小米/5b4edfbbNeea6a7e9.jpg', '//img12.360buyimg.com/n7/jfs/t21007/222/605914214/175365/7ff56f55/5b4edfbbNeea6a7e9.jpg', '5b4edfbbNeea6a7e9.jpg');
INSERT INTO `xiaomi` VALUES (26, '小米红米RedmiNote7幻彩渐变AI双摄6GB+64GB暮光金全网通4G双卡双待水滴全面屏拍照游戏智能手机', '1399.00', 'images/小米/0c97d80c8e26e655.jpg', '//img11.360buyimg.com/n7/jfs/t1/9511/24/12605/148091/5c371d61E60d43004/0c97d80c8e26e655.jpg', '0c97d80c8e26e655.jpg');
INSERT INTO `xiaomi` VALUES (27, '小米红米Redmi7幻彩渐变AI双摄4GB+64GB梦幻蓝全网通4G双卡双待水滴全面屏拍照游戏智能手机', '999.00', 'images/小米/165fa1423b10f5b0.jpg', '//img14.360buyimg.com/n7/jfs/t1/37573/4/618/188550/5cb06b3eEeef4f1a0/165fa1423b10f5b0.jpg', '165fa1423b10f5b0.jpg');
INSERT INTO `xiaomi` VALUES (28, '小米94800万超广角三摄8GB+128GB全息幻彩紫骁龙855全网通4G双卡双待水滴全面屏拍照游戏智能手机', '3299.00', 'images/小米/829c640304d15f7c.jpg', '//img13.360buyimg.com/n7/jfs/t1/27445/15/14879/234000/5caac146E41d8342f/829c640304d15f7c.jpg', '829c640304d15f7c.jpg');
INSERT INTO `xiaomi` VALUES (29, '小米红米Redmi7幻彩渐变AI双摄4GB+64GB魅夜红全网通4G双卡双待水滴全面屏拍照游戏智能手机', '999.00', 'images/小米/4351a70031175fd5.jpg', '//img12.360buyimg.com/n7/jfs/t1/19796/10/15391/172081/5cb06b8cE16de1978/4351a70031175fd5.jpg', '4351a70031175fd5.jpg');
INSERT INTO `xiaomi` VALUES (30, '小米94800万超广角三摄6GB+128GB深空灰骁龙855全网通4G双卡双待水滴全面屏拍照游戏智能手机', '2999.00', 'images/小米/12fc8119d31e58c3.jpg', '//img11.360buyimg.com/n7/jfs/t1/15089/22/14799/205257/5caabeabEcac5ef94/12fc8119d31e58c3.jpg', '12fc8119d31e58c3.jpg');

-- ----------------------------
-- Table structure for xiaoxiannu
-- ----------------------------
DROP TABLE IF EXISTS `xiaoxiannu`;
CREATE TABLE `xiaoxiannu`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xiaoxiannu
-- ----------------------------
INSERT INTO `xiaoxiannu` VALUES (1, '他家少女心爆棚的生日礼物女生网红ins走心超火小仙女闺蜜韩国diy创意兔子抱枕情人节礼物40*50厘米一袋子小兔抱枕', '59.80', 'images/小仙女/5bb48429N13d527a3.jpg', '//img13.360buyimg.com/n7/jfs/t25759/259/1519738111/338739/9db1768c/5bb48429N13d527a3.jpg', '5bb48429N13d527a3.jpg');
INSERT INTO `xiaoxiannu` VALUES (2, '黛礼思创意整蛊玩具捏捏乐水袋抓不住的水蛇玩具发泄恶搞拿不住发泄减压水球小仙女（大号）', '12.00', 'images/小仙女/c50b87f593f2e907.jpg', '//img12.360buyimg.com/n7/jfs/t1/24614/12/12744/116732/5c9adc5bE4f4a884b/c50b87f593f2e907.jpg', 'c50b87f593f2e907.jpg');
INSERT INTO `xiaoxiannu` VALUES (3, '送女友抖音同款解压神器抓不到的水蛇滑滑乐搞怪越在乎越捉不住儿童节朋友减压恶搞玩具送闺蜜创意生日礼物小仙女', '12.50', 'images/小仙女/5f44a36bef112247.jpg', '//img10.360buyimg.com/n7/jfs/t1/49823/39/6869/238930/5d47e17fEd2e34ec3/5f44a36bef112247.jpg', '5f44a36bef112247.jpg');
INSERT INTO `xiaoxiannu` VALUES (4, '八音盒手摇音乐盒木质七夕情人节礼物生日礼物女生天空之城送女友老婆女朋友儿童闺蜜创意礼品旋转木小仙女-樱花粉', '29.90', 'images/小仙女/3b5f5408da0c40a4.jpg', '//img10.360buyimg.com/n7/jfs/t1/58793/36/16/85130/5cd25e34E2a3e24a7/3b5f5408da0c40a4.jpg', '3b5f5408da0c40a4.jpg');
INSERT INTO `xiaoxiannu` VALUES (5, '巧心师彩灯LED灯串婚房布置装饰灯带INS少女心星星灯求婚告白生日小仙女宿舍梦幻装饰灯情人节装饰礼物', '9.90 9.50', 'images/小仙女/f66bbc9592969297.jpg', '//img10.360buyimg.com/n7/jfs/t1/73403/40/3650/539222/5d1c1f45Ea601030b/f66bbc9592969297.jpg', 'f66bbc9592969297.jpg');
INSERT INTO `xiaoxiannu` VALUES (6, '京东超市教师节礼物日式风铃挂件生日礼物送男女生闺蜜同学小仙女可爱走心创意实用儿童小礼独角兽+羽毛风铃（粉色）', '49.00', 'images/小仙女/15169bc27b1b704d.jpg', '//img11.360buyimg.com/n7/jfs/t1/33744/26/3626/69989/5cb5724aEadfecd9c/15169bc27b1b704d.jpg', '15169bc27b1b704d.jpg');
INSERT INTO `xiaoxiannu` VALUES (7, '生日礼物女生送女友惊喜礼品七彩小夜灯婴儿卧室喂奶儿童礼物送小朋友送男生老婆闺蜜同学中秋礼物萌兔香薰花束礼盒【ins走心小仙女七仓发货】', '98.00', 'images/小仙女/583d32f5c96858d5.jpg', '//img12.360buyimg.com/n7/jfs/t1/20041/22/8317/406965/5c749ad8E45a16d21/583d32f5c96858d5.jpg', '583d32f5c96858d5.jpg');
INSERT INTO `xiaoxiannu` VALUES (8, '创意多功能文具盒网红同款笔盒抖音可爱牛奶笔袋大容量收纳袋简约文字铅笔盒学生用品小仙女', '14.90', 'images/小仙女/6f93056e35f5c429.jpg', '//img10.360buyimg.com/n7/jfs/t1/11465/11/2258/135891/5c1229ceE11fa77d9/6f93056e35f5c429.jpg', '6f93056e35f5c429.jpg');
INSERT INTO `xiaoxiannu` VALUES (9, '抖音同款儿童迷你浮感感应飞天小仙女飞行器玩具小飞机充电耐摔直升飞机超小无人机手感应控制六一儿童节礼物会飞的小仙女红色', '45.00', 'images/小仙女/5ce118b2N01f56344.jpg', '//img12.360buyimg.com/n7/jfs/t28396/164/1512602572/102092/cee0990d/5ce118b2N01f56344.jpg', '5ce118b2N01f56344.jpg');
INSERT INTO `xiaoxiannu` VALUES (10, '同学录小清新铁盒同学录女韩版盒装可爱毕业小学创意初中高中复古纪念册送男女同学老师送朋友小仙女-铁盒同学录', '46.00 36.00', 'images/小仙女/0e068e878eae8443.jpg', '//img10.360buyimg.com/n7/jfs/t1/30372/4/7646/125631/5c99e8a9Eafe7b3ea/0e068e878eae8443.jpg', '0e068e878eae8443.jpg');
INSERT INTO `xiaoxiannu` VALUES (11, '生日礼物女生伴手礼婚礼伴娘结婚礼物送女友老婆妈妈闺蜜创意小礼品抖音同款ins风实用小仙女礼盒【加湿器+水杯+香水】', '128.00', 'images/小仙女/7fe104d16bc00ada.jpg', '//img10.360buyimg.com/n7/jfs/t1/76901/25/4735/123722/5d2ee225Ed013e1cb/7fe104d16bc00ada.jpg', '7fe104d16bc00ada.jpg');
INSERT INTO `xiaoxiannu` VALUES (12, '网红同款炸街神器网红爆款卡通旋转杯吸管旋转杯搅拌杯卡通杯子小学生儿童500ml四色小仙女逛gai必备小白猫', '44.60', 'images/小仙女/26f32d7c5243c01f.jpg', '//img13.360buyimg.com/n7/jfs/t1/57535/2/5753/102955/5d36da56Eb4b8ec1c/26f32d7c5243c01f.jpg', '26f32d7c5243c01f.jpg');
INSERT INTO `xiaoxiannu` VALUES (13, '发光小仙女闪光流沙笔抖音同款炫彩流沙中性笔黑粉色学生文具送学生送朋友流沙笔1支(颜色随机)', '9.90', 'images/小仙女/5bf0541fNf60baf78.jpg', '//img11.360buyimg.com/n7/jfs/t27991/337/343672187/149825/a013105a/5bf0541fNf60baf78.jpg', '5bf0541fNf60baf78.jpg');
INSERT INTO `xiaoxiannu` VALUES (14, '抖音同款抓不住的水蛇创意恶搞整蛊玩具握不住的水袋发泄球减压东西水球捏捏乐送同学朋友礼物小仙女', '9.00', 'images/小仙女/2566461f6309999d.jpg', '//img14.360buyimg.com/n7/jfs/t1/59275/8/1496/138353/5cf534beE3749fea6/2566461f6309999d.jpg', '2566461f6309999d.jpg');
INSERT INTO `xiaoxiannu` VALUES (15, '给女生的生日礼物少女小仙女过年送妹妹的给10岁小女孩12实用创意J小夜灯粉', '69.00', 'images/小仙女/4b513d3ce18baca8.jpg', '//img13.360buyimg.com/n7/jfs/t1/23113/38/11801/201793/5c91e4e1E47550a32/4b513d3ce18baca8.jpg', '4b513d3ce18baca8.jpg');
INSERT INTO `xiaoxiannu` VALUES (16, '国际绘本大师大卫·香农：小仙女艾丽斯（启发童书馆出品）', '14.90', 'images/小仙女/b7ea58add1e946a1.jpg', '//img12.360buyimg.com/n7/jfs/t1/20663/40/4170/215018/5c2f2352E6bf05d70/b7ea58add1e946a1.jpg', 'b7ea58add1e946a1.jpg');
INSERT INTO `xiaoxiannu` VALUES (17, '马克图布生日礼物女生小仙女情人节18岁女孩创意加湿器迷你usb静音卧室空调房空气喷雾少女心爆棚小物麋鹿白', '69.00', 'images/小仙女/66a40d3bb1006a3a.jpg', '//img14.360buyimg.com/n7/jfs/t1/27237/1/9162/56927/5c7ca18aE63704b7a/66a40d3bb1006a3a.jpg', '66a40d3bb1006a3a.jpg');
INSERT INTO `xiaoxiannu` VALUES (18, '2019新品感应飞行器充电耐摔悬浮遥控飞机直升机会飞的小仙女抖音儿童玩具礼物小飞仙---粉色官方标配(带充电线)', '38.00', 'images/小仙女/946b5a61926e54ee.jpg', '//img10.360buyimg.com/n7/jfs/t1/60799/16/298/105095/5ce7abd4Eeb99b6f1/946b5a61926e54ee.jpg', '946b5a61926e54ee.jpg');
INSERT INTO `xiaoxiannu` VALUES (19, '露趣中秋节生日礼物女生送老师朋友女孩闺蜜老婆抖音同款玫瑰花礼盒惊喜浪漫小清新毕业创意表白礼物小仙女套装粉花', '39.90', 'images/小仙女/5b34c67eN1d03ab10.jpg', '//img10.360buyimg.com/n7/jfs/t23899/59/546532065/266896/fdd405a3/5b34c67eN1d03ab10.jpg', '5b34c67eN1d03ab10.jpg');
INSERT INTO `xiaoxiannu` VALUES (20, '京东超市教师节礼物日式风铃挂件生日礼物送男女生闺蜜同学小仙女可爱走心创意实用儿童小礼独角兽+羽毛风铃（蓝色）', '49.00', 'images/小仙女/6d79e6603248e767.jpg', '//img10.360buyimg.com/n7/jfs/t1/33176/27/3613/74724/5cb571e9E85e91e55/6d79e6603248e767.jpg', '6d79e6603248e767.jpg');
INSERT INTO `xiaoxiannu` VALUES (21, '新款女孩小仙女感应飞行器悬浮直升飞机儿童玩具水滴遥控感应双模粉色', '49.00', 'images/小仙女/5befb393N20c2bc42.jpg', '//img12.360buyimg.com/n7/jfs/t30547/97/330296182/55076/caf34c01/5befb393N20c2bc42.jpg', '5befb393N20c2bc42.jpg');
INSERT INTO `xiaoxiannu` VALUES (22, '京东超市六一儿童节礼物学生毕业留言本同学录创意个性男古风小小仙女古韵纪念册复古中国风初中高中可拆开毕业留言册雅韵紫色', '39.00 33.00', 'images/小仙女/5cde43fcNd31d672f.jpg', '//img10.360buyimg.com/n7/jfs/t10783/217/3010822915/132020/756d200b/5cde43fcNd31d672f.jpg', '5cde43fcNd31d672f.jpg');
INSERT INTO `xiaoxiannu` VALUES (23, '京东超市中秋节礼物萌萌加湿器小仙女加湿器迷你usb静音卧室孕妇婴儿空调房空气喷雾补水走心创意礼品萌萌鹿', '62.00', 'images/小仙女/512bbae5a63331cd.jpg', '//img14.360buyimg.com/n7/jfs/t1/15638/40/4577/38436/5c32d14bE53bda82c/512bbae5a63331cd.jpg', '512bbae5a63331cd.jpg');
INSERT INTO `xiaoxiannu` VALUES (24, '2019小黄小人飞机玩具感应飞行器儿童遥控飞机直升机会飞小仙女抖音礼物促销款红红人官方标配(带充电线)', '23.00', 'images/小仙女/bcdfc48389cadcd7.jpg', '//img11.360buyimg.com/n7/jfs/t1/69786/25/3553/58527/5d1b4a1dEef52aa6d/bcdfc48389cadcd7.jpg', 'bcdfc48389cadcd7.jpg');
INSERT INTO `xiaoxiannu` VALUES (25, '网红生日礼物女生USB加湿器卧室办公室小仙女礼品网红ins礼物ins送女友大喷雾透明DIY礼物小透明【超大雾气】仙人掌透明加湿器', '58.00', 'images/小仙女/5ce4b459N0f3d1cad.jpg', '//img13.360buyimg.com/n7/jfs/t28447/27/1565180331/568692/4e717a63/5ce4b459N0f3d1cad.jpg', '5ce4b459N0f3d1cad.jpg');
INSERT INTO `xiaoxiannu` VALUES (26, '2019小黄小人飞机玩具感应飞行器儿童遥控飞机直升机会飞小仙女抖音礼物促销款黄黄人官方标配(带充电线)', '23.00', 'images/小仙女/8ee27abec59d89e3.jpg', '//img14.360buyimg.com/n7/jfs/t1/49625/4/3976/65240/5d1b4a17E9dc97c13/8ee27abec59d89e3.jpg', '8ee27abec59d89e3.jpg');
INSERT INTO `xiaoxiannu` VALUES (27, '京东超市ufo感应飞行器无人机手势遥控飞机男孩玩具自动避障航模四轴定高电动玩具悬浮飞碟男孩礼物飞天小仙女花仙子粉色', '45.00', 'images/小仙女/77c3ae6ad52b2c56.jpg', '//img14.360buyimg.com/n7/jfs/t1/70951/24/2387/67319/5d0b5624Ecece9d9a/77c3ae6ad52b2c56.jpg', '77c3ae6ad52b2c56.jpg');
INSERT INTO `xiaoxiannu` VALUES (28, '抖音同款儿童悬浮感应飞天小仙女飞行器玩具迷你小飞机充电耐摔遥控直升飞机无人机儿童节礼物会飞的小仙女红色', '45.00', 'images/小仙女/5ce113b3Ne46cff57.jpg', '//img10.360buyimg.com/n7/jfs/t30127/241/1445805189/102092/cee0990d/5ce113b3Ne46cff57.jpg', '5ce113b3Ne46cff57.jpg');
INSERT INTO `xiaoxiannu` VALUES (29, '少女心和纸贴纸包可爱小女孩萌妹子小仙女日记手账diy装饰手帐贴纸宅女养成记系列日常文字装饰贴画12张贴纸套装', '9.90', 'images/小仙女/6ec9db038be01547.jpg', '//img13.360buyimg.com/n7/jfs/t1/47284/7/5554/180571/5d327139E162c54d6/6ec9db038be01547.jpg', '6ec9db038be01547.jpg');
INSERT INTO `xiaoxiannu` VALUES (30, '恋度生日礼物女生闺蜜520礼物创意实用送女友朋友小仙女女孩情侣老婆爱人友情特别的表白diy定制生日快乐（不支持定制）', '108.00', 'images/小仙女/5a3e82f8Na9ddbab1.jpg', '//img11.360buyimg.com/n7/jfs/t12391/226/2398684187/335358/6af40577/5a3e82f8Na9ddbab1.jpg', '5a3e82f8Na9ddbab1.jpg');

-- ----------------------------
-- Table structure for xinbailun
-- ----------------------------
DROP TABLE IF EXISTS `xinbailun`;
CREATE TABLE `xinbailun`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xinbailun
-- ----------------------------
INSERT INTO `xinbailun` VALUES (1, 'NewBalanceNB官方2019新款男鞋女鞋复古休闲鞋ML574ESK运动鞋深灰ML574ESN37', '519.00', 'images/新百伦/39fc95b52be5ca1a.jpg', '//img12.360buyimg.com/n7/jfs/t1/39439/10/12685/206140/5d3ed92eE9aa008ba/39fc95b52be5ca1a.jpg', '39fc95b52be5ca1a.jpg');
INSERT INTO `xinbailun` VALUES (2, 'NewBalanceNB官方2019新款ML373MTA男鞋女鞋休闲鞋ML373MTA42', '329.00', 'images/新百伦/c3b26a3add202bc9.jpg', '//img10.360buyimg.com/n7/jfs/t1/75905/9/9123/59182/5d6de20eEbd95296e/c3b26a3add202bc9.jpg', 'c3b26a3add202bc9.jpg');
INSERT INTO `xinbailun` VALUES (3, 'NewBalanceNB男鞋女鞋情侣鞋运动休闲跑步鞋ML574UJD/UJA/LGI/PTR灰色ML574LGI40/250MM', '558.00', 'images/新百伦/74dd9cbac027e75f.jpg', '//img10.360buyimg.com/n7/jfs/t1/20815/28/12292/89970/5c976f10E483d0edf/74dd9cbac027e75f.jpg', '74dd9cbac027e75f.jpg');
INSERT INTO `xinbailun` VALUES (4, 'NewBalanceNB官方2019新款女鞋WX608RB1运动鞋休闲复古老爹鞋白色WX608WT37.5', '599.00', 'images/新百伦/e090273048ca5397.jpg', '//img10.360buyimg.com/n7/jfs/t1/81142/33/7665/51604/5d5a19fbE67c172b0/e090273048ca5397.jpg', 'e090273048ca5397.jpg');
INSERT INTO `xinbailun` VALUES (5, 'NewBalanceNB男鞋2019年秋季新款男子复古透气休闲运动跑步鞋ML373GRE41.5', '269.00', 'images/新百伦/771c537cca350f3f.jpg', '//img13.360buyimg.com/n7/jfs/t1/53150/40/11611/222056/5d88eb46E7163c10d/771c537cca350f3f.jpg', '771c537cca350f3f.jpg');
INSERT INTO `xinbailun` VALUES (6, 'NewBalanceNB官方2019新款男鞋女鞋运动鞋ML565CLS复古休闲鞋深蓝色/深灰色ML565CPC-D43', '399.00', 'images/新百伦/59f3a43e704a62d9.jpg', '//img14.360buyimg.com/n7/jfs/t1/20901/3/4891/41302/5c36b6efE85c0663c/59f3a43e704a62d9.jpg', '59f3a43e704a62d9.jpg');
INSERT INTO `xinbailun` VALUES (7, 'NewBalanceNB官方男鞋女鞋复古休闲鞋ML574EGW运动鞋574系列云雾灰ML574EGW41.5', '659.00', 'images/新百伦/61b3f49ce3473312.jpg', '//img11.360buyimg.com/n7/jfs/t1/46690/19/11115/55426/5d82f7a5E7ce193d4/61b3f49ce3473312.jpg', '61b3f49ce3473312.jpg');
INSERT INTO `xinbailun` VALUES (8, 'NewBalanceNB官方2019新款男鞋女鞋446系列U446WBG运动休闲鞋灰白色U446WBG42', '499.00', 'images/新百伦/101ecbe30e7458f2.jpg', '//img10.360buyimg.com/n7/jfs/t1/71685/7/4844/53330/5d2f1887E753fed26/101ecbe30e7458f2.jpg', '101ecbe30e7458f2.jpg');
INSERT INTO `xinbailun` VALUES (9, 'NewBalanceNB官方2019新款男鞋女鞋休闲鞋ML574LGI休闲运动鞋灰色ML574NCB38', '539.00', 'images/新百伦/009b83ff9d27b541.jpg', '//img14.360buyimg.com/n7/jfs/t1/18041/16/13076/149667/5c9e4719E771448f7/009b83ff9d27b541.jpg', '009b83ff9d27b541.jpg');
INSERT INTO `xinbailun` VALUES (10, 'NewBalanceNB男鞋2019夏季新款系列运动复古跑步鞋ML373GRE42', '269.00', 'images/新百伦/81164ded182fdc58.jpg', '//img11.360buyimg.com/n7/jfs/t1/50935/6/11412/222056/5d88eb50Eadda8c21/81164ded182fdc58.jpg', '81164ded182fdc58.jpg');
INSERT INTO `xinbailun` VALUES (11, 'NewBalanceNB官方女鞋休闲鞋515系列WL515CSB复古休闲鞋运动鞋云母灰WL515CSB38', '549.00', 'images/新百伦/7b70d771cae5e661.jpg', '//img12.360buyimg.com/n7/jfs/t1/81696/15/4938/70681/5d306f88E74afd35d/7b70d771cae5e661.jpg', '7b70d771cae5e661.jpg');
INSERT INTO `xinbailun` VALUES (12, '新佰倫男鞋官网秋季NB女鞋580官方复古运动鞋纽百伦休闲鞋新巴伦正品跑步鞋慢跑鞋情侣男女都可选NEWBALANCE999格子灰41', '268.00', 'images/新百伦/405fd58cb6baa16c.jpg', '//img13.360buyimg.com/n7/jfs/t1/46427/33/8401/132235/5d5e9a1bE1bebe396/405fd58cb6baa16c.jpg', '405fd58cb6baa16c.jpg');
INSERT INTO `xinbailun` VALUES (13, 'NewBalanceNB官方2019新款男款880系列MW880CF3男鞋专业跑步鞋灰色MW880CF341.5', '799.00', 'images/新百伦/46cc4bb4bd78d911.jpg', '//img13.360buyimg.com/n7/jfs/t1/77287/5/6435/64086/5d47dc26Ecb952814/46cc4bb4bd78d911.jpg', '46cc4bb4bd78d911.jpg');
INSERT INTO `xinbailun` VALUES (14, 'NewBalanceNB官方2019新款男鞋女鞋U446CGI休闲鞋运动鞋446系列藏青色U446CNR41.5', '499.00', 'images/新百伦/f8608d0edef9db84.jpg', '//img12.360buyimg.com/n7/jfs/t1/42192/30/1218/67893/5cc56f4eEc0f131b2/f8608d0edef9db84.jpg', 'f8608d0edef9db84.jpg');
INSERT INTO `xinbailun` VALUES (15, 'NewBalanceNB女鞋WL373MBB复古时尚休闲鞋运动鞋月光米WL373MBB37', '399.00', 'images/新百伦/70cdea7ca2413d15.jpg', '//img12.360buyimg.com/n7/jfs/t1/25783/4/15127/57330/5cada5deE96ef68f2/70cdea7ca2413d15.jpg', '70cdea7ca2413d15.jpg');
INSERT INTO `xinbailun` VALUES (16, '2019新佰倫官方运动鞋999男鞋秋季纽百伦官网580潮流鞋休闲跑步鞋NB女鞋旅游新巴伦正品NEWBALANCE999碳灰红42', '268.00', 'images/新百伦/62113f7f2df86bc3.jpg', '//img11.360buyimg.com/n7/jfs/t1/66880/14/8184/159891/5d5eac42Ee2f5bb85/62113f7f2df86bc3.jpg', '62113f7f2df86bc3.jpg');
INSERT INTO `xinbailun` VALUES (17, 'NewBalanceNB官方2019新款男鞋女鞋运动休闲鞋009系列米灰色MS009SC140', '539.00', 'images/新百伦/51bd7e4bf29f485f.jpg', '//img13.360buyimg.com/n7/jfs/t1/64226/38/6904/53832/5d51011cE058372d9/51bd7e4bf29f485f.jpg', '51bd7e4bf29f485f.jpg');
INSERT INTO `xinbailun` VALUES (18, 'NewBalanceNB官方2019新款男鞋女鞋840系列运动休闲鞋ML840AF灰色ML840AF40.5', '819.00', 'images/新百伦/90ddadb6265fd6d8.jpg', '//img11.360buyimg.com/n7/jfs/t1/66752/6/4666/64059/5d2dabe0E0cd6d0fd/90ddadb6265fd6d8.jpg', '90ddadb6265fd6d8.jpg');
INSERT INTO `xinbailun` VALUES (19, 'NewBalanceNB官方2019新款男鞋女鞋运动休闲鞋CM996BN象牙白CM996BT41.5', '899.00', 'images/新百伦/e35cf2a32b62a211.jpg', '//img10.360buyimg.com/n7/jfs/t1/40134/27/13058/54008/5d42d5f8Eb3d0214a/e35cf2a32b62a211.jpg', 'e35cf2a32b62a211.jpg');
INSERT INTO `xinbailun` VALUES (20, 'NewBalanceNB官方2019新款男鞋女鞋休闲鞋ML565CLB休闲运动鞋ML565CLB43', '369.00', 'images/新百伦/7117e1d21a88d793.jpg', '//img10.360buyimg.com/n7/jfs/t1/11228/32/13458/57050/5c999e0bE2906d2f4/7117e1d21a88d793.jpg', '7117e1d21a88d793.jpg');
INSERT INTO `xinbailun` VALUES (21, 'NewBalanceNB男鞋女鞋U220DA复古鞋简约舒适休闲鞋运动鞋U220DD/黑色40(脚长25cm)', '299.00', 'images/新百伦/cdcbbf73bee52f98.jpg', '//img10.360buyimg.com/n7/jfs/t1/18080/39/12704/53140/5c9a2909E57ece891/cdcbbf73bee52f98.jpg', 'cdcbbf73bee52f98.jpg');
INSERT INTO `xinbailun` VALUES (22, 'NewBalanceNB男鞋U220EB复古鞋运动鞋U220EA/黑色42.5(脚长27cm)', '329.00', 'images/新百伦/a9f1f0a7359e74ce.jpg', '//img10.360buyimg.com/n7/jfs/t1/15371/19/2733/52614/5c20583cEcbac44c6/a9f1f0a7359e74ce.jpg', 'a9f1f0a7359e74ce.jpg');
INSERT INTO `xinbailun` VALUES (23, 'NewBalanceNB男鞋女鞋ML373GRE复古休闲鞋运动鞋简约舒适ML373GRE/黑色39.5', '369.00', 'images/新百伦/36058be04c9c290f.jpg', '//img10.360buyimg.com/n7/jfs/t1/11005/18/3103/52073/5c1b2820Ee5bc610b/36058be04c9c290f.jpg', '36058be04c9c290f.jpg');
INSERT INTO `xinbailun` VALUES (24, 'NewBalanceNB男鞋GM500SGR/WB复古休闲鞋运动鞋白色GM500SWB-D41.5', '359.00', 'images/新百伦/699f822a9a31f919.jpg', '//img11.360buyimg.com/n7/jfs/t1/15985/4/2909/36450/5c218dfcEf3da2069/699f822a9a31f919.jpg', '699f822a9a31f919.jpg');
INSERT INTO `xinbailun` VALUES (25, 'NewBalanceNB男鞋GM500KSW复古鞋慢跑鞋休闲鞋运动鞋透气舒适GM500KSW/黑色41.5', '299.00', 'images/新百伦/445da15ee0c2c848.jpg', '//img13.360buyimg.com/n7/jfs/t1/47878/10/1361/76757/5cf140f4Ea0456a46/445da15ee0c2c848.jpg', '445da15ee0c2c848.jpg');
INSERT INTO `xinbailun` VALUES (26, 'NewBalanceNB官方2019新款女鞋574系列WL574WNA运动鞋紫罗兰WL574WNC38', '659.00', 'images/新百伦/b1cb5c189a06fa6f.jpg', '//img14.360buyimg.com/n7/jfs/t1/62267/10/4276/71505/5d25d5c9E16a486b8/b1cb5c189a06fa6f.jpg', 'b1cb5c189a06fa6f.jpg');
INSERT INTO `xinbailun` VALUES (27, 'NewBalanceNB男鞋MRL005YB复古鞋休闲运动鞋耐磨舒适MRL005YA/黑色43(脚长27.5cm)', '289.00', 'images/新百伦/134adb8d3f4dd08e.jpg', '//img12.360buyimg.com/n7/jfs/t1/20068/17/3168/52616/5c24af40E62e34523/134adb8d3f4dd08e.jpg', '134adb8d3f4dd08e.jpg');
INSERT INTO `xinbailun` VALUES (28, 'NewBalancenb童鞋男女童0~4岁魔术贴运动鞋KA520KA520RWI/红色26码/15cm', '199.00', 'images/新百伦/9076648ac5f56dab.jpg', '//img14.360buyimg.com/n7/jfs/t1/25534/37/12676/41164/5c9a11e2E03a107ff/9076648ac5f56dab.jpg', '9076648ac5f56dab.jpg');
INSERT INTO `xinbailun` VALUES (29, 'NewBalanceNB官方2019新款男鞋女鞋CT10系列运动休闲鞋CT10WEB白色CT10WEB41.5', '399.00', 'images/新百伦/d25282f54b42b130.jpg', '//img13.360buyimg.com/n7/jfs/t1/80931/19/4772/43713/5d2dac9fEa5ca1349/d25282f54b42b130.jpg', 'd25282f54b42b130.jpg');

-- ----------------------------
-- Table structure for yanzhengma
-- ----------------------------
DROP TABLE IF EXISTS `yanzhengma`;
CREATE TABLE `yanzhengma`  (
  `id` int(11) NOT NULL,
  `imageurl` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `right` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yanzhengma
-- ----------------------------
INSERT INTO `yanzhengma` VALUES (1, 'images/验证码/1.png', 'kowa');
INSERT INTO `yanzhengma` VALUES (2, 'images/验证码/2.png', '87kf');
INSERT INTO `yanzhengma` VALUES (3, 'images/验证码/3.png', 'krpf');
INSERT INTO `yanzhengma` VALUES (4, 'images/验证码/4.png', 'eo4y');
INSERT INTO `yanzhengma` VALUES (5, 'images/验证码/5.png', 'xq6b');
INSERT INTO `yanzhengma` VALUES (6, 'images/验证码/6.png', 'xexr');
INSERT INTO `yanzhengma` VALUES (7, 'images/验证码/7.png', 'ebwf');
INSERT INTO `yanzhengma` VALUES (8, 'images/验证码/8.png', 'w7yc');
INSERT INTO `yanzhengma` VALUES (9, 'images/验证码/9.png', 'a5px');
INSERT INTO `yanzhengma` VALUES (10, 'images/验证码/10.png', '3myx');
INSERT INTO `yanzhengma` VALUES (11, 'images/验证码/11.png', 'rjy4');
INSERT INTO `yanzhengma` VALUES (12, 'images/验证码/12.png', 'xxck');
INSERT INTO `yanzhengma` VALUES (13, 'images/验证码/13.png', '3hre');
INSERT INTO `yanzhengma` VALUES (14, 'images/验证码/14.png', 'ac66');
INSERT INTO `yanzhengma` VALUES (15, 'images/验证码/15.png', 'cppc');
INSERT INTO `yanzhengma` VALUES (16, 'images/验证码/16.png', 'kynk');
INSERT INTO `yanzhengma` VALUES (17, 'images/验证码/17.png', 's5by');
INSERT INTO `yanzhengma` VALUES (18, 'images/验证码/18.png', 'a3ae');
INSERT INTO `yanzhengma` VALUES (19, 'images/验证码/19.png', 'e76g');
INSERT INTO `yanzhengma` VALUES (20, 'images/验证码/20.png', '7bws');
INSERT INTO `yanzhengma` VALUES (21, 'images/验证码/21.png', 'an4j');
INSERT INTO `yanzhengma` VALUES (22, 'images/验证码/22.png', 'mspx');
INSERT INTO `yanzhengma` VALUES (23, 'images/验证码/23.png', 'mpn7');
INSERT INTO `yanzhengma` VALUES (24, 'images/验证码/24.png', '8og8');
INSERT INTO `yanzhengma` VALUES (25, 'images/验证码/25.png', 'nhwh');
INSERT INTO `yanzhengma` VALUES (26, 'images/验证码/26.png', 'onf7');
INSERT INTO `yanzhengma` VALUES (27, 'images/验证码/27.png', '38op');
INSERT INTO `yanzhengma` VALUES (28, 'images/验证码/28.png', 'wawf');
INSERT INTO `yanzhengma` VALUES (29, 'images/验证码/29.png', 'ore4');
INSERT INTO `yanzhengma` VALUES (30, 'images/验证码/30.png', 'pk7f');
INSERT INTO `yanzhengma` VALUES (31, 'images/验证码/31.png', 'rnwk');
INSERT INTO `yanzhengma` VALUES (32, 'images/验证码/32.png', 'hgk5');
INSERT INTO `yanzhengma` VALUES (33, 'images/验证码/33.png', 'rops');
INSERT INTO `yanzhengma` VALUES (34, 'images/验证码/34.png', 'o353');
INSERT INTO `yanzhengma` VALUES (35, 'images/验证码/35.png', 'wkkh');
INSERT INTO `yanzhengma` VALUES (36, 'images/验证码/36.png', 's8po');
INSERT INTO `yanzhengma` VALUES (37, 'images/验证码/37.png', 'cf7c');
INSERT INTO `yanzhengma` VALUES (38, 'images/验证码/38.png', 'e8x4');
INSERT INTO `yanzhengma` VALUES (39, 'images/验证码/39.png', 'krpf');
INSERT INTO `yanzhengma` VALUES (40, 'images/验证码/40.png', 'jyxh');
INSERT INTO `yanzhengma` VALUES (41, 'images/验证码/41.png', '47a4');
INSERT INTO `yanzhengma` VALUES (42, 'images/验证码/42.png', 'ojkh');
INSERT INTO `yanzhengma` VALUES (43, 'images/验证码/43.png', '8hmr');
INSERT INTO `yanzhengma` VALUES (44, 'images/验证码/44.png', '3ggj');
INSERT INTO `yanzhengma` VALUES (45, 'images/验证码/45.png', 'jb3m');
INSERT INTO `yanzhengma` VALUES (46, 'images/验证码/46.png', '3f36');
INSERT INTO `yanzhengma` VALUES (47, 'images/验证码/47.png', 'bxn4');
INSERT INTO `yanzhengma` VALUES (48, 'images/验证码/48.png', '56jh');
INSERT INTO `yanzhengma` VALUES (49, 'images/验证码/49.png', 'y5ac');
INSERT INTO `yanzhengma` VALUES (50, 'images/验证码/50.png', 'h75j');
INSERT INTO `yanzhengma` VALUES (51, 'images/验证码/51.png', 'gbwj');
INSERT INTO `yanzhengma` VALUES (52, 'images/验证码/52.png', '7xrx');
INSERT INTO `yanzhengma` VALUES (53, 'images/验证码/53.png', 'bfns');
INSERT INTO `yanzhengma` VALUES (54, 'images/验证码/54.png', 'bs5c');
INSERT INTO `yanzhengma` VALUES (55, 'images/验证码/55.png', 'haw7');
INSERT INTO `yanzhengma` VALUES (56, 'images/验证码/56.png', 'ao7g');
INSERT INTO `yanzhengma` VALUES (57, 'images/验证码/57.png', 'e5x5');
INSERT INTO `yanzhengma` VALUES (58, 'images/验证码/58.png', '6s55');
INSERT INTO `yanzhengma` VALUES (59, 'images/验证码/59.png', 'whbk');
INSERT INTO `yanzhengma` VALUES (60, 'images/验证码/60.png', '4rcc');
INSERT INTO `yanzhengma` VALUES (61, 'images/验证码/61.png', 'ay6a');
INSERT INTO `yanzhengma` VALUES (62, 'images/验证码/62.png', 'hgjq');
INSERT INTO `yanzhengma` VALUES (63, 'images/验证码/63.png', 'j5px');
INSERT INTO `yanzhengma` VALUES (64, 'images/验证码/64.png', '5f5r');
INSERT INTO `yanzhengma` VALUES (65, 'images/验证码/65.png', 'jfag');
INSERT INTO `yanzhengma` VALUES (66, 'images/验证码/66.png', '85or');
INSERT INTO `yanzhengma` VALUES (67, 'images/验证码/67.png', 'n7hq');
INSERT INTO `yanzhengma` VALUES (68, 'images/验证码/68.png', 'ja6m');
INSERT INTO `yanzhengma` VALUES (69, 'images/验证码/69.png', 'pnew');
INSERT INTO `yanzhengma` VALUES (70, 'images/验证码/70.png', 'bssh');
INSERT INTO `yanzhengma` VALUES (71, 'images/验证码/71.png', 'kae6');
INSERT INTO `yanzhengma` VALUES (72, 'images/验证码/72.png', 'ass5');
INSERT INTO `yanzhengma` VALUES (73, 'images/验证码/73.png', 'n375');
INSERT INTO `yanzhengma` VALUES (74, 'images/验证码/74.png', '5rdq');
INSERT INTO `yanzhengma` VALUES (75, 'images/验证码/75.png', 'qyw4');
INSERT INTO `yanzhengma` VALUES (76, 'images/验证码/76.png', '3ah5');
INSERT INTO `yanzhengma` VALUES (77, 'images/验证码/77.png', '85gx');
INSERT INTO `yanzhengma` VALUES (78, 'images/验证码/78.png', 'dm8s');
INSERT INTO `yanzhengma` VALUES (79, 'images/验证码/79.png', 'kfys');
INSERT INTO `yanzhengma` VALUES (80, 'images/验证码/80.png', 'n68w');
INSERT INTO `yanzhengma` VALUES (81, 'images/验证码/81.png', 'pmwc');
INSERT INTO `yanzhengma` VALUES (82, 'images/验证码/82.png', 'rw65');
INSERT INTO `yanzhengma` VALUES (83, 'images/验证码/83.png', 'aor7');
INSERT INTO `yanzhengma` VALUES (84, 'images/验证码/84.png', '8beo');
INSERT INTO `yanzhengma` VALUES (85, 'images/验证码/85.png', 'yo3f');
INSERT INTO `yanzhengma` VALUES (86, 'images/验证码/86.png', 'e5rc');
INSERT INTO `yanzhengma` VALUES (87, 'images/验证码/87.png', 'yp5y');
INSERT INTO `yanzhengma` VALUES (88, 'images/验证码/88.png', 'egxp');
INSERT INTO `yanzhengma` VALUES (89, 'images/验证码/89.png', 'b4kw');
INSERT INTO `yanzhengma` VALUES (90, 'images/验证码/90.png', 'gkwn');
INSERT INTO `yanzhengma` VALUES (91, 'images/验证码/91.png', 'yw38');
INSERT INTO `yanzhengma` VALUES (92, 'images/验证码/92.png', 'yyga');
INSERT INTO `yanzhengma` VALUES (93, 'images/验证码/93.png', '5of3');
INSERT INTO `yanzhengma` VALUES (94, 'images/验证码/94.png', '5k64');
INSERT INTO `yanzhengma` VALUES (95, 'images/验证码/95.png', 'w758');
INSERT INTO `yanzhengma` VALUES (96, 'images/验证码/96.png', 'fmke');
INSERT INTO `yanzhengma` VALUES (97, 'images/验证码/97.png', 'mrbo');
INSERT INTO `yanzhengma` VALUES (98, 'images/验证码/98.png', 'c6cp');
INSERT INTO `yanzhengma` VALUES (99, 'images/验证码/99.png', '7ygx');
INSERT INTO `yanzhengma` VALUES (100, 'images/验证码/100.png', 'smgj');

-- ----------------------------
-- Table structure for zhiwensuo
-- ----------------------------
DROP TABLE IF EXISTS `zhiwensuo`;
CREATE TABLE `zhiwensuo`  (
  `Id` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Price` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageUrl` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ImageName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhiwensuo
-- ----------------------------
INSERT INTO `zhiwensuo` VALUES (1, '小米米家智能门锁碳素黑标准锁体家用防盗门指纹锁密码锁C级锁芯', '1299.00', 'images/指纹锁/e08efca9245c12b7.jpg', '//img14.360buyimg.com/n7/jfs/t1/75258/12/9472/124811/5d71ffe8Ee628af9a/e08efca9245c12b7.jpg', 'e08efca9245c12b7.jpg');
INSERT INTO `zhiwensuo` VALUES (2, '小米米家智能门锁推拉式标准锁体霸王锁体指纹锁密码锁防小黑盒C级锁芯', '1699.00', 'images/指纹锁/33c57fe138a22816.jpg', '//img14.360buyimg.com/n7/jfs/t1/64276/40/9373/98292/5d722fe2Ef9fbf8ff/33c57fe138a22816.jpg', '33c57fe138a22816.jpg');
INSERT INTO `zhiwensuo` VALUES (3, '凯迪仕（kaadas）K9智能锁指纹锁家用防盗门锁推拉式电子门锁密码锁星空灰色', '2149.00 1999.00', 'images/指纹锁/6d62f538aa92e250.jpg', '//img13.360buyimg.com/n7/jfs/t1/62489/40/9232/88188/5d706ceeEbdc5daa6/6d62f538aa92e250.jpg', '6d62f538aa92e250.jpg');
INSERT INTO `zhiwensuo` VALUES (4, '云米指纹锁家用防盗门锁智能锁小米生态大门木门隐形指纹锁真插芯电子密码锁Link黑晶色升级版', '999.00', 'images/指纹锁/1f51270170b2cc35.jpg', '//img11.360buyimg.com/n7/jfs/t1/42857/14/14150/157594/5d70f386E0fae7090/1f51270170b2cc35.jpg', '1f51270170b2cc35.jpg');
INSERT INTO `zhiwensuo` VALUES (5, '德施曼（DESSMANN）Q5指纹锁智能家居全自动直觉式解锁隐藏式指纹头电子密码智能门锁', '2299.00', 'images/指纹锁/903090d108fdd5c3.jpg', '//img13.360buyimg.com/n7/jfs/t1/78155/37/9315/116144/5d70bfc0E55f7ba6d/903090d108fdd5c3.jpg', '903090d108fdd5c3.jpg');
INSERT INTO `zhiwensuo` VALUES (6, '凯迪仕（KAADAS）指纹锁K9智能锁密码锁家用防盗门锁全自动智能门锁电子锁K9星空灰(上门安装+三年质保)', '2399.00', 'images/指纹锁/9ef1d0d6a907c184.jpg', '//img12.360buyimg.com/n7/jfs/t1/77280/29/9440/127579/5d721891Ea8d30a5b/9ef1d0d6a907c184.jpg', '9ef1d0d6a907c184.jpg');
INSERT INTO `zhiwensuo` VALUES (7, '小嘀德施曼指纹锁家用防盗门锁电子锁智能密码锁v5Plus磨砂黑终身维保', '1499.00', 'images/指纹锁/d3b189b4a6d80d59.jpg', '//img13.360buyimg.com/n7/jfs/t1/50324/32/9864/134080/5d71d644Ebbe80b73/d3b189b4a6d80d59.jpg', 'd3b189b4a6d80d59.jpg');
INSERT INTO `zhiwensuo` VALUES (8, 'OJJX1智能锁鹿客指纹防盗门锁智能密码锁门锁指纹锁家用防盗门X1锁耀岩黑小米米家APP控制', '1099.00', 'images/指纹锁/d1d54690254c0086.jpg', '//img13.360buyimg.com/n7/jfs/t1/47694/12/9879/110790/5d71d52eEc17c9130/d1d54690254c0086.jpg', 'd1d54690254c0086.jpg');
INSERT INTO `zhiwensuo` VALUES (9, '小米米家智能门锁磨砂金标准锁体家用防盗门指纹锁密码锁C级锁芯', '1399.00', 'images/指纹锁/08866936af9594bc.jpg', '//img11.360buyimg.com/n7/jfs/t1/46170/13/9883/145116/5d72004aE4340ce6b/08866936af9594bc.jpg', '08866936af9594bc.jpg');
INSERT INTO `zhiwensuo` VALUES (10, '鹿客(LOOCK)Classic指纹锁智能锁家用防盗门锁智能门锁电子锁密码锁指纹锁黑色', '1699.00', 'images/指纹锁/ec379e5ac7032fb4.jpg', '//img12.360buyimg.com/n7/jfs/t1/79690/4/4153/72865/5d246fe0E8bd4ab4b/ec379e5ac7032fb4.jpg', 'ec379e5ac7032fb4.jpg');
INSERT INTO `zhiwensuo` VALUES (11, '飞利浦（PHILIPS）Alpha指纹锁家用智能锁全自动密码锁推拉式防盗门电子锁曜石黑', '2580.00', 'images/指纹锁/2fa9848829dcbe57.jpg', '//img12.360buyimg.com/n7/jfs/t1/52449/40/9720/131065/5d70a0a5E9a8ba032/2fa9848829dcbe57.jpg', '2fa9848829dcbe57.jpg');
INSERT INTO `zhiwensuo` VALUES (12, '嫒玛德全面镜全自动指纹锁防盗门智能锁手机远程智能锁指纹密码锁DZM-Z6金色', '1790.00', 'images/指纹锁/2a56bb5e923e92f7.jpg', '//img12.360buyimg.com/n7/jfs/t1/36344/25/5771/62374/5cc02975Eaf77cb56/2a56bb5e923e92f7.jpg', '2a56bb5e923e92f7.jpg');
INSERT INTO `zhiwensuo` VALUES (13, '壹图（ONETOTEM）指纹锁智能锁密码防盗门滑盖智能电子密码锁门家用APP远程临时密钥刷卡锁木门Y-102深空灰指纹锁+全国免费安装(限常规锁体）', '699.00', 'images/指纹锁/985185189781c35e.jpg', '//img13.360buyimg.com/n7/jfs/t1/66591/11/8265/154564/5d639ad4E08316596/985185189781c35e.jpg', '985185189781c35e.jpg');
INSERT INTO `zhiwensuo` VALUES (14, '三星（SAMSUNG）指纹锁智能家居家用防盗门密码磁卡锁智能门锁电子锁SHP-DP728咖啡棕通用标配版', '2680.00', 'images/指纹锁/2cc53063633740d9.jpg', '//img14.360buyimg.com/n7/jfs/t1/52415/13/9937/211304/5d720bf6E04f328c2/2cc53063633740d9.jpg', '2cc53063633740d9.jpg');
INSERT INTO `zhiwensuo` VALUES (15, '鹿客(LOOCK)Classic2S智能锁指纹锁密码锁家用防盗门智能门锁电子锁【升级款全自动锁体】', '1999.00', 'images/指纹锁/315245bd8b1581f3.jpg', '//img14.360buyimg.com/n7/jfs/t1/45023/37/5890/55367/5d383088Ec10667d7/315245bd8b1581f3.jpg', '315245bd8b1581f3.jpg');
INSERT INTO `zhiwensuo` VALUES (16, '小米米家智能门锁磨砂金霸王锁体家用防盗门指纹锁密码锁C级锁芯', '1599.00', 'images/指纹锁/971032326221de81.jpg', '//img13.360buyimg.com/n7/jfs/t1/43432/21/14115/144984/5d720071Ee247afd8/971032326221de81.jpg', '971032326221de81.jpg');
INSERT INTO `zhiwensuo` VALUES (17, '德施曼（DESSMANN）Q5指纹锁智能锁全自动直觉式解锁后隐藏式指纹头电子密码锁深空灰', '2299.00', 'images/指纹锁/51d7b77e37148272.jpg', '//img10.360buyimg.com/n7/jfs/t1/50319/17/9756/109552/5d70ed6cE09024ad1/51d7b77e37148272.jpg', '51d7b77e37148272.jpg');
INSERT INTO `zhiwensuo` VALUES (18, '鹿客(LOOCK)Touch指纹锁智能锁家用防盗门锁智能门锁电子锁密码锁指纹锁耀岩黑', '3498.00', 'images/指纹锁/635cebd5b40cd267.jpg', '//img13.360buyimg.com/n7/jfs/t1/49253/36/4564/61857/5d246dbdE83f27ae7/635cebd5b40cd267.jpg', '635cebd5b40cd267.jpg');
INSERT INTO `zhiwensuo` VALUES (19, '德施曼（DESSMANN）指纹锁T86家用云智能锁防盗门锁密码锁电子锁陨石黑【FPC半导体指纹头+三年质保+终身维保】', '1899.00', 'images/指纹锁/d0ee917c11e5e285.jpg', '//img10.360buyimg.com/n7/jfs/t1/80696/26/9322/105855/5d70ea8cE0dc50382/d0ee917c11e5e285.jpg', 'd0ee917c11e5e285.jpg');
INSERT INTO `zhiwensuo` VALUES (20, '小米（MI）米家智能门锁c级指纹锁防盗门家用公司密码锁电子锁小米米家智能门锁标准锁体碳素黑', '1279.00', 'images/指纹锁/d82518be25885960.jpg', '//img14.360buyimg.com/n7/jfs/t1/49174/14/4134/100654/5d1dd115E74e6b43e/d82518be25885960.jpg', 'd82518be25885960.jpg');
INSERT INTO `zhiwensuo` VALUES (21, '德莉堡公寓办公室全自动指纹密码锁家用防盗门电子锁智能门锁酒店民宿密码指纹锁0828黑色-指导安装', '498.00', 'images/指纹锁/51a11bf1abc1141f.jpg', '//img13.360buyimg.com/n7/jfs/t1/48753/7/9796/272009/5d6e6a3bEb240be28/51a11bf1abc1141f.jpg', '51a11bf1abc1141f.jpg');
INSERT INTO `zhiwensuo` VALUES (22, '小益(Yi-LOCK）指纹锁E205密码锁防盗门智能锁家用指纹锁WIFI版电子锁手机APP公寓民宿【曜石黑WiFi版】-指导安装', '599.00', 'images/指纹锁/740d9b893909a953.jpg', '//img12.360buyimg.com/n7/jfs/t1/29496/2/15364/141738/5cb05ab8E2b846f96/740d9b893909a953.jpg', '740d9b893909a953.jpg');
INSERT INTO `zhiwensuo` VALUES (23, 'TCL指纹锁智能锁指纹锁防盗门智能门锁密码锁指纹锁家用防盗门锁性价比之王1299【年轻家庭的选择+时尚镜面设计】', '1099.00', 'images/指纹锁/a262f9af59ca0172.jpg', '//img12.360buyimg.com/n7/jfs/t1/80447/10/9442/100981/5d73282bE63b78bf7/a262f9af59ca0172.jpg', 'a262f9af59ca0172.jpg');
INSERT INTO `zhiwensuo` VALUES (24, '联想Lenovo全自动智能门锁X1指纹锁智能锁电子锁密码锁智能门锁家用防盗门C级锁芯摩卡棕', '2699.00', 'images/指纹锁/883cb4448c2fbd9b.jpg', '//img10.360buyimg.com/n7/jfs/t1/44807/16/9821/57540/5d7104abEc32cf4cc/883cb4448c2fbd9b.jpg', '883cb4448c2fbd9b.jpg');
INSERT INTO `zhiwensuo` VALUES (25, 'OJJX1鹿客指纹锁智能锁家用防盗门锁智能门锁电子锁密码锁C级锁芯小米米家APP控制左开门（站在门外，面对门，门轴在左侧）全国联保+免费安装', '1099.00', 'images/指纹锁/b148da20d92e423a.jpg', '//img13.360buyimg.com/n7/jfs/t1/79218/37/9457/97848/5d73720fE5826cc00/b148da20d92e423a.jpg', 'b148da20d92e423a.jpg');
INSERT INTO `zhiwensuo` VALUES (26, '【秒杀价1199元】英典指纹锁智能锁【免费上门安装】家用电子锁指纹锁防盗门密码锁门锁科技黑【新升级半导体指纹头/一年包换/终身质保】', '1399.00', 'images/指纹锁/128fdecd1cc4ef7b.jpg', '//img13.360buyimg.com/n7/jfs/t1/26865/20/11531/123564/5c9097cdEb14f6ae3/128fdecd1cc4ef7b.jpg', '128fdecd1cc4ef7b.jpg');
INSERT INTO `zhiwensuo` VALUES (27, '鹿客（LOOCK)Classic2S智能锁指纹锁密码锁电子锁全自动上锁黑色', '2199.00', 'images/指纹锁/c144c151b6d68c9f.jpg', '//img12.360buyimg.com/n7/jfs/t1/66750/29/4824/55367/5d304929E45366d65/c144c151b6d68c9f.jpg', 'c144c151b6d68c9f.jpg');
INSERT INTO `zhiwensuo` VALUES (28, '【1299元送扫地机器人】英典指纹锁智能锁【免费上门安装】家用电子锁指纹锁防盗门密码锁WIFI版-科技黑【远程开锁/自动反锁/防撬报警】', '1169.00', 'images/指纹锁/5aa828cacf308eb6.jpg', '//img14.360buyimg.com/n7/jfs/t1/84097/6/9048/123711/5d6e5703E5a4a63e4/5aa828cacf308eb6.jpg', '5aa828cacf308eb6.jpg');
INSERT INTO `zhiwensuo` VALUES (29, '京东超市德施曼（DESSMANN）小嘀指纹锁家用防盗门智能家居云智能锁电子密码智能门锁', '1199.00', 'images/指纹锁/f05b1a54150c34a7.jpg', '//img12.360buyimg.com/n7/jfs/t1/51069/22/9808/103212/5d70be94E37dffcd7/f05b1a54150c34a7.jpg', 'f05b1a54150c34a7.jpg');
INSERT INTO `zhiwensuo` VALUES (30, '玻璃门指纹锁免开孔玻璃门锁单双开办公室玻璃门密码锁', '398.00', 'images/指纹锁/7e4151b29fac0725.jpg', '//img11.360buyimg.com/n7/jfs/t1/58317/28/9830/162041/5d72f9d5E5bf4727c/7e4151b29fac0725.jpg', '7e4151b29fac0725.jpg');

SET FOREIGN_KEY_CHECKS = 1;
