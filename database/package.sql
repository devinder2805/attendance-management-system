
create or replace package att_management
is
    function add_student(
        roll_no stu_data.roll_no % type, 
        name stu_data.name % type, 
        branch stu_data.branch % type,
        section stu_data.section % type,
        email stu_data.email % type,
        phone stu_data.phone % type,
        password student_login.password % type
    ) return number;
    
    function update_record_student(
        rollno stu_data.roll_no % type,
        studentmail stu_data.email % type,
        studentphone stu_data.phone % type
    ) return number;
        
    function add_teacher(
        teacher_id teacher__data.teacher_id % type,
        name teacher__data.name % type,
        sub_id teacher__data.subject_id % type,
        subject teacher__data.subject % type,
        email teacher__data.email % type,
        phone teacher__data.phone % type,
        password teacher_login.password % type
    ) return number;
    
    function update_record_teacher(
        teacherid teacher__data.teacher_id % type,
        teachermail teacher__data.email % type,
        teacherphone teacher__data.phone % type
    ) return number;
    
    function add_attendance(
        stu_id student_attendance.stu_id % type,
        stu_name student_attendance.stu_name % type,
        teacher_id student_attendance.teacher_id % type,
        subject student_attendance.subject % type,
        att_status student_attendance.present % type
    ) return number;

    function latest_record(
        studentid student_attendance.stu_id % type
    ) return sys_refcursor;
 
end;
/

create or replace package body att_management
as

    -- function to add student record
    function add_student(
        roll_no stu_data.roll_no % type, 
        name stu_data.name % type, 
        branch stu_data.branch % type,
        section stu_data.section % type,
        email stu_data.email % type,
        phone stu_data.phone % type,
        password student_login.password % type
    ) return number
    is
    begin
        -- adding record in stu_data
        insert into stu_data Values(
           UPPER(roll_no), UPPER(name), UPPER(branch), 
           section, LOWER(email), phone
        );
        -- adding record in student_login
        insert into student_login Values(
            UPPER(roll_no), password
        );
       
        return 1;
    exception
        when others then
     
        return 0;
    end add_student;
        
    -- function to update email and phone number of student
    function update_record_student(
        rollno stu_data.roll_no % type,
        studentmail stu_data.email % type,
        studentphone stu_data.phone % type
    ) return number
    is
    begin
        -- upadting student record
        update stu_data 
        set email = studentmail, phone = studentphone
        where roll_no = rollno;
        
        return 1;
    exception
        when no_data_found then
        return 0;
    end update_record_student;
    
    -- function to add teacher record
    function add_teacher(
        teacher_id teacher__data.teacher_id % type,
        name teacher__data.name % type,
        sub_id teacher__data.subject_id % type,
        subject teacher__data.subject % type,
        email teacher__data.email % type,
        phone teacher__data.phone % type,
        password teacher_login.password % type
    ) return number
    is 
    begin
        --adding record in teacher__data
        insert into teacher__data Values(
            UPPER(teacher_id), UPPER(name), UPPER(sub_id),
            UPPER(subject), lower(email), phone
        );
        
        -- adding record in teacher_login
        insert into teacher_login Values(
            UPPER(teacher_id), password
        );
        return 1;
    exception
        when others then
     
        return 0;
    end add_teacher;
    
    -- function to update teacher phone and email
    function update_record_teacher(
        teacherid teacher__data.teacher_id % type,
        teachermail teacher__data.email % type,
        teacherphone teacher__data.phone % type
    ) return number
    is
    begin
        update teacher__data
        set email = teachermail , phone = teacherphone
        where teacher_id = teacherid;
        return 1;
    exception
        when no_data_found then
        return 0;
    end update_record_teacher;
    
    -- function to add attendance
    function add_attendance(
        stu_id student_attendance.stu_id % type,
        stu_name student_attendance.stu_name % type,
        teacher_id student_attendance.teacher_id % type,
        subject student_attendance.subject % type,
        att_status student_attendance.present % type
    ) return number
    is
    begin
        -- adding attendance
        insert into student_attendance Values(
            UPPER(stu_id), UPPER(stu_name), UPPER(teacher_id),
            sysdate, subject, att_status
        );
        
        return 1;
    exception
        when others then
        return 0;
    end add_attendance;

    -- function to get 5 latest attendance record
    FUNCTION latest_record(
        studentid student_attendance.stu_id % type
    ) return sys_refcursor

    IS
        top_latest sys_refcursor;

    BEGIN
        OPEN top_latest for 
        select subject, count(*) total, sum(present) present
        from student_attendance group by subject, stu_id having stu_id = studentid 
        order by max(att_date) desc;
        
        return top_latest;
    END;
end;
/