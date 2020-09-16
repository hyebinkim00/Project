create table member(
 id varchar2(10),
 carname varchar2(20) not null,
 facname varchar2(50) not null 
);

ALTER TABLE member add lentoffice varchar2(30);

ALTER TABLE member add carPrice varchar2(30);
ALTER TABLE member add monthPrice varchar2(30);

ALTER TABLE member add cartype varchar2(20);
ALTER TABLE member add carnum varchar2(20);

insert into member(id,carname,facname) values ('11-11','K3','기아');
insert into member(id,carname,facname) values ('22-22','모닝','기아');
insert into member(id,carname,facname) values ('33-33','K5','기아');
insert into member(id,carname,facname) values ('77-77','K7','기아');

insert into member(id,carname,facname) values ('44-44','아반떼4','현대');
insert into member(id,carname,facname) values ('55-55','아반떼5','현대');
insert into member(id,carname,facname,fuel,cartype,carnum) values ('99-99','K9','기아','휘발유','중형','2');


select * from member where facname='현대' and cartype='중형' and carnum='아반떼' ;



select * from (select * from member where facname='현대'  and carnum='아반떼' )
where  lentoffice='강원' or lentoffice='제주' ;

select * from member where facname='기아' and cartype='소형' and carnum='K' and lentoffice='경기' or lentoffice='서울';

select * from member where fuel='휘발유' or fuel='LPG';

update MEMBER set lentoffice='강원' where id='99-99';
update MEMBER set cartype='중형' where id='66-66';

update MEMBER set carPrice='20,500,00' where carnum='모닝';
update MEMBER set monthPrice='323,000원~' where carnum='모닝';


select * from member where facname='기아' ;
select * from board;
select * from member;
select * from lent;
update member set carnum='아반떼' where carname='아반떼8';


lentcontract, Insurance, lentcar ,lentservice, lentpay, totalprice

create table lent(
 car_num varchar2(30) not null,
 user_id varchar2(30) not null,
 lent_term varchar2(50) not null ,
 insurance varchar2(30) not null,
 lent_car varchar2(30) not null,
 service varchar2(30) not null,
 totalprice varchar2(30) not null
);


Insert into  lent(car_num,user_id,lent_term,insurance,lent_car,service,totalprice) values ('88-88','1','2개월','월3천km이하','포함','5%할인','900000원');
