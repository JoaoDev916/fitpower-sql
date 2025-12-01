-- select_queries.sql (FitPower)

-- 1) Todos os alunos com seus planos (JOIN)
SELECT a.nome AS aluno, p.nome AS plano, p.valor
FROM Aluno a
JOIN Plano p ON a.id_plano = p.id_plano;

-- 2) Instrutores ordenados por especialidade
SELECT nome, especialidade
FROM Instrutor
ORDER BY especialidade ASC;

-- 3) Treinos com nome do aluno e do instrutor
SELECT t.id_treino, a.nome AS aluno, i.nome AS instrutor, t.descricao, t.data_treino
FROM Treino t
JOIN Aluno a ON t.id_aluno = a.id_aluno
JOIN Instrutor i ON t.id_instrutor = i.id_instrutor
ORDER BY t.data_treino DESC;

-- 4) Alunos do plano Anual (exemplo WHERE + JOIN)
SELECT a.nome, a.cpf
FROM Aluno a
JOIN Plano p ON a.id_plano = p.id_plano
WHERE p.nome = 'Anual';

-- 5) Os 2 planos mais baratos (ORDER BY + LIMIT)
SELECT nome, valor
FROM Plano
ORDER BY valor ASC
LIMIT 2;
