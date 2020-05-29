/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : syunnamori

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 29/05/2020 11:17:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for creature
-- ----------------------------
DROP TABLE IF EXISTS `creature`;
CREATE TABLE `creature`  (
  `C_CODE` int(6) NOT NULL,
  `T_CODE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `C_NAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `C_PRICE` int(10) NULL DEFAULT NULL,
  `S_CONDITIONS` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `IMG` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `C_PLACE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `F_SH` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SH_NAME` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DEL_FLG` int(1) NOT NULL,
  `VER` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LUD_DATE` datetime(0) NOT NULL,
  `LUD_PERSON` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FUD_DATE` datetime(0) NOT NULL,
  `FUD_PERSON` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `S_ZONE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `N_ZONE` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`C_CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of creature
-- ----------------------------
INSERT INTO `creature` VALUES (1, '1', 'タナゴ', 900, '-', 'https://img.altema.jp/atsumori/sakana/icon/1.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:5月～9月 24時間 ', '北:11月～3月  24時間 ');
INSERT INTO `creature` VALUES (2, '1', 'オイカワ', 200, '-', 'https://img.altema.jp/atsumori/sakana/icon/2.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 9時～16時 ', '北:1年中  9時～16時 ');
INSERT INTO `creature` VALUES (3, '1', 'フナ', 160, '-', 'https://img.altema.jp/atsumori/sakana/icon/3.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (4, '1', 'ウグイ', 240, '-', 'https://img.altema.jp/atsumori/sakana/icon/4.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 0時～9時 16～24時', '北:1年中  0時～9時 16～24時');
INSERT INTO `creature` VALUES (5, '1', 'コイ', 300, '-', 'https://img.altema.jp/atsumori/sakana/icon/5.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (6, '1', 'ニシキゴイ', 4000, '-', 'https://img.altema.jp/atsumori/sakana/icon/6.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 16時～9時 ', '北:1年中  16時～9時 ');
INSERT INTO `creature` VALUES (7, '1', 'キンギョ', 1300, '-', 'https://img.altema.jp/atsumori/sakana/icon/7.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (8, '1', 'デメキン', 1300, '-', 'https://img.altema.jp/atsumori/sakana/icon/8.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 9時～16時 ', '北:1年中  9時～16時 ');
INSERT INTO `creature` VALUES (9, '1', 'ランチュウ', 4500, '-', 'https://img.altema.jp/atsumori/sakana/icon/9.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 9時～16時 ', '北:1年中  9時～16時 ');
INSERT INTO `creature` VALUES (10, '1', 'メダカ', 300, '-', 'https://img.altema.jp/atsumori/sakana/icon/10.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～2月 24時間 ', '北:4月～8月  24時間 ');
INSERT INTO `creature` VALUES (11, '1', 'ザリガニ', 200, '-', 'https://img.altema.jp/atsumori/sakana/icon/11.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～3月 24時間 ', '北:4月～9月  24時間 ');
INSERT INTO `creature` VALUES (12, '1', 'スッポン', 3750, '-', 'https://img.altema.jp/atsumori/sakana/icon/12.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:2月～3月 16時～9時 ', '北:8月～9月  16時～9時 ');
INSERT INTO `creature` VALUES (13, '1', 'カミツキガメ', 5000, '-', 'https://img.altema.jp/atsumori/sakana/icon/13.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～4月 21時～4時 ', '北:4月～10月  21時～4時 ');
INSERT INTO `creature` VALUES (14, '1', 'オタマジャクシ', 100, '-', 'https://img.altema.jp/atsumori/sakana/icon/14.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:9月～1月 24時間 ', '北:3月～7月  24時間 ');
INSERT INTO `creature` VALUES (15, '1', 'カエル', 120, '-', 'https://img.altema.jp/atsumori/sakana/icon/15.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～2月 24時間 ', '北:5月～8月  24時間 ');
INSERT INTO `creature` VALUES (16, '1', 'ドンコ', 400, '-', 'https://img.altema.jp/atsumori/sakana/icon/16.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 16時～9時 ', '北:1年中  16時～9時 ');
INSERT INTO `creature` VALUES (17, '1', 'ドジョウ', 400, '-', 'https://img.altema.jp/atsumori/sakana/icon/17.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:9月～11月 24時間 ', '北:3月～5月  24時間 ');
INSERT INTO `creature` VALUES (18, '1', 'ナマズ', 800, '-', 'https://img.altema.jp/atsumori/sakana/icon/18.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～4月 16時～9時 ', '北:5月～10月  16時～9時 ');
INSERT INTO `creature` VALUES (19, '1', 'ライギョ', 5500, '-', 'https://img.altema.jp/atsumori/sakana/icon/19.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～2月 9時～16時 ', '北:6月～8月  9時～16時 ');
INSERT INTO `creature` VALUES (20, '1', 'ブルーギル', 180, '-', 'https://img.altema.jp/atsumori/sakana/icon/20.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 9時～16時 ', '北:1年中  9時～16時 ');
INSERT INTO `creature` VALUES (21, '1', 'イエローパーチ', 300, '-', 'https://img.altema.jp/atsumori/sakana/icon/21.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:4月～9月 24時間 ', '北:10月～3月  24時間 ');
INSERT INTO `creature` VALUES (22, '1', 'ブラックバス', 400, '-', 'https://img.altema.jp/atsumori/sakana/icon/22.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (23, '1', 'ティラピア', 800, '-', 'https://img.altema.jp/atsumori/sakana/icon/23.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～4月 24時間 ', '北:6月～10月  24時間 ');
INSERT INTO `creature` VALUES (24, '1', 'パイク', 1800, '-', 'https://img.altema.jp/atsumori/sakana/icon/24.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～6月 24時間 ', '北:9月～12月  24時間 ');
INSERT INTO `creature` VALUES (25, '1', 'ワカサギ', 400, '-', 'https://img.altema.jp/atsumori/sakana/icon/25.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:6月～8月 24時間 ', '北:12月～2月  24時間 ');
INSERT INTO `creature` VALUES (26, '1', 'アユ', 900, '-', 'https://img.altema.jp/atsumori/sakana/icon/26.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～3月 24時間 ', '北:7月～9月  24時間 ');
INSERT INTO `creature` VALUES (27, '1', 'ヤマメ', 1000, '-', 'https://img.altema.jp/atsumori/sakana/icon/27.jpg', '崖の上', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～5月 9～12月 16時～9時', '北:3月～6月 9月～11月 9～12月 16時～9時');
INSERT INTO `creature` VALUES (28, '1', 'オオイワナ', 3800, '-', 'https://img.altema.jp/atsumori/sakana/icon/28.jpg', '崖の上', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～5月 9～12月 16時～9時', '北:3月～6月 9月～11月 9～12月 16時～9時');
INSERT INTO `creature` VALUES (29, '1', 'ゴールデントラウト', 15000, '-', 'https://img.altema.jp/atsumori/sakana/icon/29.jpg', '崖の上', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～5月 9月～11月 16時～9時', '北:3月～5月 9月～11月 9月～11月 16時～9時');
INSERT INTO `creature` VALUES (30, '1', 'イトウ', 15000, '-', 'https://img.altema.jp/atsumori/sakana/icon/30.jpg', '崖の上', 'https://img.altema.jp/atsumori/gyoei/icon/7.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:6月～9月 16時～9時 ', '北:12月～3月  16時～9時 ');
INSERT INTO `creature` VALUES (31, '1', 'サケ', 700, '-', 'https://img.altema.jp/atsumori/sakana/icon/31.jpg', '河口', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月 24時間 ', '北:9月  24時間 ');
INSERT INTO `creature` VALUES (32, '1', 'キングサーモン', 1800, '-', 'https://img.altema.jp/atsumori/sakana/icon/32.jpg', '河口', 'https://img.altema.jp/atsumori/gyoei/icon/7.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月 24時間 ', '北:9月  24時間 ');
INSERT INTO `creature` VALUES (33, '1', 'シャンハイガニ', 2000, '-', 'https://img.altema.jp/atsumori/sakana/icon/33.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～5月 16時～9時 ', '北:9月～11月  16時～9時 ');
INSERT INTO `creature` VALUES (34, '1', 'グッピー', 1300, '-', 'https://img.altema.jp/atsumori/sakana/icon/34.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～5月 9時～16時 ', '北:4月～11月  9時～16時 ');
INSERT INTO `creature` VALUES (35, '1', 'ドクターフィッシュ', 1500, '-', 'https://img.altema.jp/atsumori/sakana/icon/35.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～3月 9時～16時 ', '北:5月～9月  9時～16時 ');
INSERT INTO `creature` VALUES (36, '1', 'エンゼルフィッシュ', 3000, '-', 'https://img.altema.jp/atsumori/sakana/icon/36.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～4月 16時～9時 ', '北:5月～10月  16時～9時 ');
INSERT INTO `creature` VALUES (37, '1', 'ベタ', 2500, '-', 'https://img.altema.jp/atsumori/sakana/icon/37.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～4月 9時～16時 ', '北:5月～10月  9時～16時 ');
INSERT INTO `creature` VALUES (38, '1', 'ネオンテトラ', 500, '-', 'https://img.altema.jp/atsumori/sakana/icon/38.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～5月 9時～16時 ', '北:4月～11月  9時～16時 ');
INSERT INTO `creature` VALUES (39, '1', 'レインボーフィッシュ', 800, '-', 'https://img.altema.jp/atsumori/sakana/icon/39.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～4月 9時～16時 ', '北:5月～10月  9時～16時 ');
INSERT INTO `creature` VALUES (40, '1', 'ピラニア', 2500, '-', 'https://img.altema.jp/atsumori/sakana/icon/40.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 9時～16時 21時～4時', '北:6月～9月  9時～16時 21時～4時');
INSERT INTO `creature` VALUES (41, '1', 'アロワナ', 10000, '-', 'https://img.altema.jp/atsumori/sakana/icon/41.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 16時～9時 ', '北:6月～9月  16時～9時 ');
INSERT INTO `creature` VALUES (42, '1', 'ドラド', 15000, '-', 'https://img.altema.jp/atsumori/sakana/icon/42.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 4時～21時 ', '北:6月～9月  4時～21時 ');
INSERT INTO `creature` VALUES (43, '1', 'ガー', 6000, '-', 'https://img.altema.jp/atsumori/sakana/icon/43.jpg', '池', 'https://img.altema.jp/atsumori/gyoei/icon/7.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 16時～9時 ', '北:6月～9月  16時～9時 ');
INSERT INTO `creature` VALUES (44, '1', 'ピラルク', 10000, '-', 'https://img.altema.jp/atsumori/sakana/icon/44.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/7.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 16時～9時 ', '北:6月～9月  16時～9時 ');
INSERT INTO `creature` VALUES (45, '1', 'エンドリケリー', 4000, '-', 'https://img.altema.jp/atsumori/sakana/icon/45.jpg', '川', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 21時～4時 ', '北:6月～9月  21時～4時 ');
INSERT INTO `creature` VALUES (46, '1', 'チョウザメ', 10000, '-', 'https://img.altema.jp/atsumori/sakana/icon/46.jpg', '河口', 'https://img.altema.jp/atsumori/gyoei/icon/7.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～9月 24時間 ', '北:9月～3月  24時間 ');
INSERT INTO `creature` VALUES (47, '1', 'クリオネ', 1000, '-', 'https://img.altema.jp/atsumori/sakana/icon/47.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:6月～9月 24時間 ', '北:12月～3月  24時間 ');
INSERT INTO `creature` VALUES (48, '1', 'タツノオトシゴ', 1100, '-', 'https://img.altema.jp/atsumori/sakana/icon/48.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～5月 24時間 ', '北:4月～11月  24時間 ');
INSERT INTO `creature` VALUES (49, '1', 'クマノミ', 650, '-', 'https://img.altema.jp/atsumori/sakana/icon/49.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/2.jpg', '極小(SS)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～3月 24時間 ', '北:4月～9月  24時間 ');
INSERT INTO `creature` VALUES (50, '1', 'ナンヨウハギ', 1000, '-', 'https://img.altema.jp/atsumori/sakana/icon/50.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～3月 24時間 ', '北:4月～9月  24時間 ');
INSERT INTO `creature` VALUES (51, '1', 'チョウチョウウオ', 1000, '-', 'https://img.altema.jp/atsumori/sakana/icon/51.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～3月 24時間 ', '北:4月～9月  24時間 ');
INSERT INTO `creature` VALUES (52, '1', 'ナポレオンフィッシュ', 10000, '-', 'https://img.altema.jp/atsumori/sakana/icon/52.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/7.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 4時～21時 ', '北:7月～8月  4時～21時 ');
INSERT INTO `creature` VALUES (53, '1', 'ミノカサゴ', 500, '-', 'https://img.altema.jp/atsumori/sakana/icon/53.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～5月 24時間 ', '北:4月～11月  24時間 ');
INSERT INTO `creature` VALUES (54, '1', 'フグ', 5000, '-', 'https://img.altema.jp/atsumori/sakana/icon/54.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:5月～8月 21時～4時 ', '北:11月～2月  21時～4時 ');
INSERT INTO `creature` VALUES (55, '1', 'ハリセンボン', 250, '-', 'https://img.altema.jp/atsumori/sakana/icon/55.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～3月 24時間 ', '北:7月～9月  24時間 ');
INSERT INTO `creature` VALUES (56, '1', 'アンチョビ', 200, '-', 'https://img.altema.jp/atsumori/sakana/icon/56.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 4時～21時 ', '北:1年中  4時～21時 ');
INSERT INTO `creature` VALUES (57, '1', 'アジ', 150, '-', 'https://img.altema.jp/atsumori/sakana/icon/57.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (58, '1', 'イシダイ', 5000, '-', 'https://img.altema.jp/atsumori/sakana/icon/58.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:9月～5月 24時間 ', '北:3月～11月  24時間 ');
INSERT INTO `creature` VALUES (59, '1', 'スズキ', 400, '-', 'https://img.altema.jp/atsumori/sakana/icon/59.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (60, '1', 'タイ', 3000, '-', 'https://img.altema.jp/atsumori/sakana/icon/60.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (61, '1', 'カレイ', 300, '-', 'https://img.altema.jp/atsumori/sakana/icon/61.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:4月～10月 24時間 ', '北:10月～4月  24時間 ');
INSERT INTO `creature` VALUES (62, '1', 'ヒラメ', 800, '-', 'https://img.altema.jp/atsumori/sakana/icon/62.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (63, '1', 'イカ', 500, '-', 'https://img.altema.jp/atsumori/sakana/icon/63.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/4.jpg', '中(M)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:6月～2月 24時間 ', '北:12月～8月  24時間 ');
INSERT INTO `creature` VALUES (64, '1', 'ウツボ', 2000, '-', 'https://img.altema.jp/atsumori/sakana/icon/64.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/5.jpg', '細長', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:2月～4月 24時間 ', '北:8月～10月  24時間 ');
INSERT INTO `creature` VALUES (65, '1', 'ハナヒゲウツボ', 600, '-', 'https://img.altema.jp/atsumori/sakana/icon/65.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/5.jpg', '細長', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～4月 24時間 ', '北:6月～10月  24時間 ');
INSERT INTO `creature` VALUES (66, '1', 'マグロ', 7000, '-', 'https://img.altema.jp/atsumori/sakana/icon/66.jpg', '桟橋', 'https://img.altema.jp/atsumori/gyoei/icon/7.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:5月～10月 24時間 ', '北:11月～4月  24時間 ');
INSERT INTO `creature` VALUES (67, '1', 'カジキ', 10000, '-', 'https://img.altema.jp/atsumori/sakana/icon/67.jpg', '桟橋', 'https://img.altema.jp/atsumori/gyoei/icon/7.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～3月 5月～10月 24時間', '北:11月～4月 7～9月 5月～10月 24時間');
INSERT INTO `creature` VALUES (68, '1', 'ロウニンアジ', 4500, '-', 'https://img.altema.jp/atsumori/sakana/icon/68.jpg', '桟橋', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～4月 24時間 ', '北:5月～10月  24時間 ');
INSERT INTO `creature` VALUES (69, '1', 'シイラ', 6000, '-', 'https://img.altema.jp/atsumori/sakana/icon/69.jpg', '桟橋', 'https://img.altema.jp/atsumori/gyoei/icon/7.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～4月 24時間 ', '北:5月～10月  24時間 ');
INSERT INTO `creature` VALUES (70, '1', 'マンボウ', 4000, '-', 'https://img.altema.jp/atsumori/sakana/icon/70.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/1.jpg', '背びれ', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～3月 4時～21時 ', '北:7月～9月  4時～21時 ');
INSERT INTO `creature` VALUES (71, '1', 'エイ', 3000, '-', 'https://img.altema.jp/atsumori/sakana/icon/71.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:2月～5月 4時～21時 ', '北:8月～11月  4時～21時 ');
INSERT INTO `creature` VALUES (72, '1', 'ノコギリザメ', 12000, '-', 'https://img.altema.jp/atsumori/sakana/icon/72.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/1.jpg', '背びれ', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 16時～9時 ', '北:6月～9月  16時～9時 ');
INSERT INTO `creature` VALUES (73, '1', 'シュモクザメ', 8000, '-', 'https://img.altema.jp/atsumori/sakana/icon/73.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/1.jpg', '背びれ', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 16時～9時 ', '北:6月～9月  16時～9時 ');
INSERT INTO `creature` VALUES (74, '1', 'サメ', 15000, '-', 'https://img.altema.jp/atsumori/sakana/icon/74.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/1.jpg', '背びれ', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 16時～9時 ', '北:6月～9月  16時～9時 ');
INSERT INTO `creature` VALUES (75, '1', 'ジンベエザメ', 13000, '-', 'https://img.altema.jp/atsumori/sakana/icon/75.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/1.jpg', '背びれ', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 24時間 ', '北:6月～9月  24時間 ');
INSERT INTO `creature` VALUES (76, '1', 'コバンザメ', 1500, '-', 'https://img.altema.jp/atsumori/sakana/icon/76.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/1.jpg', '背びれ', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 24時間 ', '北:6月～9月  24時間 ');
INSERT INTO `creature` VALUES (77, '1', 'チョウチンアンコウ', 2500, '-', 'https://img.altema.jp/atsumori/sakana/icon/77.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/6.jpg', '大(L)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:5月～9月 16時～9時 ', '北:11月～3月  16時～9時 ');
INSERT INTO `creature` VALUES (78, '1', 'リュウグウノツカイ', 9000, '-', 'https://img.altema.jp/atsumori/sakana/icon/78.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/7.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:6月～11月 24時間 ', '北:12月～5月  24時間 ');
INSERT INTO `creature` VALUES (79, '1', 'デメニギス', 15000, '-', 'https://img.altema.jp/atsumori/sakana/icon/79.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/3.jpg', '小(S)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 21時～4時 ', '北:1年中  21時～4時 ');
INSERT INTO `creature` VALUES (80, '1', 'シーラカンス', 15000, '雨', 'https://img.altema.jp/atsumori/sakana/icon/80.jpg', '海', 'https://img.altema.jp/atsumori/gyoei/icon/7.jpg', '特大(LL)', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (81, '2', 'モンシロチョウ', 160, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/1.jpg', '空中', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～12月 4時～19時 ', '北:9月～6月  4時～19時 ');
INSERT INTO `creature` VALUES (82, '2', 'モンキチョウ', 160, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/2.jpg', '空中', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～4月 9月～12月 4時～19時', '北:3月～6月 9月～10月 9月～12月 4時～19時');
INSERT INTO `creature` VALUES (83, '2', 'アゲハチョウ', 240, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/3.jpg', '空中', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:9月～3月 4時～19時 ', '北:3月～9月  4時～19時 ');
INSERT INTO `creature` VALUES (84, '2', 'カラスアゲハ', 2500, '黒・青・紫の花の周辺,雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/4.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:9月～12月 4時～19時 ', '北:3月～6月  4時～19時 ');
INSERT INTO `creature` VALUES (85, '2', 'アオスジアゲハ', 300, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/5.jpg', '空中', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～2月 4時～19時 ', '北:4月～8月  4時～19時 ');
INSERT INTO `creature` VALUES (86, '2', 'オオゴマダラ', 1000, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/6.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 8時～19時 ', '北:1年中  8時～19時 ');
INSERT INTO `creature` VALUES (87, '2', 'オオムラサキ', 3000, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/7.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～2月 4時～19時 ', '北:5月～8月  4時～19時 ');
INSERT INTO `creature` VALUES (88, '2', 'オオカバマダラ', 140, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/8.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～5月 4時～17時 ', '北:9月～11月  4時～17時 ');
INSERT INTO `creature` VALUES (89, '2', 'モルフォチョウ', 4000, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/9.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 6月～9月 17時～8時', '北:12月～3月 6月～9月 6月～9月 17時～8時');
INSERT INTO `creature` VALUES (90, '2', 'ミイロタテハ', 3000, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/10.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～3月 8時～17時 ', '北:4月～9月  8時～17時 ');
INSERT INTO `creature` VALUES (91, '2', 'アカエリトリバネアゲハ', 2500, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/11.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～3月 6月～8月 8時～17時', '北:12月～2月 4月～9月 6月～8月 8時～17時');
INSERT INTO `creature` VALUES (92, '2', 'アレキサンドラトリバネアゲハ', 4000, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/12.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～3月 8時～16時 ', '北:5月～9月  8時～16時 ');
INSERT INTO `creature` VALUES (93, '2', 'ガ', 130, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/13.jpg', '外灯', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 19時～4時 ', '北:1年中  19時～4時 ');
INSERT INTO `creature` VALUES (94, '2', 'ヨナグニサン', 3000, '-', 'https://img.altema.jp/atsumori/mushi/icon/14.jpg', '広葉樹 針葉樹 ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～3月 19時～4時 ', '北:4月～9月  19時～4時 ');
INSERT INTO `creature` VALUES (95, '2', 'ニシキオオツバネガ', 2500, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/15.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～3月 8時～16時 ', '北:4月～9月  8時～16時 ');
INSERT INTO `creature` VALUES (96, '2', 'ショウリョウバッタ', 200, '草の地面', 'https://img.altema.jp/atsumori/mushi/icon/16.jpg', '地面', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～5月 8時～19時 ', '北:4月～11月  8時～19時 ');
INSERT INTO `creature` VALUES (97, '2', 'トノマサバッタ', 600, '草の地面', 'https://img.altema.jp/atsumori/mushi/icon/17.jpg', '地面', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:2月～5月 8時～19時 ', '北:8月～11月  8時～19時 ');
INSERT INTO `creature` VALUES (98, '2', 'イナゴ', 400, '草の地面', 'https://img.altema.jp/atsumori/mushi/icon/18.jpg', '地面', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:2月～5月 8時～19時 ', '北:8月～11月  8時～19時 ');
INSERT INTO `creature` VALUES (99, '2', 'キリギリス', 160, '草の地面,雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/19.jpg', '地面', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～3月 8時～17時 ', '北:7月～9月  8時～17時 ');
INSERT INTO `creature` VALUES (100, '2', 'コオロギ', 130, '草の地面', 'https://img.altema.jp/atsumori/mushi/icon/20.jpg', '地面', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～5月 17時～8時 ', '北:9月～11月  17時～8時 ');
INSERT INTO `creature` VALUES (101, '2', 'ムズムシ', 430, '草の地面', 'https://img.altema.jp/atsumori/mushi/icon/21.jpg', '地面', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～4月 17時～8時 ', '北:9月～10月  17時～8時 ');
INSERT INTO `creature` VALUES (102, '2', 'カマキリ', 430, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/22.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:9月～5月 8時～17時 ', '北:3月～11月  8時～17時 ');
INSERT INTO `creature` VALUES (103, '2', 'ハナマカキリ', 2400, '雨の日以外,白い花の上のみ', 'https://img.altema.jp/atsumori/mushi/icon/23.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:9月～5月 8時～17時 ', '北:3月～11月  8時～17時 ');
INSERT INTO `creature` VALUES (104, '2', 'ミツバチ', 200, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/24.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:9月～1月 8時～17時 ', '北:3月～7月  8時～17時 ');
INSERT INTO `creature` VALUES (105, '2', 'ハチ', 2500, '木を揺らす', 'https://img.altema.jp/atsumori/mushi/icon/25.jpg', '広葉樹 針葉樹', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (106, '2', 'アブラゼミ', 250, '-', 'https://img.altema.jp/atsumori/mushi/icon/26.jpg', '広葉樹 針葉樹', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 8時～17時 ', '北:7月～8月  8時～17時 ');
INSERT INTO `creature` VALUES (107, '2', 'ミンミンゼミ', 300, '-', 'https://img.altema.jp/atsumori/mushi/icon/27.jpg', '広葉樹 針葉樹', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 8時～17時 ', '北:7月～8月  8時～17時 ');
INSERT INTO `creature` VALUES (108, '2', 'クマゼミ', 500, '-', 'https://img.altema.jp/atsumori/mushi/icon/28.jpg', '広葉樹 針葉樹', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 8時～17時 ', '北:7月～8月  8時～17時 ');
INSERT INTO `creature` VALUES (109, '2', 'ツクツクホウシ', 400, '-', 'https://img.altema.jp/atsumori/mushi/icon/29.jpg', '広葉樹 針葉樹', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:2月～3月 8時～17時 ', '北:8月～9月  8時～17時 ');
INSERT INTO `creature` VALUES (110, '2', 'ヒグラシ', 550, '-', 'https://img.altema.jp/atsumori/mushi/icon/30.jpg', '広葉樹 針葉樹', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 4時～8時 16時～19時', '北:7月～8月  4時～8時 16時～19時');
INSERT INTO `creature` VALUES (111, '2', 'セミのぬけがら', 10, '-', 'https://img.altema.jp/atsumori/mushi/icon/31.jpg', '広葉樹 針葉樹', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 24時間 ', '北:7月～8月  24時間 ');
INSERT INTO `creature` VALUES (112, '2', 'アキアカネ', 180, '水辺,雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/32.jpg', '空中', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～4月 8時～19時 ', '北:9月～10月  8時～19時 ');
INSERT INTO `creature` VALUES (113, '2', 'ギンヤンマ', 230, '水辺,雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/33.jpg', '空中', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～4月 8時～17時 ', '北:4月～10月  8時～17時 ');
INSERT INTO `creature` VALUES (114, '2', 'オニヤンマ', 4500, '水辺,雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/34.jpg', '空中', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～4月 8時～17時 ', '北:5月～10月  8時～17時 ');
INSERT INTO `creature` VALUES (115, '2', 'イトトンボ', 500, '水辺,雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/35.jpg', '空中', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:5月～8月 24時間 ', '北:11月～2月  24時間 ');
INSERT INTO `creature` VALUES (116, '2', 'ホタル', 300, '雨の日以外,水面に出現', 'https://img.altema.jp/atsumori/mushi/icon/36.jpg', '池 川', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月 19時～4時 ', '北:6月  19時～4時 ');
INSERT INTO `creature` VALUES (117, '2', 'オケラ', 500, '草、土、砂の地面(地中)', 'https://img.altema.jp/atsumori/mushi/icon/37.jpg', '地面', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:5月～11月 24時間 ', '北:11月～5月  24時間 ');
INSERT INTO `creature` VALUES (118, '2', 'アメンボ', 130, '水面に出現', 'https://img.altema.jp/atsumori/mushi/icon/38.jpg', '池 川', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～3月 8時～19時 ', '北:5月～9月  8時～19時 ');
INSERT INTO `creature` VALUES (119, '2', 'ゲンゴロウ', 800, '水面に出現', 'https://img.altema.jp/atsumori/mushi/icon/39.jpg', '池 川', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～3月 8時～19時 ', '北:5月～9月  8時～19時 ');
INSERT INTO `creature` VALUES (120, '2', 'タガメ', 2000, '水面に出現', 'https://img.altema.jp/atsumori/mushi/icon/40.jpg', '池 川', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～3月 19時～8時 ', '北:4月～9月  19時～8時 ');
INSERT INTO `creature` VALUES (121, '2', 'カメムシ', 120, '雨の日以外,水面に出現', 'https://img.altema.jp/atsumori/mushi/icon/41.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:9月～4月 24時間 ', '北:3月～10月  24時間 ');
INSERT INTO `creature` VALUES (122, '2', 'ジンメンカメムシ', 1000, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/42.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:9月～4月 19時～8時 ', '北:3月～10月  19時～8時 ');
INSERT INTO `creature` VALUES (123, '2', 'テントウムシ', 200, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/43.jpg', '花', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:4月 9月～12月 8時～17時', '北:3月～6月 10月 9月～12月 8時～17時');
INSERT INTO `creature` VALUES (124, '2', 'ハンミョウ', 1500, '雨の日以外,草の地面', 'https://img.altema.jp/atsumori/mushi/icon/44.jpg', '地面', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:8月～4月 24時間 ', '北:2月～10月  24時間 ');
INSERT INTO `creature` VALUES (125, '2', 'タマムシ', 2400, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/45.jpg', '切株', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～2月 24時間 ', '北:4月～8月  24時間 ');
INSERT INTO `creature` VALUES (126, '2', 'ハイオリンムシ', 450, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/46.jpg', '切株', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～5月 11月～12月 24時間', '北:5月～6月 9月～11月 11月～12月 24時間');
INSERT INTO `creature` VALUES (127, '2', 'ゴマダラカミキリ', 350, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/47.jpg', '切株', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (128, '2', 'ルリボシカミキリ', 3000, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/48.jpg', '切株', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～3月 24時間 ', '北:5月～9月  24時間 ');
INSERT INTO `creature` VALUES (129, '2', 'ホウセキゾウムシ', 800, '-', 'https://img.altema.jp/atsumori/mushi/icon/49.jpg', 'ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 24時間 ', '北:7月～8月  24時間 ');
INSERT INTO `creature` VALUES (130, '2', 'フンコロガシ', 3000, '雪玉の下', 'https://img.altema.jp/atsumori/mushi/icon/50.jpg', 'その他', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:6月～8月 24時間 ', '北:12月～2月  24時間 ');
INSERT INTO `creature` VALUES (131, '2', 'オオセンチコガネ', 300, '-', 'https://img.altema.jp/atsumori/mushi/icon/51.jpg', '広葉樹 針葉樹 ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～3月 24時間 ', '北:7月～9月  24時間 ');
INSERT INTO `creature` VALUES (132, '2', 'プラチナコガネ', 10000, '-', 'https://img.altema.jp/atsumori/mushi/icon/52.jpg', '広葉樹 針葉樹 ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 23時～8時 ', '北:7月～8月  23時～8時 ');
INSERT INTO `creature` VALUES (133, '2', 'カネブン', 200, '-', 'https://img.altema.jp/atsumori/mushi/icon/53.jpg', '広葉樹 針葉樹 ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～2月 24時間 ', '北:6月～8月  24時間 ');
INSERT INTO `creature` VALUES (134, '2', 'ゴライアスオオツノハナムグリ', 8000, '-', 'https://img.altema.jp/atsumori/mushi/icon/54.jpg', 'ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 15時～8時 ', '北:6月～9月  15時～8時 ');
INSERT INTO `creature` VALUES (135, '2', 'ノコギリクワガタ', 2000, '-', 'https://img.altema.jp/atsumori/mushi/icon/55.jpg', '広葉樹 針葉樹 ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 24時間 ', '北:7月～8月  24時間 ');
INSERT INTO `creature` VALUES (136, '2', 'ミヤマクワガタ', 1000, '-', 'https://img.altema.jp/atsumori/mushi/icon/56.jpg', '広葉樹 針葉樹 ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 24時間 ', '北:7月～8月  24時間 ');
INSERT INTO `creature` VALUES (137, '2', 'オオカワガタ', 10000, '-', 'https://img.altema.jp/atsumori/mushi/icon/57.jpg', '広葉樹 針葉樹 ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 23時～8時 ', '北:7月～8月  23時～8時 ');
INSERT INTO `creature` VALUES (138, '2', 'ニジイロクワガタ', 6000, '-', 'https://img.altema.jp/atsumori/mushi/icon/58.jpg', '広葉樹 針葉樹 ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 19時～8時 ', '北:6月～9月  19時～8時 ');
INSERT INTO `creature` VALUES (139, '2', 'ホソアカクワガタ', 8000, '-', 'https://img.altema.jp/atsumori/mushi/icon/59.jpg', 'ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 15時～8時 ', '北:7月～8月  15時～8時 ');
INSERT INTO `creature` VALUES (140, '2', 'オウゴンオニクワガタ', 12000, '-', 'https://img.altema.jp/atsumori/mushi/icon/60.jpg', 'ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 7時～8時 ', '北:7月～8月  7時～8時 ');
INSERT INTO `creature` VALUES (141, '2', 'ギラファノコギリクワガタ', 12000, '-', 'https://img.altema.jp/atsumori/mushi/icon/61.jpg', 'ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 17時～8時 ', '北:7月～8月  17時～8時 ');
INSERT INTO `creature` VALUES (142, '2', 'カブトムシ', 1350, '-', 'https://img.altema.jp/atsumori/mushi/icon/62.jpg', '広葉樹 針葉樹 ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 17時～8時 ', '北:7月～8月  17時～8時 ');
INSERT INTO `creature` VALUES (143, '2', 'コーカサスオオカブト', 8000, '-', 'https://img.altema.jp/atsumori/mushi/icon/63.jpg', 'ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 17時～8時 ', '北:7月～8月  17時～8時 ');
INSERT INTO `creature` VALUES (144, '2', 'ゾウカブト', 8000, '-', 'https://img.altema.jp/atsumori/mushi/icon/64.jpg', 'ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 17時～8時 ', '北:7月～8月  17時～8時 ');
INSERT INTO `creature` VALUES (145, '2', 'ヘラクレスオオカブト', 12000, '-', 'https://img.altema.jp/atsumori/mushi/icon/65.jpg', 'ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～2月 17時～8時 ', '北:7月～8月  17時～8時 ');
INSERT INTO `creature` VALUES (146, '2', 'ナナフシ', 600, '-', 'https://img.altema.jp/atsumori/mushi/icon/66.jpg', '広葉樹 針葉樹 ヤシの木', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～5月 4時～8時 17時～19時', '北:7月～11月  4時～8時 17時～19時');
INSERT INTO `creature` VALUES (147, '2', 'コノハムシ', 600, '家具のマーク', 'https://img.altema.jp/atsumori/mushi/icon/67.jpg', '地面', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1月～3月 24時間 ', '北:7月～9月  24時間 ');
INSERT INTO `creature` VALUES (148, '2', 'ミノムシ', 600, '木を揺らす', 'https://img.altema.jp/atsumori/mushi/icon/68.jpg', '広葉樹 針葉樹', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (149, '2', 'アリ', 80, '腐ったカブ', 'https://img.altema.jp/atsumori/mushi/icon/69.jpg', 'その他', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (150, '2', 'ヤドカリ', 1000, '-', 'https://img.altema.jp/atsumori/mushi/icon/70.jpg', '砂浜', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 19時～8時 ', '北:1年中  19時～8時 ');
INSERT INTO `creature` VALUES (151, '2', 'フノムシ', 200, '-', 'https://img.altema.jp/atsumori/mushi/icon/71.jpg', '海岸岩場', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (152, '2', 'ハエ', 60, 'タイヤ・空き缶・長靴・腐ったカブに湧く', 'https://img.altema.jp/atsumori/mushi/icon/72.jpg', 'その他', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 24時間 ', '北:1年中  24時間 ');
INSERT INTO `creature` VALUES (153, '2', 'カ', 130, '雨の日以外', 'https://img.altema.jp/atsumori/mushi/icon/73.jpg', '空中', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:12月～3月 17時～4時 ', '北:6月～9月  17時～4時 ');
INSERT INTO `creature` VALUES (154, '2', 'ノミ', 70, '住民にランダム確率でついているためアミで捕まえる', 'https://img.altema.jp/atsumori/mushi/icon/74.jpg', 'その他', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:10月～5月 24時間 ', '北:4月～11月  24時間 ');
INSERT INTO `creature` VALUES (155, '2', 'カタツムリ', 250, '雨の日に出現、切株にも出現', 'https://img.altema.jp/atsumori/mushi/icon/75.jpg', '岩', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中(雨の日) 24時間 ', '北:1年中(雨の日)  24時間 ');
INSERT INTO `creature` VALUES (156, '2', 'ダンゴムシ', 250, '岩を叩く', 'https://img.altema.jp/atsumori/mushi/icon/76.jpg', '岩', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～12月 23時～16時 ', '北:9月～6月  23時～16時 ');
INSERT INTO `creature` VALUES (157, '2', 'ムカデ', 300, '岩を叩く', 'https://img.altema.jp/atsumori/mushi/icon/77.jpg', '岩', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:3月～12月 16時～23時 ', '北:9月～6月  16時～23時 ');
INSERT INTO `creature` VALUES (158, '2', 'クモ', 600, '木を揺らす', 'https://img.altema.jp/atsumori/mushi/icon/78.jpg', '広葉樹 針葉樹', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:1年中 19時～8時 ', '北:1年中  19時～8時 ');
INSERT INTO `creature` VALUES (159, '2', 'タランチュウラ', 8000, '草、土、砂の地面', 'https://img.altema.jp/atsumori/mushi/icon/79.jpg', '地面', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:5月～10月 19時～4時 ', '北:11月～4月  19時～4時 ');
INSERT INTO `creature` VALUES (160, '2', 'サソリ', 8000, '草、土、砂の地面', 'https://img.altema.jp/atsumori/mushi/icon/80.jpg', '地面', 'NULL', 'NULL', 0, '1', '2020-05-01 00:00:00', 'データベース班', '2020-05-01 00:00:00', 'データベース班', '南:11月～4月 19時～4時 ', '北:5月～10月  19時～4時 ');

-- ----------------------------
-- Table structure for month
-- ----------------------------
DROP TABLE IF EXISTS `month`;
CREATE TABLE `month`  (
  `C_CODE` int(6) NOT NULL,
  `START_MONTH` int(2) NOT NULL,
  `END_MONTH` int(2) NOT NULL,
  `EARTH` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `START_TIME` int(2) NOT NULL,
  `END_TIME` int(2) NOT NULL,
  `VER` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LUD_DATE` datetime(0) NOT NULL,
  `LUD_PERSON` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FUD_DATE` datetime(0) NOT NULL,
  `FUD_PERSON` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DEL_FLG` int(1) NOT NULL,
  PRIMARY KEY (`START_MONTH`, `END_MONTH`, `C_CODE`, `EARTH`, `START_TIME`, `END_TIME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of month
-- ----------------------------
INSERT INTO `month` VALUES (52, 1, 2, '1', 4, 21, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (106, 1, 2, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (107, 1, 2, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (108, 1, 2, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (110, 1, 2, '1', 16, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (111, 1, 2, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (129, 1, 2, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (132, 1, 2, '1', 23, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (135, 1, 2, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (136, 1, 2, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (137, 1, 2, '1', 23, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (139, 1, 2, '1', 15, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (140, 1, 2, '1', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (141, 1, 2, '1', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (142, 1, 2, '1', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (143, 1, 2, '1', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (144, 1, 2, '1', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (145, 1, 2, '1', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (26, 1, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (55, 1, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (67, 1, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (70, 1, 3, '1', 4, 21, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (99, 1, 3, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (131, 1, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (147, 1, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (146, 1, 5, '1', 4, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (146, 1, 5, '1', 17, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (2, 1, 12, '0', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (2, 1, 12, '1', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (3, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (3, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (4, 1, 12, '0', 0, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (4, 1, 12, '0', 16, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (4, 1, 12, '1', 0, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (4, 1, 12, '1', 16, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (5, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (5, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (6, 1, 12, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (6, 1, 12, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (7, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (7, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (8, 1, 12, '0', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (8, 1, 12, '1', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (9, 1, 12, '0', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (9, 1, 12, '1', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (16, 1, 12, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (16, 1, 12, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (20, 1, 12, '0', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (20, 1, 12, '1', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (22, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (22, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (56, 1, 12, '0', 4, 21, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (56, 1, 12, '1', 4, 21, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (57, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (57, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (59, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (59, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (60, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (60, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (62, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (62, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (79, 1, 12, '0', 21, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (79, 1, 12, '1', 21, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (80, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (80, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (86, 1, 12, '0', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (86, 1, 12, '1', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (93, 1, 12, '0', 19, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (93, 1, 12, '1', 19, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (105, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (105, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (127, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (127, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (148, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (148, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (149, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (149, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (150, 1, 12, '0', 19, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (150, 1, 12, '1', 19, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (151, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (151, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (152, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (152, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (155, 1, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (155, 1, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (158, 1, 12, '0', 19, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (158, 1, 12, '1', 19, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (12, 2, 3, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (109, 2, 3, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (64, 2, 4, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (71, 2, 5, '1', 4, 21, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (97, 2, 5, '1', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (98, 2, 5, '1', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (124, 2, 10, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (31, 3, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (32, 3, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (82, 3, 4, '1', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (101, 3, 4, '1', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (112, 3, 4, '1', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (17, 3, 5, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (27, 3, 5, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (28, 3, 5, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (29, 3, 5, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (29, 3, 5, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (33, 3, 5, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (88, 3, 5, '1', 4, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (100, 3, 5, '1', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (126, 3, 5, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (24, 3, 6, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (27, 3, 6, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (28, 3, 6, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (82, 3, 6, '0', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (84, 3, 6, '0', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (123, 3, 6, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (14, 3, 7, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (104, 3, 7, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (83, 3, 9, '0', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (121, 3, 10, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (122, 3, 10, '0', 19, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (58, 3, 11, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (102, 3, 11, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (103, 3, 11, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (81, 3, 12, '1', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (156, 3, 12, '1', 23, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (157, 3, 12, '1', 16, 23, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (123, 4, 4, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (10, 4, 8, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (85, 4, 8, '0', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (125, 4, 8, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (11, 4, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (21, 4, 9, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (49, 4, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (50, 4, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (51, 4, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (90, 4, 9, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (91, 4, 9, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (91, 4, 9, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (94, 4, 9, '0', 19, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (95, 4, 9, '0', 8, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (120, 4, 9, '0', 19, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (13, 4, 10, '0', 21, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (61, 4, 10, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (113, 4, 10, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (34, 4, 11, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (38, 4, 11, '0', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (48, 4, 11, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (53, 4, 11, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (96, 4, 11, '0', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (154, 4, 11, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (126, 5, 6, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (15, 5, 8, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (54, 5, 8, '1', 21, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (87, 5, 8, '0', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (115, 5, 8, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (1, 5, 9, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (35, 5, 9, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (77, 5, 9, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (92, 5, 9, '0', 8, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (118, 5, 9, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (119, 5, 9, '0', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (128, 5, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (18, 5, 10, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (36, 5, 10, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (37, 5, 10, '0', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (39, 5, 10, '0', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (66, 5, 10, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (67, 5, 10, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (68, 5, 10, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (69, 5, 10, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (114, 5, 10, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (159, 5, 10, '1', 19, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (160, 5, 10, '0', 19, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (117, 5, 11, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (63, 6, 2, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (116, 6, 6, '0', 19, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (19, 6, 8, '0', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (25, 6, 8, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (130, 6, 8, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (133, 6, 8, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (30, 6, 9, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (40, 6, 9, '0', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (41, 6, 9, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (42, 6, 9, '0', 4, 21, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (43, 6, 9, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (44, 6, 9, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (45, 6, 9, '0', 21, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (47, 6, 9, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (72, 6, 9, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (73, 6, 9, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (74, 6, 9, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (75, 6, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (76, 6, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (89, 6, 9, '0', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (89, 6, 9, '1', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (134, 6, 9, '0', 15, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (138, 6, 9, '0', 19, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (153, 6, 9, '0', 17, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (23, 6, 10, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (65, 6, 10, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (78, 6, 11, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (52, 7, 8, '0', 4, 21, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (106, 7, 8, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (107, 7, 8, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (108, 7, 8, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (110, 7, 8, '0', 4, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (111, 7, 8, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (129, 7, 8, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (132, 7, 8, '0', 23, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (135, 7, 8, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (136, 7, 8, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (137, 7, 8, '0', 23, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (139, 7, 8, '0', 15, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (140, 7, 8, '0', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (141, 7, 8, '0', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (142, 7, 8, '0', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (143, 7, 8, '0', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (144, 7, 8, '0', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (145, 7, 8, '0', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (26, 7, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (55, 7, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (67, 7, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (70, 7, 9, '0', 4, 21, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (99, 7, 9, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (131, 7, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (147, 7, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (146, 7, 11, '0', 4, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (146, 7, 11, '0', 17, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (124, 8, 4, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (12, 8, 9, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (109, 8, 9, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (64, 8, 10, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (71, 8, 11, '0', 4, 21, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (97, 8, 11, '0', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (98, 8, 11, '0', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (14, 9, 1, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (104, 9, 1, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (46, 9, 3, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (121, 9, 4, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (122, 9, 4, '1', 19, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (58, 9, 5, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (102, 9, 5, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (103, 9, 5, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (81, 9, 6, '0', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (156, 9, 6, '0', 23, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (157, 9, 6, '0', 16, 23, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (31, 9, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (32, 9, 9, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (82, 9, 10, '0', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (101, 9, 10, '0', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (112, 9, 10, '0', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (33, 9, 11, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (88, 9, 11, '0', 4, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (100, 9, 11, '0', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (126, 9, 11, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (24, 9, 12, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (82, 9, 12, '1', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (83, 9, 12, '1', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (84, 9, 12, '1', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (123, 9, 12, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (10, 10, 2, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (85, 10, 2, '1', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (125, 10, 2, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (11, 10, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (21, 10, 3, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (49, 10, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (50, 10, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (51, 10, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (90, 10, 3, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (91, 10, 3, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (94, 10, 3, '1', 19, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (95, 10, 3, '1', 8, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (120, 10, 3, '1', 19, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (13, 10, 4, '1', 21, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (61, 10, 4, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (113, 10, 4, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (34, 10, 5, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (38, 10, 5, '1', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (48, 10, 5, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (53, 10, 5, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (96, 10, 5, '1', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (154, 10, 5, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (123, 10, 10, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (15, 11, 2, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (17, 11, 2, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (54, 11, 2, '0', 21, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (87, 11, 2, '1', 4, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (115, 11, 2, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (130, 11, 2, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (1, 11, 3, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (35, 11, 3, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (77, 11, 3, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (92, 11, 3, '1', 8, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (118, 11, 3, '1', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (119, 11, 3, '1', 8, 19, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (128, 11, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (18, 11, 4, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (36, 11, 4, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (37, 11, 4, '1', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (39, 11, 4, '1', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (66, 11, 4, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (67, 11, 4, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (68, 11, 4, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (69, 11, 4, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (114, 11, 4, '1', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (159, 11, 4, '0', 19, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (160, 11, 4, '1', 19, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (117, 11, 5, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (126, 11, 12, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (19, 12, 2, '1', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (25, 12, 2, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (91, 12, 2, '0', 8, 17, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (133, 12, 2, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (30, 12, 3, '0', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (40, 12, 3, '1', 9, 16, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (41, 12, 3, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (42, 12, 3, '1', 4, 21, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (43, 12, 3, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (44, 12, 3, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (45, 12, 3, '1', 21, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (46, 12, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (47, 12, 3, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (72, 12, 3, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (73, 12, 3, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (74, 12, 3, '1', 16, 9, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (75, 12, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (76, 12, 3, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (89, 12, 3, '0', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (89, 12, 3, '1', 17, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (134, 12, 3, '1', 15, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (138, 12, 3, '1', 19, 8, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (153, 12, 3, '1', 17, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (23, 12, 4, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (65, 12, 4, '1', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (78, 12, 5, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (63, 12, 8, '0', 1, 24, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);
INSERT INTO `month` VALUES (116, 12, 12, '1', 19, 4, '1', '2025-05-01 00:00:00', 'データベース班', '2025-05-01 00:00:00', 'データベース班', 0);

SET FOREIGN_KEY_CHECKS = 1;
