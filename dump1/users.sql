create table users
(
    user_name varchar(25)  not null
        primary key,
    user_pass varchar(255) null
);

INSERT INTO NameOfDBCA2.users (user_name, user_pass) VALUES ('admin', '$2a$10$E1Qa4LEbF/ZSvB6jshtWF.sOGhWV5peJKyYXKHi3OhLOgkmF6fiRm');
INSERT INTO NameOfDBCA2.users (user_name, user_pass) VALUES ('user', '$2a$10$AOH8Ghr/WvQdhvX4PZQG5.u4Y/nnlOHD13dyppU7kkJAZ02QsBD.C');
INSERT INTO NameOfDBCA2.users (user_name, user_pass) VALUES ('user_admin', '$2a$10$JfoM8xp0yjO9nbQ793x/3OPEUISthVh/kWqGaSqJMJD4SNnvKe2F2');