-- **数据库级别：**  
--  显示所有数据库  
show DATABASES;

--  进入某个数据库  
use student_examination_sys;

--  创建一个数据库  
create table student_examination_sys;

--  创建指定字符集的数据库
GBK: create database student_examination_sys DEFAULT CHARACTER SET gbk COLLATE gbk_chinese_ci;
UTF8: CREATE DATABASE student_examination_sys DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci；

--  显示数据库的创建信息   
show create database student_examination_sys;

--  修改数据库的编码  
ALTER DATABASE student_examination_sys CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

--  删除一个数据库
drop database student_examination_sys;
   

-- **表级别**
--  修改表名
rename table students to student;

--  修改字段的数据类型
alter table student modify age varchar(10);

--  修改字段名
alter table student change name stu_name varchar(10);

--  添加字段
alter table student add column newcolumn  varchar(10);

--  删除字段
alter table student drop newcolumn;

--  修改表的存储引擎
alter table student ENGINE=InnoDB

--  删除表的外键约束
alter table score drop FOREIGN key student_id;

--  删除一张表
drop table student;