-- use sys;
-- drop database dack;
create database dack;
use dack;
CREATE TABLE `product_image` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `image` varchar(255),
  `product_id` bigint NOT NULL,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `categories` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `parent_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `product_tag` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `tags` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `menus` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `parent_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `customers` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `address` text,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `product` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `price` int,
  `feature` varchar(255),
  `content` varchar(255),
  `user_email` varchar(255) NOT NULL,
  `categorie_id` bigint NOT NULL,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `order_items` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `quantity` int
);

CREATE TABLE `orders` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `customer_id` bigint NOT NULL,
  `status` varchar(255),
  `created_at` timestamp
);

CREATE TABLE `sliders` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `description` varchar(255),
  `image` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `settings` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255),
  `config_value` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `role` (
  `id` int PRIMARY KEY NOT NULL,
  `code` varchar(255),
  `name` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `users` (
  `title` varchar(255),
  `fname` varchar(255),
  `lname` varchar(255),
  `email` varchar(255) PRIMARY KEY NOT NULL,
  `password` varchar(255),  
  `address` varchar(255),
  `dayofbirth` timestamp,
  `status` int NOT NULL,
  `role_id` int NOT NULL,

  `created_at` timestamp,
  `updated_at` timestamp
);

ALTER TABLE `product_tag` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

ALTER TABLE `product_tag` ADD FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

ALTER TABLE `order_items` ADD FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `order_items` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

ALTER TABLE `product_image` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

ALTER TABLE `product` ADD FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

ALTER TABLE `users` ADD FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`user_email`) REFERENCES `users` (`email`);

ALTER TABLE `product` ADD FOREIGN KEY (`user_email`) REFERENCES `users` (`email`);
-- querry +test querry 
use dack;
insert into users(title,fname,lname,email,password,status,role_id,created_at) values('Mr.','Phạm','hung1','a','1',1,1,now());

select * from users where email='a' and password=1 and status=1;
select * from users;
update users set updated_at = now() where email ='assÄáº¥';
insert into users(title,fname,lname,email,password,status,role_id,created_at) values('Mr.','Phạm','Hoàng','a1','1',1,3,now());
insert into users(title,fname,lname,email,password,status,created_at) values('Mr.','pham1','hung1','a1','11','1',now());
select * from role;
delete from users where role_id ='3';
insert into role values('1','ADMIN','ADMIN',now(),null);
insert into role  values(3,'USER','USER',now(),null);
select * from users u inner join role r on r.id=u.role_id ;

alter table users drop column dayofbirth;
ALTER DATABASE dack CHARACTER SET utf8 COLLATE utf8_bin;
