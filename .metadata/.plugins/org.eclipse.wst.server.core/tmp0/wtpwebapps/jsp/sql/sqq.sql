create table member(
 id varchar2(10),
 carname varchar2(20) not null,
 facname varchar2(50) not null 
);

ALTER TABLE lent add carn varchar2(30);

ALTER TABLE member add carPrice varchar2(30);
ALTER TABLE member add monthPrice varchar2(30);

ALTER TABLE member add cartype varchar2(20);
ALTER TABLE member add carnum varchar2(20);

insert into member(id,carname,facname) values ('11-11','K3','���');
insert into member(id,carname,facname) values ('22-22','���','���');
insert into member(id,carname,facname) values ('33-33','K5','���');
insert into member(id,carname,facname) values ('77-77','K7','���');

insert into member(id,carname,facname) values ('44-44','�ƹݶ�4','����');
insert into member(id,carname,facname) values ('55-55','�ƹݶ�5','����');
insert into member(id,carname,facname,fuel,cartype,carnum) values ('99-99','K9','���','�ֹ���','����','2');


select * from member where monthprice>323000;



select * from (select * from member where facname='����'  and carnum='�ƹݶ�' )
where  lentoffice='����' or lentoffice='����' ;

select * from member where facname='���' and cartype='����' and carnum='K' and lentoffice='���' or lentoffice='����';

select * from member where fuel='�ֹ���' or fuel='LPG';

update MEMBER set lentoffice='����' where id='99-99';
update MEMBER set cartype='����' where id='66-66';

update MEMBER set lent='10' where carnum='�ƹݶ�';
update MEMBER set monthprice='5000000' where carnum='�ƹݶ�';


select * from member where facname='���' ;
select * from board;
select * from member;
select * from lent;
update member set carnum='�ƹݶ�' where carname='�ƹݶ�8';


alter table member drop column carn;

alter table lent add lentoffice varchar2(20) ;


select from 

select * from (select * from member where facname='���' and cartype='����' and carnum='K') where  fuel='�ֹ���' or fuel='����';

select * from member where fuel='�ֹ���' or fuel='LPG';




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


Insert into  lent(car_num,user_id,lent_term,insurance,lent_car,service,totalprice) values ('88-88','1','2����','��3õkm����','����','5%����','900000��');
