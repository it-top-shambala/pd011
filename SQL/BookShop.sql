-- 1. Создаем таблицу издательство.
CREATE TABLE table_publishers
(
    id             INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(100) NOT NULL
);

-- Заполняем таблицн издательство.
INSERT INTO table_publishers
(publisher_name)
VALUE ('Эксмо');

INSERT INTO table_publishers
(publisher_name)
VALUE ('Союз писателей');

INSERT INTO table_publishers
(publisher_name)
VALUE ('Питер');

INSERT INTO table_publishers
(publisher_name)
VALUE ('Ромэн');

INSERT INTO table_publishers
(publisher_name)
VALUE ('Фламинго');

-- 2. Создаем таблицу серия.
CREATE TABLE table_series
(
    id          INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    series_name VARCHAR(100) NOT NULL
);

-- Заполняем таблицу серия.
INSERT INTO table_series
(series_name)
VALUE ('Метро');

INSERT INTO table_series
(series_name)
VALUE ('Медведки');

INSERT INTO table_series
(series_name)
VALUE ('Человек из Подольска');

INSERT INTO table_series
(series_name)
VALUE ('Репетиции');

INSERT INTO table_series
(series_name)
VALUE ('Библиотекарь');

-- 3. Создаем таблицу автор.
CREATE TABLE table_authors
(
    id                INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    author_last_name  VARCHAR(100) NOT NULL,
    author_first_name VARCHAR(100) NOT NULL,
    author_midle_name VARCHAR(100) NOT NULL
);

-- Заполняем таблицу автор.
INSERT INTO table_authors
(author_last_name,author_first_name,author_midle_name)
VALUE ('Елизаров', 'Михаил','Юрьевич');

INSERT INTO table_authors
(author_last_name,author_first_name,author_midle_name)
VALUE ('Шаров', 'Владимир','Александрович');

INSERT INTO table_authors
(author_last_name,author_first_name,author_midle_name)
VALUE ('Галина', 'Мария','Семеновна');

INSERT INTO table_authors
(author_last_name,author_first_name,author_midle_name)
VALUE ('Глуховский', 'Дмитрий','Алексеевич');

INSERT INTO table_authors
(author_last_name,author_first_name,author_midle_name)
VALUE ('Данилов', 'Дмитрий','Алексеевич');

-- 4. Создаем таблицу жанры.
CREATE TABLE table_genres
(
    id         INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

-- Заполняем таблицу жанры.
INSERT INTO table_genres
(genre_name)
VALUE ('Фантастика');

INSERT INTO table_genres
(genre_name)
VALUE ('Романтика');

INSERT INTO table_genres
(genre_name)
VALUE ('Мистика');

INSERT INTO table_genres
(genre_name)
VALUE ('Детектив');

INSERT INTO table_genres
(genre_name)
VALUE ('Классика');

-- 5. Создаем таблицу книга.
CREATE TABLE  table_book
(
    id                    INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_genre              INT          NOT NULL,
    id_series             INT          NOT NULL,
    book_title            VARCHAR(100) NOT NULL,
    book_year_of_creation INT          NOT NULL,
    FOREIGN KEY (id_genre) REFERENCES table_genres (id),
    FOREIGN KEY (id_series) REFERENCES table_series (id),
    capter_in_series      VARCHAR(100)
);

-- Заполняем таблицу книга.
INSERT INTO table_book
(book_title,book_year_of_creation,id_genre, id_series, capter_in_series)
VALUE ('Метро 2033','2015','1','1','Часть 1');

INSERT INTO table_book
(book_title,book_year_of_creation,id_genre, id_series, capter_in_series)
VALUE ('Медведки','2008','1','2','Часть 2');

INSERT INTO table_book
(book_title,book_year_of_creation,id_genre, id_series, capter_in_series)
VALUE ('Человек из Подольска','2018','4','3',' Часть 5');

INSERT INTO table_book
(book_title,book_year_of_creation,id_genre, id_series, capter_in_series)
VALUE ('Репетиции','2019','2','4','Часть 1');

INSERT INTO table_book
(book_title,book_year_of_creation,id_genre, id_series, capter_in_series)
VALUE ('Библиотекарь','2017','3','5','Часть 5');

-- 6. Создаем таблицу автор книги.
CREATE TABLE table_author_book
(
    id_author       INT NOT NULL,
    id_book         INT NOT NULL,
    FOREIGN KEY (id_author) REFERENCES table_authors (id),
    FOREIGN KEY (id_book) REFERENCES table_book (id),
    sequences_order VARCHAR(50)
);

-- Заполняем таблицу автор книги.
INSERT INTO table_author_book
(id_author, id_book, sequences_order)
VALUE ('1','5','1');

INSERT INTO table_author_book
(id_author, id_book, sequences_order)
VALUE ('3','2','2');

INSERT INTO table_author_book
(id_author, id_book, sequences_order)
VALUE ('2','4','3');

INSERT INTO table_author_book
(id_author, id_book, sequences_order)
VALUE ('4','1','4');

INSERT INTO table_author_book
(id_author, id_book, sequences_order)
VALUE ('5','3','5');

-- 7. Создаем таблицу публикация книги.
CREATE TABLE table_publication_of_book
(
    id                     INT    NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_publisher           INT    NOT NULL,
    id_book                INT    NOT NULL,
    FOREIGN KEY (id_publisher) REFERENCES table_publishers (id),
    FOREIGN KEY (id_book) REFERENCES table_book (id),
    publication_page_count INT    NOT NULL,
    publication_year       INT    NOT NULL,
    price                  DOUBLE NOT NULL
);
-- Заполняем таблицу публикация книги.

INSERT INTO table_publication_of_book
(id_publisher, id_book, publication_page_count, publication_year, price)
VALUE ('1','1','350','2020','750.20');

INSERT INTO table_publication_of_book
(id_publisher, id_book, publication_page_count, publication_year, price)
VALUE ('2','2','230','2021','900.00');

INSERT INTO table_publication_of_book
(id_publisher, id_book, publication_page_count, publication_year, price)
VALUE ('3','3','200','2020','520.10');

INSERT INTO table_publication_of_book
(id_publisher, id_book, publication_page_count, publication_year, price)
VALUE ('4','4','150','2021','900.50');

INSERT INTO table_publication_of_book
(id_publisher, id_book, publication_page_count, publication_year, price)
VALUE ('5','5','650','2021','1050.10');

-- 8.Создаем таблицу скидок.
CREATE TABLE table_sales
(
    id           INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sale_name    VARCHAR(100) NOT NULL,
    percent_sale INT          NOT NULL
);

-- Заполняем таблицу скидок.

INSERT INTO table_sales
(sale_name, percent_sale)
 VALUE ('Новогодняя','35');

INSERT INTO table_sales
(sale_name, percent_sale)
 VALUE ('Майская','20');

INSERT INTO table_sales
(sale_name, percent_sale)
 VALUE ('Рождественская','15');

-- 8. Создаем таблицу акций на книги.
CREATE TABLE table_sale_publication_of_book
(
    id_publication_of_book INT NOT NULL,
    id_sale                INT NOT NULL,
    FOREIGN KEY (id_publication_of_book) REFERENCES table_publication_of_book (id),
    FOREIGN KEY (id_sale) REFERENCES table_sales (id)
);

-- Заполняем таблицу акций на книги.
INSERT INTO table_sale_publication_of_book
(id_publication_of_book, id_sale)
VALUE
('1','2');

INSERT INTO table_sale_publication_of_book
(id_publication_of_book, id_sale)
VALUE
('3','1');

INSERT INTO table_sale_publication_of_book
(id_publication_of_book, id_sale)
VALUE
('4','3')