CREATE TABLE table_users
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    user_password VARCHAR(100) NOT NULL
);

CREATE TABLE table_roles
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL
);
CREATE TABLE table_user_role
(
    id_user INT NOT NULL,
    id_role INT NOT NULL
);
CREATE TABLE table_seling
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sel_date VARCHAR(100) NOT NULL,
    id_user INT NOT NULL,
    id_sel_status INT NOT NULL
);
CREATE TABLE table_status_sail
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    status_sel_name VARCHAR(100) NOT NULL
);
CREATE TABLE table_status_buy
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    status_buy_name VARCHAR(100) NOT NULL
);
CREATE TABLE table_buing
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sel_date VARCHAR(100) NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    id_user INT NOT NULL,
    id_buy_status INT NOT NULL
);
CREATE TABLE table_sel_publication_of_book
(
    id_sel INT NOT NULL,
    id_publication_of_book INT NOT NULL,
    quntity VARCHAR(100) NOT NULL
);
CREATE TABLE table_buy_publication_of_book
(
    id_sel INT NOT NULL,
    id_publication_of_book INT NOT NULL,
    quntity VARCHAR(100) NOT NULL
);

