create database projeto2;
use projeto2;
create table usuario(id int primary key,nome varchar(50),imagem varchar(50),usuario varchar(20),cadastro date);
create table cartao(id int auto_increment primary key,numero varchar(16),cvv int(3),expiracao date,valido char(1),cadastro date);
create table transacao(id int auto_increment primary key,id_usuario int,id_cartao int,valor decimal(7,2), cadastro date);

insert into usuario(id,nome,imagem,usuario,cadastro)values(1001,"Eduardo Santos","https://randomuser.me/api/portraits/men/9.jpg","eduardo.santos","2021/09/28");
select * from usuario order by nome asc;
insert into cartao(numero,cvv,expiracao,valido,cadastro)values("1111111111111111",789,"2018/01/01","S","2021/09/28");
select * from cartao where valido="S";
insert into transacao(id_usuario,id_cartao,valor,cadastro)values(1001,1,50.50,"2021/09/28");
select u.id,u.nome,u.usuario,c.numero,t.cadastro,t.valor from usuario as u, cartao as c join transacao as t where u.id=t.id_usuario order by t.cadastro desc; 
