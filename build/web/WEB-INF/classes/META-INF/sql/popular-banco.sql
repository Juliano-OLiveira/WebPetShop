insert into cliente( nome, rg, cpf, telefone, email, endereco) values ('Daenerys Targaryen', '3.654.987-8', '123.456.789-89', '(67) 99999-8888', 'targaryen@gmail.com', 'Ilha pedra do Dragão, Casa Targaryen');
insert into cliente( nome, rg, cpf, telefone, email, endereco) values ('Jon Snow', '3.654.987-8', '123.456.789-89', '(67) 99999-8888', 'joaodasneves@gmail.com', 'Castle Black');
insert into cliente( nome, rg, cpf, telefone, email, endereco) values ('Jaime Lannister', '3.654.987-8', '123.456.789-89', '(67) 99999-8888', 'regicida@gmail.com', 'Rochedo Casterly - Casa Lanister');
insert into cliente( nome, rg, cpf, telefone, email, endereco) values ('Juliano Oliveira', '3.654.987-8', '123.456.789-89', '(67) 99999-8888', 'targaryen@gmail.com', 'Ilha pedra do Dragão, Casa Targaryen');
insert into cliente( nome, rg, cpf, telefone, email, endereco) values ('Udnei Oliveira', '3.654.987-8', '123.456.789-89', '(67) 99999-8888', 'joaodasneves@gmail.com', 'Castle Black');
insert into cliente( nome, rg, cpf, telefone, email, endereco) values ('Derner Damiao', '3.654.987-8', '123.456.789-89', '(67) 99999-8888', 'regicida@gmail.com', 'Rochedo Casterly - Casa Lanister');

insert into raca (raca) values ('Poodle');
insert into raca (raca) values ('Pinscher');
insert into raca (raca) values ('Labrador');
insert into raca (raca) values ('Yorkshire');
insert into raca (raca) values ('Shih Tzu');
insert into raca (raca) values ('Maltês');
insert into raca (raca) values ('Pug');
insert into raca (raca) values ('Golden Retriever');
insert into raca (raca) values ('Bulldog Francês');
insert into raca (raca) values ('Lulu da Pomerânia');
insert into raca (raca) values ('Rottweiler');
insert into raca (raca) values ('Bulldog Inglês');
insert into raca (raca) values ('Lhasa Apso');

insert into servico (descricao, valor) values ('Banho', '30.00');
insert into servico (descricao, valor) values ('Tosa', '50.00');
insert into servico (descricao, valor) values ('Tosa Higienica', '80.00');
insert into servico (descricao, valor) values ('Taxi Dog', '30.00');
insert into servico (descricao, valor) values ('Passeio', '35.00');

insert into animal (idade, nome, observacao, peso, porte, sexo, url, proprietario_id, raca_id) values ('6', 'Toddy', 'Louco', '1', 'Grande', 'Macho','foto', '4', '3');
insert into animal (idade, nome, observacao, peso, porte, sexo, url, proprietario_id, raca_id) values ('5', 'Bruto', 'Pisicoty', '1', 'Médio', 'Macho','toto', '2', '1');
insert into animal (idade, nome, observacao, peso, porte, sexo, url, proprietario_id, raca_id) values ('2', 'Peao', 'Jeday', '1', 'Pequeno', 'Macho','foto', '1', '5');
insert into animal (idade, nome, observacao, peso, porte, sexo, url, proprietario_id, raca_id) values ('3', 'Garoto', 'Corremuito', '1', 'Médio', 'Macho','toto', '5', '4');