CREATE TABLE table_publishers
(
    id             INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(100) NOT NULL
);

CREATE TABLE table_series
(
    id          INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    series_name VARCHAR(100) NOT NULL
);

CREATE TABLE table_authors
(
    id                INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    author_last_name  VARCHAR(100) NOT NULL,
    author_first_name VARCHAR(100) NOT NULL,
    author_midle_name VARCHAR(100) NOT NULL
);

CREATE TABLE table_genres
(
    id         INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL
);

CREATE TABLE  table_book
(
    id                    INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_genre              INT          NOT NULL,
    id_series             INT          NOT NULL,
    book_title            VARCHAR(100) NOT NULL,
    book_year_of_creation INT          NOT NULL,
    CONSTRAINT FK_book_genre
    FOREIGN KEY (id_genre) REFERENCES table_genres (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT FK_book_series
    FOREIGN KEY (id_series) REFERENCES table_series (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    capter_in_series      VARCHAR(100)
);

CREATE TABLE table_author_book
(
    id_author       INT NOT NULL,
    id_book         INT NOT NULL,
    CONSTRAINT FK_book_author
    FOREIGN KEY (id_author) REFERENCES table_authors (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT FK_book
    FOREIGN KEY (id_book) REFERENCES table_book (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    sequences_order VARCHAR(50)
);

CREATE TABLE table_publication_of_book
(
    id                     INT    NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_publisher           INT    NOT NULL,
    id_book                INT    NOT NULL,
    CONSTRAINT FK_book_publishers
    FOREIGN KEY (id_publisher) REFERENCES table_publishers (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT FK_book
    FOREIGN KEY (id_book) REFERENCES table_book (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    publication_page_count INT    NOT NULL,
    publication_year       INT    NOT NULL,
    price                  DOUBLE NOT NULL
);

CREATE TABLE table_sales
(
    id           INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sale_name    VARCHAR(100) NOT NULL,
    percent_sale INT          NOT NULL
);

CREATE TABLE table_sale_publication_of_book
(
    id_publication_of_book INT NOT NULL,
    id_sale                INT NOT NULL,
    CONSTRAINT FK_publication_of_book
    FOREIGN KEY (id_publication_of_book) REFERENCES table_publication_of_book (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT FK_book_sales
    FOREIGN KEY (id_sale) REFERENCES table_sales (id) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE table_users
(
    id            INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name     VARCHAR(100) NOT NULL,
    user_password VARCHAR(100) NOT NULL
);

CREATE TABLE table_roles
(
    id        INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL
);

CREATE TABLE table_user_role
(
    id_user INT NOT NULL,
    id_role INT NOT NULL,
    CONSTRAINT FK_user
    FOREIGN KEY (id_user) REFERENCES table_users (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT FK_role
    FOREIGN KEY (id_role) REFERENCES table_roles (id) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE table_status_sail
(
    id              INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    status_sel_name VARCHAR(100) NOT NULL
);

CREATE TABLE table_status_buy
(
    id              INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    status_buy_name VARCHAR(100) NOT NULL
);

CREATE TABLE table_seling
(
    id            INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sel_date      VARCHAR(100) NOT NULL,
    id_user       INT          NOT NULL,
    id_sel_status INT          NOT NULL,
    CONSTRAINT FK_user
    FOREIGN KEY (id_user) REFERENCES table_users (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT FK_book_sel_status
    FOREIGN KEY (id_sel_status) REFERENCES table_status_sail (id) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE table_buing
(
    id              INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    buy_date        VARCHAR(100) NOT NULL,
    company_name    VARCHAR(100) NOT NULL,
    id_user         INT          NOT NULL,
    id_buy_status   INT          NOT NULL,
    CONSTRAINT FK_user
    FOREIGN KEY (id_user) REFERENCES table_users (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT FK_book_buy_status
    FOREIGN KEY (id_buy_status) REFERENCES table_status_buy (id) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE table_sel_publication_of_book
(
    id_sel                 INT          NOT NULL,
    id_publication_of_book INT          NOT NULL,
    quntity                VARCHAR(100) NOT NULL,
    CONSTRAINT FK_book_sel
    FOREIGN KEY (id_sel) REFERENCES table_sales (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT FK_publication_of_book
    FOREIGN KEY (id_publication_of_book) REFERENCES table_publication_of_book (id) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE table_buy_publication_of_book
(
    id_buy                 INT          NOT NULL,
    id_publication_of_book INT          NOT NULL,
    quntity                VARCHAR(100) NOT NULL,
    CONSTRAINT FK_book_buy
    FOREIGN KEY (id_buy) REFERENCES table_buing (id) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT FK_publication_of_book
    FOREIGN KEY (id_publication_of_book) REFERENCES table_publication_of_book (id) ON UPDATE NO ACTION ON DELETE NO ACTION
);