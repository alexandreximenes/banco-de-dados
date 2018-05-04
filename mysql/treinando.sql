/*criando tabela comprador*/

create table if not exists comprador (
	id int not null auto_increment primary key,
    nome varchar(100),
    telefone varchar(10)
);

/*Criando tabela compra*/

create table if not exists compra(
	id int not null auto_increment primary key,
    valor double,
    data date, 
    recebido boolean default '0',
    observacoes varchar(255),
    forma_pgto enum('dinheiro', 'cartao'),
    comprador_id int, 
    foreign key(comprador_id) references comprador(id)
    
);

/**insert into compra(valor, data, recebido, observacoes, forma_pgto, comprador_id) /
/*atualizando dados da tabela*/
update compra set 
	valor = 1200, 
	data = now(), 
	recebido = 1, 
	observacoes = 'alterando compra de perfume' ,
    forma_pgto = 'cartao',
    comprador_id = 1
where id = 7;


/* Inserindo dados na tabela comprador*/

insert into comprador (nome, telefone) values('alexandre', '33333-333');

/* Inserindo dados na tabela compra*/

insert into compra(valor, data, recebido, observacoes, forma_pgto, comprador_id) 
values (300.00, '2018-05-03', 0, 'compra de camisa', 'dinheiro', 1);
                    
insert into compra(valor, data, recebido, observacoes, forma_pgto, comprador_id) 
values (1500.00, '2018-05-04', 0, 'compra de celular', 'dinheiro', 1);

insert into compra(valor, data, recebido, observacoes, forma_pgto, comprador_id) 
values (500.00, '2018-05-05', 0, 'compra peças', 'cartao', 1);
  
/*selecionando todas as compras;*/

select * from compra;

/*Agrupando valores com group by e ordenando por decrescentes*/  

select sum(valor), data from compra group by data order by sum(valor) desc;

/* alterando dados da tabela */

alter table compra modify column data date default now();

/* juntando tabelas com id em comum*/

select * from compra c left join comprador cp on c.id = cp.id;



