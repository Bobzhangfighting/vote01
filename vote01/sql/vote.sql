drop table VoteSubject


select * from VOTEITEM;
select * from VOTEOPTION;
select * from VOTEUSER;
select * from voteSubject;

update VoteUser set vuStatus=0 where email ='1441076787@qq.com'


--�û���
create table VoteUser
(
  vuId   NUMBER(10) primary key,           --�û�id
  vuUsername VARCHAR2(20) not null,           --�û���
  vuPassword  VARCHAR2(20) not null,           --�û�����
  vuStatus    NUMBER(6) not null,              --�û�״̬
  vuVersion   NUMBER(10) not null              --��ɫ
);
  
  
--ͶƱ����
create table VoteSubject
(
  vsId    NUMBER(10) primary key,            --ͶƱ������
  vsTitle VARCHAR2(200) not null,         --ͶƱ����
  vsType  NUMBER(6) not null              --ͶƱ����:   ��ѡ  1    ��ѡ   2
);

--ͶƱ���ݶ�Ӧ��ѡ���
create table VoteOption
(
  voId     NUMBER(10) primary key,  --���
  voOption VARCHAR2(100) not null,--ͶƱѡ��
  vsId     NUMBER(10) not null,  --ͶƱ������
  voOrder  NUMBER(10) not null  --��ʾ˳��
);

--�û�ͶƱȡֵ��
create table VoteItem
(
  viId      NUMBER(10) primary key, --���
  voId      NUMBER(10) not null, --ͶƱѡ��id
  vsId      NUMBER(10) not null, --ͶƱ������id
  vuId	    NUMBER(10) not null --�û�id
);

delete from VOTEITEM where vsId = 103
select * from VOTEITEM
commit

alter table VoteUser add email varchar2(20);
--δ����ʱΪ0���Ѽ���Ϊ1
--�����û�
insert into VoteUser (vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('ss', 100000, 'a', 1, 1,'1441076787@qq.com');
insert into VoteUser (vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('admin', 100001, 'a', 2, 1,'1441076787@qq.com');
insert into VoteUser ( vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('zy', 100002, 'a', 1, 0,'1441076787@qq.com');
insert into VoteUser (vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('yc', 100003, 'a', 2, 0,'1441076787@qq.com');
insert into VoteUser ( vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('yc1', 100004, 'a', 2, 1,'1441076787@qq.com');
insert into VoteUser (vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('yc2', 100005, 'a', 2, 1,'1441076787@qq.com');
insert into VoteUser ( vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('yc3',100006, 'a', 2, 1,'1441076787@qq.com');
insert into VoteUser (vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('yc4',100007, 'a', 2, 1,'1441076787@qq.com');
insert into VoteUser ( vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('yc5', 100008, 'a', 2, 1,'1441076787@qq.com');
insert into VoteUser (vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('yc6', 100009, 'a', 1, 0,'1441076787@qq.com');
insert into VoteUser (vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('yc7', 100009, 'a', 1, 0,'1441076787@qq.com');

insert into VoteUser (vuUsername,vuId, vuPassword, vuStatus, vuVersion,email)
values ('yc9', 100012, 'a', 1, 0,'1441076787@qq.com');
commit

--����ͶƱ����
insert into VoteSubject (vsId, vsTitle, vsType)
values (103, 'ѡ������Ŀ����õ����ع���', 2);
insert into VoteSubject (vsId, vsTitle, vsType)
values (104, 'ѡ������Ŀ����õ����뷨', 1);
insert into VoteSubject (vsId, vsTitle, vsType)
values (105, 'ѡ������Ŀ����õ��������칤��', 1);
insert into VoteSubject (vsId, vsTitle, vsType)
values (440, '���������ĵط�', 1);
insert into VoteSubject (vsId, vsTitle, vsType)
values (101, 'ѡ������Ŀ����õ������', 1);
insert into VoteSubject (vsId, vsTitle, vsType)
values (102, 'ѡ������Ŀ����õ�ɱ������', 1);

--���������е�ѡ��
insert into VoteOption (voId, voOption, vsId, voOrder)
values (397, '��ѶQQ', 105, 1);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (398, 'MSN', 105, 2);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (380, 'Ѹ��', 103, 1);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (399, '����UC', 105, 3);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (400, '����', 105, 4);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (401, 'Skype', 105, 5);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (402, '��������', 105, 6);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (403, '�ٶ�HI', 105, 7);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (404, '΢��IE�����', 101, 1);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (405, '�����Firefox�������', 101, 2);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (381, '���ʿ쳵', 103, 2);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (382, '��¿', 103, 3);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (383, '���ؾ���', 103, 4);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (384, '��������', 103, 5);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (385, '�ѹ�ƴ��', 104, 1);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (386, '�ѹ����', 104, 2);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (387, 'QQƴ��', 104, 3);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (388, 'QQ���', 104, 4);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (389, '�ȸ�ƴ��', 104, 5);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (390, '�Ϲ�ƴ��', 104, 6);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (391, '����ABC', 104, 7);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (392, '΢��ƴ��', 104, 8);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (393, '����ƴ��', 104, 9);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (394, '�������', 104, 10);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (395, '��Ʒƴ��', 104, 11);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (396, '��Ʒ���', 104, 12);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (406, '����֮�������', 101, 3);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (407, '360�����', 101, 4);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (408, '���������', 101, 5);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (409, '�ȸ裨Chrome�������', 101, 6);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (410, '����˹��', 102, 1);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (411, '360ɱ��', 102, 2);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (412, 'McAfee', 102, 3);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (413, 'AVG', 102, 4);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (414, 'ŵ��ɱ��', 102, 5);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (415, '����ɱ��', 102, 6);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (416, '��ɽ����', 102, 7);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (417, '����ɱ��', 102, 8);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (418, '΢�����', 102, 9);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (419, '����ɱ��', 102, 10);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (441, '����', 440, 1);
insert into VoteOption (voId, voOption, vsId, voOrder)
values (442, '����', 440, 2);

--����ѡ����
insert into VoteItem (viId, voId, vsId,vuId)
values (422, 405, 101,100004);
insert into VoteItem (viId, voId, vsId,vuId)
values (423, 405, 101, 100005);
insert into VoteItem (viId, voId, vsId,vuId)
values (424, 404, 101, 100006);
insert into VoteItem (viId, voId, vsId,vuId)
values (425, 407, 101, 100007);
insert into VoteItem (viId, voId, vsId,vuId)
values (426, 408, 101, 100008);
insert into VoteItem (viId, voId, vsId,vuId)
values (427, 409, 101, 100003);
insert into VoteItem (viId, voId, vsId,vuId)
values (445, 404, 101, 100002);
insert into VoteItem (viId, voId, vsId,vuId)
values (367, 136, 135, 100001);
insert into VoteItem (viId, voId, vsId,vuId)
values (420, 405, 101, 100001);
insert into VoteItem (viId, voId, vsId,vuId)
values (421, 406, 101, 100000);


alter table VoteItem
add constraint uk_VoteItem unique(voId,vuId);


create sequence seq_item start with 450;

create sequence seq_subject start with 441;
create sequence seq_option start with 450;
create sequence seq_user_vuid start with 500;

--ȡ����������
select vsId,vsTitle from VoteSubject;

--��������id���ҵ���Ӧ��ѡ����
select count(1) from VoteItem where vsId =101;

--��������id���ҵ���Ӧ��ͶƱ��
select count(1) from VoteItem where vsIdv =101;


	select vsId,vsTitle,
  	(select count(1) from VoteOption where vsId =s.vsId) optionCount,
  	(select count(1) from VoteItem where vsId = s.vsId) voteUserCount
  	from VoteSubject s



select vsId,vsTitle,
  	(select count(1) from VoteOption where vsId = s.vsId) optionCount,
  	(select count(1) from VoteItem where vsId = s.vsId) voteUserCount
  	from VoteSubject s where vsId =103

select count(i.voId) from VoteOption o 
  	left join VoteItem i on o.voId = i.voId where o.vsId =103 group by voorder by voorder 