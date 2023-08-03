use assignment;
/*
select * from account
where account_id = 1 and username = 'sonnv';
select * from account
where account_id = 1 or account_id = 2;
account
--lay id 1 voi 2
select * from account
where account_id in (1, 2);
--lay cac id ngoai tru id 1 va 2
select * from account
where account_id not in (1, 2);
select * from account
where username like 'h%';
select * from account
where username like '%ong%';
*/

/*thêm 1 chức danh mới*/
insert  into `position`(`Position_ID`,`Position_Name`) 
values (4, 'phó giám đốc');

/*thêm 1 phòng ban mới*/
insert  into `department`(`Departmet_ID`,`Department_Name`) 
values(6, 'phòng chăm sóc KH');

/*thêm 1 account mới*/
insert  into `account`(`Account_ID`,`Email`,`Username`,`Full_Name`,`Departmet_ID`,`Position_ID`,`Create_Date`,`age`) 
values (10,'lan@gmail.com','lan','nguyễn thị lan',6,4,'2023-08-01',40);

/*thêm mới 1 group*/
insert  into `group`(`Group_ID`,`Group_Name`,`Creator_ID`,`Create_Date`) 
values(5,'CSKH',1,'2023-08-01');

/*gan nhan 1 nhan vien vao group moi tao*/
insert  into `groupaccount`(`Group_ID`,`Account_ID`,`Join_Date`) 
values(5,10,'2023-08-01');

/*lay danh sach account voi do tuoi giam dan*/
select account_id, Full_Name, age from `account` 
order by age desc ;

/*lay danh sach account voi do tuoi tang dan*/
select account_id, Full_Name, age from `account` 
order by age asc ;

/*lấy ra danh sách account cùng với tên phòng ban tương ứng*/
select `account`.account_id,`account`.email, `account`.username, `account`.departmet_id, `account`.position_id,`department`.department_name
from `account` join `department` on `account`.departmet_id = `department`.departmet_id;

/*đếm số nhân viên ở từng phòng ban*/
select count(*), department_name from(
select `account`.account_id,`account`.email, `account`.username, `account`.departmet_id, `account`.position_id,`department`.department_name
from `account` join `department` on `account`.departmet_id = `department`.departmet_id) as tonghop
group by department_name;

/*lấy tên chức vụ của từng nhân viên*/
select account_id, Full_Name, position.position_name from `account` join `position` on `account`.position_id = position.position_id;

/*tính tuổi trung bình của từng chức vụ*/
select avg(age),position_name from
(select `account`.full_name, `account`.age, position.position_name from `account` join `position` on `account`.position_id = position.position_id) as tonghop
group by position_name;

/*tính tuổi nhỏ nhất của từng chức vụ*/
select min(age),position_name from
(select `account`.full_name, `account`.age, position.position_name from `account` join `position` on `account`.position_id = position.position_id) as tonghop
group by position_name;

/*thêm 2- 5 loại lĩnh vực câu hỏi vào trong bảng categoryquestion(đã có sẵn dữ liệu test)*/
insert  into `categoryquestion`(`Category_ID`,`Category_Name`) 
values(5,'Marketing'),(6,'Sale'),(7,'Kinh doanh'),(8,'Ôtô');

/*Thêm một 10 câu hỏi và các câu trả lời tương ứng (bảng question và answer) với mỗi câu hỏi sẽ có 4 câu trả lời. Trong 4 câu trả lời đó thì sẽ có 1 câu trả lời đúng*/
insert  into `question`(`Question_ID`,`Content`,`Category_ID`,`Type_ID`,`Creator_ID`,`Create_Date`) 
values
(3,'VPN là gì?',2,1,3,'2023-08-02'),
(4,'Marketing là gì? ',5,2,4,'2023-08-02'),
(5,'Sale off là gì? ',6,2,5,'2023-08-02'),
(6,'Doanh nghiệp là gì? ',7,1,6,'2023-08-02'),
(7,'ABS là gì?',8,1,7,'2023-08-02'),
(8,'Sale flash là gì?',6,1,8,'2023-08-02'),
(9,'Hành lý là gì?',1,2,9,'2023-08-02'),
(10,'Quảng cáo là gì?',5,1,10,'2023-08-02');

insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) 
values
(6,'VPN là mạng riêng ảo ',3,'1'),
(7,'VPN là mạng wifi ',3,'0'),
(8,'VPN là mạng nhện ',3,'0'),
(9,'VPN là mạng lưới',3,'0'),
(10,'Marketing là quá trình tạo ra, truyền đạt, phân phối và trao đổi giá trị để đáp ứng nhu cầu của khách hàng',4,'1'),
(11,'Marketing là thiết kế đồ họa',4,'0'),
(12,'Marketing là cơ khí',4,'0'),
(13,'Marketing là chợ bà chiểu',4,'0'),
(14,'Sale off là giảm giá mạnh',5,'1'),
(15,'Sale off là tăng giá mạnh',5,'0'),
(16,'Sale off là bằng giá',5,'0'),
(17,'Sale off là không có giá',5,'0'),
(18,'Doanh nghiệp là một tổ chức kinh tế',6,'1'),
(19,'Doanh nghiệp là cái chợ',6,'0'),
(20,'Doanh nghiệp là công ty đa cấp',6,'0'),
(21,'Doanh nghiệp là tổ chức lừa đảo',6,'0'),
(22,'ABS là Anti-lock Braking System',7,'1'),
(23,'ABS là ngân hàng',7,'0'),
(24,'ABS là công ty',7,'0'),
(25,'ABS là công nghệ thông tin',7,'0'),
(26,'Sale flash là giảm giá ngắn hạn',8,'1'),
(27,'Sale flash là tăng tốc',8,'0'),
(28,'Sale flash là giảm giá dài hạn',8,'0'),
(29,'Sale flash là tăng giá dài hạn',8,'0'),
(30,'Hành lý là đồ đạc',9,'1'),
(31,'Hành lý là quần áo',9,'0'),
(32,'Hành lý là card visa',9,'0'),
(33,'Hành lý là thẻ tín dụng',9,'0'),
(34,'Quảng cáo là giới thiệu sản phẩm hoặc dịch vụ ',10,'1'),
(35,'Quảng cáo là quảng cáo',10,'0'),
(36,'Quảng cáo là mua đồ',10,'0'),
(37,'Quảng cáo là sai',10,'0');

/*Lấy toàn bộ danh sách các câu hỏi và câu trả lời đúng. Sắp xếp theo thứ tự thời gian tạo tăng dần.*/
select answer.question_id, answer.content, answer.is_correct, question.Create_Date 
from `answer` join `question` on answer.question_id = question.question_id
where answer.is_correct = 1
order by create_date asc;
/*Lấy toàn bộ danh sách các câu hỏi được tạo ra trong ngày hôm nay*/
select question_id, content, Create_Date from `question`
where create_date = curdate();
/*Thống kê xem mỗi lĩnh vực câu hỏi, mỗi lĩnh vực có bao nhiêu câu hỏi.  và mỗi lĩnh vực có bao nhiêu câu hỏi khó , bao nhiêu câu hỏi dễ.*/
select COUNT(*) as total_questions, count(case when type_id = 1 then 1 end) as easy_questions, count(case when type_id = 2 then 1 end) as hard_questions
from `question` join `categoryquestion` on question.category_id = categoryquestion.category_id;

/*Tìm trong bảng question có bao nhiêu lĩnh vực câu hỏi đã được thêm.*/
select COUNT(*) as total_questions from `question` join categoryquestion on question.category_id = categoryquestion.category_id;