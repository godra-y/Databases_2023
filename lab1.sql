
create table students(
    student_id      integer primary key,
    first_name      varchar(50),
    last_name       varchar(50),
    date_of_birth   date,
    major           varchar(50),
    city            varchar(50),
    gpa             decimal
);

select * from students;

alter table students
    alter column student_id type smallint;

alter table students
    alter column student_id set not null;

alter table students
    rename column date_of_birth to "birth_date";

alter table students
    add  column email varchar(50);

alter table students
    drop  column major;

insert into students(student_id, first_name, last_name, birth_date, city, gpa)
values (03, 'Alnura', 'Muratova', '10/08/2004' , 'Almaty', 2.73);

insert into students(student_id, first_name, last_name, birth_date, city, gpa)
values (02, 'S_name', 'S_surname', '10/08/2007' , 'S_city', 2.73);

select * from students;

select from students where student_id=2;

drop table students;

drop database postgres;