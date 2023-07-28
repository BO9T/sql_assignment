CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `trainee` (
  `traineeID` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('male','female','unknown') DEFAULT NULL,
  `et_iq` int DEFAULT NULL,
  `et_gmath` int DEFAULT NULL,
  `et_english` int DEFAULT NULL,
  `training_class` varchar(50) DEFAULT NULL,
  `evaluation_notes` text,
  `vti_account` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`traineeID`),
  CONSTRAINT `trainee_chk_1` CHECK (((`et_iq` < 20) and (`et_iq` > 0))),
  CONSTRAINT `trainee_chk_2` CHECK (((`et_gmath` < 20) and (`et_gmath` > 0))),
  CONSTRAINT `trainee_chk_3` CHECK (((`et_english` < 50) and (`et_english` > 0)))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
