use books_database;

create table book(
	id bigint NOT NULL PRIMARY KEY auto_increment,
    name varchar(255) not null,
    categoryid bigint not null,
    description text not null,
    image varchar(255) not null,
    rating int not null,
    authorid bigint not null
); 

create table author(
	id bigint NOT NULL PRIMARY KEY auto_increment,
    name varchar(255) not null
);

create table category(
	id bigint NOT NULL PRIMARY KEY auto_increment,
    categoryname varchar(255) not null,
    categoryid bigint not null
);

create table user(
	id bigint NOT NULL PRIMARY KEY auto_increment,
    username varchar(255) not null,
    password varchar(255) not null,
    fullname varchar(255) not null,
    roleid bigint not null 
);

create table role(
	id bigint NOT NULL PRIMARY KEY auto_increment,
    name varchar(255) not null,
    code varchar(255) not null
); 

create table comment(
	id bigint NOT NULL PRIMARY KEY auto_increment,
    content text not null,
    userid bigint not null,
    bookid bigint not null,
    createddate TIMESTAMP NULL,
	modifieddate TIMESTAMP NULL,
	createdby VARCHAR(255) NULL,
	modifiedby VARCHAR(255) NULL
);

alter table book add constraint fk_book_cate foreign key (categoryid) references category(id);
alter table book add constraint fk_book_author foreign key (authorid) references author(id);
alter table comment add constraint fk_cmt_book foreign key (bookid) references book(id);
alter table comment add constraint fk_cmt_user foreign key (userid) references user(id);
alter table user add constraint fk_user_role foreign key (roleid) references role(id);

