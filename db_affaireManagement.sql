CREATE database db_affairemanagement;
USE db_affairemanagement;

create table tb_employee(
	employeeID int not null primary key,
	employeeName varchar(20) not null,
	isLead bool not null
);
create table tb_message(
	messageID int not null primary key,
	messageDate date not null,
	messageContent varchar(100) not null,
	employee.employeeID not null
);

create table tb_reply(
	replyID int not null primary key,
	replyDate date not null,
	replyContent varchar(50) not null,
	employee.employeeID not null,
	message.messageID not null
);

create table tb_critism(
	critismID int not null primary key,
	critismDate date not null,
	critismContent varchar(50) not null,
	employee.employeeID not null,
	message.messageID not null
);
