SET NAMES UTF8;
DROP DATABASE IF EXISTS uu;
CREATE DATABASE uu CHARSET=UTF8;
USE uu;

CREATE TABLE uu_index_topbanner(
  id INT PRIMARY KEY AUTO_INCREMENT,
  big VARCHAR(50),
  small VARCHAR(50),
  down VARCHAR(50),
  msg1 VARCHAR(50),
  msg2 VARCHAR(50)
);

CREATE TABLE uu_index_bbxz(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  btn VARCHAR(50),
  normal VARCHAR(50),
  hover VARCHAR(50)
);

CREATE TABLE uu_games_pc(
  id INT PRIMARY KEY AUTO_INCREMENT,
  gname VARCHAR(50)
);

CREATE TABLE uu_games_phone(
  id INT PRIMARY KEY AUTO_INCREMENT,
  gname VARCHAR(50)
);

CREATE TABLE uu_games_host(
  id INT PRIMARY KEY AUTO_INCREMENT,
  gname VARCHAR(50)
);

CREATE TABLE uu_header_img(
  id INT PRIMARY KEY AUTO_INCREMENT,
  normal VARCHAR(225),
  hover VARCHAR(225)
);

CREATE TABLE uu_footer_img(
  id INT PRIMARY KEY AUTO_INCREMENT,
  normal VARCHAR(225),
  hover VARCHAR(225)
);

CREATE TABLE uu_channel_hysj(
  id INT PRIMARY KEY AUTO_INCREMENT,
  renewal VARCHAR(50),
  price INT,
  unit INT
);

CREATE TABLE uu_box_package(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(100)
);

CREATE TABLE uu_contact_cooperation(
  id INT PRIMARY KEY AUTO_INCREMENT,
  toptitle VARCHAR(50),
  bottomtitle VARCHAR(50)
);

CREATE TABLE uu_contact_contact(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(50),
  cname VARCHAR(50),
  contact VARCHAR(100)
);

INSERT INTO uu_index_topbanner VALUES(null,'img/index/big_top_banner1.mp4','img/index/small_top_banner1.png','img/index/down_pc_big.png','img/index/small_top_logo.png','极速畅玩全球电脑/主机/掌机/手机游戏');
INSERT INTO uu_index_topbanner VALUES(null,'img/index/big_top_banner2.jpg','img/index/small_top_banner2.png','img/index/down_pc.png','全球专线互联','专利技术智能处理模块');
INSERT INTO uu_index_topbanner VALUES(null,'img/index/big_top_banner3.jpg','img/index/small_top_banner3.png','img/index/down_pc.png','国服游戏免费加速','72小时免费试用');
INSERT INTO uu_index_topbanner VALUES(null,'img/index/big_top_banner4.jpg','img/index/small_top_banner4.png','img/index/down_pc.png','品牌升级 多端加速','电脑/主机/掌机/手机全平台加速');
INSERT INTO uu_index_topbanner VALUES(null,'img/index/big_top_banner5.jpg','img/index/small_top_banner5.png','img/index/down_pc.png','多端游戏全面覆盖','极致新游添加速度');
INSERT INTO uu_index_topbanner VALUES(null,'img/index/big_top_banner6.jpg','img/index/small_top_banner6.png','img/index/down_mac.png','img/index/down_bbxq.png','');

INSERT INTO uu_index_bbxz VALUES(null,'Windows版本','立即下载','img/index/down_windows.png','img/index/down_windows_hov.png');
INSERT INTO uu_index_bbxz VALUES(null,'Android版本','立即下载','img/index/down_Android.png','img/index/down_Android_hov.png');
INSERT INTO uu_index_bbxz VALUES(null,'iOS版本','立即下载','img/index/down_iOS.png','img/index/down_iOS_hov.png');
INSERT INTO uu_index_bbxz VALUES(null,'macOS版本','查看详情','img/index/down_macOS.png','img/index/down_macOS_hov.png');
INSERT INTO uu_index_bbxz VALUES(null,'主机加速','查看详情','img/index/down_host.png','img/index/down_host_hov.png');

INSERT INTO uu_games_pc VALUES(null,'Steam社区/商店');
INSERT INTO uu_games_pc VALUES(null,'Origin');
INSERT INTO uu_games_pc VALUES(null,'Twitch');
INSERT INTO uu_games_pc VALUES(null,'绝地求生');
INSERT INTO uu_games_pc VALUES(null,'DOTA2');
INSERT INTO uu_games_pc VALUES(null,'荣耀战魂');
INSERT INTO uu_games_pc VALUES(null,'SCUM');
INSERT INTO uu_games_pc VALUES(null,'NBA 2K19');
INSERT INTO uu_games_pc VALUES(null,'GTA 5');
INSERT INTO uu_games_pc VALUES(null,'彩虹六号：围攻');
INSERT INTO uu_games_pc VALUES(null,'CS:GO');
INSERT INTO uu_games_pc VALUES(null,'战争雷霆');
INSERT INTO uu_games_pc VALUES(null,'Warframe');
INSERT INTO uu_games_pc VALUES(null,'H1Z1');
INSERT INTO uu_games_pc VALUES(null,'全境封锁');
INSERT INTO uu_games_pc VALUES(null,'逃离塔科夫');
INSERT INTO uu_games_pc VALUES(null,'流亡黯道');
INSERT INTO uu_games_pc VALUES(null,'上古卷轴OL');
INSERT INTO uu_games_pc VALUES(null,'无主之地2');
INSERT INTO uu_games_pc VALUES(null,'战地1');
INSERT INTO uu_games_pc VALUES(null,'星际争霸II');
INSERT INTO uu_games_pc VALUES(null,'使命召唤12');
INSERT INTO uu_games_pc VALUES(null,'VRChat');
INSERT INTO uu_games_pc VALUES(null,'守望先锋');
INSERT INTO uu_games_pc VALUES(null,'战锤：末世鼠疫2');
INSERT INTO uu_games_pc VALUES(null,'饥荒');
INSERT INTO uu_games_pc VALUES(null,'飙酷车神2');
INSERT INTO uu_games_pc VALUES(null,'机动战士高达OL');
INSERT INTO uu_games_pc VALUES(null,'黑色小队');
INSERT INTO uu_games_pc VALUES(null,'极限竞速：地平线3');
INSERT INTO uu_games_pc VALUES(null,'杀戮空间2');
INSERT INTO uu_games_pc VALUES(null,'坦克世界');
INSERT INTO uu_games_pc VALUES(null,'魔兽世界');
INSERT INTO uu_games_pc VALUES(null,'剑灵');
INSERT INTO uu_games_pc VALUES(null,'收获日2');
INSERT INTO uu_games_pc VALUES(null,'看门狗2');
INSERT INTO uu_games_pc VALUES(null,'暗黑破坏神3');
INSERT INTO uu_games_pc VALUES(null,'实况足球2019');
INSERT INTO uu_games_pc VALUES(null,'Squad');
INSERT INTO uu_games_pc VALUES(null,'Dead Frontier 2');
INSERT INTO uu_games_pc VALUES(null,'战地4');
INSERT INTO uu_games_pc VALUES(null,'Overcooked! 2');
INSERT INTO uu_games_pc VALUES(null,'新枫之谷');
INSERT INTO uu_games_pc VALUES(null,'流亡黯道');
INSERT INTO uu_games_pc VALUES(null,'战地3');
INSERT INTO uu_games_pc VALUES(null,'黑色沙漠');
INSERT INTO uu_games_pc VALUES(null,'PokeMMO');
INSERT INTO uu_games_pc VALUES(null,'新天堂2');
INSERT INTO uu_games_pc VALUES(null,'命运2');
INSERT INTO uu_games_pc VALUES(null,'SCP: Secret Laboratory');
INSERT INTO uu_games_pc VALUES(null,'NBA 2K17');
INSERT INTO uu_games_pc VALUES(null,'流放者柯南');
INSERT INTO uu_games_pc VALUES(null,'灵魂筹码');
INSERT INTO uu_games_pc VALUES(null,'极品飞车19');


INSERT INTO uu_games_phone VALUES(null,'王者荣耀');
INSERT INTO uu_games_phone VALUES(null,'绝地求生:全军出击');
INSERT INTO uu_games_phone VALUES(null,'绝地求生:刺激战场');
INSERT INTO uu_games_phone VALUES(null,'穿越火线');
INSERT INTO uu_games_phone VALUES(null,'QQ飞车');
INSERT INTO uu_games_phone VALUES(null,'第五人格');
INSERT INTO uu_games_phone VALUES(null,'我的世界  ');
INSERT INTO uu_games_phone VALUES(null,'传说对决');
INSERT INTO uu_games_phone VALUES(null,'崩坏3');
INSERT INTO uu_games_phone VALUES(null,'球球大作战');
INSERT INTO uu_games_phone VALUES(null,'Arena of valor 体验服');
INSERT INTO uu_games_phone VALUES(null,'Twitch移动版');
INSERT INTO uu_games_phone VALUES(null,'天命之子');
INSERT INTO uu_games_phone VALUES(null,'荒野行动');
INSERT INTO uu_games_phone VALUES(null,'迷你世界');
INSERT INTO uu_games_phone VALUES(null,'方舟:生存进化');
INSERT INTO uu_games_phone VALUES(null,'狂野飙车9:传奇');
INSERT INTO uu_games_phone VALUES(null,'Fate/GrandOrder');
INSERT INTO uu_games_phone VALUES(null,'火影忍者');
INSERT INTO uu_games_phone VALUES(null,'炉石传说');
INSERT INTO uu_games_phone VALUES(null,'决战！平安京');
INSERT INTO uu_games_phone VALUES(null,'时空召唤');
INSERT INTO uu_games_phone VALUES(null,'香肠派对');
INSERT INTO uu_games_phone VALUES(null,'堡垒之夜');
INSERT INTO uu_games_phone VALUES(null,'阴阳师');
INSERT INTO uu_games_phone VALUES(null,'非人学园');
INSERT INTO uu_games_phone VALUES(null,'地球末日');
INSERT INTO uu_games_phone VALUES(null,'游戏王');
INSERT INTO uu_games_phone VALUES(null,'创造与魔法');
INSERT INTO uu_games_phone VALUES(null,'实况足球');
INSERT INTO uu_games_phone VALUES(null,'狂野飙车8:极速凌云');
INSERT INTO uu_games_phone VALUES(null,'无尽对决');
INSERT INTO uu_games_phone VALUES(null,'碧蓝航线');
INSERT INTO uu_games_phone VALUES(null,'英魂之刃');
INSERT INTO uu_games_phone VALUES(null,'世界战争-英雄');
INSERT INTO uu_games_phone VALUES(null,'火焰纹章：英雄');
INSERT INTO uu_games_phone VALUES(null,'虚荣');
INSERT INTO uu_games_phone VALUES(null,'公主连接!Re:Dive');
INSERT INTO uu_games_phone VALUES(null,'王者荣耀前瞻版');


INSERT INTO uu_games_host VALUES(null,'Bloodborne');
INSERT INTO uu_games_host VALUES(null,'Farcry 5');
INSERT INTO uu_games_host VALUES(null,'Switch全平台');
INSERT INTO uu_games_host VALUES(null,'绝地求生');
INSERT INTO uu_games_host VALUES(null,'腐烂国度2');
INSERT INTO uu_games_host VALUES(null,'光环5');
INSERT INTO uu_games_host VALUES(null,'GTA5');
INSERT INTO uu_games_host VALUES(null,'战地1');
INSERT INTO uu_games_host VALUES(null,'使命召唤14');
INSERT INTO uu_games_host VALUES(null,'彩虹六号：围攻');
INSERT INTO uu_games_host VALUES(null,'怪物猎人：世界');
INSERT INTO uu_games_host VALUES(null,'血源诅咒');
INSERT INTO uu_games_host VALUES(null,'神秘海域4');
INSERT INTO uu_games_host VALUES(null,'FIFA 18');
INSERT INTO uu_games_host VALUES(null,'全境封锁');
INSERT INTO uu_games_host VALUES(null,'实况足球2');
INSERT INTO uu_games_host VALUES(null,'NBA 2K18');
INSERT INTO uu_games_host VALUES(null,'命运2');
INSERT INTO uu_games_host VALUES(null,'孤岛惊魂5');
INSERT INTO uu_games_host VALUES(null,'守望先锋');
INSERT INTO uu_games_host VALUES(null,'泰坦陨落2');
INSERT INTO uu_games_host VALUES(null,'逃出生天');
INSERT INTO uu_games_host VALUES(null,'高达VS');
INSERT INTO uu_games_host VALUES(null,'街霸5');
INSERT INTO uu_games_host VALUES(null,'黎明杀机');
INSERT INTO uu_games_host VALUES(null,'看门狗2');
INSERT INTO uu_games_host VALUES(null,'坦克世界');
INSERT INTO uu_games_host VALUES(null,'苍翼默示录：神观之梦');
INSERT INTO uu_games_host VALUES(null,'铁拳7');
INSERT INTO uu_games_host VALUES(null,'黑暗之魂1：重置版');
INSERT INTO uu_games_host VALUES(null,'幽灵行动：荒野');
INSERT INTO uu_games_host VALUES(null,'星球大战：战争前线');
INSERT INTO uu_games_host VALUES(null,'荣耀战魂');
INSERT INTO uu_games_host VALUES(null,'战地4');
INSERT INTO uu_games_host VALUES(null,'杀戮空间2');
INSERT INTO uu_games_host VALUES(null,'DJMAX RESPECT');
INSERT INTO uu_games_host VALUES(null,'异种国度');
INSERT INTO uu_games_host VALUES(null,'H1Z1');
INSERT INTO uu_games_host VALUES(null,'使命召唤12');
INSERT INTO uu_games_host VALUES(null,'星球大战：前线 2');
INSERT INTO uu_games_host VALUES(null,'上古卷轴OL');
INSERT INTO uu_games_host VALUES(null,'植物大战僵尸：花园战争2');
INSERT INTO uu_games_host VALUES(null,'UFC 3');
INSERT INTO uu_games_host VALUES(null,'高达：战斗行动2');
INSERT INTO uu_games_host VALUES(null,'火影忍者疾风传：终极风暴4');
INSERT INTO uu_games_host VALUES(null,'消逝的光芒');
INSERT INTO uu_games_host VALUES(null,'实况足球2');
INSERT INTO uu_games_host VALUES(null,'NBA 2K19');

INSERT INTO uu_header_img VALUES(null,'img/header/top_wx_08858d6.png','img/header/top_wx_hov_a9d7541.png');
INSERT INTO uu_header_img VALUES(null,'img/header/top_wb_5a0c860.png','img/header/top_wb_hov_9b01422.png');
INSERT INTO uu_header_img VALUES(null,'img/header/top_zone_50cd2bc.png','img/header/top_zone_hov_c134ae6.png');

INSERT INTO uu_footer_img VALUES(null,'img/footer/bottom_wx_365c5cb.png','img/footer/bottom_wx_hov_80122a3.png');
INSERT INTO uu_footer_img VALUES(null,'img/footer/bottom_wb_2a7e381.png','img/footer/bottom_wb_hov_1bca3d4.png');
INSERT INTO uu_footer_img VALUES(null,'img/footer/bottom_zone_ad625ed.png','img/footer/bottom_zone_hov_bd38269.png');

INSERT INTO uu_channel_hysj VALUES(null,'年卡',283,79);
INSERT INTO uu_channel_hysj VALUES(null,'半年卡',153,85);
INSERT INTO uu_channel_hysj VALUES(null,'季卡',88,98);
INSERT INTO uu_channel_hysj VALUES(null,'月卡',30,100);

INSERT INTO uu_box_package VALUES(null,'img/box/pic_price1.png');
INSERT INTO uu_box_package VALUES(null,'img/box/pic_price2.png');
INSERT INTO uu_box_package VALUES(null,'img/box/pic_price3.png');
INSERT INTO uu_box_package VALUES(null,'img/box/pic_price4.png');

INSERT INTO uu_contact_cooperation VALUES(null,'不再与饰品交易平台、约玩平台等','进行任何广告合作');
INSERT INTO uu_contact_cooperation VALUES(null,'网易UU加速器个人版目前不做','任何VIP团购、代理、分销售卖业务');

INSERT INTO uu_contact_contact VALUES(null,'营销合作咨询（游戏赛事/活动等）','傅先生','QQ：271402359');
INSERT INTO uu_contact_contact VALUES(null,'网吧版业务咨询','客服','QQ：2971794426');
INSERT INTO uu_contact_contact VALUES(null,'游戏厂商、游戏发码/礼包合作','罗小姐','lzdn3413@corp.netease.com');
INSERT INTO uu_contact_contact VALUES(null,'异业合作、品牌联动、UU广告位','市场部','QQ：271402359');