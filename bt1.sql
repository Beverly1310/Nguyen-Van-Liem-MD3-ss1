create schema home_work;
use home_work;
create table customer(
cid int primary key not null,
cname varchar(50),
cage int
);
create table `order`(
oid int primary key not null,
cid int, foreign key (cid) references customer(cid),
odate date,
ototalprice decimal
);
create table product(
pid int primary key not null,
pname varchar(50),
pprice decimal
);
create table orderdetail(
oid int ,
foreign key (oid) references `order`(oid),
pid int ,
foreign key (pid) references product(pid),
primary key (oid,pid),
odQTY int
);