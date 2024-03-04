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
foreign key (idEmpresa) references cadastro(idEmpresa),
nomefuncionario varchar (50),
cpffuncionario int,
Celularfuncionario varchar (50));

alter table funcionario  add constraint chkcpffuncionario
check (cpffuncionario in ('___.___.___-__'));

create table temperatura(
idEmpresa int,
foreign key (idEmpresa) references cadastro(idEmpresa),
idTemp int primary key auto_increment,
sensor varchar(40),
tempo datetime,
temperatura varchar (10));

