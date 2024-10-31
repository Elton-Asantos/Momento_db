 1 INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (600,'Elton','Santos','elton.santos@momento.org','@4@8@15@16','515.123.4567','2003-08-23',4,24000.00,NULL,9);

 2 SELECT COUNT(*) FROM funcionarios;

 3 SELECT COUNT(*) FROM funcionarios WHERE departamento_id = "6";

 4 SELECT SUM(salario) FROM funcionarios WHERE departamento_id = "8";

 5 SELECT SUM(salario) FROM funcionarios WHERE departamento_id = "8";

 6 SELECT * FROM vendas ORDER BY quantidade desc;
 
 7 SELECT max(custo) FROM suprimentos ORDER BY custo desc;

 8 INSERT INTO departamentos(departamento_nome,escritorio_id) VALUES ('Inovações',1900);
 
 9 INSERT INTO funcionarios(primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES ('Yago','Wayne','Yago.wayne@momento.org','@4@8@15@16','515.123.4567','1987-06-17',4,24000.00,NULL,14);
 
 INSERT INTO funcionarios(primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES ('Wesley','Kochhar','Wesley.kochhar@momento.org','@48@15@16','515.123.4568','1989-09-21',5,17000.00,100,14);

 INSERT INTO funcionarios(primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES ('Leonardo',"T'Challa",'Leonardo.tchalla@momento.org','@4@8@5@16','515.123.4569','1993-01-13',5,17000.00,100,14);

 INSERT INTO funcionarios(primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES ('Vinicius','Hunold','Vinicius.hunold@momento.org','@48@15@16','590.423.4567','1990-01-03',9,9000.00,102,14);

 INSERT INTO funcionarios(primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES ('Gabriel','Ernst','Gabriel.ernst@momento.org','@4@8@15@17','590.423.4568','1991-05-21',9,6000.00,103,14); 