-- Table structure for table `Authors`

CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE 'Authors' (
  'author_id ' INT NOT NULL,
  'author_name' VARCHAR(215) DEFAULT NULL,
  PRIMARY KEY ('author_id ')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Books` (
  `book_id` INT NOT NULL,
  `title` VARCHAR(130) DEFAULT NULL,
  `author_id` INT NOT NULL,
  `price` DOUBLE DEFAULT NULL,
  `publication_date` DATE DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `Books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `Authors` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Customers` (
  `customer_id ` INT NOT NULL,
  customer_name VARCHAR(215),
  email VARCHAR(215),
  address TEXT,
  PRIMARY KEY (`customer_id `)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Order_Details` (
  `orderdetailid ` INT NOT NULL,
  `order_id` INT NOT NULL,
  book_id INT NOT NULL,
  quantity DOUBLE DEFAULT NULL,
  PRIMARY KEY (`orderdetailid`),
  KEY `order_id` (`order_id`),
  KEY book_id (book_id),
  CONSTRAINT `Order_Details_ibfk_1` FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  CONSTRAINT `Order_Details_ibfk_2` FOREIGN KEY (book_id) REFERENCES Books(book_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Orders` (
  order_id INT NOT NULL,
  customer_id INT NOT NULL,
  order_date DATE DEFAULT NULL,
  PRIMARY KEY (order_id),
  KEY customer_id (customer_id),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;