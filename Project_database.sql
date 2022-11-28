CREATE DATABASE StackProject;
USE StackProject;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE admin (
  id int(12) NOT NULL,
  username varchar(250) NOT NULL,
  password varchar(250) NOT NULL,
  creationDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updationDate varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO admin VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-10-22 10:44:22', '22-10-2022 10:45:45 PM');

CREATE TABLE Customers(
CUS_CODE int NOT NULL,
CUS_LNAME varchar(10) DEFAULT NULL,
CUS_FNAM varchar(10) DEFAULT NULL,
CUS_INITIAL varchar(1) DEFAULT NULL,
CUS_AREACODE varchar(3) DEFAULT NULL,
CUS_PHONE varchar(9) DEFAULT NULL,
CUS_BALANCE float DEFAULT NULL,
  PRIMARY KEY (CUS_CODE)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO Customers VALUES
('10010','Adam','William','S','407','444-5698','0'),
('10011','Maria','Benjamin','A','917','458-4787','0'),
('10012','Emma','James','W','61','894-2285','255.36'),
('10013','Hassan','Paul','G','212','894-2180','458.75'),
('10014','Orlando','Ryan','F','718','222-1672','0'),
('10015','Paul','Amy','C','321','442-3381','0'),
('10016','Katy','James','G','321','297-1228','221.19'),
('10017','Williams','George','','615','290-2556','768.93'),
('10018','Farriss','Anne','G','713','382-7185','216.55'),
('10019','Smith','Olette','K','615','297-3809','0');

CREATE TABLE orders (
  id int(11) NOT NULL,
  userId int(11) DEFAULT NULL,
  productId varchar(255) DEFAULT NULL,
  quantity int(11) DEFAULT NULL,
  orderDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  paymentMethod varchar(50) DEFAULT NULL,
  orderStatus varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO orders VALUES
(1, 1, '3', 1, '2022-10-22 9:32:57', 'COD', NULL),
(3, 1, '4', 1, '2022-10-22 9:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2022-10-22 6:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2022-10-22 9:21:38', 'COD', NULL),
(6, 1, '4', 1, '2022-10-22 9:21:38', 'COD', NULL);


CREATE TABLE products (
  id int(11) NOT NULL,
  category int(11) NOT NULL,
  subCategory int(11) DEFAULT NULL,
  categoryGender longtext,
  categorySize longtext,
  productPrice int(11) DEFAULT NULL,
  productPriceBeforeDiscount int(11) DEFAULT NULL,
  shippingCharge int(11) DEFAULT NULL,
  productAvailability varchar(255) DEFAULT NULL,
  postingDate timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE products MODIFY COLUMN category longtext;
ALTER TABLE products MODIFY COLUMN subCategory longtext;



INSERT INTO products VALUES
(3, 'cloth', 'Shirt', 'Men', 'Medium', 50, 55, 10, 'In stock', '2022-10-22 9:17:37'),
(4, 'cloth', 'Shirt', 'Men', 'Small', 40, 45, 10, 'In stock', '2022-10-22 9:17:38'),
(5, 'cloth', 'Short', 'Men', 'Medium', 30, 40, 10, 'In stock', '2022-10-22 9:17:39'),
(6, 'cloth', 'Sweater', 'Men', 'Medium', 50, 55, 10, 'In stock', '2022-10-22 9:17:40'),
(7, 'cloth', 'Shirt', 'Women', 'Medium', 45, 55, 10, 'In stock', '2022-10-22 9:17:41'),
(9, 'cloth', 'Shirt', 'Men', 'Medium', 60, 65, 10, 'In stock', '2022-10-22 9:17:42'),
(10, 'cloth', 'Sweater', 'Women', 'Medium', 50, 55, 10, 'In stock', '2022-10-22 9:17:42'),
(11, 'cloth', 'Sweater', 'Men', 'Small', 50, 55, 10, 'In stock', '2022-10-22 9:17:44'),
(12, 'cloth', 'Sweater', 'Men', 'Medium', 50, 55, 10, 'In stock', '2022-10-22 9:17:45'),
(13, 'cloth', 'pant', 'Men', 'Medium', 50, 55, 10, 'In stock', '2022-10-22 9:17:46'),
(14, 'cloth', 'pant', 'Men', 'small', 50, 55, 10, 'In stock', '2022-10-22 9:18:37'),
(15, 'cloth', 'pant', 'Men', 'Large', 50, 55, 10, 'In stock', '2022-10-22 9:19:37'),
(16, 'cloth', 'Sweater', 'Men', 'Medium', 50, 55, 10, 'In stock', '2022-10-22 9:20:37'),
(17, 'cloth', 'pant', 'Men', 'Medium', 50, 55, 10, 'In stock', '2022-10-22 9:20:37'),
(18, 'cloth', 'pant', 'Men', 'small', 50, 55, 10, 'In stock', '2022-10-22 9:25:37');


CREATE TABLE shopping_cart (
    id int(15) NOT NULL,
    Product VARCHAR(50) NOT NULL,
    SKU VARCHAR(25) NOT NULL,
    category VARCHAR(25) NOT NULL,
    price DECIMAL(5) NOT NULL,
    discount_id int(6) NOT NULL,
    created_date TIMESTAMP NOT NULL,
    modified_date TIMESTAMP,
    UNIQUE KEY prod_index (id) ,
    UNIQUE KEY sku_index (id, SKU),
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE userlog (
  id int(11) NOT NULL,
  userEmail varchar(255) DEFAULT NULL,
  userip binary(25) DEFAULT NULL,
  loginTime timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  /*logout varchar(255) DEFAULT NULL,*/
  status int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO userlog VALUES
(1, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:45:44', ' ', 0),
(2, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:45:45', ' ',  1),
(3, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:45:46', ' ', 1),
(4, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:45:47', '2022-10-22 05:55:49', 1),
(5, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:45:48', ' 2022-10-22 06:01:25', 0),
(6, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:45:46', ' ', 0),
(7, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:45:50', ' ', 0),
(8, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:45:55', '2022-10-22 06:05:24', 1),
(9, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:45:57',' ', 1),
(10, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:45:59', ' ', 0),
(11, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:46:44', ' ' ,1),
(12, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:47:44', ' ', 0),
(13, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:48:44', ' ', 1),
(14, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:49:44', ' ', 1),
(15, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:50:44', '2022-10-22 06:03:46', 1),
(16, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:51:44', ' ', 1),
(17, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:55:44', ' ',  1),
(18, 'testpass123@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-22 05:56:44', ' ', 1);




DROP TABLE order_history;
DROP TABLE category;
DESC admin;
DESC Customers;
DESC products;
DESC orders;
DESC shopping_cart;
DESC userlog;


