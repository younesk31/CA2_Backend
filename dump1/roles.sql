create table roles
(
    role_name varchar(20) not null
        primary key
);

INSERT INTO NameOfDBCA2.roles (role_name) VALUES ('admin');
INSERT INTO NameOfDBCA2.roles (role_name) VALUES ('user');