create database empresa_xpto;

use empresa_xpto;

create table funcionarios ( 
	
	nome varchar(60),
    cpf char(12),
	cargo varchar(60),
    salario float,
    nascimento date
);

insert into funcionarios(nome, cpf, cargo, salario, nascimento)
values ('ronaldo', 111111111-11, 'professor', 2000.00, '2006-10-30');
select * from funcionarios;



-- consultando as colunas nome e nascimento de uma tabea
select nome, nascimento from funcionarios;

-- consultando as colunas nome, cargo e salario de uma tabela 
select nome, cargo, salario from funcionarios;

-- consultando as colunas salario, cargo de uma tabela
select salario, cargo from funcionarios;

-- consutando por cargo 
select * from funcionarios where cargo = "Arquiteto de Software";

-- consultando os de cargo gerente de projeto
select nome, cargo, salario from funcionarios where cargo =  "Gerente de Projetos";

-- consultando os salario dos professores
select  salario, cargo from funcionarios where cargo =  "professor";

-- consultando os que recebem abaixo de 10000
select nome, cargo, salario from funcionarios where salario > 10000;

-- consultando os que recebem abaixo de 1238.00
select nome from funcionarios where salario < "1238.00";

-- consultando os que recebem acima ou igual a 28.000
select cargo from funcionarios where salario >= 28.000;

-- consulatndo o nome da funcionaria monica
select nome from funcionarios where nome =  "Monica Yates";

-- consultando o cargo e salario da jennifer garden
select cargo, salario from funcionarios where nome =  "Jennifer Gardner";

-- consultando o nascimento de russell cole
select nascimento from funcionarios where nome =  "Russell Cole";


-- consultando o nome e cargo do funcionario com cpf  84716339531
select nome, cargo from funcionarios where cpf = 84716339531;

-- criando alias(apelidos)
select 
	nome as 'nome completo',
    salario as 'salario',
    nascimento as 'data de nascimento'
from funcionarios;

select 
	nome as 'nome completo',
    salario as 'salario',
    nascimento as 'data de nascimento'
from funcionarios where nascimento >='1998-01-01';

-- consultando o nome em ordem alfabetica
select * from funcionarios order by nome asc;

-- consultando salario em ordem descendente
select nome, cargo, salario from funcionarios order by salario desc;

-- consultando salario do mais velho ao mais novo
select salario, cargo from funcionarios order by nascimento desc;

-- consultando o nome em ordem alfabetica peo salario
select 
nome  from funcionarios order by salario desc limit 5;

-- consultando o nome do funcionario mais velho
select nome, nascimento from funcionarios order by nascimento asc limit 1;

-- consultando os 10 maiores salarios
select salario from funcionarios order by salario asc limit 10;

-- consulatndo em ordem alfabetica os professores
select nome, salario, cargo from funcionarios where cargo = 'professor' order by nome asc;

-- consultando os 5 maiores salarios de medicos
select nome, salario, cargo from funcionarios where cargo = 'medico' order by salario desc limit 5;

-- consultando o nome e cpf do recepcionista com menor salario
select nome, cpf from funcionarios where cargo = 'recepcionista' order by salario asc limit 1;




