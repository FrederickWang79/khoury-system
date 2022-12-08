create database grade_manage_system;
use grade_manage_system;
create table major(major_id char(3) primary key, major_name varchar(100) not null unique);
create table student(student_id char(10) primary key, student_name varchar(20) not null, sex char(20), birth_year char(4), province varchar(20), enter_year char(4) not null, major_id char(3) not null, password varchar(128) not null);
alter table student add foreign key (major_id) references major (major_id)
on delete cascade;

create table teacher(teacher_id char(5) primary key, teacher_name varchar(20) not null, sex char(20), birth_year char(4), password varchar(128) not null);

create table course(course_id char(5) primary key, course_name varchar(100) not null, year char(4) not null, semester char(20) not null, teacher_id char(5) not null, credit tinyint unsigned not null);

alter table course add foreign key (teacher_id) references teacher (teacher_id)
on delete cascade;

create table major_course(major_id char(3), course_id char(5));

alter table major_course add primary key (major_id, course_id);

alter table major_course add foreign key (major_id) references major (major_id)
on delete cascade;

alter table major_course add foreign key (course_id) references course (course_id)
on delete cascade;

create table student_course(student_id char(10), course_id char(5), grade tinyint unsigned);

alter table student_course add primary key (student_id, course_id);

use grade_manage_system;

insert into major values
('210', 'Information security'),
('211', 'Computer science and technology'),
('212', 'Communication engineering');

insert into student values
('2016211257', 'stev', 'male', '1997', 'CA', '2016', '210', 'pbkdf2:sha256:150000$pyPyYytB$f624265d0c7440a0bbdb8f6293bbf78c7d4c8fc006a4f1c4d1103e57f554bc07'),
('2016211239', 'joe', 'male', '1998', 'AK', '2016', '210', 'pbkdf2:sha256:150000$DFJ6OkSt$d120f3bc3ce2ce672d8f180a3603ba23f13a1dd880d9eba38b1f27620b0a70eb'),
('2016211252', 'tom', 'female', '1998', 'AL', '2016', '210', 'pbkdf2:sha256:150000$F2wNnxko$e245dfa9f3adca5147874bd69a006da8e68324763738fd1cba9d769e3fb0e7ca'),
('2016211246', 'jack', 'male', '1998', 'AR', '2016', '210', 'pbkdf2:sha256:150000$UNjQfEUJ$678e97302f3d15077f4550d5e30cd129b85b2fac0306266cf68ccef18f17a101'),
('2016211235', 'lee', 'male', '1998', 'CA', '2016', '210', 'pbkdf2:sha256:150000$mJ7OBbLx$5ac26f85fb1a819b6b77d58ecb756c85815ec9741cd0e6f6d821ccf359a4524b'),
('2016211258', 'jaks', 'male', '1997', 'CO', '2016', '210', 'pbkdf2:sha256:150000$OnbCrdTY$3c69e98ce90fdecaab15668fc1b4cc835cf37f50ece5f423a09d489dc1be275b'),
('2016211237', 'anh', 'male', '1998', 'DE', '2016', '211', 'pbkdf2:sha256:150000$Fxoqf2bf$41d2794c4373dffe4b296bcd7323e20b65027908417a3bcc0db9a4bc345898a9'),
('2016211261', 'herry', 'female', '1998', 'DC', '2016', '211', 'pbkdf2:sha256:150000$aYx8jgQa$86809bd7b23902ba2edb725fbebe077a6912d5a28db5e1cf0f9a7fc6e80075a1'),
('2016211265', 'st', 'female', '1998', 'FL', '2016', '211', 'pbkdf2:sha256:150000$LMqSX79Z$205fd932d9515ee3a5ba0b081fef8f271b51050a449d967e4c0ae649de371a2d'),
('2016211263', 'ab', 'female', '1998', 'HI', '2016', '211', 'pbkdf2:sha256:150000$VI5TS38B$22db4ea5ecd03e199a20fa33a6c79a6b13d45965769c85f8bc7729068a95cc68'),
('2016210262', 'ac', 'female', '1998', 'ID', '2016', '211', 'pbkdf2:sha256:150000$OrrNgqbA$c5e694aa5205874904bd9339fbfa7fce853061922680a4dfa1d648cbff8fbf68'),
('2016210249', 'saq', 'male', '1998', 'IL', '2016', '211', 'pbkdf2:sha256:150000$5k9J7KWz$98a3ad169ed4c8bf65b5b2585110d0c5605adc900b584d32e5d6bf014e391abb'),
('2016210250', 'ayx', 'male', '1998', 'IN', '2016', '211', 'pbkdf2:sha256:150000$cu6XQ4Ay$c46768b201230c14bf8afb71ffbea39bec08ef72ce85b729a76c4589e43a9ddc'),
('2016210244', 'gmy', 'male', '1998', 'IA', '2016', '212', 'pbkdf2:sha256:150000$w2IgccPZ$319ec328700194590c583f3e178af93be8eb1f4f5090f073ea09810ae205a8d6'),
('2016210253', 'zy', 'male', '1998', 'KS', '2016', '212', 'pbkdf2:sha256:150000$eESSlA1Y$9888e15093647a29a93baa3f4157a53dbe8dda2e526fda65efe9362b8bd882c4'),
('2016212326', 'zfh', 'male', '1998', 'KY', '2016', '212', 'pbkdf2:sha256:150000$UrGmZisZ$beaaa9ab3be51b60f3e6c00da4b5bf53c055dfa120ce80c3a7864d5d9f081dbe'),
('2016212241', 'zgyx', 'male', '1998', 'LA', '2016', '212', 'pbkdf2:sha256:150000$h9edjELj$22edfdc178b5237e4cd25c6f24176c234dea3e4035267377b7995dc383661d7a'),
('2016212256', 'sfq', 'male', '1997', 'ME', '2016', '212', 'pbkdf2:sha256:150000$pL2UBsrU$dcc2d21ab8069e96662f75cb51dbeafc2240d59fa4e1e612ef9cbfedcc9603aa'),
('2016212264', 'oxp', 'female', '1998', 'MH', '2016', '212', 'pbkdf2:sha256:150000$usP122s5$8279428d6beaf0476ef9d65b9207f9beab823e191a42758d8f53b8f2323968dd'),
('2016212255', 'cyh','male', '1996', 'MD', '2016', '212', 'pbkdf2:sha256:150000$hjSh0k2Q$e04fdddc5008e9956df8e70b949b163b02311748fc115448f577ddedb84076f0');


insert into teacher values
('00001' , 'jby', 'female', '1970', 'pbkdf2:sha256:150000$AeM3pggJ$9c0b6909b259369548521a3dbe79fe1935c77132b169d77ef1e66f9d5d795ed6'),
('00002' , 'mjj', 'male', '1971', 'pbkdf2:sha256:150000$jqt7NswK$dbf8afc3b6a0bc833ba9b28578945bbb6186a35f7ec7ae6a3c059909135e21e2'),
('00003' , 'qy', 'male', '1972', 'pbkdf2:sha256:150000$0Y4t7COW$2a455bbb968691e1c88f089ffc80c90053cef5406e7a3933c56563b7a72f3e45'),
('00004' , 'tly', 'male', '1973', 'pbkdf2:sha256:150000$94V4m1eA$3edaf549bb560278a22d36416c78bf54762840d47238e5a755fc018cadcf358d'),
('00005' , 'ypx', 'female', '1974', 'pbkdf2:sha256:150000$vhS05WHD$505b24e752e699051ab92ac1903a09519b92fa9abd27a173300a2970dbdadf95'),
('00006' , 'cbx', 'female', '1975', 'pbkdf2:sha256:150000$h4XH5Zmh$0809312e3b5bf4aeef71e40a11e6e08df299b2f04bb4734adb4cd89d9a9e60a2'),
('00007' , 'sad', 'male', '1976', 'pbkdf2:sha256:150000$zdFOOBnp$67370b07b0018fae57c2225781c0b486571d67776a1733b061056654c2790c2a'),
('00008' , 'xsdd', 'male', '1977', 'pbkdf2:sha256:150000$aKTQFzNy$99cc9287bc1908264b3cd2b9d52ca8bae0c16a8173ae890e19ea93e65504d134'),
('00009' , 'aew', 'female', '1978', 'pbkdf2:sha256:150000$gLPBmwGI$c7bf242b751e89e67a4a0c4b2710b40ba7a82f185fb374fd01b78c1cecb8db37'),
('00010' , 'x', 'male', '1979', 'pbkdf2:sha256:150000$oOLGzWN6$81cf7a472dcdb6073ad53eea7bbff1b7328a27e6bd8d4debb144f5b1f3305fcb'),
('00011' , 'a', 'male', '1980', 'pbkdf2:sha256:150000$NlDL2ubt$b3bbc1f589ef441f9d9f3475caf1a252811aa7dde5eb66ac293404300a70b80d'),
('00012' , 'b', 'male', '1981', 'pbkdf2:sha256:150000$VEh9oJRN$6b84b0c0017144ee2d503d5d52a3f8a8f28442bd3a97695e3775cb46e1318854'),
('00013' , 'c', 'male', '1982', 'pbkdf2:sha256:150000$bFSGVusE$e7ecbd57ef721b7fcbf4d8d1698f81111c500fcf851e775647a8a58917423b71'),
('00014' , 'd', 'male', '1983', 'pbkdf2:sha256:150000$E6BMrz1P$fcce112be4d0767a65cd1f51f422b93c2d107213ab4c30b35e79295501f4aa22'),
('00015' , 'e', 'female', '1984', 'pbkdf2:sha256:150000$2rICjiWp$102a5c3395f8e2c0106b273583c2da0d6ab922408daacb1211072e0e82c6cadf'),
('00016' , 'f', 'male', '1985', 'pbkdf2:sha256:150000$ZgvvgoJw$20e6005b323f14ab30023964fce51f8c1b3f29c16ea6c0ee47a29323f1554c40');


insert into course values
('00001', 'Principle of database system', '2019', 'spring', '00001', 3),
('00002', 'Computer system structure', '2019', 'spring', '00002', 3),
('00003', 'Modern exchange principle', '2019', 'spring', '00003', 3),
('00004', 'Software engineering', '2019', 'spring', '00004', 3),
('00005', 'The principle of communication', '2018', 'fall', '00005', 4),
('00006', 'Compilation principles and techniques', '2018', 'fall', '00006', 4),
('00007', 'Operating system', '2018', 'fall', '00007', 4),
('00008', 'Microcomputer system and interface technology', '2018', 'fall', '00008', 4),
('00009', 'Computer network', '2018', 'spring', '00009', 4),
('00010', 'The principle of computer composition', '2018', 'spring', '00010', 5),
('00011', 'Algorithm design and analysis', '2018', 'spring', '00011', 2),
('00012', 'Formal language and automaton', '2018', 'spring', '00012', 2),
('00013', 'Discrete mathematics', '2017', 'fall', '00013', 6),
('00014', 'Algorithm and data structure', '2017', 'fall', '00014', 5),
('00015', 'Introduction', '2017', 'fall', '00015', 4),
('00016', 'Digital logic', '2017', 'fall', '00016', 4);



insert into major_course values
('210', '00001'),
('210', '00002'),
('210', '00005'),
('210', '00006'),
('210', '00009'),
('210', '00010'),
('210', '00013'),
('210', '00014'),
('211', '00002'),
('211', '00003'),
('211', '00006'),
('211', '00007'),
('211', '00010'),
('211', '00011'),
('211', '00014'),
('211', '00015'),
('212', '00003'),
('212', '00004'),
('212', '00007'),
('212', '00008'),
('212', '00011'),
('212', '00012'),
('212', '00015'),
('212', '00016');
