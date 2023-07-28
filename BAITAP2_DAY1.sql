CREATE TABLE `account` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(200) DEFAULT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `department_id` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  KEY `department_id` (`department_id`),
  KEY `position_id` (`position_id`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `account_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `answer` (
  `answer_id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(200) DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `categoryquestion` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` enum('java','net','sql','postman','ruby') DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `department` (
  `department_id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `exam` (
  `exam_id` int NOT NULL AUTO_INCREMENT,
  `code` int DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `duration` date DEFAULT NULL,
  `creator_id` int DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `category_id` (`category_id`),
  KEY `creator_id` (`creator_id`),
  CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categoryquestion` (`category_id`),
  CONSTRAINT `exam_ibfk_2` FOREIGN KEY (`creator_id`) REFERENCES `account` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `examquestion` (
  `exam_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  KEY `exam_id` (`exam_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `examquestion_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`),
  CONSTRAINT `examquestion_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `group` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(200) DEFAULT NULL,
  `creator_id` int DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `groupaccount` (
  `group_id` int DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  KEY `group_id` (`group_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `groupaccount_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`group_id`),
  CONSTRAINT `groupaccount_ibfk_2` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `position` (
  `position_id` int NOT NULL AUTO_INCREMENT,
  `position_name` enum('dev','test','scrum master','pm') DEFAULT NULL,
  PRIMARY KEY (`position_id`),
  UNIQUE KEY `position_name` (`position_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `question` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(200) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `creator_id` int DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `category_id` (`category_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categoryquestion` (`category_id`),
  CONSTRAINT `question_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `typequestion` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `typequestion` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
