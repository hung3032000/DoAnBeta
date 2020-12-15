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
  `image` varchar(255),
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

CREATE TABLE `product` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(255),
  `price` int,
  `quantity` int,
  `origin` varchar(255),
  `shortdecription` text,
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
  `quantity` int,
  `totalprice` float
);

CREATE TABLE `orders` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
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


ALTER TABLE `order_items` ADD FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `order_items` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

ALTER TABLE `product_image` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);


ALTER TABLE `product` ADD FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

ALTER TABLE `users` ADD FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`user_email`) REFERENCES `users` (`email`);

ALTER TABLE `product` ADD FOREIGN KEY (`user_email`) REFERENCES `users` (`email`);


-- querry +test querry 
use dack;
-- orders

select * from orders o join order_items i on o.id = i.order_id ;

insert into orders(user_email,status,created_at) values ('a',1,now());
insert into order_items(order_id,product_id,quantity,totalprice) values (1,6,6,900000);

select * from users u 


-- category
select * from categories;
insert into categories(name,parent_id,created_at) values('HungMoiThem',0,now());
insert into categories(name,parent_id,created_at) values('Men',0,now());
insert into categories(name,parent_id,created_at) values('Collection',0,now());
insert into categories(name,parent_id,created_at) values('Test',0,now());
insert into categories(name,parent_id,created_at) values('Themmoiday',0,now());
insert into categories(name,parent_id,created_at) values('Themmoiday2',4,now());
update categories set parent_id='0' where id =8;
insert into categories(name,parent_id,image,created_at) values('Ready-to-wear','1','image/Collection-Land-Desktop.jpg',now());
insert into categories(name,parent_id,image,created_at) values('Ready-to-wear','2','image/Collection-Land-Desktop.jpg',now());
update categories set image='image/Full_WFW20show_Desktop.jpg' where id =7;
-- select * from product_image;
SELECT * FROM categories where parent_id= '2';

insert into product_image(image,product_id,created_at) values ('image/BM710P3002055-02-07.jpg',9,now());
select * from product p inner join product_image pi on p.id=pi.product_id ;

SELECT * FROM product_image where product_id =9;



-- product
use dack;

select * from product where id =9 ;
insert into product (name, price,content,image,categorie_id,created_at) values('Medium Antigona Soft bag in
														smooth leather','245000','New','image/BK507PK0ZY027-01-02.jpg','5',now());
update product set name='Món hàng 12',price='10',content='BigNew',image='image/BK507PK0ZY027-01-02.jpg',categorie_id='4',updated_at=now() where id=12;
update product set categorie_id = 10 where id=4;
select * from categories where parent_id ='1';
alter table order_items add column totalprice float after quantity;
update product set origin = 'VietNam6',shortdecription='6 Long-sleeved T-shirt in
												light heather gray jersey with red Homieeeeee signature on the
												chest, and black Schematics prints on the front and sleeves.' where id=1;
update product set size = 'XL', color ='Grey', quantity =100 where id = 9;
ALTER TABLE order_items
MODIFY COLUMN totalprice bigint;
select count(*) from product where categorie_id = 5;
update categories set image ='image/LandingPage-Desktop_Winter20.png' where id=5;
select * from product where categorie_id =5 ;

select * from users;










-- users done
insert into users(title,fname,lname,email,password,status,role_id,created_at) values('Mr.','Phạm','hung1','a','1',1,1,now());
select * from users where email='a' and password=1 and status=1;
select * from users;
insert into users(title,fname,lname,email,password,status,role_id,created_at) values('Mr.','Phạm','Hoàng','a1','1',1,3,now());

select * from role;
delete from users where role_id ='3';
insert into role values('1','ADMIN','ADMIN',now(),null);
insert into role  values(3,'USER','USER',now(),null);
select * from users u inner join role r on r.id=u.role_id ;



