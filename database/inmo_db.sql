/*
Navicat MariaDB Data Transfer

Source Server         : localhost
Source Server Version : 100113
Source Host           : localhost:3306
Source Database       : inmo_db

Target Server Type    : MariaDB
Target Server Version : 100113
File Encoding         : 65001

Date: 2016-08-05 11:13:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for markers
-- ----------------------------
DROP TABLE IF EXISTS `markers`;
CREATE TABLE `markers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of markers
-- ----------------------------
INSERT INTO `markers` VALUES ('1', 'Frankie Johnnie & Luigo Too', '939 W El Camino Real, Mountain View, CA', '10.392082680481485', '-75.48084190635984', null, null);
INSERT INTO `markers` VALUES ('2', 'Amici\'s East Coast Pizzeria', '790 Castro St, Mountain View, CA', '10.39073191345401', '-75.48069170265501', null, null);
INSERT INTO `markers` VALUES ('3', 'Kapp\'s Pizza Bar & Grill', '191 Castro St, Mountain View, CA', '37.393885', '-122.078916', null, null);
INSERT INTO `markers` VALUES ('4', 'Round Table Pizza: Mountain View', '570 N Shoreline Blvd, Mountain View, CA', '37.402653', '-122.079354', null, null);
INSERT INTO `markers` VALUES ('5', 'Tony & Alba\'s Pizza & Pasta', '619 Escuela Ave, Mountain View, CA', '37.394011', '-122.095528', null, null);
INSERT INTO `markers` VALUES ('6', 'Oregano\'s Wood-Fired Pizza', '4546 El Camino Real, Los Altos, CA', '37.401724', '-122.114646', null, null);
INSERT INTO `markers` VALUES ('7', 'Round Table Pizza: Sunnyvale-Mary-Central Expy', '415 N Mary Ave, Sunnyvale, CA', '37.390038', '-122.042034', null, null);
INSERT INTO `markers` VALUES ('8', 'Giordano\'s', '730 N Rush St, Chicago, IL', '41.895729', '-87.625411', null, null);
INSERT INTO `markers` VALUES ('9', 'Filippi\'s Pizza Grotto', '1747 India St, San Diego, CA', '32.723831', '-117.168326', null, null);
INSERT INTO `markers` VALUES ('10', 'Lou Malnati\'s Pizzeria', '439 N Wells St, Chicago, IL', '41.890346', '-87.633927', null, null);
INSERT INTO `markers` VALUES ('11', 'Sammy\'s Woodfired Pizza', '770 4th Ave, San Diego, CA', '32.713382', '-117.16118', null, null);
INSERT INTO `markers` VALUES ('12', 'Casa Bianca Pizza Pie', '1650 Colorado Blvd, Los Angeles, CA', '34.139159', '-118.204608', null, null);
INSERT INTO `markers` VALUES ('13', 'Parkway Grill', '510 S Arroyo Pkwy, Pasadena, CA', '34.137003', '-118.147303', null, null);
INSERT INTO `markers` VALUES ('14', 'Pizzeria Paradiso', '2029 P St NW, Washington, DC', '38.90965', '-77.0459', null, null);
INSERT INTO `markers` VALUES ('15', 'Star Pizza', '2111 Norfolk St, Houston, TX', '29.732452', '-95.411058', null, null);
INSERT INTO `markers` VALUES ('16', 'Tutta Bella Neapolitan Pizzera', '4918 Rainier Ave S, Seattle, WA', '47.557704', '-122.284985', null, null);
INSERT INTO `markers` VALUES ('17', 'Touche Pasta Pizza Pool', '1425 NW Glisan St, Portland, OR', '45.526465', '-122.68558', null, null);
INSERT INTO `markers` VALUES ('18', 'Piecora\'s New York Pizza', '1401 E Madison St, Seattle, WA', '47.614005', '-122.313985', null, null);
INSERT INTO `markers` VALUES ('19', 'Pagliacci Pizza', '550 Queen Anne Ave N, Seattle, WA', '47.623942', '-122.356719', null, null);
INSERT INTO `markers` VALUES ('20', 'Zeeks Pizza - Phinney Ridge', '6000 Phinney Ave N, Seattle, WA', '47.67267', '-122.354092', null, null);
INSERT INTO `markers` VALUES ('21', 'Old Town Pizza', '226 NW Davis St, Portland, OR', '45.524557', '-122.67268', null, null);
INSERT INTO `markers` VALUES ('22', 'Zeeks Pizza - Belltown', '419 Denny Way, Seattle, WA', '47.618314', '-122.347998', null, null);
INSERT INTO `markers` VALUES ('23', 'Escape From New York Pizza', '622 NW 23rd Ave, Portland, OR', '45.527105', '-122.698509', null, null);
INSERT INTO `markers` VALUES ('24', 'Big Fred\'s Pizza Garden', '1101 S 119th St, Omaha, NE', '41.248662', '-96.09876', null, null);
INSERT INTO `markers` VALUES ('25', 'Old Chicago', '1111 Harney St, Omaha, NE', '41.25652', '-95.930683', null, null);
INSERT INTO `markers` VALUES ('26', 'Sgt Peffer\'s Cafe Italian', '1501 N Saddle Creek Rd, Omaha, NE', '41.273084', '-95.987816', null, null);
INSERT INTO `markers` VALUES ('27', 'Mama\'s Pizza', '715 N Saddle Creek Rd, Omaha, NE', '41.265883', '-95.980682', null, null);
INSERT INTO `markers` VALUES ('28', 'Zio\'s New York Style Pizzeria', '1213 Howard St, Omaha, NE', '41.25545', '-95.932022', null, null);
INSERT INTO `markers` VALUES ('29', 'Boston\'s Restaurant & Sports', '620 E Disk Dr, Rapid City, SD', '44.106938', '-103.205226', null, null);
INSERT INTO `markers` VALUES ('30', 'Zio\'s New York Style Pizzeria', '7834 W Dodge Rd, Omaha, NE', '41.26325', '-96.0564', null, null);
INSERT INTO `markers` VALUES ('31', 'La Casa Pizzaria', '4432 Leavenworth St, Omaha, NE', '41.2524', '-95.979578', null, null);
INSERT INTO `markers` VALUES ('32', 'Giordano\'s', '730 N Rush St, Chicago, IL', '41.895729', '-87.625411', null, null);
INSERT INTO `markers` VALUES ('33', 'Lou Malnati\'s Pizzeria', '439 N Wells St, Chicago, IL', '41.890346', '-87.633927', null, null);
INSERT INTO `markers` VALUES ('34', 'Piece Restaurant', '1927 W North Ave, Chicago, IL', '41.910493', '-87.676127', null, null);
INSERT INTO `markers` VALUES ('35', 'Connie\'s Pizza Inc', '2373 S Archer Ave, Chicago, IL', '41.849213', '-87.641681', null, null);
INSERT INTO `markers` VALUES ('36', 'Exchequer Restaurant', '226 S Wabash Ave, Chicago, IL', '41.879189', '-87.626079', null, null);
INSERT INTO `markers` VALUES ('37', 'Coco\'s By The Falls', '5339 Murray Street, Niagara Falls, Ontario', '43.083555', '-79.082706', null, null);
INSERT INTO `markers` VALUES ('38', 'Pompei', '1531 W Taylor St, Chicago, IL', '41.869301', '-87.664779', null, null);
INSERT INTO `markers` VALUES ('39', 'Lynn\'s Paradise Cafe', '984 Barret Ave, Louisville, KY', '38.23693', '-85.72854', null, null);
INSERT INTO `markers` VALUES ('40', 'Otto Restaurant Enoteca Pizza', '1 5th Ave, New York, NY', '40.732161', '-73.996321', null, null);
INSERT INTO `markers` VALUES ('41', 'Grimaldi\'s', '19 Old Fulton St, Brooklyn, NY', '40.702515', '-73.993733', null, null);
INSERT INTO `markers` VALUES ('42', 'Lombardi\'s', '32 Spring St, New York, NY', '40.721675', '-73.995595', null, null);
INSERT INTO `markers` VALUES ('43', 'John\'s Pizzeria', '278 Bleecker St, New York, NY', '40.731706', '-74.003271', null, null);
INSERT INTO `markers` VALUES ('44', 'John\'s Pizzeria', '260 W 44th St, New York, NY', '40.758072', '-73.987736', null, null);
INSERT INTO `markers` VALUES ('45', 'Burger Joint', '2175 Broadway, New York, NY', '40.782398', '-73.981', null, null);
INSERT INTO `markers` VALUES ('46', 'Frank Pepe Pizzeria Napoletana', '157 Wooster St, New Haven, CT', '41.302803', '-72.917042', null, null);
INSERT INTO `markers` VALUES ('47', 'Adrianne\'s Pizza Bar', '54 Stone St, New York, NY', '40.70448', '-74.010137', null, null);
INSERT INTO `markers` VALUES ('48', 'Pizzeria Regina: Regina Pizza', '11 1/2 Thacher St, Boston, MA', '42.365338', '-71.056832', null, null);
INSERT INTO `markers` VALUES ('49', 'Upper Crust', '20 Charles St, Boston, MA', '42.356607', '-71.069681', null, null);
INSERT INTO `markers` VALUES ('50', 'Bertucci\'s Brick Oven Rstrnt', '4 Brookline Pl, Brookline, MA', '42.331917', '-71.115311', null, null);
INSERT INTO `markers` VALUES ('51', 'Aquitaine', '569 Tremont St, Boston, MA', '42.343637', '-71.072265', null, null);
INSERT INTO `markers` VALUES ('52', 'Bertucci\'s Brick Oven Rstrnt', '43 Stanhope St, Boston, MA', '42.348299', '-71.073249', null, null);
INSERT INTO `markers` VALUES ('53', 'Upper Crust', '286 Harvard St, Brookline, MA', '42.342856', '-71.122311', null, null);
INSERT INTO `markers` VALUES ('54', 'Bertucci\'s Brick Oven Rstrnt', '799 Main St, Cambridge, MA', '42.363259', '-71.09721', null, null);
INSERT INTO `markers` VALUES ('55', 'Bertucci\'s Brick Oven Rstrnt', '22 Merchants Row, Boston, MA', '42.359146', '-71.055477', null, null);
INSERT INTO `markers` VALUES ('56', 'Vinnie Van Go-Go\'s', '317 W Bryan St, Savannah, GA', '32.081152', '-81.094992', null, null);
INSERT INTO `markers` VALUES ('57', 'Domino\'s Pizza: Myrtle Beach', '1706 S Kings Hwy # A, Myrtle Beach, SC', '33.67488', '-78.905143', null, null);
INSERT INTO `markers` VALUES ('58', 'East of Chicago Pizza Company', '3901 North Kings Highway Suite 1, Myrtle Beach, SC', '33.716097', '-78.855582', null, null);
INSERT INTO `markers` VALUES ('59', 'Villa Tronco Italian Rstrnt', '1213 Blanding St, Columbia, SC', '34.008048', '-81.036314', null, null);
INSERT INTO `markers` VALUES ('60', 'Mellow Mushroom Pizza Bakers', '11 W Liberty St, Savannah, GA', '32.074673', '-81.093699', null, null);
INSERT INTO `markers` VALUES ('61', 'Andolinis Pizza', '82 Wentworth St, Charleston, SC', '32.78233', '-79.934236', null, null);
INSERT INTO `markers` VALUES ('62', 'Mellow Mushroom Pizza Bakers', '259 E Broad St, Athens, GA', '33.9578', '-83.37466', null, null);
INSERT INTO `markers` VALUES ('63', 'Bucks Pizza of Edisto Beach Inc', '114 Jungle Rd, Edisto Island, SC', '32.503973', '-80.297947', null, null);
INSERT INTO `markers` VALUES ('64', 'Anthony\'s Coal Fired Pizza', '2203 S Federal Hwy, Fort Lauderdale, FL', '26.094671', '-80.136689', null, null);
INSERT INTO `markers` VALUES ('65', 'Giordano\'s', '12151 S Apopka Vineland Rd, Orlando, FL', '28.389367', '-81.506222', null, null);
INSERT INTO `markers` VALUES ('66', 'Pizza Rustica', '863 Washington Ave, Miami Beach, FL', '25.779059', '-80.133107', null, null);
INSERT INTO `markers` VALUES ('67', 'Mama Jennie\'s Italian Restaurant', '11720 Ne 2nd Ave, North Miami, FL', '25.882782', '-80.19429', null, null);
INSERT INTO `markers` VALUES ('68', 'Anthony\'s Coal Fired Pizza', '17901 Biscayne Blvd, Aventura, FL', '25.941116', '-80.148826', null, null);
INSERT INTO `markers` VALUES ('69', 'Anthony\'s Coal Fired Pizza', '4527 Weston Rd, Weston, FL', '26.065395', '-80.362442', null, null);
INSERT INTO `markers` VALUES ('70', 'Mario the Baker Pizza & Italian Restaurant', '13695 W Dixie Hwy, North Miami, FL', '25.92974', '-80.15609', null, null);
INSERT INTO `markers` VALUES ('71', 'Big Cheese Pizza', '8080 SW 67th Ave, Miami, FL', '25.696025', '-80.301113', null, null);
INSERT INTO `markers` VALUES ('72', 'Ingleside Village Pizza', '2396 Ingleside Ave, Macon, GA', '32.85376', '-83.657406', null, null);
INSERT INTO `markers` VALUES ('73', 'Ciao Bella Pizza Da Guglielmo', '29 Highway 98 E, Destin, FL', '30.395556', '-86.512093', null, null);
INSERT INTO `markers` VALUES ('74', 'Papa John\'s Pizza', '810 Russell Pkwy, Warner Robins, GA', '32.593911', '-83.637075', null, null);
INSERT INTO `markers` VALUES ('75', 'Papa John\'s Pizza: East Central Montgomery', '2525 Madison Ave, Montgomery, AL', '32.381121', '-86.273035', null, null);
INSERT INTO `markers` VALUES ('76', 'Cici\'s Pizza', '6268 Atlanta Hwy, Montgomery, AL', '32.382205', '-86.190675', null, null);
INSERT INTO `markers` VALUES ('77', 'Papa John\'s Pizza', '1210 E Jackson St, Thomasville, GA', '30.849129', '-83.963428', null, null);
INSERT INTO `markers` VALUES ('78', 'Papa John\'s Pizza', '711 N Westover Blvd # G, Albany, GA', '31.61397', '-84.22308', null, null);
INSERT INTO `markers` VALUES ('79', 'Mellow Mushroom Pizza Bakers', '6100 Veterans Pkwy, Columbus, GA', '32.532078', '-84.955894', null, null);
INSERT INTO `markers` VALUES ('80', 'Star Pizza', '2111 Norfolk St, Houston, TX', '29.732452', '-95.411058', null, null);
INSERT INTO `markers` VALUES ('81', 'Star Pizza II', '77 Harvard St, Houston, TX', '29.770751', '-95.396042', null, null);
INSERT INTO `markers` VALUES ('82', 'Brothers Pizzeria', '1029 Highway 6 N # 100, Houston, TX', '29.768337', '-95.643594', null, null);
INSERT INTO `markers` VALUES ('83', '11th Street Cafe Inc', '748 E 11th St, Houston, TX', '29.790794', '-95.388921', null, null);
INSERT INTO `markers` VALUES ('84', 'California Pizza Kitchen', '1705 Post Oak Blvd # A, Houston, TX', '29.750172', '-95.461199', null, null);
INSERT INTO `markers` VALUES ('85', 'Collina\'s Italian Cafe', '3835 Richmond Ave, Houston, TX', '29.73262', '-95.438964', null, null);
INSERT INTO `markers` VALUES ('86', 'Barry\'s Pizza & Italian Diner', '6003 Richmond Ave, Houston, TX', '29.73143', '-95.484382', null, null);
INSERT INTO `markers` VALUES ('87', 'Mario\'s Seawall Italian Restaurant', '628 Seawall Blvd, Galveston, TX', '29.304542', '-94.772598', null, null);
INSERT INTO `markers` VALUES ('88', 'Campisi\'s Egyptian Restaurant', '5610 E Mockingbird Ln, Dallas, TX', '32.83651', '-96.771781', null, null);
INSERT INTO `markers` VALUES ('89', 'Fat Joe\'s Pizza Pasta & Bar', '4721 W Park Blvd # 101, Plano, TX', '33.027055', '-96.788912', null, null);
INSERT INTO `markers` VALUES ('90', 'Saccone\'s Pizza', '13812 N Highway 183, Austin, TX', '29.569507', '-97.964663', null, null);
INSERT INTO `markers` VALUES ('91', 'Fireside Pies', '2820 N Henderson Ave, Dallas, TX', '32.819762', '-96.784148', null, null);
INSERT INTO `markers` VALUES ('92', 'Romeo\'s', '1500 Barton Springs Rd, Austin, TX', '30.261526', '-97.760022', null, null);
INSERT INTO `markers` VALUES ('93', 'Sandella\'s Cafe', '5910 N Macarthur Blvd, Irving, TX', '32.892002', '-96.961188', null, null);
INSERT INTO `markers` VALUES ('94', 'Mangia Chicago Stuffed Pizza', '3500 Guadalupe St, Austin, TX', '30.301543', '-97.739112', null, null);
INSERT INTO `markers` VALUES ('95', 'Frank & Angie\'s', '508 West Ave, Austin, TX', '30.269393', '-97.750889', null, null);
INSERT INTO `markers` VALUES ('96', 'Filippi\'s Pizza Grotto', '1747 India St, San Diego, CA', '32.723831', '-117.168326', null, null);
INSERT INTO `markers` VALUES ('97', 'Pizzeria Bianco', '623 E Adams St, Phoenix, AZ', '33.449377', '-112.065521', null, null);
INSERT INTO `markers` VALUES ('98', 'Sammy\'s Woodfired Pizza', '770 4th Ave, San Diego, CA', '32.713382', '-117.16118', null, null);
INSERT INTO `markers` VALUES ('99', 'Casa Bianca Pizza Pie', '1650 Colorado Blvd, Los Angeles, CA', '34.139159', '-118.204608', null, null);
INSERT INTO `markers` VALUES ('100', 'Parkway Grill', '510 S Arroyo Pkwy, Pasadena, CA', '34.137003', '-118.147303', null, null);
INSERT INTO `markers` VALUES ('101', 'California Pizza Kitchen', '330 S Hope St, Los Angeles, CA', '34.05333', '-118.252683', null, null);
INSERT INTO `markers` VALUES ('102', 'B J\'s Pizza & Grill', '200 Main St # 101, Huntington Beach, CA', '33.658058', '-118.001101', null, null);
INSERT INTO `markers` VALUES ('103', 'B J\'s Restaurant & Brewhouse', '280 S Coast Hwy, Laguna Beach, CA', '33.54209', '-117.783516', null, null);
INSERT INTO `markers` VALUES ('104', 'Giuseppe\'s Depot Restaurant', '10 S Sierra Madre St, Colorado Springs, CO', '38.834548', '-104.828297', null, null);
INSERT INTO `markers` VALUES ('105', 'Beau Jo\'s Pizza', '2710 S Colorado Blvd, Denver, CO', '39.667342', '-104.940708', null, null);
INSERT INTO `markers` VALUES ('106', 'Pasquini\'s Pizzeria', '1310 S Broadway, Denver, CO', '39.692824', '-104.987463', null, null);
INSERT INTO `markers` VALUES ('107', 'Fargos Pizza Co', '2910 E Platte Ave, Colorado Springs, CO', '38.839847', '-104.774423', null, null);
INSERT INTO `markers` VALUES ('108', 'Old Chicago', '1415 Market St, Denver, CO', '39.748177', '-105.000501', null, null);
INSERT INTO `markers` VALUES ('109', 'Sink', '1165 13th St, Boulder, CO', '40.00821', '-105.276236', null, null);
INSERT INTO `markers` VALUES ('110', 'Ligori\'s Pizza & Pasta', '4421 Harrison Blvd, Ogden, UT', '41.182732', '-111.949199', null, null);
INSERT INTO `markers` VALUES ('111', 'Old Chicago', '1102 Pearl St, Boulder, CO', '40.017591', '-105.28099', null, null);
INSERT INTO `markers` VALUES ('112', 'Boston\'s Restaurant & Sports', '620 E Disk Dr, Rapid City, SD', '44.106938', '-103.205226', null, null);
INSERT INTO `markers` VALUES ('113', 'Chuck E Cheese\'s Pizza', '100 24th St W # B, Billings, MT', '45.771355', '-108.57629', null, null);
INSERT INTO `markers` VALUES ('114', 'Space Aliens Grill & Bar', '1304 E Century Ave, Bismarck, ND', '46.83808', '-100.771734', null, null);
INSERT INTO `markers` VALUES ('115', '2nd Street Bistro', '123 North 2nd Street, Livingston, MT', '45.661014', '-110.561422', null, null);
INSERT INTO `markers` VALUES ('116', 'Domino\'s Pizza', '1524 S Broadway # 1, Minot, ND', '48.219657', '-101.296037', null, null);
INSERT INTO `markers` VALUES ('117', 'American Classic Pizzeria', '1744 Grand Ave, Billings, MT', '45.78412', '-108.560205', null, null);
INSERT INTO `markers` VALUES ('118', 'Godfather\'s Pizza', '905 Main St, Billings, MT', '45.81508', '-108.470758', null, null);
INSERT INTO `markers` VALUES ('119', 'Papa John\'s Pizza', '605 Main St, Billings, MT', '45.810222', '-108.472125', null, null);
INSERT INTO `markers` VALUES ('120', 'Aardvark Pizza & Sub', '304A Caribou St, Banff, AB', '51.176488', '-115.570751', null, null);
INSERT INTO `markers` VALUES ('121', 'Jasper Pizza Place', '402 Connaught Dr, Jasper, AB', '52.879085', '-118.079319', null, null);
INSERT INTO `markers` VALUES ('122', 'Odyssey Pizza & Steak House', '3-3814 Bow Trail SW, Calgary, AB', '51.045233', '-114.141249', null, null);
INSERT INTO `markers` VALUES ('123', 'Basil\'s Pizza', '2118 33 Avenue SW, Calgary, AB', '51.023981', '-114.109903', null, null);
INSERT INTO `markers` VALUES ('124', 'Castle Pizza & Donair', '7724 Elbow Drive SW, Calgary, AB', '50.984497', '-114.08315', null, null);
INSERT INTO `markers` VALUES ('125', 'Santa Lucia Italian Restaurant', '714 8 St, Canmore, AB', '51.089195', '-115.358733', null, null);
INSERT INTO `markers` VALUES ('126', 'Tops Pizza & Steak House No 3', '7-5602 4 Street NW, Calgary, AB', '51.101205', '-114.071458', null, null);
INSERT INTO `markers` VALUES ('127', 'Evvia Restaurant', '837 Main St, Canmore, AB', '51.089177', '-115.361767', null, null);
INSERT INTO `markers` VALUES ('128', 'D&#39;Bronx', '3904 Bell St, Kansas City, MO', '39.057182', '-94.606105', null, null);
INSERT INTO `markers` VALUES ('129', 'Cicero\'s Restaurant & Entrtnmt', '6691 Delmar Blvd, St Louis, MO', '38.656308', '-90.308439', null, null);
INSERT INTO `markers` VALUES ('130', 'Hideaway Pizza', '6616 N Western Ave, Oklahoma City, OK', '35.539114', '-97.52976', null, null);
INSERT INTO `markers` VALUES ('131', 'Fortel\'s Pizza Den', '7932 Mackenzie Rd, St Louis, MO', '38.566441', '-90.320792', null, null);
INSERT INTO `markers` VALUES ('132', 'Hideaway Pizza', '7877 E 51st St, Tulsa, OK', '36.089897', '-95.889241', null, null);
INSERT INTO `markers` VALUES ('133', 'Farotto\'s Catering', '9525 Manchester Rd, Webster Groves, MO', '38.609327', '-90.364435', null, null);
INSERT INTO `markers` VALUES ('134', 'California Pizza Kitchen', '1493 Saint Louis Galleria, St Louis, MO', '38.633613', '-90.345949', null, null);
INSERT INTO `markers` VALUES ('135', 'D\'Bronx', '2450 Grand Blvd # 124, Kansas City, MO', '39.082723', '-94.58178', null, null);
INSERT INTO `markers` VALUES ('136', 'Giuseppe\'s Depot Restaurant', '10 S Sierra Madre St, Colorado Springs, CO', '38.834548', '-104.828297', null, null);
INSERT INTO `markers` VALUES ('137', 'Beau Jo\'s Pizza', '2710 S Colorado Blvd, Denver, CO', '39.667342', '-104.940708', null, null);
INSERT INTO `markers` VALUES ('138', 'Pasquini\'s Pizzeria', '1310 S Broadway, Denver, CO', '39.692824', '-104.987463', null, null);
INSERT INTO `markers` VALUES ('139', 'Fargos Pizza Co', '2910 E Platte Ave, Colorado Springs, CO', '38.839847', '-104.774423', null, null);
INSERT INTO `markers` VALUES ('140', 'Old Chicago', '1415 Market St, Denver, CO', '39.748177', '-105.000501', null, null);
INSERT INTO `markers` VALUES ('141', 'Sink', '1165 13th St, Boulder, CO', '40.00821', '-105.276236', null, null);
INSERT INTO `markers` VALUES ('142', 'Old Chicago', '1102 Pearl St, Boulder, CO', '40.017591', '-105.28099', null, null);
INSERT INTO `markers` VALUES ('143', 'Gondolier', '1738 Pearl St, Boulder, CO', '40.019345', '-105.272946', null, null);
INSERT INTO `markers` VALUES ('144', 'Ligori\'s Pizza & Pasta', '4421 Harrison Blvd, Ogden, UT', '41.182732', '-111.949199', null, null);
INSERT INTO `markers` VALUES ('145', 'Brick Oven Restaurant', '111 E 800 N, Provo, UT', '40.244493', '-111.656322', null, null);
INSERT INTO `markers` VALUES ('146', 'Zachary\'s Chicago Pizza', '5801 College Ave, Oakland, CA', '37.846179', '-122.251951', null, null);
INSERT INTO `markers` VALUES ('147', 'Zachary\'s Chicago Pizza', '1853 Solano Ave, Berkeley, CA', '37.891407', '-122.27843', null, null);
INSERT INTO `markers` VALUES ('148', 'Cheese Board Pizza', '1512 Shattuck Ave, Berkeley, CA', '37.879976', '-122.269275', null, null);
INSERT INTO `markers` VALUES ('149', 'Goat Hill Pizza', '300 Connecticut St, San Francisco, CA', '37.762431', '-122.397617', null, null);
INSERT INTO `markers` VALUES ('150', 'Tommaso Ristorante Italiano', '1042 Kearny St, San Francisco, CA', '37.797388', '-122.405374', null, null);
INSERT INTO `markers` VALUES ('151', 'Little Star Pizza LLC', '846 Divisadero St, San Francisco, CA', '37.77752', '-122.438215', null, null);
INSERT INTO `markers` VALUES ('152', 'Pauline\'s Pizza', '260 Valencia, San Francisco, CA', '37.768725', '-122.422245', null, null);
INSERT INTO `markers` VALUES ('153', 'Villa Romana Pizzeria & Rstrnt', '731 Irving St, San Francisco, CA', '37.764074', '-122.465581', null, null);
INSERT INTO `markers` VALUES ('154', 'Amici\'s East Coast Pizzeria', '69 E 3rd Ave, San Mateo, CA', '37.563896', '-122.32472', null, null);
INSERT INTO `markers` VALUES ('155', 'Amici\'s East Coast Pizzeria', '226 Redwood Shores Pkwy, Redwood City, CA', '37.520516', '-122.252255', null, null);
INSERT INTO `markers` VALUES ('156', 'North Beach Pizza', '240 E 3rd Ave, San Mateo, CA', '37.565325', '-122.322643', null, null);
INSERT INTO `markers` VALUES ('157', 'Patxi\'s Chicago Pizza', '441 Emerson St, Palo Alto, CA', '37.445148', '-122.163553', null, null);
INSERT INTO `markers` VALUES ('158', 'Pizz\'a Chicago', '4115 El Camino Real, Palo Alto, CA', '37.414106', '-122.126223', null, null);
INSERT INTO `markers` VALUES ('159', 'California Pizza Kitchen', '531 Cowper St, Palo Alto, CA', '37.448075', '-122.158813', null, null);
INSERT INTO `markers` VALUES ('160', 'Windy City Pizza', '35 Bovet Rd, San Mateo, CA', '37.551562', '-122.314525', null, null);
INSERT INTO `markers` VALUES ('161', 'Applewood Pizza 2 Go', '1001 El Camino Real, Menlo Park, CA', '37.452966', '-122.181722', null, null);
INSERT INTO `markers` VALUES ('162', 'Pizza Antica', '334 Santana Row # 1065, San Jose, CA', '37.321792', '-121.947735', null, null);
INSERT INTO `markers` VALUES ('163', 'Pizz\'a Chicago', '155 W San Fernando St, San Jose, CA', '37.333277', '-121.891677', null, null);
INSERT INTO `markers` VALUES ('164', 'House of Pizza', '527 S Almaden Ave, San Jose, CA', '37.326353', '-121.888165', null, null);
INSERT INTO `markers` VALUES ('165', 'Amici\'s East Coast Pizzeria', '225 W Santa Clara St, San Jose, CA', '37.334702', '-121.894045', null, null);
INSERT INTO `markers` VALUES ('166', 'Fiorillo\'s Restaurant', '638 El Camino Real, Santa Clara, CA', '37.354603', '-121.942577', null, null);
INSERT INTO `markers` VALUES ('167', 'Tony & Alba\'s Pizza & Pasta', '3137 Stevens Creek Blvd, San Jose, CA', '37.323297', '-121.951646', null, null);
INSERT INTO `markers` VALUES ('168', 'Giorgio\'s', '1445 Foxworthy Ave, San Jose, CA', '37.274648', '-121.892893', null, null);
INSERT INTO `markers` VALUES ('169', 'Round Table Pizza', '4302 Moorpark Ave, San Jose, CA', '37.315903', '-121.977925', null, null);
