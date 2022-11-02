create database `exex`;

create table `user` (
	`id` int not null auto_increment primary key,
    `name` varchar(16) not null,
    `phoneNumber` varchar(16),
    `address` varchar(32)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `user` (`name`)
values ('가'), ('나'), ('다'), ('라'), ('마'),
('바'), ('사');

create table `chickenBuyer` (
	`id` int not null auto_increment primary key,
    `chickenName` varchar(16) not null,
    `userId` int,
    `chickenPrice` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `chickenBuyer` (`chickenName`, `userId`)
values ('통큰', 6), ('처갓짓', 4), ('햇살', 2), ('치킨강정', 4), ('굽네', 2);


create table `pizzaBuyer` (
	`id` int not null auto_increment primary key,
    `pizzaName` varchar(16) not null,
    `userId` int,
    `pizzaPrice` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

insert into `pizzaBuyer` (`pizzaName`, `userId`)
values ('도미노', 7), ('59쌀피자', 4), ('알보노', 3), ('햇살', 2), ('갈릭치즈', 4), ('피자헛', 2), ('피크피클', 1);

select *
from chickenBuyer
join pizzaBuyer
on chickenBuyer.userId = pizzaBuyer.userId;

select *
from chickenBuyer
left join pizzaBuyer
on chickenBuyer.userId = pizzaBuyer.userId;

select *
from chickenBuyer
right join pizzaBuyer
on chickenBuyer.userId = pizzaBuyer.userId;