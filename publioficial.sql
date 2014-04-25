/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50082
Source Host           : localhost:3306
Source Database       : publioficial

Target Server Type    : MYSQL
Target Server Version : 50082
File Encoding         : 65001

Date: 2014-04-25 10:31:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `audios_campa`
-- ----------------------------
DROP TABLE IF EXISTS `audios_campa`;
CREATE TABLE `audios_campa` (
  `id_audio` int(11) NOT NULL auto_increment,
  `campa` int(11) default NULL,
  `audio` varchar(255) default NULL,
  PRIMARY KEY  (`id_audio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audios_campa
-- ----------------------------

-- ----------------------------
-- Table structure for `audios_campa_temp`
-- ----------------------------
DROP TABLE IF EXISTS `audios_campa_temp`;
CREATE TABLE `audios_campa_temp` (
  `id_audio` int(11) NOT NULL auto_increment,
  `campa` int(11) default NULL,
  `audio` varchar(255) NOT NULL default '',
  `descripcion_audio` varchar(255) default NULL,
  PRIMARY KEY  (`id_audio`,`audio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of audios_campa_temp
-- ----------------------------

-- ----------------------------
-- Table structure for `banners_campa`
-- ----------------------------
DROP TABLE IF EXISTS `banners_campa`;
CREATE TABLE `banners_campa` (
  `id_banner` int(11) NOT NULL auto_increment,
  `campa` int(11) default NULL,
  `banner` varchar(255) default NULL,
  PRIMARY KEY  (`id_banner`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banners_campa
-- ----------------------------

-- ----------------------------
-- Table structure for `banners_campa_temp`
-- ----------------------------
DROP TABLE IF EXISTS `banners_campa_temp`;
CREATE TABLE `banners_campa_temp` (
  `id_banner` int(11) NOT NULL auto_increment,
  `campa` int(11) default NULL,
  `banner` varchar(255) default NULL,
  PRIMARY KEY  (`id_banner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banners_campa_temp
-- ----------------------------

-- ----------------------------
-- Table structure for `campa`
-- ----------------------------
DROP TABLE IF EXISTS `campa`;
CREATE TABLE `campa` (
  `id_campa` int(11) NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
  `anio` int(11) default NULL,
  `tema` varchar(255) default NULL,
  `tipo` varchar(255) default NULL,
  `objetivo` varchar(255) default NULL,
  `periodicidad_inicio` date default NULL,
  `periodicidad_fin` date default NULL,
  `depen` int(11) default NULL,
  `costo_total` double default NULL,
  `status` varchar(255) default NULL,
  `clasificacion_campa` varchar(255) default NULL,
  PRIMARY KEY  (`id_campa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of campa
-- ----------------------------

-- ----------------------------
-- Table structure for `captcha`
-- ----------------------------
DROP TABLE IF EXISTS `captcha`;
CREATE TABLE `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL auto_increment,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL default '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY  (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of captcha
-- ----------------------------
INSERT INTO `captcha` VALUES ('125', '1397056159', '127.0.0.1', '6gqAqU');
INSERT INTO `captcha` VALUES ('126', '1397068888', '127.0.0.1', 'jjRnDY');
INSERT INTO `captcha` VALUES ('127', '1398368812', '127.0.0.1', '5y3JMF');

-- ----------------------------
-- Table structure for `clasificacion`
-- ----------------------------
DROP TABLE IF EXISTS `clasificacion`;
CREATE TABLE `clasificacion` (
  `id_clasificacion` int(11) NOT NULL auto_increment,
  `descripcion_clasificacion` varchar(255) default NULL,
  `soporte` int(11) default NULL,
  PRIMARY KEY  (`id_clasificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clasificacion
-- ----------------------------
INSERT INTO `clasificacion` VALUES ('1', 'Medios impresos (periódicos, encartes, revistas, etc.)', '1');
INSERT INTO `clasificacion` VALUES ('2', 'Radio', '1');
INSERT INTO `clasificacion` VALUES ('3', 'Internet', '1');
INSERT INTO `clasificacion` VALUES ('4', 'Televisión', '1');
INSERT INTO `clasificacion` VALUES ('5', 'Cine', '1');
INSERT INTO `clasificacion` VALUES ('6', 'Publicidad exterior (espectaculares, parabuses, mobiliario urbano, etc.)', '1');
INSERT INTO `clasificacion` VALUES ('7', 'Otro', '1');

-- ----------------------------
-- Table structure for `clasificacion_campa`
-- ----------------------------
DROP TABLE IF EXISTS `clasificacion_campa`;
CREATE TABLE `clasificacion_campa` (
  `id_clasificacion_campa` int(11) NOT NULL default '0',
  `descripcion_clasificacion` varchar(255) default NULL,
  PRIMARY KEY  (`id_clasificacion_campa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clasificacion_campa
-- ----------------------------
INSERT INTO `clasificacion_campa` VALUES ('1', 'Protección civil');
INSERT INTO `clasificacion_campa` VALUES ('2', 'Emergencias y desastres naturales');
INSERT INTO `clasificacion_campa` VALUES ('3', 'Avisos importantes');
INSERT INTO `clasificacion_campa` VALUES ('4', 'Vialidad y transporte');
INSERT INTO `clasificacion_campa` VALUES ('5', 'Seguridad pública y justicia');
INSERT INTO `clasificacion_campa` VALUES ('6', 'Informes de gobierno');
INSERT INTO `clasificacion_campa` VALUES ('7', 'Desarrollo social');
INSERT INTO `clasificacion_campa` VALUES ('8', 'Educación');
INSERT INTO `clasificacion_campa` VALUES ('9', 'Deportes');
INSERT INTO `clasificacion_campa` VALUES ('10', 'Turismo');
INSERT INTO `clasificacion_campa` VALUES ('11', 'Economía y negocios');
INSERT INTO `clasificacion_campa` VALUES ('12', 'Ciencia y tecnología');
INSERT INTO `clasificacion_campa` VALUES ('13', 'Obras públicas');
INSERT INTO `clasificacion_campa` VALUES ('14', 'Civismo y legalidad');
INSERT INTO `clasificacion_campa` VALUES ('15', 'Desarrollo social y humano');
INSERT INTO `clasificacion_campa` VALUES ('16', 'Avisos y concocatorias');
INSERT INTO `clasificacion_campa` VALUES ('17', 'Tramites y servicios');
INSERT INTO `clasificacion_campa` VALUES ('18', 'Derechos humanos');
INSERT INTO `clasificacion_campa` VALUES ('19', 'Derechos de los niños');
INSERT INTO `clasificacion_campa` VALUES ('20', 'Equidad de género');
INSERT INTO `clasificacion_campa` VALUES ('21', 'Pueblos indígenas');
INSERT INTO `clasificacion_campa` VALUES ('22', 'Ecología y medio ambiente');
INSERT INTO `clasificacion_campa` VALUES ('23', 'Transparencia y rendición de cuentas');
INSERT INTO `clasificacion_campa` VALUES ('24', 'Participación ciudadana');
INSERT INTO `clasificacion_campa` VALUES ('25', 'Felicitaciones, esquelas y condolencias');
INSERT INTO `clasificacion_campa` VALUES ('26', 'Otro');
INSERT INTO `clasificacion_campa` VALUES ('27', 'Infraestructura, Desarrollo Económico y Turismo ');
INSERT INTO `clasificacion_campa` VALUES ('28', 'Finanzas');
INSERT INTO `clasificacion_campa` VALUES ('29', 'Seguridad y Justicia ');
INSERT INTO `clasificacion_campa` VALUES ('30', 'Desarrollo Rural');
INSERT INTO `clasificacion_campa` VALUES ('31', 'Salud e higiene ');
INSERT INTO `clasificacion_campa` VALUES ('32', 'Cultura ');

-- ----------------------------
-- Table structure for `cobertura`
-- ----------------------------
DROP TABLE IF EXISTS `cobertura`;
CREATE TABLE `cobertura` (
  `id_cobertura` int(11) NOT NULL auto_increment,
  `cobertura` varchar(255) default NULL,
  PRIMARY KEY  (`id_cobertura`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cobertura
-- ----------------------------
INSERT INTO `cobertura` VALUES ('1', 'Regional');
INSERT INTO `cobertura` VALUES ('2', 'Estatal');
INSERT INTO `cobertura` VALUES ('3', 'Nacional');
INSERT INTO `cobertura` VALUES ('4', 'Internacional');

-- ----------------------------
-- Table structure for `contratos`
-- ----------------------------
DROP TABLE IF EXISTS `contratos`;
CREATE TABLE `contratos` (
  `id_contrato` int(11) NOT NULL auto_increment,
  `fecha_celebracion` date default NULL,
  `num_contrato` varchar(255) default NULL,
  `monto_contrato` int(11) default NULL,
  `objeto_contrato` varchar(255) default NULL,
  `fecha_inicio` date default NULL,
  `fecha_fin` date default NULL,
  `archivo` varchar(255) default NULL,
  `depen` int(11) default NULL,
  `medio` int(11) default NULL,
  `modalidad` int(11) default NULL,
  `motivoadj` varchar(255) default NULL,
  `partidapres` varchar(255) default NULL,
  PRIMARY KEY  (`id_contrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contratos
-- ----------------------------

-- ----------------------------
-- Table structure for `dependencia`
-- ----------------------------
DROP TABLE IF EXISTS `dependencia`;
CREATE TABLE `dependencia` (
  `id_dependencia` int(11) NOT NULL auto_increment,
  `dependencia` varchar(255) NOT NULL,
  `tipo` varchar(255) default NULL,
  PRIMARY KEY  (`id_dependencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dependencia
-- ----------------------------

-- ----------------------------
-- Table structure for `desglose_factura`
-- ----------------------------
DROP TABLE IF EXISTS `desglose_factura`;
CREATE TABLE `desglose_factura` (
  `id_factura` int(11) NOT NULL default '0',
  `concepto` varchar(255) default NULL,
  `unidades` int(11) default NULL,
  `monto_concepto` double default NULL,
  PRIMARY KEY  (`id_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of desglose_factura
-- ----------------------------

-- ----------------------------
-- Table structure for `desglose_presupuesto`
-- ----------------------------
DROP TABLE IF EXISTS `desglose_presupuesto`;
CREATE TABLE `desglose_presupuesto` (
  `id_desglose_presupuesto` int(11) NOT NULL auto_increment,
  `presupuesto` int(11) default NULL,
  `id_concepto` varchar(255) default NULL,
  `concepto` varchar(255) default NULL,
  `cantidad` int(11) default NULL,
  `porcentaje` int(11) default NULL,
  PRIMARY KEY  (`id_desglose_presupuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of desglose_presupuesto
-- ----------------------------

-- ----------------------------
-- Table structure for `desglose_presupuesto_temp`
-- ----------------------------
DROP TABLE IF EXISTS `desglose_presupuesto_temp`;
CREATE TABLE `desglose_presupuesto_temp` (
  `id_desglose_presupuesto` int(11) NOT NULL auto_increment,
  `id_concepto` varchar(255) default NULL,
  `concepto` varchar(255) default NULL,
  `cantidad` int(11) default NULL,
  `porcentaje` int(11) default NULL,
  PRIMARY KEY  (`id_desglose_presupuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of desglose_presupuesto_temp
-- ----------------------------

-- ----------------------------
-- Table structure for `detalle_factura`
-- ----------------------------
DROP TABLE IF EXISTS `detalle_factura`;
CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL auto_increment,
  `factura` int(11) default NULL,
  `concepto` varchar(255) default NULL,
  `unidades` int(11) default NULL,
  `monto_concepto` int(11) default NULL,
  `dependencia_s` varchar(255) default NULL,
  `campa_factura` int(11) default NULL,
  PRIMARY KEY  (`id_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detalle_factura
-- ----------------------------

-- ----------------------------
-- Table structure for `detalle_factura_temp`
-- ----------------------------
DROP TABLE IF EXISTS `detalle_factura_temp`;
CREATE TABLE `detalle_factura_temp` (
  `id_detalle` int(11) NOT NULL auto_increment,
  `id_factura` int(11) default NULL,
  `concepto` varchar(255) default NULL,
  `unidades` int(11) default NULL,
  `monto_concepto` int(11) default NULL,
  `dependencia_s` int(11) default NULL,
  `campa_factura` int(11) default NULL,
  PRIMARY KEY  (`id_detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detalle_factura_temp
-- ----------------------------

-- ----------------------------
-- Table structure for `etiquetas`
-- ----------------------------
DROP TABLE IF EXISTS `etiquetas`;
CREATE TABLE `etiquetas` (
  `id_etiqueta` int(11) NOT NULL auto_increment,
  `etiqueta` varchar(255) default NULL,
  PRIMARY KEY  (`id_etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etiquetas
-- ----------------------------

-- ----------------------------
-- Table structure for `etiquetas_campas`
-- ----------------------------
DROP TABLE IF EXISTS `etiquetas_campas`;
CREATE TABLE `etiquetas_campas` (
  `etiquetas_id_etiqueta` int(11) default NULL,
  `etiquetas_id_campa` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etiquetas_campas
-- ----------------------------
INSERT INTO `etiquetas_campas` VALUES ('1', '9');
INSERT INTO `etiquetas_campas` VALUES ('1', '9');
INSERT INTO `etiquetas_campas` VALUES ('2', '10');
INSERT INTO `etiquetas_campas` VALUES ('3', '10');
INSERT INTO `etiquetas_campas` VALUES ('2', '1');
INSERT INTO `etiquetas_campas` VALUES ('3', '1');
INSERT INTO `etiquetas_campas` VALUES ('5', '1');
INSERT INTO `etiquetas_campas` VALUES ('6', '1');
INSERT INTO `etiquetas_campas` VALUES ('11', '1');
INSERT INTO `etiquetas_campas` VALUES ('12', '1');
INSERT INTO `etiquetas_campas` VALUES ('1', '11');
INSERT INTO `etiquetas_campas` VALUES ('9', '11');
INSERT INTO `etiquetas_campas` VALUES ('10', '11');
INSERT INTO `etiquetas_campas` VALUES ('13', '11');
INSERT INTO `etiquetas_campas` VALUES ('14', '11');
INSERT INTO `etiquetas_campas` VALUES ('15', '11');
INSERT INTO `etiquetas_campas` VALUES ('16', '11');
INSERT INTO `etiquetas_campas` VALUES ('17', '11');
INSERT INTO `etiquetas_campas` VALUES ('18', '11');
INSERT INTO `etiquetas_campas` VALUES ('19', '11');
INSERT INTO `etiquetas_campas` VALUES ('20', '11');
INSERT INTO `etiquetas_campas` VALUES ('21', '11');
INSERT INTO `etiquetas_campas` VALUES ('22', '11');
INSERT INTO `etiquetas_campas` VALUES ('23', '11');
INSERT INTO `etiquetas_campas` VALUES ('24', '11');
INSERT INTO `etiquetas_campas` VALUES ('25', '11');
INSERT INTO `etiquetas_campas` VALUES ('26', '11');

-- ----------------------------
-- Table structure for `etiquetas_temp`
-- ----------------------------
DROP TABLE IF EXISTS `etiquetas_temp`;
CREATE TABLE `etiquetas_temp` (
  `id_etiqueta` int(11) NOT NULL auto_increment,
  `etiqueta` varchar(255) default NULL,
  PRIMARY KEY  (`id_etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of etiquetas_temp
-- ----------------------------

-- ----------------------------
-- Table structure for `factura`
-- ----------------------------
DROP TABLE IF EXISTS `factura`;
CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL auto_increment,
  `num_factura` varchar(255) default NULL,
  `concepto_general` varchar(255) default NULL,
  `monto_total` int(11) default NULL,
  `dependencia_contratante` int(11) default NULL,
  `medio_id` int(11) default NULL,
  `contrato` int(11) default NULL,
  `fecha` date default NULL,
  PRIMARY KEY  (`id_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of factura
-- ----------------------------

-- ----------------------------
-- Table structure for `imagenes_factura`
-- ----------------------------
DROP TABLE IF EXISTS `imagenes_factura`;
CREATE TABLE `imagenes_factura` (
  `id_imagen_factura` int(11) NOT NULL auto_increment,
  `factura` int(11) default NULL,
  `imagen` varchar(255) default NULL,
  PRIMARY KEY  (`id_imagen_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagenes_factura
-- ----------------------------

-- ----------------------------
-- Table structure for `imagenes_factura_temp`
-- ----------------------------
DROP TABLE IF EXISTS `imagenes_factura_temp`;
CREATE TABLE `imagenes_factura_temp` (
  `id_imagen_factura` int(11) NOT NULL auto_increment,
  `id_factura` int(11) default NULL,
  `imagen` varchar(255) default NULL,
  PRIMARY KEY  (`id_imagen_factura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagenes_factura_temp
-- ----------------------------

-- ----------------------------
-- Table structure for `logos`
-- ----------------------------
DROP TABLE IF EXISTS `logos`;
CREATE TABLE `logos` (
  `id_logo` int(11) NOT NULL default '0',
  `logo_gobierno` varchar(255) default NULL,
  `vinculacion_logo_gobierno` varchar(255) default NULL,
  `logo_opcional` varchar(255) default NULL,
  `vinculacion_logo_opcional` varchar(255) default NULL,
  PRIMARY KEY  (`id_logo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logos
-- ----------------------------

-- ----------------------------
-- Table structure for `medios`
-- ----------------------------
DROP TABLE IF EXISTS `medios`;
CREATE TABLE `medios` (
  `id_medio` int(11) NOT NULL auto_increment,
  `razon_social` varchar(255) default NULL,
  `nombre_comercial` varchar(255) default NULL,
  `padron_proveedor` varchar(255) default NULL,
  `clasificacion` int(255) default NULL,
  `cobertura` int(255) default NULL,
  `perfil_demografico` varchar(255) default NULL,
  `tarifario` varchar(255) default NULL,
  `ver_tarifario` varchar(255) default NULL,
  `acta_constitutiva` varchar(255) default NULL,
  `curriculum_empresarial` varchar(255) default NULL,
  `ficha_tecnica` varchar(255) default NULL,
  `ver_ficha_tecnica` varchar(255) default NULL,
  PRIMARY KEY  (`id_medio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of medios
-- ----------------------------

-- ----------------------------
-- Table structure for `modalidad_contratos`
-- ----------------------------
DROP TABLE IF EXISTS `modalidad_contratos`;
CREATE TABLE `modalidad_contratos` (
  `id_modalidad` int(11) NOT NULL auto_increment,
  `modalidad` varchar(255) default NULL,
  PRIMARY KEY  (`id_modalidad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of modalidad_contratos
-- ----------------------------
INSERT INTO `modalidad_contratos` VALUES ('1', 'Adjudicación directa');
INSERT INTO `modalidad_contratos` VALUES ('2', 'Licitación pública');
INSERT INTO `modalidad_contratos` VALUES ('3', 'Invitación restringida');

-- ----------------------------
-- Table structure for `presupuesto`
-- ----------------------------
DROP TABLE IF EXISTS `presupuesto`;
CREATE TABLE `presupuesto` (
  `id_presupuesto` int(11) NOT NULL auto_increment,
  `anio` int(4) default NULL,
  `monto_total` int(11) default NULL,
  PRIMARY KEY  (`id_presupuesto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of presupuesto
-- ----------------------------

-- ----------------------------
-- Table structure for `soporte_medios`
-- ----------------------------
DROP TABLE IF EXISTS `soporte_medios`;
CREATE TABLE `soporte_medios` (
  `id_soporte` int(11) NOT NULL auto_increment,
  `soporte` varchar(255) default NULL,
  PRIMARY KEY  (`id_soporte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of soporte_medios
-- ----------------------------

-- ----------------------------
-- Table structure for `status_campa`
-- ----------------------------
DROP TABLE IF EXISTS `status_campa`;
CREATE TABLE `status_campa` (
  `id_status` int(11) NOT NULL auto_increment,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`id_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of status_campa
-- ----------------------------
INSERT INTO `status_campa` VALUES ('2', 'En proceso');
INSERT INTO `status_campa` VALUES ('3', 'Terminado');

-- ----------------------------
-- Table structure for `tipo_campa`
-- ----------------------------
DROP TABLE IF EXISTS `tipo_campa`;
CREATE TABLE `tipo_campa` (
  `id_tipo` int(11) NOT NULL auto_increment,
  `tipo` varchar(255) default NULL,
  PRIMARY KEY  (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tipo_campa
-- ----------------------------
INSERT INTO `tipo_campa` VALUES ('1', 'Regional');
INSERT INTO `tipo_campa` VALUES ('2', 'Estatal');
INSERT INTO `tipo_campa` VALUES ('3', 'Nacional');
INSERT INTO `tipo_campa` VALUES ('4', 'Internacional');

-- ----------------------------
-- Table structure for `usuarios`
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL auto_increment,
  `perfil` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'administrador', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- ----------------------------
-- Table structure for `videos_campa`
-- ----------------------------
DROP TABLE IF EXISTS `videos_campa`;
CREATE TABLE `videos_campa` (
  `id_video` int(11) NOT NULL auto_increment,
  `campa` int(11) default NULL,
  `video` varchar(255) default NULL,
  PRIMARY KEY  (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videos_campa
-- ----------------------------

-- ----------------------------
-- Table structure for `videos_campa_temp`
-- ----------------------------
DROP TABLE IF EXISTS `videos_campa_temp`;
CREATE TABLE `videos_campa_temp` (
  `id_video` int(11) NOT NULL auto_increment,
  `campa` int(11) default NULL,
  `video` varchar(255) default NULL,
  PRIMARY KEY  (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videos_campa_temp
-- ----------------------------
