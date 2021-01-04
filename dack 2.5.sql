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
  `parent_id` bigint,
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
  `name` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `shortdecription` text,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `categorie_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
  `user_email` varchar(255),
  `customer_id` bigint DEFAULT NULL,
  `totalprice` bigint DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
CREATE TABLE `customer` (
  `id` bigint PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `title` varchar(255),
  `fname` varchar(255),
  `lname` varchar(255),
  `address` varchar(255),
  `phone` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);
-- COLLATE utf8mb4_0900_ai_ci
ALTER TABLE `order_items` ADD FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

ALTER TABLE `order_items` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

ALTER TABLE `product_image` ADD FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);


ALTER TABLE `product` ADD FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

ALTER TABLE `users` ADD FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

ALTER TABLE `orders` ADD FOREIGN KEY (`user_email`) REFERENCES `users` (`email`);

ALTER TABLE `customer` ADD FOREIGN KEY (`user_email`) REFERENCES `users` (`email`);

ALTER TABLE `customer` ADD FOREIGN KEY (`user_email`) REFERENCES `users` (`email`);

ALTER TABLE `orders` ADD FOREIGN KEY (`user_email`) REFERENCES `users` (`email`);

ALTER TABLE `orders` ADD FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

ALTER TABLE `categories` ADD FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);
-- querry +test querry 
use dack;










-- orders
select * from order_items ;
select* from order_items oi join product p on oi.product_id=p.id where order_id =13;
select * from orders o join customer c on o.customer_id = c.id  where o.id =13;
select  * from order_items oi join product p on oi.product_id=p.id where order_id =11;
insert into orders(user_email,totalprice,status,created_at) values ('abc',1000,1,now());
insert into order_items(order_id,product_id,quantity,totalprice) values (2,6,6,900000);

select * from users u ;

ALTER TABLE orders MODIFY
    user_email VARCHAR(255)

      COLLATE utf8mb4_0900_ai_ci;
alter table orders add column customer_id bigint after user_email;
ALTER TABLE categories
MODIFY COLUMN parent_id bigint;

select * from customer;

insert into customer(user_email,title,fname,lname,address,phone,created_at) values("abc","Mr.","Hùng","Phạm","4646 ss","0933944775",now());


select * from orders o, order_items oi, customer c where o.id =3;

delete from categories where id = 2;
select id from categories where parent_id = 2;
select count(*) from categories where parent_id = 2;


-- category
select * from categories;
insert into categories(name,parent_id,created_at) values('Parent',1,now());
insert into categories(name,parent_id,created_at) values('Men4',2,now());
insert into categories(name,parent_id,created_at) values('Collection',1,now());
insert into categories(name,parent_id,created_at) values('Women',1,now());
insert into categories(name,parent_id,created_at) values('Themmoiday',0,now());
insert into categories(name,parent_id,created_at) values('Themmoiday2',4,now());
update categories set parent_id='0' where id =8;
insert into categories(name,parent_id,image,created_at) values('Ready-to-wear','3','image/Collection-Land-Desktop.jpg',now());
insert into categories(name,parent_id,image,created_at) values('Ready-to-wear','2','image/Collection-Land-Desktop.jpg',now());
update categories set image='image/Full_WFW20show_Desktop.jpg' where id =7;
update categories set parent_id =3 where id = 11;
-- select * from product_image;
SELECT * FROM categories where parent_id =1 and id > 1;

insert into product_image(image,product_id,created_at) values ('image/BM710P3002055-02-07.jpg',9,now());
select * from product p inner join product_image pi on p.id=pi.product_id ;

SELECT * FROM product_image where product_id =9;



-- product

use dack;
select * from product where id =9 ;
insert into product (name, price,content,image,categorie_id,created_at) values('Medium Antigona Soft bag in
														smooth leather','245000','New','image/BM710P3002055-02-02.jpg','6',date(now()));
update product set name='Món hàng 12',price='10',content='BigNew',image='image/BK507PK0ZY027-01-02.jpg',categorie_id='4',updated_at=now() where id=12;
update product set categorie_id = 10 where id=4;
select * from categories where parent_id ='1';
select date(now());
update product set origin = 'VietNam6',shortdecription='6 Long-sleeved T-shirt in
												light heather gray jersey with red Homieeeeee signature on the
												chest, and black Schematics prints on the front and sleeves.' where id=1;
update product set size = 'XL', color ='Grey', quantity =100 where id = 1;
alter table orders add column updated_at timestamp after created_at;
ALTER TABLE orders
MODIFY COLUMN totalprice bigint;
select count(*) from product where categorie_id = 5;
update categories set image ='image/LandingPage-Desktop_Winter20.png' where id=5;
select * from product where categorie_id =5 ;

select * from order_items o join product p on o.product_id = p.id ;
select * from orders;








-- users done
insert into users(title,fname,lname,email,password,status,role_id,created_at) values('Mr.','Phạm','hung1','a','1',1,1,now());
select * from users where email='a' and password=1 and status=1;
select * from users;
insert into users(title,fname,lname,email,password,status,role_id,created_at) values('Mr.','Phạm','Hoàng','abc','1',1,3,now());

select * from role;
update users set title= 'Mr.' ,fname= 'abc' ,lname= 'abc',password ='1',address = '', status = 0 ,updated_at = now() where email = 'asdhajks@gmail.com';
insert into role values('1','ADMIN','ADMIN',now(),null);
insert into role  values(3,'USER','USER',now(),null);
select * from users u inner join role r on r.id=u.role_id ;



