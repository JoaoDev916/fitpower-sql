-- update_delete.sql (FitPower)

-- UPDATES
-- 1. Atualizar telefone de instrutor
UPDATE Instrutor
SET telefone = '(11) 90000-1111'
WHERE id_instrutor = 1;

-- 2. Aluno trocou de plano
UPDATE Aluno
SET id_plano = 3
WHERE id_aluno = 1;

-- 3. Atualizar descrição de um treino
UPDATE Treino
SET descricao = 'Treino de superiores intermediário'
WHERE id_treino = 1;

-- DELETES
-- 1. Remover um treino específico
DELETE FROM Treino
WHERE id_treino = 3;

-- 2. Deletar instrutor que não tem treinos (seguro)
DELETE FROM Instrutor
WHERE id_instrutor NOT IN (SELECT id_instrutor FROM Treino);

-- 3. Deletar aluno sem treinos (seguro)
DELETE FROM Aluno
WHERE id_aluno NOT IN (SELECT id_aluno FROM Treino);
