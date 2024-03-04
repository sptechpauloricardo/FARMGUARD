-- Ayrton Casa 03241065
-- Dominique Falcone 03241068
-- Fabrício Bonacelli 03241048
-- Gabriel Gomes 03241005
-- Jhonatan Françoso 03241003
-- Paulo Ricardo 003241013
-- Rebeca Fernandes 03241018

create database official_sprint;
use official_sprint;

create table temperatura (
id int primary key Auto_increment,
sensor varchar(40),
tempo datetime,
temperatura varchar(10)
);

create table cadastro (

idgranja int primary key auto_increment,
cnpj char (14),
nome_granja varchar(60),
nome_proprietario varchar(50),
data_nascimento date,
telefone char(11),
email varchar (60),
senha varchar (40)
);

create table funcionario (

idfuncionario int primary key auto_increment,
nome_funcionario varchar (50),
cnpj_granja char (14),
telefone_funcionario char (11)
);

