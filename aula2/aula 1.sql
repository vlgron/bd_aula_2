create database empresa_xpto;

use empresa_xpto;

create table funcionario ( 
	
	nome varchar(40),
    cpf char(12),
	cargo varchar(20),
    salario float,
    nascimento date
);

insert into funcionario(nome, cpf, cargo, salario, nascimento)
values ('ronaldo', 111111111-11, 'professor', 2000.00, '2006-10-30');
select * from funcionario;