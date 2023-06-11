

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


---------------------------


DROP TABLE IF EXISTS `tbl_book`;
CREATE TABLE `tbl_book`  (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
                             `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
                             `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_book
-- ----------------------------
INSERT INTO `tbl_book` VALUES (1, '计算机理论', 'spring实战', '深入理解');
INSERT INTO `tbl_book` VALUES (2, '数据库', 'noSQL', '数据库入门与实践');
INSERT INTO `tbl_book` VALUES (3, '云计算', '云计算概念、技术与架构', 'cloud Comuting');

SET FOREIGN_KEY_CHECKS = 1;
