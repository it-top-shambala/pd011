-- Заполняем таблицу юзерс.
/*INSERT INTO table_users
(user_name, user_password)
VALUE ('USER 1','123');

INSERT INTO table_users
(user_name, user_password)
VALUE ('USER 2','234');

INSERT INTO table_users
(user_name, user_password)
VALUE ('ADMIN','555');*/

-- Заполняем таблицу роль пользоватея.
/*INSERT INTO  table_roles
(role_name)
VALUE  ('Администратор');

INSERT INTO  table_roles
(role_name)
VALUE  ('Пользователь')*/

-- Зполняем таблицу роль пользователя.
INSERT INTO table_user_role
(id_user, id_role)
VALUE ('1','2');

INSERT INTO table_user_role
(id_user, id_role)
VALUE ('2','2');

INSERT INTO table_user_role
(id_user, id_role)
VALUE ('1','3');

--
INSERT INTO table_buy_publication_of_book
(id_sel, id_publication_of_book, quntity)
VALUE ('1', '3','12');

INSERT INTO table_buy_publication_of_book
(id_sel, id_publication_of_book, quntity)
VALUE ('2', '4','10');

INSERT INTO table_buy_publication_of_book
(id_sel, id_publication_of_book, quntity)
VALUE ('3', '5','6')



