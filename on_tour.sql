/*
Navicat MySQL Data Transfer

Source Server         : LORRU
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : on_tour

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-07-11 21:58:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cliente
-- ----------------------------
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_cliente` int(11) NOT NULL,
  `id_datos_usuario` int(11) DEFAULT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `direccion_cliente` varchar(50) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`),
  KEY `id_tipo_cliente` (`id_tipo_cliente`),
  KEY `cliente_ibfk_2` (`id_datos_usuario`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_tipo_cliente`) REFERENCES `tipo_cliente` (`id_tipo_cliente`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`id_datos_usuario`) REFERENCES `datos_usuario` (`id_datos_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cliente
-- ----------------------------

-- ----------------------------
-- Table structure for comuna
-- ----------------------------
DROP TABLE IF EXISTS `comuna`;
CREATE TABLE `comuna` (
  `id_comuna` int(11) NOT NULL AUTO_INCREMENT,
  `id_provincia` int(11) NOT NULL,
  `nombre_comuna` varchar(50) NOT NULL,
  PRIMARY KEY (`id_comuna`),
  KEY `id_provincia` (`id_provincia`),
  CONSTRAINT `comuna_ibfk_1` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id_provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=347 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comuna
-- ----------------------------
INSERT INTO `comuna` VALUES ('1', '1', 'IQUIQUE');
INSERT INTO `comuna` VALUES ('2', '1', 'ALTO HOSPICIO');
INSERT INTO `comuna` VALUES ('3', '2', 'CAMIÑA');
INSERT INTO `comuna` VALUES ('4', '2', 'COLCHANE');
INSERT INTO `comuna` VALUES ('5', '2', 'HUARA');
INSERT INTO `comuna` VALUES ('6', '2', 'PICA');
INSERT INTO `comuna` VALUES ('7', '2', 'POZO AL MONTE');
INSERT INTO `comuna` VALUES ('8', '3', 'ANTOFAGASTA');
INSERT INTO `comuna` VALUES ('9', '3', 'MEJILLONES');
INSERT INTO `comuna` VALUES ('10', '3', 'SIERRA GORDA');
INSERT INTO `comuna` VALUES ('11', '3', 'TAL-TAL');
INSERT INTO `comuna` VALUES ('12', '4', 'CALAMA');
INSERT INTO `comuna` VALUES ('13', '4', 'OLLAGUE');
INSERT INTO `comuna` VALUES ('14', '4', 'SAN PEDRO DE ATACAMA');
INSERT INTO `comuna` VALUES ('15', '5', 'MARIA ELENA');
INSERT INTO `comuna` VALUES ('16', '5', 'TOCOPILLA');
INSERT INTO `comuna` VALUES ('17', '6', 'CHAÑARAL');
INSERT INTO `comuna` VALUES ('18', '6', 'DIEGO DE ALMAGRO');
INSERT INTO `comuna` VALUES ('19', '7', 'CALDERA');
INSERT INTO `comuna` VALUES ('20', '7', 'COPIAPO');
INSERT INTO `comuna` VALUES ('21', '7', 'TIERRA AMARILLA');
INSERT INTO `comuna` VALUES ('22', '8', 'ALTO DEL CARMEN');
INSERT INTO `comuna` VALUES ('23', '8', 'FREIRINA');
INSERT INTO `comuna` VALUES ('24', '8', 'HUASCO');
INSERT INTO `comuna` VALUES ('25', '8', 'VALLENAR');
INSERT INTO `comuna` VALUES ('26', '9', 'CANELA');
INSERT INTO `comuna` VALUES ('27', '9', 'ILLAPEL');
INSERT INTO `comuna` VALUES ('28', '9', 'LOS VILOS');
INSERT INTO `comuna` VALUES ('29', '9', 'SALAMANCA');
INSERT INTO `comuna` VALUES ('30', '10', 'ANDACOLLO');
INSERT INTO `comuna` VALUES ('31', '10', 'COQUIMBO');
INSERT INTO `comuna` VALUES ('32', '10', 'LA HIGUERA');
INSERT INTO `comuna` VALUES ('33', '10', 'LA SERENA');
INSERT INTO `comuna` VALUES ('34', '10', 'PAIHUACO');
INSERT INTO `comuna` VALUES ('35', '10', 'VICUÑA');
INSERT INTO `comuna` VALUES ('36', '11', 'COMBARBALA');
INSERT INTO `comuna` VALUES ('37', '11', 'MONTE PATRIA');
INSERT INTO `comuna` VALUES ('38', '11', 'OVALLE');
INSERT INTO `comuna` VALUES ('39', '11', 'PUNITAQUI');
INSERT INTO `comuna` VALUES ('40', '11', 'RIO HURTADO');
INSERT INTO `comuna` VALUES ('41', '12', 'ISLA DE PASCUA');
INSERT INTO `comuna` VALUES ('42', '13', 'CALLE LARGA');
INSERT INTO `comuna` VALUES ('43', '13', 'LOS ANDES');
INSERT INTO `comuna` VALUES ('44', '13', 'RINCONADA');
INSERT INTO `comuna` VALUES ('45', '13', 'SAN ESTEBAN');
INSERT INTO `comuna` VALUES ('46', '14', 'LA LIGUA');
INSERT INTO `comuna` VALUES ('47', '14', 'PAPUDO');
INSERT INTO `comuna` VALUES ('48', '14', 'PETORCA');
INSERT INTO `comuna` VALUES ('49', '14', 'CABILDO');
INSERT INTO `comuna` VALUES ('50', '14', 'ZAPALLAR');
INSERT INTO `comuna` VALUES ('51', '15', 'HIJUELAS');
INSERT INTO `comuna` VALUES ('52', '15', 'LA CALERA');
INSERT INTO `comuna` VALUES ('53', '15', 'LA CRUZ');
INSERT INTO `comuna` VALUES ('54', '15', 'LIMACHE');
INSERT INTO `comuna` VALUES ('55', '15', 'NOGALES');
INSERT INTO `comuna` VALUES ('56', '15', 'OLMUE');
INSERT INTO `comuna` VALUES ('57', '15', 'QUILLOTA');
INSERT INTO `comuna` VALUES ('58', '16', 'ALGARROBO');
INSERT INTO `comuna` VALUES ('59', '16', 'CARTAGENA');
INSERT INTO `comuna` VALUES ('60', '16', 'EL QUISCO');
INSERT INTO `comuna` VALUES ('61', '16', 'EL TABO');
INSERT INTO `comuna` VALUES ('62', '16', 'SAN ANTONIO');
INSERT INTO `comuna` VALUES ('63', '16', 'SANTO DOMINGO');
INSERT INTO `comuna` VALUES ('64', '17', 'CATEMU');
INSERT INTO `comuna` VALUES ('65', '17', 'LLAI-LLAY');
INSERT INTO `comuna` VALUES ('66', '17', 'PANQUEHUE');
INSERT INTO `comuna` VALUES ('67', '17', 'PUTAENDO');
INSERT INTO `comuna` VALUES ('68', '17', 'SAN FELIPE');
INSERT INTO `comuna` VALUES ('69', '17', 'SANTA MARIA');
INSERT INTO `comuna` VALUES ('70', '18', 'CASABLANCA');
INSERT INTO `comuna` VALUES ('71', '18', 'CON-CON');
INSERT INTO `comuna` VALUES ('72', '18', 'JUAN FERNANDEZ');
INSERT INTO `comuna` VALUES ('73', '18', 'PICHUNCAVI');
INSERT INTO `comuna` VALUES ('74', '18', 'QUILPUE');
INSERT INTO `comuna` VALUES ('75', '18', 'QUINTERO');
INSERT INTO `comuna` VALUES ('76', '18', 'VALPARAISO');
INSERT INTO `comuna` VALUES ('77', '18', 'VILLA ALEMANA');
INSERT INTO `comuna` VALUES ('78', '18', 'VIÑA DEL MAR');
INSERT INTO `comuna` VALUES ('79', '19', 'CODEGUA');
INSERT INTO `comuna` VALUES ('80', '19', 'COINCO');
INSERT INTO `comuna` VALUES ('81', '19', 'COLTAUCO');
INSERT INTO `comuna` VALUES ('82', '19', 'DOÑIHUE');
INSERT INTO `comuna` VALUES ('83', '19', 'GRANEROS');
INSERT INTO `comuna` VALUES ('84', '19', 'LAS CABRAS');
INSERT INTO `comuna` VALUES ('85', '19', 'MACHALI');
INSERT INTO `comuna` VALUES ('86', '19', 'MALLOA');
INSERT INTO `comuna` VALUES ('87', '19', 'MOSTAZAL');
INSERT INTO `comuna` VALUES ('88', '19', 'OLIVAR');
INSERT INTO `comuna` VALUES ('89', '19', 'PEUMO');
INSERT INTO `comuna` VALUES ('90', '19', 'PICHIDEGUA');
INSERT INTO `comuna` VALUES ('91', '19', 'QUINTA DE TILCOCO');
INSERT INTO `comuna` VALUES ('92', '19', 'RANCAGUA');
INSERT INTO `comuna` VALUES ('93', '19', 'RENGO');
INSERT INTO `comuna` VALUES ('94', '19', 'REQUINUA');
INSERT INTO `comuna` VALUES ('95', '19', 'SAN VICENTE DE TAGUA TAGUA');
INSERT INTO `comuna` VALUES ('96', '20', 'LA ESTRELLA');
INSERT INTO `comuna` VALUES ('97', '20', 'LITUECHE');
INSERT INTO `comuna` VALUES ('98', '20', 'MARCHIHUE');
INSERT INTO `comuna` VALUES ('99', '20', 'NAVIDAD');
INSERT INTO `comuna` VALUES ('100', '20', 'PAREDONES');
INSERT INTO `comuna` VALUES ('101', '20', 'PICHILEMU');
INSERT INTO `comuna` VALUES ('102', '21', 'CHEPICA');
INSERT INTO `comuna` VALUES ('103', '21', 'CHIMBARONGO');
INSERT INTO `comuna` VALUES ('104', '21', 'LOLOL');
INSERT INTO `comuna` VALUES ('105', '21', 'NANCAGUA');
INSERT INTO `comuna` VALUES ('106', '21', 'PALMILLA');
INSERT INTO `comuna` VALUES ('107', '21', 'PERALILLO');
INSERT INTO `comuna` VALUES ('108', '21', 'PLACILLA');
INSERT INTO `comuna` VALUES ('109', '21', 'PUMANQUE');
INSERT INTO `comuna` VALUES ('110', '21', 'SAN FERNANDO');
INSERT INTO `comuna` VALUES ('111', '21', 'SANTA CRUZ');
INSERT INTO `comuna` VALUES ('112', '22', 'CAUQUENES');
INSERT INTO `comuna` VALUES ('113', '22', 'CHANCO');
INSERT INTO `comuna` VALUES ('114', '22', 'PELLUHUE');
INSERT INTO `comuna` VALUES ('115', '23', 'CURICO');
INSERT INTO `comuna` VALUES ('116', '23', 'HUALAÑE');
INSERT INTO `comuna` VALUES ('117', '23', 'LICANTEN');
INSERT INTO `comuna` VALUES ('118', '23', 'MOLINA');
INSERT INTO `comuna` VALUES ('119', '23', 'RAUCO');
INSERT INTO `comuna` VALUES ('120', '23', 'ROMERAL');
INSERT INTO `comuna` VALUES ('121', '23', 'SAGRADA FAMILIA');
INSERT INTO `comuna` VALUES ('122', '23', 'TENO');
INSERT INTO `comuna` VALUES ('123', '23', 'VICHUQUEN');
INSERT INTO `comuna` VALUES ('124', '24', 'COLBUN');
INSERT INTO `comuna` VALUES ('125', '24', 'LINARES');
INSERT INTO `comuna` VALUES ('126', '24', 'LONGAVI');
INSERT INTO `comuna` VALUES ('127', '24', 'PARRAL');
INSERT INTO `comuna` VALUES ('128', '24', 'RETIRO');
INSERT INTO `comuna` VALUES ('129', '24', 'SAN JAVIER');
INSERT INTO `comuna` VALUES ('130', '24', 'VILLA ALEGRE');
INSERT INTO `comuna` VALUES ('131', '24', 'YERBAS BUENAS');
INSERT INTO `comuna` VALUES ('132', '25', 'CONSTITUCION');
INSERT INTO `comuna` VALUES ('133', '25', 'CUREPTO');
INSERT INTO `comuna` VALUES ('134', '25', 'EMPEDRADO');
INSERT INTO `comuna` VALUES ('135', '25', 'MAULE');
INSERT INTO `comuna` VALUES ('136', '25', 'PELARCO');
INSERT INTO `comuna` VALUES ('137', '25', 'PENCAHUE');
INSERT INTO `comuna` VALUES ('138', '25', 'RIO CLARO');
INSERT INTO `comuna` VALUES ('139', '25', 'SAN CLEMENTE');
INSERT INTO `comuna` VALUES ('140', '25', 'SAN RAFAEL');
INSERT INTO `comuna` VALUES ('141', '25', 'TALCA');
INSERT INTO `comuna` VALUES ('142', '26', 'ARAUCO');
INSERT INTO `comuna` VALUES ('143', '26', 'CAÑETE');
INSERT INTO `comuna` VALUES ('144', '26', 'CONTULMO');
INSERT INTO `comuna` VALUES ('145', '26', 'CURANILAHUE');
INSERT INTO `comuna` VALUES ('146', '26', 'LEBU');
INSERT INTO `comuna` VALUES ('147', '26', 'LOS ALAMOS');
INSERT INTO `comuna` VALUES ('148', '26', 'TIRUA');
INSERT INTO `comuna` VALUES ('149', '27', 'ALTO BIO-BIO');
INSERT INTO `comuna` VALUES ('150', '27', 'ANTUCO');
INSERT INTO `comuna` VALUES ('151', '27', 'CABRERO');
INSERT INTO `comuna` VALUES ('152', '27', 'LAJA');
INSERT INTO `comuna` VALUES ('153', '27', 'LOS ANGELES');
INSERT INTO `comuna` VALUES ('154', '27', 'MULCHEN');
INSERT INTO `comuna` VALUES ('155', '27', 'NACIMIENTO');
INSERT INTO `comuna` VALUES ('156', '27', 'NEGRETE');
INSERT INTO `comuna` VALUES ('157', '27', 'QUILACO');
INSERT INTO `comuna` VALUES ('158', '27', 'QUILLECO');
INSERT INTO `comuna` VALUES ('159', '27', 'SAN ROSENDO');
INSERT INTO `comuna` VALUES ('160', '27', 'SANTA BARBARA');
INSERT INTO `comuna` VALUES ('161', '27', 'TUCAPEL');
INSERT INTO `comuna` VALUES ('162', '27', 'YUMBEL');
INSERT INTO `comuna` VALUES ('163', '28', 'CHIGUAYANTE');
INSERT INTO `comuna` VALUES ('164', '28', 'CONCEPCION');
INSERT INTO `comuna` VALUES ('165', '28', 'CORONEL');
INSERT INTO `comuna` VALUES ('166', '28', 'FLORIDA');
INSERT INTO `comuna` VALUES ('167', '28', 'HUALPEN');
INSERT INTO `comuna` VALUES ('168', '28', 'HUALQUI');
INSERT INTO `comuna` VALUES ('169', '28', 'LOTA');
INSERT INTO `comuna` VALUES ('170', '28', 'PENCO');
INSERT INTO `comuna` VALUES ('171', '28', 'SAN PEDRO DE LA PAZ');
INSERT INTO `comuna` VALUES ('172', '28', 'SANTA JUANA');
INSERT INTO `comuna` VALUES ('173', '28', 'TALCAHUANO');
INSERT INTO `comuna` VALUES ('174', '28', 'TOME');
INSERT INTO `comuna` VALUES ('175', '29', 'BULNES');
INSERT INTO `comuna` VALUES ('176', '29', 'CHILLAN');
INSERT INTO `comuna` VALUES ('177', '29', 'CHILLAN VIEJO');
INSERT INTO `comuna` VALUES ('178', '29', 'COFQUECURA');
INSERT INTO `comuna` VALUES ('179', '29', 'COELEMU');
INSERT INTO `comuna` VALUES ('180', '29', 'COIHUECO');
INSERT INTO `comuna` VALUES ('181', '29', 'EL CARMEN');
INSERT INTO `comuna` VALUES ('182', '29', 'NINHUE');
INSERT INTO `comuna` VALUES ('183', '29', 'ÑIQUEN');
INSERT INTO `comuna` VALUES ('184', '29', 'PEMUCO');
INSERT INTO `comuna` VALUES ('185', '29', 'PINTO');
INSERT INTO `comuna` VALUES ('186', '29', 'PORTEZUELO');
INSERT INTO `comuna` VALUES ('187', '29', 'QULLON');
INSERT INTO `comuna` VALUES ('188', '29', 'QUIRIHUE');
INSERT INTO `comuna` VALUES ('189', '29', 'RANQUIL');
INSERT INTO `comuna` VALUES ('190', '29', 'SAN CARLOS');
INSERT INTO `comuna` VALUES ('191', '29', 'SAN FABIAN');
INSERT INTO `comuna` VALUES ('192', '29', 'SAN IGNACIO');
INSERT INTO `comuna` VALUES ('193', '29', 'SAN NICOLAS');
INSERT INTO `comuna` VALUES ('194', '29', 'TREGUACO');
INSERT INTO `comuna` VALUES ('195', '29', 'YUNGAY');
INSERT INTO `comuna` VALUES ('196', '30', 'CARAHUE');
INSERT INTO `comuna` VALUES ('197', '30', 'CHOLCHOL');
INSERT INTO `comuna` VALUES ('198', '30', 'CUNCO');
INSERT INTO `comuna` VALUES ('199', '30', 'CURARREHUE');
INSERT INTO `comuna` VALUES ('200', '30', 'FREIRE');
INSERT INTO `comuna` VALUES ('201', '30', 'CALVARINO');
INSERT INTO `comuna` VALUES ('202', '30', 'GORBEA');
INSERT INTO `comuna` VALUES ('203', '30', 'LAUTARO');
INSERT INTO `comuna` VALUES ('204', '30', 'LONCOCHE');
INSERT INTO `comuna` VALUES ('205', '30', 'MELIPEUCO');
INSERT INTO `comuna` VALUES ('206', '30', 'NUEVA IMPERIAL');
INSERT INTO `comuna` VALUES ('207', '30', 'PADRE LAS CASAS');
INSERT INTO `comuna` VALUES ('208', '30', 'PERQUENCO');
INSERT INTO `comuna` VALUES ('209', '30', 'PITRUFQUEN');
INSERT INTO `comuna` VALUES ('210', '30', 'PUCON');
INSERT INTO `comuna` VALUES ('211', '30', 'SAAVEDRA');
INSERT INTO `comuna` VALUES ('212', '30', 'TEMUCO');
INSERT INTO `comuna` VALUES ('213', '30', 'TEODORO SCHMIDT');
INSERT INTO `comuna` VALUES ('214', '30', 'TOLTEN');
INSERT INTO `comuna` VALUES ('215', '30', 'VILCUN');
INSERT INTO `comuna` VALUES ('216', '30', 'VILLARICA');
INSERT INTO `comuna` VALUES ('217', '31', 'ANGOL');
INSERT INTO `comuna` VALUES ('218', '31', 'COLLIPULLI');
INSERT INTO `comuna` VALUES ('219', '31', 'CURACAUTIN');
INSERT INTO `comuna` VALUES ('220', '31', 'ERCILLA');
INSERT INTO `comuna` VALUES ('221', '31', 'LONQUIMAY');
INSERT INTO `comuna` VALUES ('222', '31', 'LOS SAUCES');
INSERT INTO `comuna` VALUES ('223', '31', 'LUMACO');
INSERT INTO `comuna` VALUES ('224', '31', 'PUREN');
INSERT INTO `comuna` VALUES ('225', '31', 'RENAICO');
INSERT INTO `comuna` VALUES ('226', '31', 'TRAIGUEN');
INSERT INTO `comuna` VALUES ('227', '31', 'VICTORIA');
INSERT INTO `comuna` VALUES ('228', '32', 'ANCUD');
INSERT INTO `comuna` VALUES ('229', '32', 'CASTRO');
INSERT INTO `comuna` VALUES ('230', '32', 'CHONCHI');
INSERT INTO `comuna` VALUES ('231', '32', 'CURACO DE VELEZ');
INSERT INTO `comuna` VALUES ('232', '32', 'DALCAHUE');
INSERT INTO `comuna` VALUES ('233', '32', 'PUQUELDON');
INSERT INTO `comuna` VALUES ('234', '32', 'QUEILEN');
INSERT INTO `comuna` VALUES ('235', '32', 'QUEMCHI');
INSERT INTO `comuna` VALUES ('236', '32', 'QUELLON');
INSERT INTO `comuna` VALUES ('237', '32', 'QUINCHAO');
INSERT INTO `comuna` VALUES ('238', '33', 'CALBUCO');
INSERT INTO `comuna` VALUES ('239', '33', 'COCHAMO');
INSERT INTO `comuna` VALUES ('240', '33', 'FRESIA');
INSERT INTO `comuna` VALUES ('241', '33', 'FRUTILLAR');
INSERT INTO `comuna` VALUES ('242', '33', 'LLANQUIHUE');
INSERT INTO `comuna` VALUES ('243', '33', 'LOS MUERMOS');
INSERT INTO `comuna` VALUES ('244', '33', 'MAULLIN');
INSERT INTO `comuna` VALUES ('245', '33', 'PUERTO MONTT');
INSERT INTO `comuna` VALUES ('246', '33', 'PUERTO VARAS');
INSERT INTO `comuna` VALUES ('247', '34', 'OSORNO');
INSERT INTO `comuna` VALUES ('248', '34', 'PUERTO OCTAY');
INSERT INTO `comuna` VALUES ('249', '34', 'PURRANQUE');
INSERT INTO `comuna` VALUES ('250', '34', 'PUYEHUE');
INSERT INTO `comuna` VALUES ('251', '34', 'RIO NEGRO');
INSERT INTO `comuna` VALUES ('252', '34', 'SAN JUAN DE LA COSTA');
INSERT INTO `comuna` VALUES ('253', '34', 'SAN PABLO');
INSERT INTO `comuna` VALUES ('254', '35', 'CHAITEN');
INSERT INTO `comuna` VALUES ('255', '35', 'FUTALEUFU');
INSERT INTO `comuna` VALUES ('256', '35', 'HUALAIHUE');
INSERT INTO `comuna` VALUES ('257', '35', 'PALENA');
INSERT INTO `comuna` VALUES ('258', '36', 'AISEN');
INSERT INTO `comuna` VALUES ('259', '36', 'SISNES');
INSERT INTO `comuna` VALUES ('260', '36', 'GUAITECAS');
INSERT INTO `comuna` VALUES ('261', '37', 'COCHRANE');
INSERT INTO `comuna` VALUES ('262', '37', 'O HIGGINS');
INSERT INTO `comuna` VALUES ('263', '37', 'TORTEL');
INSERT INTO `comuna` VALUES ('264', '38', 'COIHAIQUE');
INSERT INTO `comuna` VALUES ('265', '38', 'LAGO VERDE');
INSERT INTO `comuna` VALUES ('266', '39', 'CHILE CHICO');
INSERT INTO `comuna` VALUES ('267', '39', 'RIO IBAÑES');
INSERT INTO `comuna` VALUES ('268', '40', 'ANTARTICA');
INSERT INTO `comuna` VALUES ('269', '40', 'CABO DE HORNOS');
INSERT INTO `comuna` VALUES ('270', '41', 'LAGUNA BLANCA');
INSERT INTO `comuna` VALUES ('271', '41', 'PUNTA ARENAS');
INSERT INTO `comuna` VALUES ('272', '41', 'RIO VERDE');
INSERT INTO `comuna` VALUES ('273', '41', 'SAN GREGORIO');
INSERT INTO `comuna` VALUES ('274', '42', 'PORVENIR');
INSERT INTO `comuna` VALUES ('275', '42', 'PRIMAVERA');
INSERT INTO `comuna` VALUES ('276', '42', 'TIMAUKEL');
INSERT INTO `comuna` VALUES ('277', '43', 'NATALES');
INSERT INTO `comuna` VALUES ('278', '43', 'TORRES DEL PAINE');
INSERT INTO `comuna` VALUES ('279', '44', 'CORRAL');
INSERT INTO `comuna` VALUES ('280', '44', 'LANCO');
INSERT INTO `comuna` VALUES ('281', '44', 'LOS LAGOS');
INSERT INTO `comuna` VALUES ('282', '44', 'MAFIL');
INSERT INTO `comuna` VALUES ('283', '44', 'MARIQUINA');
INSERT INTO `comuna` VALUES ('284', '44', 'PAILLACO');
INSERT INTO `comuna` VALUES ('285', '44', 'PANGUIPULLI');
INSERT INTO `comuna` VALUES ('286', '44', 'VALDIVIA');
INSERT INTO `comuna` VALUES ('287', '45', 'FUTRONO');
INSERT INTO `comuna` VALUES ('288', '45', 'LA UNION');
INSERT INTO `comuna` VALUES ('289', '45', 'LAGO RANCO');
INSERT INTO `comuna` VALUES ('290', '45', 'RIO BUENO');
INSERT INTO `comuna` VALUES ('291', '46', 'ARICA');
INSERT INTO `comuna` VALUES ('292', '46', 'CAMARONES');
INSERT INTO `comuna` VALUES ('293', '47', 'GENERAL LAGOS');
INSERT INTO `comuna` VALUES ('294', '47', 'PUTRE');
INSERT INTO `comuna` VALUES ('295', '48', 'CERRILLOS');
INSERT INTO `comuna` VALUES ('296', '48', 'CERRO NAVIA');
INSERT INTO `comuna` VALUES ('297', '48', 'CONCHALI');
INSERT INTO `comuna` VALUES ('298', '48', 'EL BOSQUE');
INSERT INTO `comuna` VALUES ('299', '48', 'ESTACION CENTRAL');
INSERT INTO `comuna` VALUES ('300', '48', 'HUECHURABA');
INSERT INTO `comuna` VALUES ('301', '48', 'INDEPENDENCIA');
INSERT INTO `comuna` VALUES ('302', '48', 'LA CISTERNA');
INSERT INTO `comuna` VALUES ('303', '48', 'LA GRANJA');
INSERT INTO `comuna` VALUES ('304', '48', 'LA FLORIDA');
INSERT INTO `comuna` VALUES ('305', '48', 'LA PINTANA');
INSERT INTO `comuna` VALUES ('306', '48', 'LA REINA');
INSERT INTO `comuna` VALUES ('307', '48', 'LAS CONDES');
INSERT INTO `comuna` VALUES ('308', '48', 'LO BARNECHEA');
INSERT INTO `comuna` VALUES ('309', '48', 'LO ESPEJO');
INSERT INTO `comuna` VALUES ('310', '48', 'LO PRADO');
INSERT INTO `comuna` VALUES ('311', '48', 'MACUL');
INSERT INTO `comuna` VALUES ('312', '48', 'MAIPU');
INSERT INTO `comuna` VALUES ('313', '48', 'ÑUÑOA');
INSERT INTO `comuna` VALUES ('314', '48', 'PEDRO AGUIRRE CERDA');
INSERT INTO `comuna` VALUES ('315', '48', 'PEÑALOLEN');
INSERT INTO `comuna` VALUES ('316', '48', 'PROVIDENCIA');
INSERT INTO `comuna` VALUES ('317', '48', 'PUDAHUEL');
INSERT INTO `comuna` VALUES ('318', '48', 'QUILICURA');
INSERT INTO `comuna` VALUES ('319', '48', 'QUINTA NORMAL');
INSERT INTO `comuna` VALUES ('320', '48', 'RECOLETA');
INSERT INTO `comuna` VALUES ('321', '48', 'RENCA');
INSERT INTO `comuna` VALUES ('322', '48', 'SAN MIGUEL');
INSERT INTO `comuna` VALUES ('323', '48', 'SAN JOAQUIN');
INSERT INTO `comuna` VALUES ('324', '48', 'SAN RAMON');
INSERT INTO `comuna` VALUES ('325', '48', 'SANTIAGO');
INSERT INTO `comuna` VALUES ('326', '48', 'VITACURA');
INSERT INTO `comuna` VALUES ('327', '49', 'COLINA');
INSERT INTO `comuna` VALUES ('328', '49', 'LAMPA');
INSERT INTO `comuna` VALUES ('329', '49', 'TIL-TIL');
INSERT INTO `comuna` VALUES ('330', '50', 'PIRQUE');
INSERT INTO `comuna` VALUES ('331', '50', 'PUENTE ALTO');
INSERT INTO `comuna` VALUES ('332', '50', 'SAN JOSE DE MAIPO');
INSERT INTO `comuna` VALUES ('333', '51', 'BUIN');
INSERT INTO `comuna` VALUES ('334', '51', 'CALERA DE TANGO');
INSERT INTO `comuna` VALUES ('335', '51', 'PAINE');
INSERT INTO `comuna` VALUES ('336', '51', 'SAN BERNARDO');
INSERT INTO `comuna` VALUES ('337', '52', 'ALHUE');
INSERT INTO `comuna` VALUES ('338', '52', 'CURACAVI');
INSERT INTO `comuna` VALUES ('339', '52', 'MARIA PINTO');
INSERT INTO `comuna` VALUES ('340', '52', 'MELIPILLA');
INSERT INTO `comuna` VALUES ('341', '52', 'SAN PEDRO');
INSERT INTO `comuna` VALUES ('342', '53', 'EL MONTE');
INSERT INTO `comuna` VALUES ('343', '53', 'ISLA DE MAIPO');
INSERT INTO `comuna` VALUES ('344', '53', 'PADRE HURTADO');
INSERT INTO `comuna` VALUES ('345', '53', 'PEÑAFLOR');
INSERT INTO `comuna` VALUES ('346', '53', 'TALAGANTE');

-- ----------------------------
-- Table structure for datos_usuario
-- ----------------------------
DROP TABLE IF EXISTS `datos_usuario`;
CREATE TABLE `datos_usuario` (
  `id_datos_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_genero` int(11) NOT NULL,
  `rut_datos_usuario` varchar(15) NOT NULL,
  `primer_nombre_datos_usuario` varchar(50) NOT NULL,
  `segundo_nombre_datos_usuario` varchar(50) NOT NULL,
  `primer_apellido_datos_usuario` varchar(50) NOT NULL,
  `segundo_apellido_datos_usuario` varchar(50) NOT NULL,
  `telefono_datos_usuario` int(11) NOT NULL,
  `fecha_nacimiento_datos_usuario` date DEFAULT NULL,
  `direccion_domicilio_datos_usuario` varchar(50) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_datos_usuario`),
  KEY `id_genero` (`id_genero`),
  CONSTRAINT `datos_usuario_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of datos_usuario
-- ----------------------------
INSERT INTO `datos_usuario` VALUES ('1', '1', '1-9', 'ADMIN', 'ADMIN', 'ADMIN', 'ADMIN', '962545498', '2018-07-11', 'ALONSO DE OVALLE', '2018-07-11 21:57:00', '2018-07-10 19:46:25');
INSERT INTO `datos_usuario` VALUES ('2', '1', '1-9', 'AGENTE', 'AGENTE', 'AGENTE', 'AGENTE', '962545498', '2018-07-11', 'ALONSO DE OVALLE', '2018-07-11 21:56:22', '2018-07-11 21:56:22');

-- ----------------------------
-- Table structure for genero
-- ----------------------------
DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_genero` varchar(20) NOT NULL,
  `sigla_genero` char(1) NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of genero
-- ----------------------------
INSERT INTO `genero` VALUES ('1', 'MASCULINO', 'M');
INSERT INTO `genero` VALUES ('2', 'FEMENINO', 'F');
INSERT INTO `genero` VALUES ('3', 'OTRO', 'O');

-- ----------------------------
-- Table structure for hospedaje
-- ----------------------------
DROP TABLE IF EXISTS `hospedaje`;
CREATE TABLE `hospedaje` (
  `id_hospedaje` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_hospedaje` int(11) NOT NULL,
  `id_comuna` int(11) NOT NULL,
  `nombre_hospedaje` varchar(50) NOT NULL,
  PRIMARY KEY (`id_hospedaje`),
  KEY `id_comuna` (`id_comuna`),
  KEY `id_tipo_hospedaje` (`id_tipo_hospedaje`),
  CONSTRAINT `hospedaje_ibfk_1` FOREIGN KEY (`id_comuna`) REFERENCES `comuna` (`id_comuna`),
  CONSTRAINT `hospedaje_ibfk_2` FOREIGN KEY (`id_tipo_hospedaje`) REFERENCES `tipo_hospedaje` (`id_tipo_hospedaje`)
) ENGINE=InnoDB AUTO_INCREMENT=693 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hospedaje
-- ----------------------------
INSERT INTO `hospedaje` VALUES ('1', '2', '1', 'IQUIQUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('2', '1', '1', 'IQUIQUE HOTEL');
INSERT INTO `hospedaje` VALUES ('3', '2', '2', 'ALTO HOSPICIO CABAÑA');
INSERT INTO `hospedaje` VALUES ('4', '1', '2', 'ALTO HOSPICIO HOTEL');
INSERT INTO `hospedaje` VALUES ('5', '2', '3', 'CAMIÑA CABAÑA');
INSERT INTO `hospedaje` VALUES ('6', '1', '3', 'CAMIÑA HOTEL');
INSERT INTO `hospedaje` VALUES ('7', '2', '4', 'COLCHANE CABAÑA');
INSERT INTO `hospedaje` VALUES ('8', '1', '4', 'COLCHANE HOTEL');
INSERT INTO `hospedaje` VALUES ('9', '2', '5', 'HUARA CABAÑA');
INSERT INTO `hospedaje` VALUES ('10', '1', '5', 'HUARA HOTEL');
INSERT INTO `hospedaje` VALUES ('11', '2', '6', 'PICA CABAÑA');
INSERT INTO `hospedaje` VALUES ('12', '1', '6', 'PICA HOTEL');
INSERT INTO `hospedaje` VALUES ('13', '2', '7', 'POZO AL MONTE CABAÑA');
INSERT INTO `hospedaje` VALUES ('14', '1', '7', 'POZO AL MONTE HOTEL');
INSERT INTO `hospedaje` VALUES ('15', '2', '8', 'ANTOFAGASTA CABAÑA');
INSERT INTO `hospedaje` VALUES ('16', '1', '8', 'ANTOFAGASTA HOTEL');
INSERT INTO `hospedaje` VALUES ('17', '2', '9', 'MEJILLONES CABAÑA');
INSERT INTO `hospedaje` VALUES ('18', '1', '9', 'MEJILLONES HOTEL');
INSERT INTO `hospedaje` VALUES ('19', '2', '10', 'SIERRA GORDA CABAÑA');
INSERT INTO `hospedaje` VALUES ('20', '1', '10', 'SIERRA GORDA HOTEL');
INSERT INTO `hospedaje` VALUES ('21', '2', '11', 'TAL-TAL CABAÑA');
INSERT INTO `hospedaje` VALUES ('22', '1', '11', 'TAL-TAL HOTEL');
INSERT INTO `hospedaje` VALUES ('23', '2', '12', 'CALAMA CABAÑA');
INSERT INTO `hospedaje` VALUES ('24', '1', '12', 'CALAMA HOTEL');
INSERT INTO `hospedaje` VALUES ('25', '2', '13', 'OLLAGUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('26', '1', '13', 'OLLAGUE HOTEL');
INSERT INTO `hospedaje` VALUES ('27', '2', '14', 'SAN PEDRO DE ATACAMA CABAÑA');
INSERT INTO `hospedaje` VALUES ('28', '1', '14', 'SAN PEDRO DE ATACAMA HOTEL');
INSERT INTO `hospedaje` VALUES ('29', '2', '15', 'MARIA ELENA CABAÑA');
INSERT INTO `hospedaje` VALUES ('30', '1', '15', 'MARIA ELENA HOTEL');
INSERT INTO `hospedaje` VALUES ('31', '2', '16', 'TOCOPILLA CABAÑA');
INSERT INTO `hospedaje` VALUES ('32', '1', '16', 'TOCOPILLA HOTEL');
INSERT INTO `hospedaje` VALUES ('33', '2', '17', 'CHAÑARAL CABAÑA');
INSERT INTO `hospedaje` VALUES ('34', '1', '17', 'CHAÑARAL HOTEL');
INSERT INTO `hospedaje` VALUES ('35', '2', '18', 'DIEGO DE ALMAGRO CABAÑA');
INSERT INTO `hospedaje` VALUES ('36', '1', '18', 'DIEGO DE ALMAGRO HOTEL');
INSERT INTO `hospedaje` VALUES ('37', '2', '19', 'CALDERA CABAÑA');
INSERT INTO `hospedaje` VALUES ('38', '1', '19', 'CALDERA HOTEL');
INSERT INTO `hospedaje` VALUES ('39', '2', '20', 'COPIAPO CABAÑA');
INSERT INTO `hospedaje` VALUES ('40', '1', '20', 'COPIAPO HOTEL');
INSERT INTO `hospedaje` VALUES ('41', '2', '21', 'TIERRA AMARILLA CABAÑA');
INSERT INTO `hospedaje` VALUES ('42', '1', '21', 'TIERRA AMARILLA HOTEL');
INSERT INTO `hospedaje` VALUES ('43', '2', '22', 'ALTO DEL CARMEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('44', '1', '22', 'ALTO DEL CARMEN HOTEL');
INSERT INTO `hospedaje` VALUES ('45', '2', '23', 'FREIRINA CABAÑA');
INSERT INTO `hospedaje` VALUES ('46', '1', '23', 'FREIRINA HOTEL');
INSERT INTO `hospedaje` VALUES ('47', '2', '24', 'HUASCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('48', '1', '24', 'HUASCO HOTEL');
INSERT INTO `hospedaje` VALUES ('49', '2', '25', 'VALLENAR CABAÑA');
INSERT INTO `hospedaje` VALUES ('50', '1', '25', 'VALLENAR HOTEL');
INSERT INTO `hospedaje` VALUES ('51', '2', '26', 'CANELA CABAÑA');
INSERT INTO `hospedaje` VALUES ('52', '1', '26', 'CANELA HOTEL');
INSERT INTO `hospedaje` VALUES ('53', '2', '27', 'ILLAPEL CABAÑA');
INSERT INTO `hospedaje` VALUES ('54', '1', '27', 'ILLAPEL HOTEL');
INSERT INTO `hospedaje` VALUES ('55', '2', '28', 'LOS VILOS CABAÑA');
INSERT INTO `hospedaje` VALUES ('56', '1', '28', 'LOS VILOS HOTEL');
INSERT INTO `hospedaje` VALUES ('57', '2', '29', 'SALAMANCA CABAÑA');
INSERT INTO `hospedaje` VALUES ('58', '1', '29', 'SALAMANCA HOTEL');
INSERT INTO `hospedaje` VALUES ('59', '2', '30', 'ANDACOLLO CABAÑA');
INSERT INTO `hospedaje` VALUES ('60', '1', '30', 'ANDACOLLO HOTEL');
INSERT INTO `hospedaje` VALUES ('61', '2', '31', 'COQUIMBO CABAÑA');
INSERT INTO `hospedaje` VALUES ('62', '1', '31', 'COQUIMBO HOTEL');
INSERT INTO `hospedaje` VALUES ('63', '2', '32', 'LA HIGUERA CABAÑA');
INSERT INTO `hospedaje` VALUES ('64', '1', '32', 'LA HIGUERA HOTEL');
INSERT INTO `hospedaje` VALUES ('65', '2', '33', 'LA SERENA CABAÑA');
INSERT INTO `hospedaje` VALUES ('66', '1', '33', 'LA SERENA HOTEL');
INSERT INTO `hospedaje` VALUES ('67', '2', '34', 'PAIHUACO CABAÑA');
INSERT INTO `hospedaje` VALUES ('68', '1', '34', 'PAIHUACO HOTEL');
INSERT INTO `hospedaje` VALUES ('69', '2', '35', 'VICUÑA CABAÑA');
INSERT INTO `hospedaje` VALUES ('70', '1', '35', 'VICUÑA HOTEL');
INSERT INTO `hospedaje` VALUES ('71', '2', '36', 'COMBARBALA CABAÑA');
INSERT INTO `hospedaje` VALUES ('72', '1', '36', 'COMBARBALA HOTEL');
INSERT INTO `hospedaje` VALUES ('73', '2', '37', 'MONTE PATRIA CABAÑA');
INSERT INTO `hospedaje` VALUES ('74', '1', '37', 'MONTE PATRIA HOTEL');
INSERT INTO `hospedaje` VALUES ('75', '2', '38', 'OVALLE CABAÑA');
INSERT INTO `hospedaje` VALUES ('76', '1', '38', 'OVALLE HOTEL');
INSERT INTO `hospedaje` VALUES ('77', '2', '39', 'PUNITAQUI CABAÑA');
INSERT INTO `hospedaje` VALUES ('78', '1', '39', 'PUNITAQUI HOTEL');
INSERT INTO `hospedaje` VALUES ('79', '2', '40', 'RIO HURTADO CABAÑA');
INSERT INTO `hospedaje` VALUES ('80', '1', '40', 'RIO HURTADO HOTEL');
INSERT INTO `hospedaje` VALUES ('81', '2', '41', 'ISLA DE PASCUA CABAÑA');
INSERT INTO `hospedaje` VALUES ('82', '1', '41', 'ISLA DE PASCUA HOTEL');
INSERT INTO `hospedaje` VALUES ('83', '2', '42', 'CALLE LARGA CABAÑA');
INSERT INTO `hospedaje` VALUES ('84', '1', '42', 'CALLE LARGA HOTEL');
INSERT INTO `hospedaje` VALUES ('85', '2', '43', 'LOS ANDES CABAÑA');
INSERT INTO `hospedaje` VALUES ('86', '1', '43', 'LOS ANDES HOTEL');
INSERT INTO `hospedaje` VALUES ('87', '2', '44', 'RINCONADA CABAÑA');
INSERT INTO `hospedaje` VALUES ('88', '1', '44', 'RINCONADA HOTEL');
INSERT INTO `hospedaje` VALUES ('89', '2', '45', 'SAN ESTEBAN CABAÑA');
INSERT INTO `hospedaje` VALUES ('90', '1', '45', 'SAN ESTEBAN HOTEL');
INSERT INTO `hospedaje` VALUES ('91', '2', '46', 'LA LIGUA CABAÑA');
INSERT INTO `hospedaje` VALUES ('92', '1', '46', 'LA LIGUA HOTEL');
INSERT INTO `hospedaje` VALUES ('93', '2', '47', 'PAPUDO CABAÑA');
INSERT INTO `hospedaje` VALUES ('94', '1', '47', 'PAPUDO HOTEL');
INSERT INTO `hospedaje` VALUES ('95', '2', '48', 'PETORCA CABAÑA');
INSERT INTO `hospedaje` VALUES ('96', '1', '48', 'PETORCA HOTEL');
INSERT INTO `hospedaje` VALUES ('97', '2', '49', 'CABILDO CABAÑA');
INSERT INTO `hospedaje` VALUES ('98', '1', '49', 'CABILDO HOTEL');
INSERT INTO `hospedaje` VALUES ('99', '2', '50', 'ZAPALLAR CABAÑA');
INSERT INTO `hospedaje` VALUES ('100', '1', '50', 'ZAPALLAR HOTEL');
INSERT INTO `hospedaje` VALUES ('101', '2', '51', 'HIJUELAS CABAÑA');
INSERT INTO `hospedaje` VALUES ('102', '1', '51', 'HIJUELAS HOTEL');
INSERT INTO `hospedaje` VALUES ('103', '2', '52', 'LA CALERA CABAÑA');
INSERT INTO `hospedaje` VALUES ('104', '1', '52', 'LA CALERA HOTEL');
INSERT INTO `hospedaje` VALUES ('105', '2', '53', 'LA CRUZ CABAÑA');
INSERT INTO `hospedaje` VALUES ('106', '1', '53', 'LA CRUZ HOTEL');
INSERT INTO `hospedaje` VALUES ('107', '2', '54', 'LIMACHE CABAÑA');
INSERT INTO `hospedaje` VALUES ('108', '1', '54', 'LIMACHE HOTEL');
INSERT INTO `hospedaje` VALUES ('109', '2', '55', 'NOGALES CABAÑA');
INSERT INTO `hospedaje` VALUES ('110', '1', '55', 'NOGALES HOTEL');
INSERT INTO `hospedaje` VALUES ('111', '2', '56', 'OLMUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('112', '1', '56', 'OLMUE HOTEL');
INSERT INTO `hospedaje` VALUES ('113', '2', '57', 'QUILLOTA CABAÑA');
INSERT INTO `hospedaje` VALUES ('114', '1', '57', 'QUILLOTA HOTEL');
INSERT INTO `hospedaje` VALUES ('115', '2', '58', 'ALGARROBO CABAÑA');
INSERT INTO `hospedaje` VALUES ('116', '1', '58', 'ALGARROBO HOTEL');
INSERT INTO `hospedaje` VALUES ('117', '2', '59', 'CARTAGENA CABAÑA');
INSERT INTO `hospedaje` VALUES ('118', '1', '59', 'CARTAGENA HOTEL');
INSERT INTO `hospedaje` VALUES ('119', '2', '60', 'EL QUISCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('120', '1', '60', 'EL QUISCO HOTEL');
INSERT INTO `hospedaje` VALUES ('121', '2', '61', 'EL TABO CABAÑA');
INSERT INTO `hospedaje` VALUES ('122', '1', '61', 'EL TABO HOTEL');
INSERT INTO `hospedaje` VALUES ('123', '2', '62', 'SAN ANTONIO CABAÑA');
INSERT INTO `hospedaje` VALUES ('124', '1', '62', 'SAN ANTONIO HOTEL');
INSERT INTO `hospedaje` VALUES ('125', '2', '63', 'SANTO DOMINGO CABAÑA');
INSERT INTO `hospedaje` VALUES ('126', '1', '63', 'SANTO DOMINGO HOTEL');
INSERT INTO `hospedaje` VALUES ('127', '2', '64', 'CATEMU CABAÑA');
INSERT INTO `hospedaje` VALUES ('128', '1', '64', 'CATEMU HOTEL');
INSERT INTO `hospedaje` VALUES ('129', '2', '65', 'LLAI-LLAY CABAÑA');
INSERT INTO `hospedaje` VALUES ('130', '1', '65', 'LLAI-LLAY HOTEL');
INSERT INTO `hospedaje` VALUES ('131', '2', '66', 'PANQUEHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('132', '1', '66', 'PANQUEHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('133', '2', '67', 'PUTAENDO CABAÑA');
INSERT INTO `hospedaje` VALUES ('134', '1', '67', 'PUTAENDO HOTEL');
INSERT INTO `hospedaje` VALUES ('135', '2', '68', 'SAN FELIPE CABAÑA');
INSERT INTO `hospedaje` VALUES ('136', '1', '68', 'SAN FELIPE HOTEL');
INSERT INTO `hospedaje` VALUES ('137', '2', '69', 'SANTA MARIA CABAÑA');
INSERT INTO `hospedaje` VALUES ('138', '1', '69', 'SANTA MARIA HOTEL');
INSERT INTO `hospedaje` VALUES ('139', '2', '70', 'CASABLANCA CABAÑA');
INSERT INTO `hospedaje` VALUES ('140', '1', '70', 'CASABLANCA HOTEL');
INSERT INTO `hospedaje` VALUES ('141', '2', '71', 'CON-CON CABAÑA');
INSERT INTO `hospedaje` VALUES ('142', '1', '71', 'CON-CON HOTEL');
INSERT INTO `hospedaje` VALUES ('143', '2', '72', 'JUAN FERNANDEZ CABAÑA');
INSERT INTO `hospedaje` VALUES ('144', '1', '72', 'JUAN FERNANDEZ HOTEL');
INSERT INTO `hospedaje` VALUES ('145', '2', '73', 'PICHUNCAVI CABAÑA');
INSERT INTO `hospedaje` VALUES ('146', '1', '73', 'PICHUNCAVI HOTEL');
INSERT INTO `hospedaje` VALUES ('147', '2', '74', 'QUILPUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('148', '1', '74', 'QUILPUE HOTEL');
INSERT INTO `hospedaje` VALUES ('149', '2', '75', 'QUINTERO CABAÑA');
INSERT INTO `hospedaje` VALUES ('150', '1', '75', 'QUINTERO HOTEL');
INSERT INTO `hospedaje` VALUES ('151', '2', '76', 'VALPARAISO CABAÑA');
INSERT INTO `hospedaje` VALUES ('152', '1', '76', 'VALPARAISO HOTEL');
INSERT INTO `hospedaje` VALUES ('153', '2', '77', 'VILLA ALEMANA CABAÑA');
INSERT INTO `hospedaje` VALUES ('154', '1', '77', 'VILLA ALEMANA HOTEL');
INSERT INTO `hospedaje` VALUES ('155', '2', '78', 'VIÑA DEL MAR CABAÑA');
INSERT INTO `hospedaje` VALUES ('156', '1', '78', 'VIÑA DEL MAR HOTEL');
INSERT INTO `hospedaje` VALUES ('157', '2', '79', 'CODEGUA CABAÑA');
INSERT INTO `hospedaje` VALUES ('158', '1', '79', 'CODEGUA HOTEL');
INSERT INTO `hospedaje` VALUES ('159', '2', '80', 'COINCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('160', '1', '80', 'COINCO HOTEL');
INSERT INTO `hospedaje` VALUES ('161', '2', '81', 'COLTAUCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('162', '1', '81', 'COLTAUCO HOTEL');
INSERT INTO `hospedaje` VALUES ('163', '2', '82', 'DOÑIHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('164', '1', '82', 'DOÑIHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('165', '2', '83', 'GRANEROS CABAÑA');
INSERT INTO `hospedaje` VALUES ('166', '1', '83', 'GRANEROS HOTEL');
INSERT INTO `hospedaje` VALUES ('167', '2', '84', 'LAS CABRAS CABAÑA');
INSERT INTO `hospedaje` VALUES ('168', '1', '84', 'LAS CABRAS HOTEL');
INSERT INTO `hospedaje` VALUES ('169', '2', '85', 'MACHALI CABAÑA');
INSERT INTO `hospedaje` VALUES ('170', '1', '85', 'MACHALI HOTEL');
INSERT INTO `hospedaje` VALUES ('171', '2', '86', 'MALLOA CABAÑA');
INSERT INTO `hospedaje` VALUES ('172', '1', '86', 'MALLOA HOTEL');
INSERT INTO `hospedaje` VALUES ('173', '2', '87', 'MOSTAZAL CABAÑA');
INSERT INTO `hospedaje` VALUES ('174', '1', '87', 'MOSTAZAL HOTEL');
INSERT INTO `hospedaje` VALUES ('175', '2', '88', 'OLIVAR CABAÑA');
INSERT INTO `hospedaje` VALUES ('176', '1', '88', 'OLIVAR HOTEL');
INSERT INTO `hospedaje` VALUES ('177', '2', '89', 'PEUMO CABAÑA');
INSERT INTO `hospedaje` VALUES ('178', '1', '89', 'PEUMO HOTEL');
INSERT INTO `hospedaje` VALUES ('179', '2', '90', 'PICHIDEGUA CABAÑA');
INSERT INTO `hospedaje` VALUES ('180', '1', '90', 'PICHIDEGUA HOTEL');
INSERT INTO `hospedaje` VALUES ('181', '2', '91', 'QUINTA DE TILCOCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('182', '1', '91', 'QUINTA DE TILCOCO HOTEL');
INSERT INTO `hospedaje` VALUES ('183', '2', '92', 'RANCAGUA CABAÑA');
INSERT INTO `hospedaje` VALUES ('184', '1', '92', 'RANCAGUA HOTEL');
INSERT INTO `hospedaje` VALUES ('185', '2', '93', 'RENGO CABAÑA');
INSERT INTO `hospedaje` VALUES ('186', '1', '93', 'RENGO HOTEL');
INSERT INTO `hospedaje` VALUES ('187', '2', '94', 'REQUINUA CABAÑA');
INSERT INTO `hospedaje` VALUES ('188', '1', '94', 'REQUINUA HOTEL');
INSERT INTO `hospedaje` VALUES ('189', '2', '95', 'SAN VICENTE DE TAGUA TAGUA CABAÑA');
INSERT INTO `hospedaje` VALUES ('190', '1', '95', 'SAN VICENTE DE TAGUA TAGUA HOTEL');
INSERT INTO `hospedaje` VALUES ('191', '2', '96', 'LA ESTRELLA CABAÑA');
INSERT INTO `hospedaje` VALUES ('192', '1', '96', 'LA ESTRELLA HOTEL');
INSERT INTO `hospedaje` VALUES ('193', '2', '97', 'LITUECHE CABAÑA');
INSERT INTO `hospedaje` VALUES ('194', '1', '97', 'LITUECHE HOTEL');
INSERT INTO `hospedaje` VALUES ('195', '2', '98', 'MARCHIHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('196', '1', '98', 'MARCHIHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('197', '2', '99', 'NAVIDAD CABAÑA');
INSERT INTO `hospedaje` VALUES ('198', '1', '99', 'NAVIDAD HOTEL');
INSERT INTO `hospedaje` VALUES ('199', '2', '100', 'PAREDONES CABAÑA');
INSERT INTO `hospedaje` VALUES ('200', '1', '100', 'PAREDONES HOTEL');
INSERT INTO `hospedaje` VALUES ('201', '2', '101', 'PICHILEMU CABAÑA');
INSERT INTO `hospedaje` VALUES ('202', '1', '101', 'PICHILEMU HOTEL');
INSERT INTO `hospedaje` VALUES ('203', '2', '102', 'CHEPICA CABAÑA');
INSERT INTO `hospedaje` VALUES ('204', '1', '102', 'CHEPICA HOTEL');
INSERT INTO `hospedaje` VALUES ('205', '2', '103', 'CHIMBARONGO CABAÑA');
INSERT INTO `hospedaje` VALUES ('206', '1', '103', 'CHIMBARONGO HOTEL');
INSERT INTO `hospedaje` VALUES ('207', '2', '104', 'LOLOL CABAÑA');
INSERT INTO `hospedaje` VALUES ('208', '1', '104', 'LOLOL HOTEL');
INSERT INTO `hospedaje` VALUES ('209', '2', '105', 'NANCAGUA CABAÑA');
INSERT INTO `hospedaje` VALUES ('210', '1', '105', 'NANCAGUA HOTEL');
INSERT INTO `hospedaje` VALUES ('211', '2', '106', 'PALMILLA CABAÑA');
INSERT INTO `hospedaje` VALUES ('212', '1', '106', 'PALMILLA HOTEL');
INSERT INTO `hospedaje` VALUES ('213', '2', '107', 'PERALILLO CABAÑA');
INSERT INTO `hospedaje` VALUES ('214', '1', '107', 'PERALILLO HOTEL');
INSERT INTO `hospedaje` VALUES ('215', '2', '108', 'PLACILLA CABAÑA');
INSERT INTO `hospedaje` VALUES ('216', '1', '108', 'PLACILLA HOTEL');
INSERT INTO `hospedaje` VALUES ('217', '2', '109', 'PUMANQUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('218', '1', '109', 'PUMANQUE HOTEL');
INSERT INTO `hospedaje` VALUES ('219', '2', '110', 'SAN FERNANDO CABAÑA');
INSERT INTO `hospedaje` VALUES ('220', '1', '110', 'SAN FERNANDO HOTEL');
INSERT INTO `hospedaje` VALUES ('221', '2', '111', 'SANTA CRUZ CABAÑA');
INSERT INTO `hospedaje` VALUES ('222', '1', '111', 'SANTA CRUZ HOTEL');
INSERT INTO `hospedaje` VALUES ('223', '2', '112', 'CAUQUENES CABAÑA');
INSERT INTO `hospedaje` VALUES ('224', '1', '112', 'CAUQUENES HOTEL');
INSERT INTO `hospedaje` VALUES ('225', '2', '113', 'CHANCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('226', '1', '113', 'CHANCO HOTEL');
INSERT INTO `hospedaje` VALUES ('227', '2', '114', 'PELLUHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('228', '1', '114', 'PELLUHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('229', '2', '115', 'CURICO CABAÑA');
INSERT INTO `hospedaje` VALUES ('230', '1', '115', 'CURICO HOTEL');
INSERT INTO `hospedaje` VALUES ('231', '2', '116', 'HUALAÑE CABAÑA');
INSERT INTO `hospedaje` VALUES ('232', '1', '116', 'HUALAÑE HOTEL');
INSERT INTO `hospedaje` VALUES ('233', '2', '117', 'LICANTEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('234', '1', '117', 'LICANTEN HOTEL');
INSERT INTO `hospedaje` VALUES ('235', '2', '118', 'MOLINA CABAÑA');
INSERT INTO `hospedaje` VALUES ('236', '1', '118', 'MOLINA HOTEL');
INSERT INTO `hospedaje` VALUES ('237', '2', '119', 'RAUCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('238', '1', '119', 'RAUCO HOTEL');
INSERT INTO `hospedaje` VALUES ('239', '2', '120', 'ROMERAL CABAÑA');
INSERT INTO `hospedaje` VALUES ('240', '1', '120', 'ROMERAL HOTEL');
INSERT INTO `hospedaje` VALUES ('241', '2', '121', 'SAGRADA FAMILIA CABAÑA');
INSERT INTO `hospedaje` VALUES ('242', '1', '121', 'SAGRADA FAMILIA HOTEL');
INSERT INTO `hospedaje` VALUES ('243', '2', '122', 'TENO CABAÑA');
INSERT INTO `hospedaje` VALUES ('244', '1', '122', 'TENO HOTEL');
INSERT INTO `hospedaje` VALUES ('245', '2', '123', 'VICHUQUEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('246', '1', '123', 'VICHUQUEN HOTEL');
INSERT INTO `hospedaje` VALUES ('247', '2', '124', 'COLBUN CABAÑA');
INSERT INTO `hospedaje` VALUES ('248', '1', '124', 'COLBUN HOTEL');
INSERT INTO `hospedaje` VALUES ('249', '2', '125', 'LINARES CABAÑA');
INSERT INTO `hospedaje` VALUES ('250', '1', '125', 'LINARES HOTEL');
INSERT INTO `hospedaje` VALUES ('251', '2', '126', 'LONGAVI CABAÑA');
INSERT INTO `hospedaje` VALUES ('252', '1', '126', 'LONGAVI HOTEL');
INSERT INTO `hospedaje` VALUES ('253', '2', '127', 'PARRAL CABAÑA');
INSERT INTO `hospedaje` VALUES ('254', '1', '127', 'PARRAL HOTEL');
INSERT INTO `hospedaje` VALUES ('255', '2', '128', 'RETIRO CABAÑA');
INSERT INTO `hospedaje` VALUES ('256', '1', '128', 'RETIRO HOTEL');
INSERT INTO `hospedaje` VALUES ('257', '2', '129', 'SAN JAVIER CABAÑA');
INSERT INTO `hospedaje` VALUES ('258', '1', '129', 'SAN JAVIER HOTEL');
INSERT INTO `hospedaje` VALUES ('259', '2', '130', 'VILLA ALEGRE CABAÑA');
INSERT INTO `hospedaje` VALUES ('260', '1', '130', 'VILLA ALEGRE HOTEL');
INSERT INTO `hospedaje` VALUES ('261', '2', '131', 'YERBAS BUENAS CABAÑA');
INSERT INTO `hospedaje` VALUES ('262', '1', '131', 'YERBAS BUENAS HOTEL');
INSERT INTO `hospedaje` VALUES ('263', '2', '132', 'CONSTITUCION CABAÑA');
INSERT INTO `hospedaje` VALUES ('264', '1', '132', 'CONSTITUCION HOTEL');
INSERT INTO `hospedaje` VALUES ('265', '2', '133', 'CUREPTO CABAÑA');
INSERT INTO `hospedaje` VALUES ('266', '1', '133', 'CUREPTO HOTEL');
INSERT INTO `hospedaje` VALUES ('267', '2', '134', 'EMPEDRADO CABAÑA');
INSERT INTO `hospedaje` VALUES ('268', '1', '134', 'EMPEDRADO HOTEL');
INSERT INTO `hospedaje` VALUES ('269', '2', '135', 'MAULE CABAÑA');
INSERT INTO `hospedaje` VALUES ('270', '1', '135', 'MAULE HOTEL');
INSERT INTO `hospedaje` VALUES ('271', '2', '136', 'PELARCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('272', '1', '136', 'PELARCO HOTEL');
INSERT INTO `hospedaje` VALUES ('273', '2', '137', 'PENCAHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('274', '1', '137', 'PENCAHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('275', '2', '138', 'RIO CLARO CABAÑA');
INSERT INTO `hospedaje` VALUES ('276', '1', '138', 'RIO CLARO HOTEL');
INSERT INTO `hospedaje` VALUES ('277', '2', '139', 'SAN CLEMENTE CABAÑA');
INSERT INTO `hospedaje` VALUES ('278', '1', '139', 'SAN CLEMENTE HOTEL');
INSERT INTO `hospedaje` VALUES ('279', '2', '140', 'SAN RAFAEL CABAÑA');
INSERT INTO `hospedaje` VALUES ('280', '1', '140', 'SAN RAFAEL HOTEL');
INSERT INTO `hospedaje` VALUES ('281', '2', '141', 'TALCA CABAÑA');
INSERT INTO `hospedaje` VALUES ('282', '1', '141', 'TALCA HOTEL');
INSERT INTO `hospedaje` VALUES ('283', '2', '142', 'ARAUCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('284', '1', '142', 'ARAUCO HOTEL');
INSERT INTO `hospedaje` VALUES ('285', '2', '143', 'CAÑETE CABAÑA');
INSERT INTO `hospedaje` VALUES ('286', '1', '143', 'CAÑETE HOTEL');
INSERT INTO `hospedaje` VALUES ('287', '2', '144', 'CONTULMO CABAÑA');
INSERT INTO `hospedaje` VALUES ('288', '1', '144', 'CONTULMO HOTEL');
INSERT INTO `hospedaje` VALUES ('289', '2', '145', 'CURANILAHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('290', '1', '145', 'CURANILAHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('291', '2', '146', 'LEBU CABAÑA');
INSERT INTO `hospedaje` VALUES ('292', '1', '146', 'LEBU HOTEL');
INSERT INTO `hospedaje` VALUES ('293', '2', '147', 'LOS ALAMOS CABAÑA');
INSERT INTO `hospedaje` VALUES ('294', '1', '147', 'LOS ALAMOS HOTEL');
INSERT INTO `hospedaje` VALUES ('295', '2', '148', 'TIRUA CABAÑA');
INSERT INTO `hospedaje` VALUES ('296', '1', '148', 'TIRUA HOTEL');
INSERT INTO `hospedaje` VALUES ('297', '2', '149', 'ALTO BIO-BIO CABAÑA');
INSERT INTO `hospedaje` VALUES ('298', '1', '149', 'ALTO BIO-BIO HOTEL');
INSERT INTO `hospedaje` VALUES ('299', '2', '150', 'ANTUCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('300', '1', '150', 'ANTUCO HOTEL');
INSERT INTO `hospedaje` VALUES ('301', '2', '151', 'CABRERO CABAÑA');
INSERT INTO `hospedaje` VALUES ('302', '1', '151', 'CABRERO HOTEL');
INSERT INTO `hospedaje` VALUES ('303', '2', '152', 'LAJA CABAÑA');
INSERT INTO `hospedaje` VALUES ('304', '1', '152', 'LAJA HOTEL');
INSERT INTO `hospedaje` VALUES ('305', '2', '153', 'LOS ANGELES CABAÑA');
INSERT INTO `hospedaje` VALUES ('306', '1', '153', 'LOS ANGELES HOTEL');
INSERT INTO `hospedaje` VALUES ('307', '2', '154', 'MULCHEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('308', '1', '154', 'MULCHEN HOTEL');
INSERT INTO `hospedaje` VALUES ('309', '2', '155', 'NACIMIENTO CABAÑA');
INSERT INTO `hospedaje` VALUES ('310', '1', '155', 'NACIMIENTO HOTEL');
INSERT INTO `hospedaje` VALUES ('311', '2', '156', 'NEGRETE CABAÑA');
INSERT INTO `hospedaje` VALUES ('312', '1', '156', 'NEGRETE HOTEL');
INSERT INTO `hospedaje` VALUES ('313', '2', '157', 'QUILACO CABAÑA');
INSERT INTO `hospedaje` VALUES ('314', '1', '157', 'QUILACO HOTEL');
INSERT INTO `hospedaje` VALUES ('315', '2', '158', 'QUILLECO CABAÑA');
INSERT INTO `hospedaje` VALUES ('316', '1', '158', 'QUILLECO HOTEL');
INSERT INTO `hospedaje` VALUES ('317', '2', '159', 'SAN ROSENDO CABAÑA');
INSERT INTO `hospedaje` VALUES ('318', '1', '159', 'SAN ROSENDO HOTEL');
INSERT INTO `hospedaje` VALUES ('319', '2', '160', 'SANTA BARBARA CABAÑA');
INSERT INTO `hospedaje` VALUES ('320', '1', '160', 'SANTA BARBARA HOTEL');
INSERT INTO `hospedaje` VALUES ('321', '2', '161', 'TUCAPEL CABAÑA');
INSERT INTO `hospedaje` VALUES ('322', '1', '161', 'TUCAPEL HOTEL');
INSERT INTO `hospedaje` VALUES ('323', '2', '162', 'YUMBEL CABAÑA');
INSERT INTO `hospedaje` VALUES ('324', '1', '162', 'YUMBEL HOTEL');
INSERT INTO `hospedaje` VALUES ('325', '2', '163', 'CHIGUAYANTE CABAÑA');
INSERT INTO `hospedaje` VALUES ('326', '1', '163', 'CHIGUAYANTE HOTEL');
INSERT INTO `hospedaje` VALUES ('327', '2', '164', 'CONCEPCION CABAÑA');
INSERT INTO `hospedaje` VALUES ('328', '1', '164', 'CONCEPCION HOTEL');
INSERT INTO `hospedaje` VALUES ('329', '2', '165', 'CORONEL CABAÑA');
INSERT INTO `hospedaje` VALUES ('330', '1', '165', 'CORONEL HOTEL');
INSERT INTO `hospedaje` VALUES ('331', '2', '166', 'FLORIDA CABAÑA');
INSERT INTO `hospedaje` VALUES ('332', '1', '166', 'FLORIDA HOTEL');
INSERT INTO `hospedaje` VALUES ('333', '2', '167', 'HUALPEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('334', '1', '167', 'HUALPEN HOTEL');
INSERT INTO `hospedaje` VALUES ('335', '2', '168', 'HUALQUI CABAÑA');
INSERT INTO `hospedaje` VALUES ('336', '1', '168', 'HUALQUI HOTEL');
INSERT INTO `hospedaje` VALUES ('337', '2', '169', 'LOTA CABAÑA');
INSERT INTO `hospedaje` VALUES ('338', '1', '169', 'LOTA HOTEL');
INSERT INTO `hospedaje` VALUES ('339', '2', '170', 'PENCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('340', '1', '170', 'PENCO HOTEL');
INSERT INTO `hospedaje` VALUES ('341', '2', '171', 'SAN PEDRO DE LA PAZ CABAÑA');
INSERT INTO `hospedaje` VALUES ('342', '1', '171', 'SAN PEDRO DE LA PAZ HOTEL');
INSERT INTO `hospedaje` VALUES ('343', '2', '172', 'SANTA JUANA CABAÑA');
INSERT INTO `hospedaje` VALUES ('344', '1', '172', 'SANTA JUANA HOTEL');
INSERT INTO `hospedaje` VALUES ('345', '2', '173', 'TALCAHUANO CABAÑA');
INSERT INTO `hospedaje` VALUES ('346', '1', '173', 'TALCAHUANO HOTEL');
INSERT INTO `hospedaje` VALUES ('347', '2', '174', 'TOME CABAÑA');
INSERT INTO `hospedaje` VALUES ('348', '1', '174', 'TOME HOTEL');
INSERT INTO `hospedaje` VALUES ('349', '2', '175', 'BULNES CABAÑA');
INSERT INTO `hospedaje` VALUES ('350', '1', '175', 'BULNES HOTEL');
INSERT INTO `hospedaje` VALUES ('351', '2', '176', 'CHILLAN CABAÑA');
INSERT INTO `hospedaje` VALUES ('352', '1', '176', 'CHILLAN HOTEL');
INSERT INTO `hospedaje` VALUES ('353', '2', '177', 'CHILLAN VIEJO CABAÑA');
INSERT INTO `hospedaje` VALUES ('354', '1', '177', 'CHILLAN VIEJO HOTEL');
INSERT INTO `hospedaje` VALUES ('355', '2', '178', 'COFQUECURA CABAÑA');
INSERT INTO `hospedaje` VALUES ('356', '1', '178', 'COFQUECURA HOTEL');
INSERT INTO `hospedaje` VALUES ('357', '2', '179', 'COELEMU CABAÑA');
INSERT INTO `hospedaje` VALUES ('358', '1', '179', 'COELEMU HOTEL');
INSERT INTO `hospedaje` VALUES ('359', '2', '180', 'COIHUECO CABAÑA');
INSERT INTO `hospedaje` VALUES ('360', '1', '180', 'COIHUECO HOTEL');
INSERT INTO `hospedaje` VALUES ('361', '2', '181', 'EL CARMEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('362', '1', '181', 'EL CARMEN HOTEL');
INSERT INTO `hospedaje` VALUES ('363', '2', '182', 'NINHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('364', '1', '182', 'NINHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('365', '2', '183', 'ÑIQUEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('366', '1', '183', 'ÑIQUEN HOTEL');
INSERT INTO `hospedaje` VALUES ('367', '2', '184', 'PEMUCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('368', '1', '184', 'PEMUCO HOTEL');
INSERT INTO `hospedaje` VALUES ('369', '2', '185', 'PINTO CABAÑA');
INSERT INTO `hospedaje` VALUES ('370', '1', '185', 'PINTO HOTEL');
INSERT INTO `hospedaje` VALUES ('371', '2', '186', 'PORTEZUELO CABAÑA');
INSERT INTO `hospedaje` VALUES ('372', '1', '186', 'PORTEZUELO HOTEL');
INSERT INTO `hospedaje` VALUES ('373', '2', '187', 'QULLON CABAÑA');
INSERT INTO `hospedaje` VALUES ('374', '1', '187', 'QULLON HOTEL');
INSERT INTO `hospedaje` VALUES ('375', '2', '188', 'QUIRIHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('376', '1', '188', 'QUIRIHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('377', '2', '189', 'RANQUIL CABAÑA');
INSERT INTO `hospedaje` VALUES ('378', '1', '189', 'RANQUIL HOTEL');
INSERT INTO `hospedaje` VALUES ('379', '2', '190', 'SAN CARLOS CABAÑA');
INSERT INTO `hospedaje` VALUES ('380', '1', '190', 'SAN CARLOS HOTEL');
INSERT INTO `hospedaje` VALUES ('381', '2', '191', 'SAN FABIAN CABAÑA');
INSERT INTO `hospedaje` VALUES ('382', '1', '191', 'SAN FABIAN HOTEL');
INSERT INTO `hospedaje` VALUES ('383', '2', '192', 'SAN IGNACIO CABAÑA');
INSERT INTO `hospedaje` VALUES ('384', '1', '192', 'SAN IGNACIO HOTEL');
INSERT INTO `hospedaje` VALUES ('385', '2', '193', 'SAN NICOLAS CABAÑA');
INSERT INTO `hospedaje` VALUES ('386', '1', '193', 'SAN NICOLAS HOTEL');
INSERT INTO `hospedaje` VALUES ('387', '2', '194', 'TREGUACO CABAÑA');
INSERT INTO `hospedaje` VALUES ('388', '1', '194', 'TREGUACO HOTEL');
INSERT INTO `hospedaje` VALUES ('389', '2', '195', 'YUNGAY CABAÑA');
INSERT INTO `hospedaje` VALUES ('390', '1', '195', 'YUNGAY HOTEL');
INSERT INTO `hospedaje` VALUES ('391', '2', '196', 'CARAHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('392', '1', '196', 'CARAHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('393', '2', '197', 'CHOLCHOL CABAÑA');
INSERT INTO `hospedaje` VALUES ('394', '1', '197', 'CHOLCHOL HOTEL');
INSERT INTO `hospedaje` VALUES ('395', '2', '198', 'CUNCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('396', '1', '198', 'CUNCO HOTEL');
INSERT INTO `hospedaje` VALUES ('397', '2', '199', 'CURARREHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('398', '1', '199', 'CURARREHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('399', '2', '200', 'FREIRE CABAÑA');
INSERT INTO `hospedaje` VALUES ('400', '1', '200', 'FREIRE HOTEL');
INSERT INTO `hospedaje` VALUES ('401', '2', '201', 'CALVARINO CABAÑA');
INSERT INTO `hospedaje` VALUES ('402', '1', '201', 'CALVARINO HOTEL');
INSERT INTO `hospedaje` VALUES ('403', '2', '202', 'GORBEA CABAÑA');
INSERT INTO `hospedaje` VALUES ('404', '1', '202', 'GORBEA HOTEL');
INSERT INTO `hospedaje` VALUES ('405', '2', '203', 'LAUTARO CABAÑA');
INSERT INTO `hospedaje` VALUES ('406', '1', '203', 'LAUTARO HOTEL');
INSERT INTO `hospedaje` VALUES ('407', '2', '204', 'LONCOCHE CABAÑA');
INSERT INTO `hospedaje` VALUES ('408', '1', '204', 'LONCOCHE HOTEL');
INSERT INTO `hospedaje` VALUES ('409', '2', '205', 'MELIPEUCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('410', '1', '205', 'MELIPEUCO HOTEL');
INSERT INTO `hospedaje` VALUES ('411', '2', '206', 'NUEVA IMPERIAL CABAÑA');
INSERT INTO `hospedaje` VALUES ('412', '1', '206', 'NUEVA IMPERIAL HOTEL');
INSERT INTO `hospedaje` VALUES ('413', '2', '207', 'PADRE LAS CASAS CABAÑA');
INSERT INTO `hospedaje` VALUES ('414', '1', '207', 'PADRE LAS CASAS HOTEL');
INSERT INTO `hospedaje` VALUES ('415', '2', '208', 'PERQUENCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('416', '1', '208', 'PERQUENCO HOTEL');
INSERT INTO `hospedaje` VALUES ('417', '2', '209', 'PITRUFQUEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('418', '1', '209', 'PITRUFQUEN HOTEL');
INSERT INTO `hospedaje` VALUES ('419', '2', '210', 'PUCON CABAÑA');
INSERT INTO `hospedaje` VALUES ('420', '1', '210', 'PUCON HOTEL');
INSERT INTO `hospedaje` VALUES ('421', '2', '211', 'SAAVEDRA CABAÑA');
INSERT INTO `hospedaje` VALUES ('422', '1', '211', 'SAAVEDRA HOTEL');
INSERT INTO `hospedaje` VALUES ('423', '2', '212', 'TEMUCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('424', '1', '212', 'TEMUCO HOTEL');
INSERT INTO `hospedaje` VALUES ('425', '2', '213', 'TEODORO SCHMIDT CABAÑA');
INSERT INTO `hospedaje` VALUES ('426', '1', '213', 'TEODORO SCHMIDT HOTEL');
INSERT INTO `hospedaje` VALUES ('427', '2', '214', 'TOLTEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('428', '1', '214', 'TOLTEN HOTEL');
INSERT INTO `hospedaje` VALUES ('429', '2', '215', 'VILCUN CABAÑA');
INSERT INTO `hospedaje` VALUES ('430', '1', '215', 'VILCUN HOTEL');
INSERT INTO `hospedaje` VALUES ('431', '2', '216', 'VILLARICA CABAÑA');
INSERT INTO `hospedaje` VALUES ('432', '1', '216', 'VILLARICA HOTEL');
INSERT INTO `hospedaje` VALUES ('433', '2', '217', 'ANGOL CABAÑA');
INSERT INTO `hospedaje` VALUES ('434', '1', '217', 'ANGOL HOTEL');
INSERT INTO `hospedaje` VALUES ('435', '2', '218', 'COLLIPULLI CABAÑA');
INSERT INTO `hospedaje` VALUES ('436', '1', '218', 'COLLIPULLI HOTEL');
INSERT INTO `hospedaje` VALUES ('437', '2', '219', 'CURACAUTIN CABAÑA');
INSERT INTO `hospedaje` VALUES ('438', '1', '219', 'CURACAUTIN HOTEL');
INSERT INTO `hospedaje` VALUES ('439', '2', '220', 'ERCILLA CABAÑA');
INSERT INTO `hospedaje` VALUES ('440', '1', '220', 'ERCILLA HOTEL');
INSERT INTO `hospedaje` VALUES ('441', '2', '221', 'LONQUIMAY CABAÑA');
INSERT INTO `hospedaje` VALUES ('442', '1', '221', 'LONQUIMAY HOTEL');
INSERT INTO `hospedaje` VALUES ('443', '2', '222', 'LOS SAUCES CABAÑA');
INSERT INTO `hospedaje` VALUES ('444', '1', '222', 'LOS SAUCES HOTEL');
INSERT INTO `hospedaje` VALUES ('445', '2', '223', 'LUMACO CABAÑA');
INSERT INTO `hospedaje` VALUES ('446', '1', '223', 'LUMACO HOTEL');
INSERT INTO `hospedaje` VALUES ('447', '2', '224', 'PUREN CABAÑA');
INSERT INTO `hospedaje` VALUES ('448', '1', '224', 'PUREN HOTEL');
INSERT INTO `hospedaje` VALUES ('449', '2', '225', 'RENAICO CABAÑA');
INSERT INTO `hospedaje` VALUES ('450', '1', '225', 'RENAICO HOTEL');
INSERT INTO `hospedaje` VALUES ('451', '2', '226', 'TRAIGUEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('452', '1', '226', 'TRAIGUEN HOTEL');
INSERT INTO `hospedaje` VALUES ('453', '2', '227', 'VICTORIA CABAÑA');
INSERT INTO `hospedaje` VALUES ('454', '1', '227', 'VICTORIA HOTEL');
INSERT INTO `hospedaje` VALUES ('455', '2', '228', 'ANCUD CABAÑA');
INSERT INTO `hospedaje` VALUES ('456', '1', '228', 'ANCUD HOTEL');
INSERT INTO `hospedaje` VALUES ('457', '2', '229', 'CASTRO CABAÑA');
INSERT INTO `hospedaje` VALUES ('458', '1', '229', 'CASTRO HOTEL');
INSERT INTO `hospedaje` VALUES ('459', '2', '230', 'CHONCHI CABAÑA');
INSERT INTO `hospedaje` VALUES ('460', '1', '230', 'CHONCHI HOTEL');
INSERT INTO `hospedaje` VALUES ('461', '2', '231', 'CURACO DE VELEZ CABAÑA');
INSERT INTO `hospedaje` VALUES ('462', '1', '231', 'CURACO DE VELEZ HOTEL');
INSERT INTO `hospedaje` VALUES ('463', '2', '232', 'DALCAHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('464', '1', '232', 'DALCAHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('465', '2', '233', 'PUQUELDON CABAÑA');
INSERT INTO `hospedaje` VALUES ('466', '1', '233', 'PUQUELDON HOTEL');
INSERT INTO `hospedaje` VALUES ('467', '2', '234', 'QUEILEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('468', '1', '234', 'QUEILEN HOTEL');
INSERT INTO `hospedaje` VALUES ('469', '2', '235', 'QUEMCHI CABAÑA');
INSERT INTO `hospedaje` VALUES ('470', '1', '235', 'QUEMCHI HOTEL');
INSERT INTO `hospedaje` VALUES ('471', '2', '236', 'QUELLON CABAÑA');
INSERT INTO `hospedaje` VALUES ('472', '1', '236', 'QUELLON HOTEL');
INSERT INTO `hospedaje` VALUES ('473', '2', '237', 'QUINCHAO CABAÑA');
INSERT INTO `hospedaje` VALUES ('474', '1', '237', 'QUINCHAO HOTEL');
INSERT INTO `hospedaje` VALUES ('475', '2', '238', 'CALBUCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('476', '1', '238', 'CALBUCO HOTEL');
INSERT INTO `hospedaje` VALUES ('477', '2', '239', 'COCHAMO CABAÑA');
INSERT INTO `hospedaje` VALUES ('478', '1', '239', 'COCHAMO HOTEL');
INSERT INTO `hospedaje` VALUES ('479', '2', '240', 'FRESIA CABAÑA');
INSERT INTO `hospedaje` VALUES ('480', '1', '240', 'FRESIA HOTEL');
INSERT INTO `hospedaje` VALUES ('481', '2', '241', 'FRUTILLAR CABAÑA');
INSERT INTO `hospedaje` VALUES ('482', '1', '241', 'FRUTILLAR HOTEL');
INSERT INTO `hospedaje` VALUES ('483', '2', '242', 'LLANQUIHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('484', '1', '242', 'LLANQUIHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('485', '2', '243', 'LOS MUERMOS CABAÑA');
INSERT INTO `hospedaje` VALUES ('486', '1', '243', 'LOS MUERMOS HOTEL');
INSERT INTO `hospedaje` VALUES ('487', '2', '244', 'MAULLIN CABAÑA');
INSERT INTO `hospedaje` VALUES ('488', '1', '244', 'MAULLIN HOTEL');
INSERT INTO `hospedaje` VALUES ('489', '2', '245', 'PUERTO MONTT CABAÑA');
INSERT INTO `hospedaje` VALUES ('490', '1', '245', 'PUERTO MONTT HOTEL');
INSERT INTO `hospedaje` VALUES ('491', '2', '246', 'PUERTO VARAS CABAÑA');
INSERT INTO `hospedaje` VALUES ('492', '1', '246', 'PUERTO VARAS HOTEL');
INSERT INTO `hospedaje` VALUES ('493', '2', '247', 'OSORNO CABAÑA');
INSERT INTO `hospedaje` VALUES ('494', '1', '247', 'OSORNO HOTEL');
INSERT INTO `hospedaje` VALUES ('495', '2', '248', 'PUERTO OCTAY CABAÑA');
INSERT INTO `hospedaje` VALUES ('496', '1', '248', 'PUERTO OCTAY HOTEL');
INSERT INTO `hospedaje` VALUES ('497', '2', '249', 'PURRANQUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('498', '1', '249', 'PURRANQUE HOTEL');
INSERT INTO `hospedaje` VALUES ('499', '2', '250', 'PUYEHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('500', '1', '250', 'PUYEHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('501', '2', '251', 'RIO NEGRO CABAÑA');
INSERT INTO `hospedaje` VALUES ('502', '1', '251', 'RIO NEGRO HOTEL');
INSERT INTO `hospedaje` VALUES ('503', '2', '252', 'SAN JUAN DE LA COSTA CABAÑA');
INSERT INTO `hospedaje` VALUES ('504', '1', '252', 'SAN JUAN DE LA COSTA HOTEL');
INSERT INTO `hospedaje` VALUES ('505', '2', '253', 'SAN PABLO CABAÑA');
INSERT INTO `hospedaje` VALUES ('506', '1', '253', 'SAN PABLO HOTEL');
INSERT INTO `hospedaje` VALUES ('507', '2', '254', 'CHAITEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('508', '1', '254', 'CHAITEN HOTEL');
INSERT INTO `hospedaje` VALUES ('509', '2', '255', 'FUTALEUFU CABAÑA');
INSERT INTO `hospedaje` VALUES ('510', '1', '255', 'FUTALEUFU HOTEL');
INSERT INTO `hospedaje` VALUES ('511', '2', '256', 'HUALAIHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('512', '1', '256', 'HUALAIHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('513', '2', '257', 'PALENA CABAÑA');
INSERT INTO `hospedaje` VALUES ('514', '1', '257', 'PALENA HOTEL');
INSERT INTO `hospedaje` VALUES ('515', '2', '258', 'AISEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('516', '1', '258', 'AISEN HOTEL');
INSERT INTO `hospedaje` VALUES ('517', '2', '259', 'SISNES CABAÑA');
INSERT INTO `hospedaje` VALUES ('518', '1', '259', 'SISNES HOTEL');
INSERT INTO `hospedaje` VALUES ('519', '2', '260', 'GUAITECAS CABAÑA');
INSERT INTO `hospedaje` VALUES ('520', '1', '260', 'GUAITECAS HOTEL');
INSERT INTO `hospedaje` VALUES ('521', '2', '261', 'COCHRANE CABAÑA');
INSERT INTO `hospedaje` VALUES ('522', '1', '261', 'COCHRANE HOTEL');
INSERT INTO `hospedaje` VALUES ('523', '2', '262', 'O\'HIGGINS CABAÑA');
INSERT INTO `hospedaje` VALUES ('524', '1', '262', 'O\'HIGGINS HOTEL');
INSERT INTO `hospedaje` VALUES ('525', '2', '263', 'TORTEL CABAÑA');
INSERT INTO `hospedaje` VALUES ('526', '1', '263', 'TORTEL HOTEL');
INSERT INTO `hospedaje` VALUES ('527', '2', '264', 'COIHAIQUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('528', '1', '264', 'COIHAIQUE HOTEL');
INSERT INTO `hospedaje` VALUES ('529', '2', '265', 'LAGO VERDE CABAÑA');
INSERT INTO `hospedaje` VALUES ('530', '1', '265', 'LAGO VERDE HOTEL');
INSERT INTO `hospedaje` VALUES ('531', '2', '266', 'CHILE CHICO CABAÑA');
INSERT INTO `hospedaje` VALUES ('532', '1', '266', 'CHILE CHICO HOTEL');
INSERT INTO `hospedaje` VALUES ('533', '2', '267', 'RIO IBAÑES CABAÑA');
INSERT INTO `hospedaje` VALUES ('534', '1', '267', 'RIO IBAÑES HOTEL');
INSERT INTO `hospedaje` VALUES ('535', '2', '268', 'ANTARTICA CABAÑA');
INSERT INTO `hospedaje` VALUES ('536', '1', '268', 'ANTARTICA HOTEL');
INSERT INTO `hospedaje` VALUES ('537', '2', '269', 'CABO DE HORNOS CABAÑA');
INSERT INTO `hospedaje` VALUES ('538', '1', '269', 'CABO DE HORNOS HOTEL');
INSERT INTO `hospedaje` VALUES ('539', '2', '270', 'LAGUNA BLANCA CABAÑA');
INSERT INTO `hospedaje` VALUES ('540', '1', '270', 'LAGUNA BLANCA HOTEL');
INSERT INTO `hospedaje` VALUES ('541', '2', '271', 'PUNTA ARENAS CABAÑA');
INSERT INTO `hospedaje` VALUES ('542', '1', '271', 'PUNTA ARENAS HOTEL');
INSERT INTO `hospedaje` VALUES ('543', '2', '272', 'RIO VERDE CABAÑA');
INSERT INTO `hospedaje` VALUES ('544', '1', '272', 'RIO VERDE HOTEL');
INSERT INTO `hospedaje` VALUES ('545', '2', '273', 'SAN GREGORIO CABAÑA');
INSERT INTO `hospedaje` VALUES ('546', '1', '273', 'SAN GREGORIO HOTEL');
INSERT INTO `hospedaje` VALUES ('547', '2', '274', 'PORVENIR CABAÑA');
INSERT INTO `hospedaje` VALUES ('548', '1', '274', 'PORVENIR HOTEL');
INSERT INTO `hospedaje` VALUES ('549', '2', '275', 'PRIMAVERA CABAÑA');
INSERT INTO `hospedaje` VALUES ('550', '1', '275', 'PRIMAVERA HOTEL');
INSERT INTO `hospedaje` VALUES ('551', '2', '276', 'TIMAUKEL CABAÑA');
INSERT INTO `hospedaje` VALUES ('552', '1', '276', 'TIMAUKEL HOTEL');
INSERT INTO `hospedaje` VALUES ('553', '2', '277', 'NATALES CABAÑA');
INSERT INTO `hospedaje` VALUES ('554', '1', '277', 'NATALES HOTEL');
INSERT INTO `hospedaje` VALUES ('555', '2', '278', 'TORRES DEL PAINE CABAÑA');
INSERT INTO `hospedaje` VALUES ('556', '1', '278', 'TORRES DEL PAINE HOTEL');
INSERT INTO `hospedaje` VALUES ('557', '2', '279', 'CORRAL CABAÑA');
INSERT INTO `hospedaje` VALUES ('558', '1', '279', 'CORRAL HOTEL');
INSERT INTO `hospedaje` VALUES ('559', '2', '280', 'LANCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('560', '1', '280', 'LANCO HOTEL');
INSERT INTO `hospedaje` VALUES ('561', '2', '281', 'LOS LAGOS CABAÑA');
INSERT INTO `hospedaje` VALUES ('562', '1', '281', 'LOS LAGOS HOTEL');
INSERT INTO `hospedaje` VALUES ('563', '2', '282', 'MAFIL CABAÑA');
INSERT INTO `hospedaje` VALUES ('564', '1', '282', 'MAFIL HOTEL');
INSERT INTO `hospedaje` VALUES ('565', '2', '283', 'MARIQUINA CABAÑA');
INSERT INTO `hospedaje` VALUES ('566', '1', '283', 'MARIQUINA HOTEL');
INSERT INTO `hospedaje` VALUES ('567', '2', '284', 'PAILLACO CABAÑA');
INSERT INTO `hospedaje` VALUES ('568', '1', '284', 'PAILLACO HOTEL');
INSERT INTO `hospedaje` VALUES ('569', '2', '285', 'PANGUIPULLI CABAÑA');
INSERT INTO `hospedaje` VALUES ('570', '1', '285', 'PANGUIPULLI HOTEL');
INSERT INTO `hospedaje` VALUES ('571', '2', '286', 'VALDIVIA CABAÑA');
INSERT INTO `hospedaje` VALUES ('572', '1', '286', 'VALDIVIA HOTEL');
INSERT INTO `hospedaje` VALUES ('573', '2', '287', 'FUTRONO CABAÑA');
INSERT INTO `hospedaje` VALUES ('574', '1', '287', 'FUTRONO HOTEL');
INSERT INTO `hospedaje` VALUES ('575', '2', '288', 'LA UNION CABAÑA');
INSERT INTO `hospedaje` VALUES ('576', '1', '288', 'LA UNION HOTEL');
INSERT INTO `hospedaje` VALUES ('577', '2', '289', 'LAGO RANCO CABAÑA');
INSERT INTO `hospedaje` VALUES ('578', '1', '289', 'LAGO RANCO HOTEL');
INSERT INTO `hospedaje` VALUES ('579', '2', '290', 'RIO BUENO CABAÑA');
INSERT INTO `hospedaje` VALUES ('580', '1', '290', 'RIO BUENO HOTEL');
INSERT INTO `hospedaje` VALUES ('581', '2', '291', 'ARICA CABAÑA');
INSERT INTO `hospedaje` VALUES ('582', '1', '291', 'ARICA HOTEL');
INSERT INTO `hospedaje` VALUES ('583', '2', '292', 'CAMARONES CABAÑA');
INSERT INTO `hospedaje` VALUES ('584', '1', '292', 'CAMARONES HOTEL');
INSERT INTO `hospedaje` VALUES ('585', '2', '293', 'GENERAL LAGOS CABAÑA');
INSERT INTO `hospedaje` VALUES ('586', '1', '293', 'GENERAL LAGOS HOTEL');
INSERT INTO `hospedaje` VALUES ('587', '2', '294', 'PUTRE CABAÑA');
INSERT INTO `hospedaje` VALUES ('588', '1', '294', 'PUTRE HOTEL');
INSERT INTO `hospedaje` VALUES ('589', '2', '295', 'CERRILLOS CABAÑA');
INSERT INTO `hospedaje` VALUES ('590', '1', '295', 'CERRILLOS HOTEL');
INSERT INTO `hospedaje` VALUES ('591', '2', '296', 'CERRO NAVIA CABAÑA');
INSERT INTO `hospedaje` VALUES ('592', '1', '296', 'CERRO NAVIA HOTEL');
INSERT INTO `hospedaje` VALUES ('593', '2', '297', 'CONCHALI CABAÑA');
INSERT INTO `hospedaje` VALUES ('594', '1', '297', 'CONCHALI HOTEL');
INSERT INTO `hospedaje` VALUES ('595', '2', '298', 'EL BOSQUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('596', '1', '298', 'EL BOSQUE HOTEL');
INSERT INTO `hospedaje` VALUES ('597', '2', '299', 'ESTACION CENTRAL CABAÑA');
INSERT INTO `hospedaje` VALUES ('598', '1', '299', 'ESTACION CENTRAL HOTEL');
INSERT INTO `hospedaje` VALUES ('599', '2', '300', 'HUECHURABA CABAÑA');
INSERT INTO `hospedaje` VALUES ('600', '1', '300', 'HUECHURABA HOTEL');
INSERT INTO `hospedaje` VALUES ('601', '2', '301', 'INDEPENDENCIA CABAÑA');
INSERT INTO `hospedaje` VALUES ('602', '1', '301', 'INDEPENDENCIA HOTEL');
INSERT INTO `hospedaje` VALUES ('603', '2', '302', 'LA CISTERNA CABAÑA');
INSERT INTO `hospedaje` VALUES ('604', '1', '302', 'LA CISTERNA HOTEL');
INSERT INTO `hospedaje` VALUES ('605', '2', '303', 'LA GRANJA CABAÑA');
INSERT INTO `hospedaje` VALUES ('606', '1', '303', 'LA GRANJA HOTEL');
INSERT INTO `hospedaje` VALUES ('607', '2', '304', 'LA FLORIDA CABAÑA');
INSERT INTO `hospedaje` VALUES ('608', '1', '304', 'LA FLORIDA HOTEL');
INSERT INTO `hospedaje` VALUES ('609', '2', '305', 'LA PINTANA CABAÑA');
INSERT INTO `hospedaje` VALUES ('610', '1', '305', 'LA PINTANA HOTEL');
INSERT INTO `hospedaje` VALUES ('611', '2', '306', 'LA REINA CABAÑA');
INSERT INTO `hospedaje` VALUES ('612', '1', '306', 'LA REINA HOTEL');
INSERT INTO `hospedaje` VALUES ('613', '2', '307', 'LAS CONDES CABAÑA');
INSERT INTO `hospedaje` VALUES ('614', '1', '307', 'LAS CONDES HOTEL');
INSERT INTO `hospedaje` VALUES ('615', '2', '308', 'LO BARNECHEA CABAÑA');
INSERT INTO `hospedaje` VALUES ('616', '1', '308', 'LO BARNECHEA HOTEL');
INSERT INTO `hospedaje` VALUES ('617', '2', '309', 'LO ESPEJO CABAÑA');
INSERT INTO `hospedaje` VALUES ('618', '1', '309', 'LO ESPEJO HOTEL');
INSERT INTO `hospedaje` VALUES ('619', '2', '310', 'LO PRADO CABAÑA');
INSERT INTO `hospedaje` VALUES ('620', '1', '310', 'LO PRADO HOTEL');
INSERT INTO `hospedaje` VALUES ('621', '2', '311', 'MACUL CABAÑA');
INSERT INTO `hospedaje` VALUES ('622', '1', '311', 'MACUL HOTEL');
INSERT INTO `hospedaje` VALUES ('623', '2', '312', 'MAIPU CABAÑA');
INSERT INTO `hospedaje` VALUES ('624', '1', '312', 'MAIPU HOTEL');
INSERT INTO `hospedaje` VALUES ('625', '2', '313', 'ÑUÑOA CABAÑA');
INSERT INTO `hospedaje` VALUES ('626', '1', '313', 'ÑUÑOA HOTEL');
INSERT INTO `hospedaje` VALUES ('627', '2', '314', 'PEDRO AGUIRRE CERDA CABAÑA');
INSERT INTO `hospedaje` VALUES ('628', '1', '314', 'PEDRO AGUIRRE CERDA HOTEL');
INSERT INTO `hospedaje` VALUES ('629', '2', '315', 'PEÑALOLEN CABAÑA');
INSERT INTO `hospedaje` VALUES ('630', '1', '315', 'PEÑALOLEN HOTEL');
INSERT INTO `hospedaje` VALUES ('631', '2', '316', 'PROVIDENCIA CABAÑA');
INSERT INTO `hospedaje` VALUES ('632', '1', '316', 'PROVIDENCIA HOTEL');
INSERT INTO `hospedaje` VALUES ('633', '2', '317', 'PUDAHUEL CABAÑA');
INSERT INTO `hospedaje` VALUES ('634', '1', '317', 'PUDAHUEL HOTEL');
INSERT INTO `hospedaje` VALUES ('635', '2', '318', 'QUILICURA CABAÑA');
INSERT INTO `hospedaje` VALUES ('636', '1', '318', 'QUILICURA HOTEL');
INSERT INTO `hospedaje` VALUES ('637', '2', '319', 'QUINTA NORMAL CABAÑA');
INSERT INTO `hospedaje` VALUES ('638', '1', '319', 'QUINTA NORMAL HOTEL');
INSERT INTO `hospedaje` VALUES ('639', '2', '320', 'RECOLETA CABAÑA');
INSERT INTO `hospedaje` VALUES ('640', '1', '320', 'RECOLETA HOTEL');
INSERT INTO `hospedaje` VALUES ('641', '2', '321', 'RENCA CABAÑA');
INSERT INTO `hospedaje` VALUES ('642', '1', '321', 'RENCA HOTEL');
INSERT INTO `hospedaje` VALUES ('643', '2', '322', 'SAN MIGUEL CABAÑA');
INSERT INTO `hospedaje` VALUES ('644', '1', '322', 'SAN MIGUEL HOTEL');
INSERT INTO `hospedaje` VALUES ('645', '2', '323', 'SAN JOAQUIN CABAÑA');
INSERT INTO `hospedaje` VALUES ('646', '1', '323', 'SAN JOAQUIN HOTEL');
INSERT INTO `hospedaje` VALUES ('647', '2', '324', 'SAN RAMON CABAÑA');
INSERT INTO `hospedaje` VALUES ('648', '1', '324', 'SAN RAMON HOTEL');
INSERT INTO `hospedaje` VALUES ('649', '2', '325', 'SANTIAGO CABAÑA');
INSERT INTO `hospedaje` VALUES ('650', '1', '325', 'SANTIAGO HOTEL');
INSERT INTO `hospedaje` VALUES ('651', '2', '326', 'VITACURA CABAÑA');
INSERT INTO `hospedaje` VALUES ('652', '1', '326', 'VITACURA HOTEL');
INSERT INTO `hospedaje` VALUES ('653', '2', '327', 'COLINA CABAÑA');
INSERT INTO `hospedaje` VALUES ('654', '1', '327', 'COLINA HOTEL');
INSERT INTO `hospedaje` VALUES ('655', '2', '328', 'LAMPA CABAÑA');
INSERT INTO `hospedaje` VALUES ('656', '1', '328', 'LAMPA HOTEL');
INSERT INTO `hospedaje` VALUES ('657', '2', '329', 'TIL-TIL CABAÑA');
INSERT INTO `hospedaje` VALUES ('658', '1', '329', 'TIL-TIL HOTEL');
INSERT INTO `hospedaje` VALUES ('659', '2', '330', 'PIRQUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('660', '1', '330', 'PIRQUE HOTEL');
INSERT INTO `hospedaje` VALUES ('661', '2', '331', 'PUENTE ALTO CABAÑA');
INSERT INTO `hospedaje` VALUES ('662', '1', '331', 'PUENTE ALTO HOTEL');
INSERT INTO `hospedaje` VALUES ('663', '2', '332', 'SAN JOSE DE MAIPO CABAÑA');
INSERT INTO `hospedaje` VALUES ('664', '1', '332', 'SAN JOSE DE MAIPO HOTEL');
INSERT INTO `hospedaje` VALUES ('665', '2', '333', 'BUIN CABAÑA');
INSERT INTO `hospedaje` VALUES ('666', '1', '333', 'BUIN HOTEL');
INSERT INTO `hospedaje` VALUES ('667', '2', '334', 'CALERA DE TANGO CABAÑA');
INSERT INTO `hospedaje` VALUES ('668', '1', '334', 'CALERA DE TANGO HOTEL');
INSERT INTO `hospedaje` VALUES ('669', '2', '335', 'PAINE CABAÑA');
INSERT INTO `hospedaje` VALUES ('670', '1', '335', 'PAINE HOTEL');
INSERT INTO `hospedaje` VALUES ('671', '2', '336', 'SAN BERNARDO CABAÑA');
INSERT INTO `hospedaje` VALUES ('672', '1', '336', 'SAN BERNARDO HOTEL');
INSERT INTO `hospedaje` VALUES ('673', '2', '337', 'ALHUE CABAÑA');
INSERT INTO `hospedaje` VALUES ('674', '1', '337', 'ALHUE HOTEL');
INSERT INTO `hospedaje` VALUES ('675', '2', '338', 'CURACAVI CABAÑA');
INSERT INTO `hospedaje` VALUES ('676', '1', '338', 'CURACAVI HOTEL');
INSERT INTO `hospedaje` VALUES ('677', '2', '339', 'MARIA PINTO CABAÑA');
INSERT INTO `hospedaje` VALUES ('678', '1', '339', 'MARIA PINTO HOTEL');
INSERT INTO `hospedaje` VALUES ('679', '2', '340', 'MELIPILLA CABAÑA');
INSERT INTO `hospedaje` VALUES ('680', '1', '340', 'MELIPILLA HOTEL');
INSERT INTO `hospedaje` VALUES ('681', '2', '341', 'SAN PEDRO CABAÑA');
INSERT INTO `hospedaje` VALUES ('682', '1', '341', 'SAN PEDRO HOTEL');
INSERT INTO `hospedaje` VALUES ('683', '2', '342', 'EL MONTE CABAÑA');
INSERT INTO `hospedaje` VALUES ('684', '1', '342', 'EL MONTE HOTEL');
INSERT INTO `hospedaje` VALUES ('685', '2', '343', 'ISLA DE MAIPO CABAÑA');
INSERT INTO `hospedaje` VALUES ('686', '1', '343', 'ISLA DE MAIPO HOTEL');
INSERT INTO `hospedaje` VALUES ('687', '2', '344', 'PADRE HURTADO CABAÑA');
INSERT INTO `hospedaje` VALUES ('688', '1', '344', 'PADRE HURTADO HOTEL');
INSERT INTO `hospedaje` VALUES ('689', '2', '345', 'PEÑAFLOR CABAÑA');
INSERT INTO `hospedaje` VALUES ('690', '1', '345', 'PEÑAFLOR HOTEL');
INSERT INTO `hospedaje` VALUES ('691', '2', '346', 'TALAGANTE CABAÑA');
INSERT INTO `hospedaje` VALUES ('692', '1', '346', 'TALAGANTE HOTEL');

-- ----------------------------
-- Table structure for oferta
-- ----------------------------
DROP TABLE IF EXISTS `oferta`;
CREATE TABLE `oferta` (
  `id_oferta` int(11) NOT NULL AUTO_INCREMENT,
  `id_transporte` int(11) NOT NULL,
  `id_hospedaje` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_datos_usuario` int(11) DEFAULT NULL,
  `monto_total_oferta` int(11) NOT NULL,
  `monto_incremental` int(11) NOT NULL,
  `cantidad_dias_oferta` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `fecha_comprobante_oferta` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_oferta`),
  KEY `id_hospedaje` (`id_hospedaje`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `oferta_ibfk_1` FOREIGN KEY (`id_hospedaje`) REFERENCES `hospedaje` (`id_hospedaje`),
  CONSTRAINT `oferta_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oferta
-- ----------------------------

-- ----------------------------
-- Table structure for perfil
-- ----------------------------
DROP TABLE IF EXISTS `perfil`;
CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_perfil` varchar(20) NOT NULL,
  PRIMARY KEY (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of perfil
-- ----------------------------
INSERT INTO `perfil` VALUES ('1', 'ADMINISTRADOR');
INSERT INTO `perfil` VALUES ('2', 'AGENTE');
INSERT INTO `perfil` VALUES ('3', 'CLIENTE');

-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL AUTO_INCREMENT,
  `id_region` int(11) NOT NULL,
  `nombre_provincia` varchar(50) NOT NULL,
  PRIMARY KEY (`id_provincia`),
  KEY `id_region` (`id_region`),
  CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `region` (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of provincia
-- ----------------------------
INSERT INTO `provincia` VALUES ('1', '1', 'IQUIQUE');
INSERT INTO `provincia` VALUES ('2', '1', 'EL TAMARUGAL');
INSERT INTO `provincia` VALUES ('3', '2', 'ANTOFAGASTA');
INSERT INTO `provincia` VALUES ('4', '2', 'EL LOA');
INSERT INTO `provincia` VALUES ('5', '2', 'TOCOPILLA');
INSERT INTO `provincia` VALUES ('6', '3', 'CHAÑARAL');
INSERT INTO `provincia` VALUES ('7', '3', 'COPIAPO');
INSERT INTO `provincia` VALUES ('8', '3', 'HUASCO');
INSERT INTO `provincia` VALUES ('9', '4', 'CHOAPA');
INSERT INTO `provincia` VALUES ('10', '4', 'ELQUI');
INSERT INTO `provincia` VALUES ('11', '4', 'LIMARI');
INSERT INTO `provincia` VALUES ('12', '5', 'ISLA DE PASCUA');
INSERT INTO `provincia` VALUES ('13', '5', 'LOS ANDES');
INSERT INTO `provincia` VALUES ('14', '5', 'PETORCA');
INSERT INTO `provincia` VALUES ('15', '5', 'QUILLOTA');
INSERT INTO `provincia` VALUES ('16', '5', 'SAN ANTONIO');
INSERT INTO `provincia` VALUES ('17', '5', 'SAN FELIPE DE ACONCAGUA');
INSERT INTO `provincia` VALUES ('18', '5', 'VALPARAISO');
INSERT INTO `provincia` VALUES ('19', '6', 'CACHAPOAL');
INSERT INTO `provincia` VALUES ('20', '6', 'CARDENAL CARO');
INSERT INTO `provincia` VALUES ('21', '6', 'COLCHAGUA');
INSERT INTO `provincia` VALUES ('22', '7', 'CAUQUENES');
INSERT INTO `provincia` VALUES ('23', '7', 'CURICO');
INSERT INTO `provincia` VALUES ('24', '7', 'LINARES');
INSERT INTO `provincia` VALUES ('25', '7', 'TALCA');
INSERT INTO `provincia` VALUES ('26', '8', 'ARAUCO');
INSERT INTO `provincia` VALUES ('27', '8', 'BIO-BIO');
INSERT INTO `provincia` VALUES ('28', '8', 'CONCEPCION');
INSERT INTO `provincia` VALUES ('29', '8', 'ÑUBLE');
INSERT INTO `provincia` VALUES ('30', '9', 'CAUTIN');
INSERT INTO `provincia` VALUES ('31', '9', 'MALLECO');
INSERT INTO `provincia` VALUES ('32', '10', 'CHILOE');
INSERT INTO `provincia` VALUES ('33', '10', 'LLANQUIHUE');
INSERT INTO `provincia` VALUES ('34', '10', 'OSORNO');
INSERT INTO `provincia` VALUES ('35', '10', 'PALENA');
INSERT INTO `provincia` VALUES ('36', '11', 'AISEN');
INSERT INTO `provincia` VALUES ('37', '11', 'CAPITAN PRAT');
INSERT INTO `provincia` VALUES ('38', '11', 'COIHAIQUE');
INSERT INTO `provincia` VALUES ('39', '11', 'GENERAL CARRERA');
INSERT INTO `provincia` VALUES ('40', '12', 'ANTARTICA CHILENA');
INSERT INTO `provincia` VALUES ('41', '12', 'MAGALLANES');
INSERT INTO `provincia` VALUES ('42', '12', 'TIERRA DEL FUEGO');
INSERT INTO `provincia` VALUES ('43', '12', 'ULTIMA ESPERANZA');
INSERT INTO `provincia` VALUES ('44', '13', 'VALDIVIA');
INSERT INTO `provincia` VALUES ('45', '13', 'RANCO');
INSERT INTO `provincia` VALUES ('46', '14', 'ARICA');
INSERT INTO `provincia` VALUES ('47', '14', 'PARINACOTA');
INSERT INTO `provincia` VALUES ('48', '15', 'SANTIAGO');
INSERT INTO `provincia` VALUES ('49', '15', 'CHACABUCO');
INSERT INTO `provincia` VALUES ('50', '15', 'CORDILLERA');
INSERT INTO `provincia` VALUES ('51', '15', 'MAIPO');
INSERT INTO `provincia` VALUES ('52', '15', 'MELIPILLA');
INSERT INTO `provincia` VALUES ('53', '15', 'TALAGANTE');

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `id_region` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_region` varchar(50) NOT NULL,
  `sigla_region` varchar(5) NOT NULL,
  PRIMARY KEY (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES ('1', 'TARAPACA', 'I');
INSERT INTO `region` VALUES ('2', 'ANTOFAGASTA', 'II');
INSERT INTO `region` VALUES ('3', 'ATACAMA', 'III');
INSERT INTO `region` VALUES ('4', 'COQUIMBO', 'IV');
INSERT INTO `region` VALUES ('5', 'VALPARAISO', 'V');
INSERT INTO `region` VALUES ('6', 'LIBERTADOR GENERAL BERNARDO O HIGGINS', 'VI');
INSERT INTO `region` VALUES ('7', 'MAULE', 'VII');
INSERT INTO `region` VALUES ('8', 'BIO-BIO', 'VIII');
INSERT INTO `region` VALUES ('9', 'LA ARAUCANIA', 'IX');
INSERT INTO `region` VALUES ('10', 'LOS LAGOS', 'X');
INSERT INTO `region` VALUES ('11', 'AISEN DEL GENERAL IBAÑES DEL CAMPO', 'XI');
INSERT INTO `region` VALUES ('12', 'MAGALLANES Y DE LA ANTARTICA CHILENA', 'XII');
INSERT INTO `region` VALUES ('13', 'LOS RIOS', 'XIV');
INSERT INTO `region` VALUES ('14', 'ARICA Y PARINACOTA', 'XV');
INSERT INTO `region` VALUES ('15', 'METROPOLITANA', 'RM');

-- ----------------------------
-- Table structure for tipo_cliente
-- ----------------------------
DROP TABLE IF EXISTS `tipo_cliente`;
CREATE TABLE `tipo_cliente` (
  `id_tipo_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_cliente` varchar(20) NOT NULL,
  PRIMARY KEY (`id_tipo_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipo_cliente
-- ----------------------------
INSERT INTO `tipo_cliente` VALUES ('1', 'UNIVERSIDAD');
INSERT INTO `tipo_cliente` VALUES ('2', 'INSTITUTO');
INSERT INTO `tipo_cliente` VALUES ('3', 'COLEGIO');
INSERT INTO `tipo_cliente` VALUES ('4', 'LICEO');

-- ----------------------------
-- Table structure for tipo_hospedaje
-- ----------------------------
DROP TABLE IF EXISTS `tipo_hospedaje`;
CREATE TABLE `tipo_hospedaje` (
  `id_tipo_hospedaje` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_hospedaje` varchar(50) NOT NULL,
  `monto_base_tipo_hospedaje` varchar(11) NOT NULL,
  `cantidad_piezas_tipo_hospedaje` int(11) NOT NULL,
  `cantidad_personas_tipo_hospedaje` int(11) NOT NULL,
  PRIMARY KEY (`id_tipo_hospedaje`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipo_hospedaje
-- ----------------------------
INSERT INTO `tipo_hospedaje` VALUES ('1', 'HOTEL', '30000', '5', '40');
INSERT INTO `tipo_hospedaje` VALUES ('2', 'CABAÑA', '20000', '10', '40');

-- ----------------------------
-- Table structure for transporte
-- ----------------------------
DROP TABLE IF EXISTS `transporte`;
CREATE TABLE `transporte` (
  `id_transporte` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_transporte` varchar(20) NOT NULL,
  `monto_base_transporte` int(11) NOT NULL,
  PRIMARY KEY (`id_transporte`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transporte
-- ----------------------------
INSERT INTO `transporte` VALUES ('1', 'AVION', '50000');
INSERT INTO `transporte` VALUES ('2', 'BUS', '20000');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_datos_usuario` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `id_datos_usuario` (`id_datos_usuario`),
  KEY `id_perfil` (`id_perfil`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_datos_usuario`) REFERENCES `datos_usuario` (`id_datos_usuario`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', '1', 'ADMIN ADMIN ADMIN ADMIN', 'admin@ontour.cl', '$2y$10$DyKYI7LiJdeb864T8BlvEOwz4NDAguxZjnTFpokkGVk.TysP1y/La', 'tpHN6ZCdONeSQBif5igBcVg816KbtCYY1dqpsCcjck3oFxzIeXBcv5ZJYmHt', '2018-07-10 19:46:25', '2018-07-11 21:57:00');
INSERT INTO `users` VALUES ('2', '2', '2', 'AGENTE AGENTE AGENTE AGENTE', 'agente@ontour.cl', '$2y$10$asWAneoaBu8EupXvfayK1usrlGIuVrtin4bgPXSn3TOhkpPSvFYkW', null, '2018-07-11 21:56:22', '2018-07-11 21:56:22');
