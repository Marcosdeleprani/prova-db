use industria_db;

insert into fornecedor
values
(1, 488, "Sao paulo"),
(2, 489, "Rio de Janeiro"),
(3, 490, "Santa Catarina"),
(4, 491, "Rio Grande do Sul"),
(5, 492, "Minas Gerais");
insert into categorias
values
(default,"Bebidas"),
(default,"Alimentos"),
(default,"Produtos de limpeza"),
(default,"Ferramentas"),
(default,"Padaria");
insert into produtos
values
(default,"Martelo", "Bom", 30.00, 100, 4, 1),
(default,"Refrigerante", "gostoso", 7.00, 200, 1, 3),
(default,"Biscoito", "Calorico", 6.00, 150, 2, 2),
(default,"Sabao", "limpa", 3.00, 250, 3, 4),
(default,"Esponja", "Rapida", 2.00, 300, 3, 4),
(default,"Pao Doce", "Bom", 4.00, 55, 5, 5),
(default,"Vassoura", "limpa bem", 20.00, 35,3, 4),
(default,"Amaciante", "Cheiroso", 15.00, 60, 3, 4),
(default,"Chocolate", "Doce", 6.00, 200, 2, 2),
(default,"Maça", "Fruta", 3.00, 2000, 2, 2);
insert into setor
values
(default, "Producao", "Parque Fabril 2"),
(default, "Producao", "Parque Fabril 1"),
(default, "Producao", "Parque Fabril 2"),
(default, "Producao", "Parque Fabril 1"),
(default, "Producao", "Parque Fabril 1");

insert into funcionarios
values
(10, "Ana", "Chefe", 15000.00, '2025-10-12', 2);
insert into funcionarios
values
(11, "Maria", "Produtor", 1500.00, '2025-10-02', 1),
(12, "Joao", "Produtor", 1500.00, '2025-10-13', 1),
(13, "Carlos", "Cozinha", 1550.00, '2026-10-12', 4),
(14, "Alberto", "Limpeza", 1500.00, '2025-10-12', 3),
(15, "Jorge", "Produtor", 1500.00, '2025-10-12', 1),
(16, "Roberto", "Gerente", 10500.00, '2025-07-12', 5),
(17, "pedro", "Produtor", 1500.00, '2025-08-12', 1),
(18, "Adair", "Produtor", 1500.00, '2025-12-12', 1),
(19, "Claudia", "Produtor", 1500.00, '2025-10-15', 1);

insert into ordem_producao
values
(default, '2025-06-03', 100, "em andamento", 10, 20, 1, 11),
(default, '2026-03-20', 200, "Finalizado", 15, 20, 2, 12),
(default, '2026-04-30', 150, "Finalizado", 7, 10, 3, 15),
(default, '2025-12-20', 250, "Finalizado", 8, 9, 4, 11),
(default, '2026-03-04', 300, "Finalizado", 5, 12, 5, 17),
(default, '2026-04-04', 55, "Finalizado", 10, 12, 6, 18),
(default, '2026-03-10', 300, "Finalizado", 10, 13, 7, 19),
(default, '2026-05-04', 60, "Finalizado", 10, 22, 8, 12),
(default, '2026-03-14', 200, "em andamento", 7, 12, 9, 15),
(default, '2026-07-14', 2000, "Finalizado", 10, 32, 10, 19),
(default, '2026-07-14', 2000, "Finalizado", 10, 32, 10, 17),
(default, '2026-07-14', 2000, "Finalizado", 10, 32, 10, 12),
(default, '2026-05-04', 60, "Finalizado", 10, 22, 8, 11),
(default, '2026-03-10', 300, "Finalizado", 10, 13, 7, 15),
(default, '2026-03-04', 300, "Finalizado", 5, 12, 5, 19);
insert into controle_qualidade
values
(default, '2025-06-03', "bom", "melhoria na velocidade", 1),
(default, '2026-03-20', "ruim", "falta qualidade no produtp", 2),
(default, '2026-04-30', "bom", "melhoria na velocidade", 3),
(default, '2025-12-20', "bom", "melhoria na velocidade", 4),
(default, '2026-03-04', "bom", "melhoria na velocidade", 5),
(default, '2026-04-04', "bom", "melhoria na velocidade", 6),
(default, '2026-03-10', "bom", "melhoria na velocidade", 7),
(default, '2026-05-04', "bom", "melhoria na velocidade", 8),
(default, '2026-03-14', "ruim", "falta qualidade no produto", 9),
(default, '2026-07-14', "bom", "melhoria na velocidade", 10),
(default, '2026-07-14', "bom", "melhoria na velocidade", 11),
(default, '2026-07-14', "bom", "melhoria na velocidade", 12),
(default, '2026-05-04', "bom", "melhoria na velocidade", 13),
(default, '2026-03-10', "bom", "melhoria na velocidade", 14),
(default, '2026-03-04', "bom", "melhoria na velocidade", 15);

update setor 
set nome_setor = "Chefe"
where id_setor = 2;
update setor 
set nome_setor = "limpeza"
where id_setor = 3;
update setor 
set nome_setor = "Cozinha"
where id_setor = 4;
update setor 
set nome_setor = "Gerente"
where id_setor = 5;