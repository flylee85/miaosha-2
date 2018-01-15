create table goods (
  id bigint(20) not null auto_increment,
  goods_name VARCHAR(16) DEFAULT NULL,
  goods_title VARCHAR(64) DEFAULT NULL,
  goods_img VARCHAR(64) DEFAULT NULL,
  goods_detail LONGTEXT,
  goods_price DECIMAL(10, 2) DEFAULT '0.00',
  goods_stock INT(11) DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE = innoDB AUTO_INCREMENT = 3 DEFAULT CHARSET utf8mb4;

INSERT INTO goods VALUES (1, 'iphoneX', 'Apple iPhone X', '/img/iphone.png', '好用!', 8765.00, 10);
INSERT INTO goods VALUES (2, '小米', '小米手机', '/img/xiaomi.png', '便宜!', 3212.00, 10);

CREATE TABLE miaosha_goods (
  id BIGINT(20) NOT NULL AUTO_INCREMENT,
  goods_id BIGINT(20) DEFAULT NULL,
  miaosha_price DECIMAL(10, 2) DEFAULT '0.00',
  stock_count INT(11) DEFAULT NULL,
  start_date DATETIME DEFAULT NULL,
  end_date DATETIME DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE = innoDB AUTO_INCREMENT = 3 DEFAULT CHARSET utf8mb4;

INSERT INTO miaosha_goods VALUES (1, 1, 0.01, 4, '2018-01-05 00:00:00', '2018-01-10 00:00:00');
INSERT INTO miaosha_goods VALUES (2, 2, 0.01, 9, '2018-01-05 00:00:00', '2018-01-10 00:00:00');

CREATE TABLE order_info (
  id BIGINT(20) NOT NULL AUTO_INCREMENT,
  user_id BIGINT(20) DEFAULT NULL,
  goods_id BIGINT(20) DEFAULT NULL,
  delivery_addr_id BIGINT(20) DEFAULT NULL,
  goods_name VARCHAR(16) DEFAULT NULL,
  goods_count INT(11) DEFAULT '0',
  goods_price DECIMAL(10, 2) DEFAULT '0.00',
  order_channel TINYINT(4) DEFAULT '0',
  status TINYINT(4) DEFAULT '0',
  create_date DATETIME DEFAULT NULL,
  pay_date DATETIME DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE = innoDB AUTO_INCREMENT = 12 DEFAULT CHARSET utf8mb4;

CREATE TABLE miaosha_order (
  id BIGINT(20) NOT NULL AUTO_INCREMENT,
  user_id BIGINT(20) DEFAULT NULL,
  goods_id BIGINT(20) DEFAULT NULL,
  order_id BIGINT(20) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE = innoDB AUTO_INCREMENT = 3 DEFAULT CHARSET utf8mb4;

CREATE TABLE miaosha_user (
  id BIGINT(20) NOT NULL AUTO_INCREMENT,
  nickname VARCHAR(64) DEFAULT NULL,
  password VARCHAR(64) DEFAULT NULL,
  salt VARCHAR(64) DEFAULT NULL,
  head VARCHAR(64) DEFAULT NULL,
  register_date DATETIME DEFAULT NULL,
  last_login_date DATETIME DEFAULT NULL,
  login_count INT(11) DEFAULT '0',
  PRIMARY KEY (id)
) ENGINE = innoDB AUTO_INCREMENT = 1 DEFAULT CHARSET utf8mb4;
