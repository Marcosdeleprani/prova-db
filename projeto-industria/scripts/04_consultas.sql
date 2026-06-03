select* from categorias;
select* from fornecedor;
select * from produtos;
select* from setor;
select*from funcionarios;
select* from ordem_producao;
select*from controle_qualidade;

--1
select nome_setor
from setor;
--2
select nome,
salario, cargo
from funcionarios;
--3
select codigo_produto,
nome, preco
from produtos;
--4
select nome, qtd_estoque
from produtos;
--5
select nome
from funcionarios
where data_admissao > '2025-12-12';
--6
select nome
from produtos
where qtd_estoque > 100;
--7
select cnpj
from fornecedor
where cidade = "Sao Paulo";
--8
select nome
from produtos
where preco > 50 and preco < 500;
--9
select nome
from funcionarios
where salario > 3000;
--10
select nome
from funcionarios
where cargo = "Gerente";
--11
select cnpj
from fornecedor
where telefone > 1;
--12
select nome
from produtos
where descricao = 'bom';
--13
select nome
from produtos
group by nome asc;