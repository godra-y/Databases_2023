create table Books(
    book_id serial primary key ,
    title varchar,
    author varchar,
    publication_year integer,
    genre varchar
);

insert into Books (book_id, title, author, publication_year, genre)
values (1, 'The Collector', 'John Fowles', 1963, 'Horror');

insert into Books (book_id, title)
values (2, 'The Little Prince');

insert into Books (book_id, title, author, genre)
values (3, 'Pride and Prejudice', 'Jane Austen', 'Romance novel');

insert into Books (book_id, title, author, publication_year, genre)
values
    (4, 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Southern Gothic'),
    (5, 'Murder on the Orient Express', 'Agatha Christie', 1934, 'Crime novel'),
    (6, 'Carrie', 'Stephen King', 1974, 'Horror');

alter table Books alter column author set default 'Unknown Author';

insert into Books (book_id, title, publication_year, genre)
values (7, 'Martin Eden', 1909, 'Fiction');

insert into Books default values ;

create table books_new
(
    like Books
);

insert into books_new select * from Books;

update Books
set publication_year=2000
where publication_year is null;

select title,
       publication_year + 2 AS "New Publication Year"
from Books;

update Books
set genre='Fantasy!'
where book_id=2;

delete from Books
where genre='Detective';

delete from Books
returning *;





