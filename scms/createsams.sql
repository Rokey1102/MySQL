create database sams;
use sams;


create table students(
sid int(20) unique auto_increment primary key not null comment '学号',
sname varchar(20) comment '姓名',
sclass int(10) comment '班级',
sgender varchar(10) comment '性别',
sage int comment '年来'
)comment '学生表';

insert into students(sname, sclass, sage, sgender) values ('纳兹','201222',23,'男'),('露西','201222',21,'女'),
                                                            ('艾露莎','201222',24,'女'),('格雷','201222',23,'男'),
                                                            ('温蒂','201222',23,'女'),('拉克萨斯','201222',21,'男'),
                                                            ('米拉尔','201222',22,'女'),('伽吉鲁','201222',21,'男'),
                                                            ('朱比亚','201222',23,'女'),('阿利亚','201222',22,'男'),
                                                            ('斯丁','201222',23,'男'),('罗格','201222',22,'男'),
                                                            ('欧加','201222',22,'男'),('雪乃','201222',22,'女'),
                                                            ('兔兔丸','201222',23,'男'),('米涅芭','201222',23,'女');


create table courses(
    cid int unique auto_increment primary key not null comment '课程编号',
    cname varchar(10) comment '课程名称'
)comment '课程表';

insert into courses(cname) values ('mysql'),('python'),('java'),('C++');



create table scores(
    id int not null comment '学生学号',
    cid int not null comment '课程编号',
    scores int comment '分数',
    constraint scoresid_fk foreign key (id) references students(sid),
    constraint scorescid_fk foreign key (cid) references courses(cid)
)comment '成绩表';
insert into scores(id, cid, scores) VALUES (1,1,67),(1,2,90),(1,3,95),(1,4,60),
                                           (2,1,58),(2,2,88),(2,3,77),
                                           (3,1,98),(3,2,78),(3,3,45),
                                           (4,1,66),(4,2,56),(4,3,79),(4,4,68),
                                           (5,1,85),(5,2,87),
                                           (6,1,76),(6,2,84),(6,3,67),
                                           (7,1,56),(7,2,98),
                                           (8,1,85),(8,2,75),(8,3,60),
                                           (9,1,93),(9,2,73),(9,3,74),(9,4,78),
                                           (10,1,87),(10,2,78),(10,3,69),
                                           (11,1,78),(11,2,86),(11,3,65),
                                           (12,1,68),(12,2,88),(12,3,75),(12,4,68),
                                           (13,1,65),(13,2,70),
                                           (14,1,87),(14,2,80),(14,3,71),(14,4,87),
                                           (15,1,69),(15,2,75),(15,3,72),(15,4,80),
                                           (16,1,85),(16,2,73);

create table s_c(
    s_cid int not null auto_increment primary key comment 's_c编号',
    s_csid int not null comment '学生编号',
    s_ccid int not null comment '课程编号',
    constraint s_csid_fk foreign key (s_csid) references students(sid),
    constraint s_ccid_fk foreign key (s_ccid) references courses(cid)
)comment '学生与课程关系表';
insert into s_c(s_csid, s_ccid) values ()











