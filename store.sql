CREATE TABLE `store` (
  `id_product` int NOT NULL AUTO_INCREMENT,
  `PRODUCT` varchar(45) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_product`),
  KEY `id_product` (`id_product`),
  KEY `PRODUCT` (`PRODUCT`(20)),
  KEY `Price` (`Price`),
  KEY `rating` (`rating`),
  KEY `category` (`category`(10)),
  KEY `brand` (`brand`(20))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- 1
SELECT PRODUCT, price FROM store WHERE brand="Apple";

-- 2
SELECT PRODUCT FROM store WHERE price<"1000";

-- 3
SELECT PRODUCT FROM store WHERE price BETWEEN "500" AND "1500";

-- 4
SELECT PRODUCT, price, rating FROM store WHERE brand IN ("Apple", "Samsung", "Huawei");

-- 5
SELECT PRODUCT, category FROM store WHERE PRODUCT LIKE "Samsung%";