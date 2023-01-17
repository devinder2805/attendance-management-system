--------------------------------------------------------
--  File created - Thursday-January-05-2023   
--------------------------------------------------------

---- subject table ----
Insert into  SUBJECT (SUBJECT_ID,SUBJECT_NAME) values ('CS-301','Data Structure');
Insert into  SUBJECT (SUBJECT_ID,SUBJECT_NAME) values ('AS-201','Economics');
Insert into  SUBJECT (SUBJECT_ID,SUBJECT_NAME) values ('CS-302','DataBase Management System');
Insert into  SUBJECT (SUBJECT_ID,SUBJECT_NAME) values ('CS-303','Discrete Structure');
Insert into  SUBJECT (SUBJECT_ID,SUBJECT_NAME) values ('CS-304','MicroProcessor');

--- student data table ----
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213029','Deemant','Computer Science and Engineering',1,'deemantsoni@gmail.com',357234);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213035','Eros','Computer Science and Engineering',1,'eros@gmail.com',653462);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213028','DAMANPREET SINGH','Computer Science and Engineering',1,'damanpreetsingh@gmail.com',5475273);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213031','DEVANSH S SHUKLA','Computer Science and Engineering',1,'devanch@gmail.com',3547324);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213032','DEVINDER KUMAR','Computer Science and Engineering',1,'devinder@gmail.com',653472);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213033','DHRUV AGGARWAL','Computer Science and Engineering',1,'dhruvaggarwal@gmail.com',3526223);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213034','DHRUV GOYAL','Computer Science and Engineering',1,'dhruvgoyal@gmail.com',35535745);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213022','Avkesh','Computer Science and Engineering',1,'avkesh@gmail.com',434346);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213019','Aryan Raj','Computer Science and Engineering',1,'aryanraj@gmail.com',3555327);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213020','Aryan Singh Dhiman','Computer Science and Engineering',1,'asd@gmail.com',5253336);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213023','Ayush','Computer Science and Engineering',1,'ayush@gmail.com',5353426);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213024','Bibhuti','Computer Science and Engineering',1,'bibhuti@gmail.com',563345346);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213025','Bubble Preet','Computer Science and Engineering',1,'bubblepreet@gmail.com',6756553);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213026','Chahul','Computer Science and Engineering',1,'chahul@gmail.com',478764);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213027','Chetnya','Computer Science and Engineering',1,'chetnya@gmail.com',3756535);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213030','Deepak','Computer Science and Engineering',1,'deepak@gmail.com',76456346);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213021','Avjeet','Computer Science and Engineering',1,'avjeet@gmail.com',334456);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE213078','ABC','Computer Science and Engineering',2,'abc@gmail.com',4567876);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE214078','xyz','Mechanical Engineering',1,'axy@gmail.com',45356576);
Insert into  STU_DATA (ROLL_NO,NAME,BRANCH,SECTION,EMAIL,PHONE) values ('UE63332 ','DamanPreet Singh','Computer Science and Engineering',1,'random@gmail.com',465634635);

---- student login table -----
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213022','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213019','123');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213028','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213031','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213032','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213033','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213034','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213029','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213035','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213020','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213023','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213024','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213025','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213026','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213027','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213030','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE213021','1234');
Insert into  STUDENT_LOGIN (ROLL_NO,PASSWORD) values ('UE63332 ','123');

------ teacher data table -----
Insert into  TEACHER__DATA (TEACHER_ID,NAME,SUBJECT_ID,SUBJECT,EMAIL,PHONE) values ('UE301     ','MAMTA JUNEJA','CS-302','DataBase Management System','mamtajuneja@gmail.com',364877);
Insert into  TEACHER__DATA (TEACHER_ID,NAME,SUBJECT_ID,SUBJECT,EMAIL,PHONE) values ('UE302     ','AKASHDEEP SHARMA','CS-301','Data Structure','akashdeep@gmail.com',874773);
Insert into  TEACHER__DATA (TEACHER_ID,NAME,SUBJECT_ID,SUBJECT,EMAIL,PHONE) values ('UE305     ','SUKHWINDER SINGH','CS-304','MicroProcessor','sukhwindersingh@gmail.com',633766);
Insert into  TEACHER__DATA (TEACHER_ID,NAME,SUBJECT_ID,SUBJECT,EMAIL,PHONE) values ('UE310     ','DEEPTI GUPTA','CS-303','Discrete Structure','deeptigupta@gmail.com',466465);
Insert into  TEACHER__DATA (TEACHER_ID,NAME,SUBJECT_ID,SUBJECT,EMAIL,PHONE) values ('UE315     ','ANU JHAMB','AS-201','Economics','anujhamb@gmail.com',534526);

---- teacher login table ---
Insert into  TEACHER_LOGIN (TEACHER_ID,PASSWORD) values ('UE301     ','34567');
Insert into  TEACHER_LOGIN (TEACHER_ID,PASSWORD) values ('UE302     ','34567');
Insert into  TEACHER_LOGIN (TEACHER_ID,PASSWORD) values ('UE305     ','34567');
Insert into  TEACHER_LOGIN (TEACHER_ID,PASSWORD) values ('UE310     ','34567');
Insert into  TEACHER_LOGIN (TEACHER_ID,PASSWORD) values ('UE315     ','34567');

--- student attendance ---
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213020','Aryan Singh Dhiman','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213021','Avjeet','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213024','Bibhuti','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213025','Bubble Preet','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213028','DAMANPREET SINGH','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213029','Deemant','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213032','DEVINDER KUMAR','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213033','DHRUV AGGARWAL','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213035','Eros','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213019','Aryan Raj','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213022','Avkesh','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213023','Ayush','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213026','Chahul','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213027','Chetnya','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213030','Deepak','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213031','DEVANSH S SHUKLA','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213034','DHRUV GOYAL','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213019','Aryan Raj','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213021','Avjeet','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213024','Bibhuti','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213025','Bubble Preet','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213022','Avkesh','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213020','Aryan Singh Dhiman','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213023','Ayush','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213026','Chahul','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213028','DAMANPREET SINGH','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213029','Deemant','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213032','DEVINDER KUMAR','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213031','DEVANSH S SHUKLA','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213033','DHRUV AGGARWAL','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213034','DHRUV GOYAL','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213027','Chetnya','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213030','Deepak','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213035','Eros','UE302     ',to_date('05-JAN-23','DD-MON-RR'),'Data Structure',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213019','Aryan Raj','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213020','Aryan Singh Dhiman','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213021','Avjeet','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213022','Avkesh','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213023','Ayush','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213024','Bibhuti','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213025','Bubble Preet','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213026','Chahul','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213027','Chetnya','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213028','DAMANPREET SINGH','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213029','Deemant','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213030','Deepak','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213031','DEVANSH S SHUKLA','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213032','DEVINDER KUMAR','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213033','DHRUV AGGARWAL','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213034','DHRUV GOYAL','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213035','Eros','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213019','Aryan Raj','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213020','Aryan Singh Dhiman','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213021','Avjeet','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213022','Avkesh','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213023','Ayush','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213024','Bibhuti','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213025','Bubble Preet','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213026','Chahul','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213027','Chetnya','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213028','DAMANPREET SINGH','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213029','Deemant','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213030','Deepak','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213031','DEVANSH S SHUKLA','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213032','DEVINDER KUMAR','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213033','DHRUV AGGARWAL','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213035','Eros','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213034','DHRUV GOYAL','UE305     ',to_date('05-JAN-23','DD-MON-RR'),'MicroProcessor',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213019','Aryan Raj','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213020','Aryan Singh Dhiman','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213021','Avjeet','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213022','Avkesh','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213023','Ayush','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213024','Bibhuti','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213025','Bubble Preet','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213026','Chahul','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213027','Chetnya','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213028','DAMANPREET SINGH','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213029','Deemant','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213030','Deepak','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213031','DEVANSH S SHUKLA','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213032','DEVINDER KUMAR','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213033','DHRUV AGGARWAL','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213034','DHRUV GOYAL','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213035','Eros','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213019','Aryan Raj','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213020','Aryan Singh Dhiman','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213021','Avjeet','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213022','Avkesh','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213023','Ayush','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213024','Bibhuti','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213025','Bubble Preet','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213026','Chahul','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213027','Chetnya','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213028','DAMANPREET SINGH','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213029','Deemant','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213030','Deepak','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213031','DEVANSH S SHUKLA','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213032','DEVINDER KUMAR','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213033','DHRUV AGGARWAL','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213034','DHRUV GOYAL','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213035','Eros','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213032','DEVINDER KUMAR','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213019','Aryan Raj','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213020','Aryan Singh Dhiman','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213021','Avjeet','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213022','Avkesh','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213023','Ayush','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213024','Bibhuti','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213025','Bubble Preet','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213026','Chahul','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213027','Chetnya','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213028','DAMANPREET SINGH','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213029','Deemant','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213030','Deepak','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213031','DEVANSH S SHUKLA','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213033','DHRUV AGGARWAL','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213034','DHRUV GOYAL','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213035','Eros','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213019','Aryan Raj','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213022','Avkesh','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213023','Ayush','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213025','Bubble Preet','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213027','Chetnya','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213026','Chahul','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213028','DAMANPREET SINGH','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',1);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213020','Aryan Singh Dhiman','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213021','Avjeet','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213024','Bibhuti','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213029','Deemant','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213030','Deepak','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213031','DEVANSH S SHUKLA','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213032','DEVINDER KUMAR','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213033','DHRUV AGGARWAL','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213034','DHRUV GOYAL','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);
Insert into  STUDENT_ATTENDANCE (STU_ID,STU_NAME,TEACHER_ID,ATT_DATE,SUBJECT,PRESENT) values ('UE213035','Eros','UE301     ',to_date('05-JAN-23','DD-MON-RR'),'DataBase Management System',0);