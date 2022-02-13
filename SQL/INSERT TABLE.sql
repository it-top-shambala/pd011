-- 1.Таблица пользователи.
INSERT INTO table_users (user_name, user_password)
VALUES
('USER 1','123'),
('USER 2','234'),
('ADMIN','555');

-- 2.Таблица роли.
INSERT INTO table_roles (role_name)
VALUES
('Администратор'),
('Пользователь');

-- 3.Таблица роль пользователя.
INSERT INTO table_user_role (id_user, id_role)
VALUES
('1','2'),
('2','2'),
('1','3');

-- 4.Статус скидки.
INSERT INTO table_status_sail(status_sel_name)
VALUES
('Куплена'),
('Зарезервирована');

-- 5. Статус покупки.
INSERT INTO table_status_buy(status_buy_name)
VALUES
('Куплена'),
('Зарезервирована');

-- 6.Таблица продаж.
INSERT INTO table_seling (sel_date, id_user, id_sel_status)
VALUES
('20.11.2021','1','1'),
('23.03.2020','2','2'),
('09.02.2022','3','1');

-- 7. Таблица покупка.
INSERT INTO table_buing (sel_date, company_name, id_user, id_buy_status)
VALUES
('12.02.2020','Компания 1','1','1'),
('16.08.2021','Компания 2','2','2'),
('29.11.2019','Компания 3','3','1');

-- 8. Продажа со скидкой по публикации книги.
INSERT INTO table_sel_publication_of_book(id_sel, id_publication_of_book, quntity)
VALUES
('1','1','70'),
('2','2','100'),
('3','3','50');

-- 9. Продажа по публикации книги.
INSERT INTO table_buy_publication_of_book (id_sel, id_publication_of_book, quntity)
VALUES
('1','3','12'),
('2','4','10'),
('3','5','6');

-- 10. Издательство.
INSERT INTO table_publishers(publisher_name)
VALUES
('Эксмо'),
('Союз писателей'),
('Питер'),
('Ромэн'),
('Фламинго');

-- 11. Серия.
INSERT INTO table_series (series_name)
VALUES
('Метро'),
('Медведки'),
('Человек из Подольска'),
('Репетиции'),
('Библиотекарь');

-- 12. Автор.
INSERT INTO table_authors (author_last_name, author_first_name, author_midle_name)
VALUES
('Елизаров', 'Михаил','Юрьевич'),
('Шаров', 'Владимир','Александрович'),
('Галина', 'Мария','Семеновна'),
('Глуховский', 'Дмитрий','Алексеевич'),
('Данилов', 'Дмитрий','Алексеевич');

-- 13. Жанр.
INSERT INTO table_genres (genre_name)
VALUES
('Фантастика'),
('Романтика'),
('Мистика'),
('Детектив'),
('Классика');

-- 14. Книга.
INSERT INTO table_book (book_title,book_year_of_creation,id_genre, id_series, capter_in_series)
VALUES
('Метро 2033','2015','1','1','Часть 1'),
('Медведки','2008','1','2','Часть 2'),
('Человек из Подольска','2018','4','3','Часть 5'),
('Репетиции','2019','2','4','Часть 1'),
('Библиотекарь','2017','3','5','Часть 5');

-- 15. Автор книги.
INSERT INTO table_author_book (id_author, id_book, sequences_order)
VALUES
('1','5','1'),
('3','2','2'),
('2','4','3'),
('4','1','4'),
('5','3','5');

-- 16. Публикация книги.
INSERT INTO table_publication_of_book (id_publisher, id_book, publication_page_count, publication_year, price)
VALUES
('1','1','350','2020','750.20'),
('2','2','230','2021','900.00'),
('3','3','200','2020','520.10'),
('4','4','150','2021','900.50'),
('5','5','650','2021','1050.10');

-- 17. Наименование скидки.
INSERT INTO table_sales (sale_name, percent_sale)
VALUES
('Новогодняя','35'),
('Майская','20'),
('Рождественская','15');

-- 18. Акции на книги.
INSERT INTO table_sale_publication_of_book(id_publication_of_book, id_sale)
VALUES
('1','2'),
('3','1'),
('4','3')