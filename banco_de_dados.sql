create database galinha;
use galinha;
create table Cadastro(
idEmpresa int not null auto_increment primary key,
nomegranja varchar (50),  
cnpj int,
Nomedono varchar (50),
dtNasc date,
Celular varchar(20),
email varchar(50),
senha varchar(20));
alter table cadastro add constraint chkemail
check (email in ('%@%'));
alter table cadastro add constraint chkcnpj
check (cnpj in ('__.___.___/____-__'));

create table Funcionario(
idFuncionario int not null auto_increment primary key,
idEmpresa int,
nomefuncionario varchar (50),
cpffuncionario int,
Celularfuncionario varchar (50));

alter table funcionario  add constraint chkcpffuncionario
check (cpffuncionario in ('___.___.___-__'));

create table temperatura(
idEmpresa int,
idTemp int primary key auto_increment,
sensor varchar(40),
tempo datetime,
temperatura varchar (10));

create table compra(
idCompra int primary key auto_increment,
tamanhoAviario decimal (6,2),
qtdArduino int,
valorServiço decimal (7,2),
valorInstalação decimal (7,2),
valorTotal decimal (10,2)

);
