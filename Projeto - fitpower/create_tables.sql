-- create_tables.sql (FitPower)
CREATE TABLE Plano (
    id_plano SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    duracao_meses INT NOT NULL
);

CREATE TABLE Instrutor (
    id_instrutor SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE Aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE,
    id_plano INT NOT NULL,
    FOREIGN KEY (id_plano) REFERENCES Plano(id_plano)
);

CREATE TABLE Treino (
    id_treino SERIAL PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_instrutor INT NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    data_treino DATE NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_instrutor) REFERENCES Instrutor(id_instrutor)
);
