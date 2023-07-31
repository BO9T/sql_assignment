/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.7.16-log : Database - assignment
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`assignment` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `assignment`;

/*Data for the table `account` */

insert  into `account`(`Account_ID`,`Email`,`Username`,`Full_Name`,`Departmet_ID`,`Position_ID`,`Create_Date`,`age`) 
values 
(1,'sonnv@gmail.com','sonnv','Nguyễn Văn Sơn',1,1,'2023-07-04',18),
(2,'tuan@gmail.com','nvtuan','Nguyễn Văn Tuấn',2,1,'2023-07-09',22),
(3,'van@gmail.com','van','nguyên văn vân',4,3,'2023-07-17',40),
(4,'hong@gmail.com','hong','nguyễn thị hồng',2,2,'2023-07-26',34),
(5,'phong@cnt.com','phong','Nguyen Văn Phong',5,1,'2023-07-31',18),
(6,'anh@cnt.com','anh','Nguyễn Văn Anh',5,2,'2023-07-26',45),
(7,'abc@cnt.com','abc','Trần Abc',3,2,'2023-07-26',45),
(8,'gcde@gmai.com','gcde','nguyễn gcde',2,1,'2023-07-09',18),
(9,'huong@gmail.com','huong','phùng thị hương',1,1,'2023-07-17',34),
(10,'hen@gmail.com','hen','nguyễn văn hên',1,1,'2023-07-31',20),
(11,'teo@gmail.com','teo','trần văn tèo',3,1,'2023-07-31',34),
(12,'quan@gmail.com','quan','nguyễn minh quân',5,3,'2023-07-31',20),
(13,'dat@gmail.com','dat','đinh văn đạt',7,1,'2023-07-31',20),
(14,'minh@gmail.com','minh','phạm bình minh',6,1,'2023-07-31',35),
(15,'phuong@gmail.com','phuong','khuất phượng',8,2,'2023-07-31',25),
(16,'hoang@gmail.com','hoang','nguyễn minh hoàng',9,1,'2023-07-31',21),
(17,'dũng@gmail.com','dung','trần quốc dũng',9,2,'2023-07-31',24),
(18,'khoa@gmail.com','khoa','nguyễn văn khoa',1,2,'2023-07-31',28),
(19,'ti@gmail.com','ti','nguyễn văn tí',6,2,'2023-07-31',29),
(20,'linh@gmail.com','linh','nguyễn ngọc linh',6,1,'2023-07-31',30);


/*Data for the table `answer` */

insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) 
values 
(1,'kết quả là 11',1,'1'),
(2,'kết quả là 12',1,'0'),
(3,'kết quả là 13',1,'0'),
(4,'kết quả là 14',1,'0'),
(5,NULL,NULL,'0'),
(6,'Từ "happy" có nghĩa là hạnh phúc',3,'1'),
(7,'Từ "happy" có nghĩa là buồn bã',3,'0'),
(8,'Từ "AI" có nghĩa là trí tuệ nhân tạo',10,'1'),
(9,'Từ "AI" có nghĩa là máy tính',3,'0'),
(10,'Từ "motel" có nghĩa là cơ sở lưu trú ',3,'1'),
(11,'Từ "motel" có nghĩa là sở thú ',3,'0');

/*Data for the table `categoryquestion` */

insert  into `categoryquestion`(`Category_ID`,`Category_Name`) 
values
(1,'Du lich'),
(2,'Công nghệ thông tin'),
(3,'Lịch sử'),
(4,'Toán học'),
(5,'Tâm lí học'),
(6,'Tiếng anh'),
(7,'Cơ khí'),
(8,'kinh doanh'),
(9,'Sinh học'),
(10,'Marketing');

/*Data for the table `department` */

insert  into `department`(`Departmet_ID`,`Department_Name`) 
values
(1,'Phòng kỹ thuật'),
(2,'Phòng nhân sự'),
(3,'Phòng kế toán'),
(4,'Ban giám đốc'),
(5,'Phòng bảo vệ'),
(6,'Phòng Sale'),
(7,'Phòng Marketing'),
(8,'Phòng thiết kế'),
(9,'Phòng tài chính'),
(10,'Phòng kinh doanh');

/*Data for the table `exam` */
insert  into `exam`(`Exam_ID`,`Code`,`Title`,`Category_ID`,`Duration`,`Creator_ID`,`Create_Date`) 
values 
(1, 'exam1', 'Đề thi toán', 4, 60, 1, '2023-07-31'),
(2, 'exam2', 'Đề thi du lịch', 1, 90, 1, '2023-07-31'),
(3, 'exam3', 'Đề thi tiếng anh', 6, 90, 1, '2023-07-20'),
(4, 'exam4', 'Đề thi công nghệ thông tin', 1, 120, 1, '2023-07-31'),
(5, 'exam5', 'Đề thi lịch sử', 3, 30, 1, '2023-07-21'),
(6, 'exam6', 'Đề thi cơ khí', 7, 60, 1, '2023-07-31'),
(7, 'exam7', 'Đề thi kinh doanh', 8, 30, 1, '2023-07-31'),
(8, 'exam8', 'Đề thi sinh học', 9, 30, 1, '2023-07-31'),
(9, 'exam9', 'Đề thi marketing', 10, 60, 1, '2023-07-31'),
(10, 'exam10', 'Đề thi tâm lí học', 5, 20, 1, '2023-07-31');
/*Data for the table `examquestion` */
insert  into `examquestion`(`Exam_ID`,`Question_ID`) 
values(1,1),
(2,2),
(3,3),
(4,10),
(5,4),
(6,6),
(7,7),
(8,8),
(9,9),
(10,5);

/*Data for the table `group` */

insert  into `group`(`Group_ID`,`Group_Name`,`Creator_ID`,`Create_Date`) 
values 
(1,'TESTER',1,'2023-07-30'),
(2,'JAVA',2,'2023-07-27'),
(3,'DOTNET',3,'2023-07-18'),
(4,'PM',4,'2023-07-04'),
(5,'PO',5,'2023-07-05'),
(6,'DEV',6,'2023-07-21'),
(7,'BA',7,'2023-07-20'),
(8,'DESIGNER',8,'2023-07-26'),
(9,'CONTENT',9,'2023-07-29'),
(10,'SECURITY',10,'2023-07-01');

/*Data for the table `groupaccount` */

insert  into `groupaccount`(`Group_ID`,`Account_ID`,`Join_Date`) 
values 
(1,1,'2023-07-18'),
(2,2,'2023-07-27'),
(3,6,'2023-07-31'),
(4,1,'2023-07-29'),
(5,10,'2023-07-26'),
(6,10,'2023-07-27'),
(7,9,'2023-07-27'),
(8,7,'2023-07-28'),
(9,1,'2023-07-29'),
(10,1,'2023-07-30');

/*Data for the table `position` */

insert  into `position`(`Position_ID`,`Position_Name`) 
values 
(1,'Nhân viên'),
(2,'Trưởng phòng'),
(3,'Giám đốc');

/*Data for the table `question` */

insert  into `question`(`Question_ID`,`Content`,`Category_ID`,`Type_ID`,`Creator_ID`,`Create_Date`) 
values 
(1,'Kết quả của biểu thức sau là mấy: 5 + 6 ?',4,2,1,'2023-07-26'),
(2,'Từ "motel" có nghĩa là gì?',1,3,2,'2023-07-11'),
(3,'Từ "happy" có nghĩa là gì?',6,2,1,'2023-07-20'),
(4,'Từ "chiến tranh" có nghĩa là gì?',3,1,1,'2023-07-21'),
(5,'Trí nhớ là gì?',5,1,1,'2023-07-23'),
(6,'Từ "động cơ" có nghĩa là gì?',7,3,1,'2023-07-31'),
(7,'Từ "định giá" có nghĩa là gì?',8,2,1,'2023-07-31'),
(8,'Từ "DNA" có nghĩa là gì?',9,3,1,'2023-07-31'),
(9,'Từ "tiếp thị" có nghĩa là gì?',10,2,1,'2023-07-31'),
(10,'Từ "AI" có nghĩa là gì?',2,3,1,'2023-07-31');



/*Data for the table `typequestion` */

insert  into `typequestion`(`Type_ID`,`Type_Name`) values (1,'Khó'),(2,'Dễ'),(3,'Trung bình');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
