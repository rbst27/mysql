create database projeto1;
use projeto1;
create table transacao(id int AUTO_INCREMENT primary key,tipo int(1), nome varchar(50),valor decimal(7,2),cadastro date);
insert into transacao(tipo,nome,valor,cadastro) values (1,"televisao",1200.50,"2021/09/28");   
SELECT * FROM transacao
ORDER BY cadastro asc;
select sum(valor) as saldo from transacao; 
DELETE FROM transacao;