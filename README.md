# Momento 

Você está prestes a explorar o banco de dados da empresa "Momento"! Com essa base de dados, vamos treinar consultas SQL e responder algumas perguntas intrigantes que vão revelar como a empresa está organizada. Vamos lá?

### Departamento de Tecnologia 

* Inclua suas próprias informações no departamento de Tecnologia da empresa.

Q:
``` sql
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) 
VALUES (600,'Elton','Santos','elton.santos@momento.org','@4@8@15@16','515.123.4567','2003-08-23',4,24000.00,NULL,9);
```

* Agora diga, quantos funcionários temos ao total na empresa?
R: 42

Q:
``` sql
SELECT COUNT(*) FROM funcionarios;
```

* E quanto ao Departamento de Tecnologia?
R: 5

Q:
``` sql
SELECT COUNT(*) FROM funcionarios WHERE departamento_id = "6";
```


### Departamento de Vendas 

* **Quantos funcionários trabalham no Departamento de Vendas?**
Use uma consulta para descobrir o número total de funcionários alocados nesse departamento.
R: 5

Q:
``` sql
SELECT COUNT(*) FROM funcionarios WHERE departamento_id = "8";
```

* **Salários no Departamento de Vendas**

* Qual é o custo total dos salários do pessoal de Vendas? Isso nos ajuda a entender o orçamento do departamento! 
R: 51500.00

Q:
``` sql
SELECT SUM(salario) FROM funcionarios WHERE departamento_id = "8";
```

* Quanto o departamento de Vendas gasta em salários?
R: 51500.00

Q:
``` sql
SELECT SUM(salario) FROM funcionarios WHERE departamento_id = "8";
```

* Quais são os produtos mais vendidos e quais têm pouca ou nenhuma saída?
R: Mais vendidos: 167, 55 e 29
R: Pouca ou nenhuma saída: 3, 8 e 10

Q:
``` sql
SELECT * FROM vendas ORDER BY quantidade desc;
```

* Qual é o produto mais caro no inventário da empresa?
R: 200000.00

Q:
``` sql
SELECT max(custo) FROM suprimentos ORDER BY custo desc;
```

### Departamento de Inovações 

* **Um novo departamento foi criado. O departamento de Inovações.** 
Ele será locado no Brasil. Por favor, adicione-o no banco de dados da empresa colocando quaisquer informações que você achar relevantes.
R: O departamento de Inovações foi criado e adicionado ao banco de dados da empresa

Q:
``` sql
INSERT INTO departamentos(departamento_nome,escritorio_id) VALUES ('Inovações',1900);
```

* O departamento de Inovações está sem funcionários. Inclua alguns colegas de turma nesse departamento.
R: O departamento de Inovações foi adicionado com alguns funcionários

Q:
``` sql
INSERT INTO funcionarios(primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) 
 VALUES ('Yago','Wayne','Yago.wayne@momento.org','@4@8@15@16','515.123.4567','1987-06-17',4,24000.00,NULL,14);
 
INSERT INTO funcionarios(primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) 
VALUES ('Wesley','Kochhar','Wesley.kochhar@momento.org','@48@15@16','515.123.4568','1989-09-21',5,17000.00,100,14);

INSERT INTO funcionarios(primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) 
VALUES ('Leonardo',"T'Challa",'Leonardo.tchalla@momento.org','@4@8@5@16','515.123.4569','1993-01-13',5,17000.00,100,14);

INSERT INTO funcionarios(primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) 
VALUES ('Vinicius','Hunold','Vinicius.hunold@momento.org','@48@15@16','590.423.4567','1990-01-03',9,9000.00,102,14);

INSERT INTO funcionarios(primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) 
VALUES ('Gabriel','Ernst','Gabriel.ernst@momento.org','@4@8@15@17','590.423.4568','1991-05-21',9,6000.00,103,14);
```

### Funcionários

* Quantos funcionários da empresa Momento possuem conjuges?


* Qual o funcionário contratado há mais tempo na empresa?

* Qual o funcionário contratado há menos tempo na empresa?

* Quem são os funcionários com mais tempo na empresa, considerando a `data_contratacao`?

* Como a média salarial dos funcionários da "Momento" evoluiu nos últimos anos?
Dica: utilize a função `AVG()` para calcular a média salarial dos funcionários. e `GROUP BY` para agrupar os resultados por ano.

### Médias salariais

* Qual a média salarial dos funcionários da empresa Momento, excluindo-se o CEO, CMO e CFO?

* Qual a média salarial do departamento de tecnologia? 

* Qual o departamento com a maior média salarial?

* Qual o departamento com o menor número de funcionários?

### Produtos

* Pensando na relação quantidade e valor unitario, qual o produto mais valioso da empresa?

* Qual o produto mais vendido da empresa?

* Qual o produto menos vendido da empresa?

### Escritórios

* Quantos escritórios a "Momento" possui em cada região? (Dica: relacione as tabelas regioes e escritorios).

* Qual é o custo total de suprimentos em cada escritório? Que tal ordenar os resultados para ver qual escritório possui os suprimentos mais caros?