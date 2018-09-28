create table member(
	member_id varchar2(20) primary key,
	member_password varchar2(20),
	member_name varchar2(20),
	member_birth date,
	member_gender varchar2(5),
	member_email_one varchar2(10),
	member_email_two varchar2(10),
	member_tel_one number,
	member_tel_two number,
	member_tel_three number,
	member_zipcode varchar2(15),
	member_address_one varchar2(100),
	member_address_two varchar2(100)
	);
	
select * from member;
drop table member;

insert into member values(
	'hong',
	'1234!',
	'홍길동',
	sysdate,
	'B',
	'hong1234',
	'@naver.com',
	010,1234,1234,
	'123-123',
	'지구별 어딘가','깐따삐아섬');