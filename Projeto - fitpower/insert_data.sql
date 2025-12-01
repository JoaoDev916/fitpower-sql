-- insert_data.sql (FitPower)
INSERT INTO Plano (nome, valor, duracao_meses) VALUES
('Mensal', 99.90, 1),
('Trimestral', 249.90, 3),
('Anual', 799.90, 12);

INSERT INTO Instrutor (nome, especialidade, telefone) VALUES
('Carlos Silva', 'Musculação', '(11) 99999-1111'),
('Julia Santos', 'Funcional', '(11) 98888-2222'),
('Roberto Lima', 'Crossfit', '(11) 97777-3333');

INSERT INTO Aluno (nome, cpf, data_nascimento, id_plano) VALUES
('Ana Costa', '123.456.789-10', '1998-04-10', 1),
('Pedro Rocha', '987.654.321-00', '1995-12-21', 2),
('Luiza Martins', '111.222.333-44', '2000-06-05', 3);

INSERT INTO Treino (id_aluno, id_instrutor, descricao, data_treino) VALUES
(1, 1, 'Treino de membros superiores', '2024-01-12'),
(1, 2, 'Treino funcional iniciante', '2024-01-14'),
(2, 3, 'Treino de Crossfit intermediário', '2024-01-15');
