create table user_roles
(
    role_name varchar(20) not null,
    user_name varchar(25) not null,
    primary key (role_name, user_name),
    constraint FK_user_roles_role_name
        foreign key (role_name) references roles (role_name),
    constraint FK_user_roles_user_name
        foreign key (user_name) references users (user_name)
);

INSERT INTO NameOfDBCA2.user_roles (role_name, user_name) VALUES ('admin', 'admin');
INSERT INTO NameOfDBCA2.user_roles (role_name, user_name) VALUES ('user', 'user');
INSERT INTO NameOfDBCA2.user_roles (role_name, user_name) VALUES ('admin', 'user_admin');
INSERT INTO NameOfDBCA2.user_roles (role_name, user_name) VALUES ('user', 'user_admin');