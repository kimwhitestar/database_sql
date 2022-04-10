/*
show databases;
create user 'javagreen03'@'%' identified by '1234';
select current_user();
grant all privileges on javagreen03.* to 'javagreen03'@'%';
select user from user;
*/
/*
create table CUSTOM_KIND (
CUSTOM_KIND_CD INT(1) not null primary key,
CUSTOM_KIND_NM varchar(10) not null
);
desc CUSTOM_KIND;
insert into CUSTOM_KIND values (1, '기업고객');
insert into CUSTOM_KIND values (2, '개인고객');
--delete from CUSTOM_KIND where CUSTOM_KIND_CD = '3';
select * from CUSTOM_KIND;
*/
/*
create table CUSTOM_COMP (
SEQ int(15) not null auto_increment unique,
CUSTOM_ID varchar(8) not null primary key,
CUSTOM_NM varchar(20) not null,
CUSTOM_NM_SHORT varchar(10) not null,
CUSTOM_KIND_CD int(1) not null, 
ESTBL_DATE date not null,
CUSTOM_GRADE char(1) not null,
COMPANY_NO varchar(15) not null unique,
TEL_NO varchar(10) null,
HP_NO varchar(11) null,
EMAIL varchar(30) null,
POST_NO varchar(5) null,
ADDR_1 varchar(20) null,
ADDR_2 varchar(30) null,
CUSTOM_MILE int(6) null,
MEMO varchar(50) null,
CREATE_DATE datetime not null default now(),
constraint FK_CUSTOM_KIND_CD foreign key (CUSTOM_KIND_CD) references CUSTOM_KIND(CUSTOM_KIND_CD)
);
desc CUSTOM_COMP;

create table CUSTOM_PERSNAL (
SEQ int(15) not null auto_increment unique,
CUSTOM_ID varchar(8) not null primary key,
CUSTOM_NM varchar(20) not null,
CUSTOM_KIND_CD int(1) not null, 
BIRTH_DATE date not null,
CUSTOM_GRADE char(1) not null,
JUMIN_NO varchar(13) not null unique,
TEL_NO varchar(10) null,
HP_NO varchar(11) null,
EMAIL varchar(30) null,
POST_NO varchar(5) null,
ADDR_1 varchar(20) null,
ADDR_2 varchar(30) null,
CUSTOM_MILE int(6) null,
MEMO varchar(50) null,
CREATE_DATE datetime not null default now(),
constraint FK_PERSNAL_CUSTOM_KIND_CD foreign key (CUSTOM_KIND_CD) references CUSTOM_KIND(CUSTOM_KIND_CD)
);
desc CUSTOM_PERSNAL;

insert into CUSTOM_COMP values (default, '10000001','자바그린유통산업','자바그린(유)',1, date_format('20220301','%y-%m-%d'),'A',
'123-81-33400','020010001','01000010001','info@green-distribution.co.kr','08200','서울특별시 구로구 경인로67나길 52','기업 고객 데이타 주소 1', null, null, default);
insert into CUSTOM_COMP values (default, '10000002','자바그린마트','자바그린(마)',1, date_format('20220501','%y-%m-%d'),'B',
'123-81-33418','020010002','01000010002','info@green-mart.co.kr','08200','서울특별시 구로구 경인로67나길 52','기업 고객 데이타 주소 5', null, null, default);
insert into CUSTOM_PERSNAL values (default, '20000001','테스트고객1',2, date_format('19780808','%y-%m-%d'),'G',
'7808081234567','028883331','01088888881','test1@a.b.c.kr','03100','서울특별시 종로구 율곡로 215-6','개인 고객 데이타 주소 1', null, null, default);
insert into CUSTOM_PERSNAL values (default, '20000002','테스트고객2',2, date_format('19800812','%y-%m-%d'),'G',
'8008121234567','028883333','01088888883','test2@a.b.kr','03100','서울특별시 종로구 율곡로 215-6','개인 고객 데이타 주소 3', null, null, default);
select * from CUSTOM_COMP;
select * from CUSTOM_PERSNAL;
*/