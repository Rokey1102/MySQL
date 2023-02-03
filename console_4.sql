#SELECT CUST_NAME 客户名称,TRADE_TYPE 交易类型（存款、取款）,AMT 交易金额,REQUEST_DATE 交易日期 FROM TRD_SALETRAN

create table TRD_SALETRAN(
CUST_NAME VARCHAR(30) PRIMARY key not null,
TRADE_TYPE VARCHAR(30),
AMT int,
REQUEST_DATE TINYTEXT
);
insert into TRD_SALETRAN(CUST_NAME,TRADE_TYPE,AMT,REQUEST_DATE)values
('张三','存款','1000','20230101'),('张三','存款','200','20230103'),
('张三','取款','100','20230103'),('张三','取款','200','20230105');
on duplicate key update
CUST_NAME=values(CUST_NAME),
TRADE_TYPE=values(TRADE_TYPE),
AMT=values(AMT),
REQUEST_DATE=(REQUEST_DATE);
delete from TRD_SALETRAN where CUST_NAME='张三';
select * from TRD_SALETRAN;

create table TRD_BALANCE(
CUST_NAME VARCHAR(30)  not null,
BALANCE int,
OCCUR_AMT int,
EFFECTIVE_FROM TINYTEXT,
EFFECTIVE_TO TINYTEXT
);
insert into TRD_BALANCE(CUST_NAME,BALANCE,OCCUR_AMT,EFFECTIVE_FROM,EFFECTIVE_TO)values
('张三','1000','1000','20230101','20230103'),('张三','1100','100','20230103','20230105'),
('张三','500','-600','20230105','99991231');
select CUST_NAME 客户名称,BALANCE 余额,OCCUR_AMT 当日发生额,EFFECTIVE_FROM 有效起始日,EFFECTIVE_TO 有效截止日 from TRD_BALANCE;









alter table TRD_SALETRAN change amt ablance number(10);
alter table TRD_SALETRAN change request_date effective_from number(8);
alter table TRD_SALETRAN drop trade_type;
alter table TRD_SALETRAN add occur_amt;
alter table TRD_SALETRAN add effective_to;