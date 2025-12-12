-- ============================================================
-- ERP - SISTEMA DE GESTÃO PARA TRATAMENTO/VENDA DE ANIMAIS



-- =============================================
-- 1 - Entidade: TABELA PESSOA
CREATE TABLE pessoa (
    id SERIAL PRIMARY KEY,
    tipo VARCHAR(20) NOT NULL CHECK (tipo IN ('FISICA', 'JURIDICA')),
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(120)
);

-- =============================================
-- 2- Entidade: PESSOA FÍSICA
CREATE TABLE pessoa_fisica (
    id INTEGER PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE,
    FOREIGN KEY (id) REFERENCES pessoa(id) ON DELETE CASCADE
);

-- =============================================
-- 3- Entidade: PESSOA JURÍDICA
CREATE TABLE pessoa_juridica (
    id INTEGER PRIMARY KEY,
    cnpj VARCHAR(18) UNIQUE NOT NULL,
    razao_social VARCHAR(150),
    nome_fantasia VARCHAR(150),
    inscricao_municipal VARCHAR(50),
    data_fundacao DATE,
    FOREIGN KEY (id) REFERENCES pessoa(id) ON DELETE CASCADE
);

-- =============================================
-- 4 - Entidade: FUNCIONARIO
CREATE TABLE funcionario (
    id SERIAL PRIMARY KEY,
    pessoa_id INTEGER NOT NULL UNIQUE,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    rg VARCHAR(20),
    ctps VARCHAR(30),
    data_nascimento DATE,
    status VARCHAR(20) CHECK (status IN ('ATIVO', 'INATIVO')),
    dependentes INTEGER DEFAULT 0,

    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id) ON DELETE CASCADE
);

-- =============================================
-- 5 - Entidade: TELEFONE
CREATE TABLE telefone (
    id SERIAL PRIMARY KEY,
    pessoa_id INTEGER NOT NULL,
    tipo VARCHAR(20) CHECK (tipo IN ('FIXO','WHATSAPP','CELULAR')),
    numero VARCHAR(20) NOT NULL,

    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id) ON DELETE CASCADE
);

-- =============================================
-- 6 - Entidade: ENDERECO
CREATE TABLE endereco (
    id SERIAL PRIMARY KEY,
    pessoa_id INTEGER NOT NULL,
    cep VARCHAR(10),
    logradouro VARCHAR(150),
    bairro VARCHAR(80),
    numero VARCHAR(10),
    estado VARCHAR(25),
    complemento VARCHAR(100),
    referencia VARCHAR(120),

    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id) ON DELETE CASCADE
);

-- =============================================
-- 7 - Entidade: GALPAO
CREATE TABLE galpao (
    id SERIAL PRIMARY KEY,
    capacidade_maxima INTEGER,
    tipo_instalacao VARCHAR(50) CHECK (tipo_instalacao IN ('caipira','semi-intensiva','gaiola','cama','estoque')),
    condicoes_estruturais TEXT,
    cep VARCHAR(10),
    logradouro VARCHAR(150),
    bairro VARCHAR(80),
    numero VARCHAR(10),
    uf VARCHAR(2),
    complemento VARCHAR(100),
    referencia VARCHAR(120)
);

-- =============================================
-- 8 - Entidade: ANIMAL
CREATE TABLE animal (
    id SERIAL PRIMARY KEY,
    codigo_lote VARCHAR(50) NOT NULL,
    quantidade INTEGER NOT NULL,
    data_entrada DATE NOT NULL,
    finalidade VARCHAR(50),
    idade_inicial INTEGER,
    raca VARCHAR(50),
    tipo_animal VARCHAR(50),
    tipo_tratamento VARCHAR(50),

    cliente_fornecedor_id INTEGER,
    galpao_id INTEGER,

    FOREIGN KEY (cliente_fornecedor_id) REFERENCES pessoa(id) ON DELETE SET NULL,
    FOREIGN KEY (galpao_id) REFERENCES galpao(id) ON DELETE SET NULL
);

-- =============================================
-- 9 - Entidade: ESTOQUE_PRODUTO
CREATE TABLE estoque_produto (
    id SERIAL PRIMARY KEY,
    racoes_por_animal DECIMAL(10,2),
    medicamento_por_animal DECIMAL(10,2),
    quantidade INTEGER,
    tipo_produto VARCHAR(50) CHECK (tipo_produto IN (
        'limpeza','desinfeccao','alimentacao','vacinacao','materia-prima'
    )),

    galpao_id INTEGER,
    fornecedor_id INTEGER,

    FOREIGN KEY (galpao_id) REFERENCES galpao(id) ON DELETE SET NULL,
    FOREIGN KEY (fornecedor_id) REFERENCES pessoa(id) ON DELETE SET NULL
);

-- =============================================
-- 10 - Entidade: ANIMAL_ESTOQUE_PRODUTO
CREATE TABLE animal_estoque_produto (
    id SERIAL PRIMARY KEY,
    animal_id INTEGER NOT NULL,
    estoque_produto_id INTEGER NOT NULL,
    quantidade_usada DECIMAL(10,2),
    data_uso DATE DEFAULT CURRENT_DATE,

    FOREIGN KEY (animal_id) REFERENCES animal(id) ON DELETE CASCADE,
    FOREIGN KEY (estoque_produto_id) REFERENCES estoque_produto(id) ON DELETE CASCADE
);

-- =============================================
-- 11 - Ententidade: CONTROLE FINANCEIRO
CREATE TABLE controle_financeiro (
    id SERIAL PRIMARY KEY,
    tipo_lancamento VARCHAR(10) CHECK (tipo_lancamento IN ('COMPRA','VENDA')),
    valor DECIMAL(12,2),
    data_lancamento DATE,
    categoria VARCHAR(50) CHECK (categoria IN (
        'VENDA_DE_ANIMAIS',
        'VENDA_DE_MATERIA_PRIMA',
        'VENDA_DE_IMOVEIS',
        'CUSTO_MAO_DE_OBRA',
        'FOLHA_SALARIAL',
        'MANUTENCAO',
        'PRODUTOS_ESTOQUE'
    )),
    quantidade INTEGER,
    tipo_conta VARCHAR(50),
    forma_pagamento VARCHAR(50),
    parcelamento INTEGER,

    animal_id INTEGER,
    pessoa_id INTEGER,
    estoque_produto_id INTEGER,

    FOREIGN KEY (animal_id) REFERENCES animal(id) ON DELETE SET NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id) ON DELETE SET NULL,
    FOREIGN KEY (estoque_produto_id) REFERENCES estoque_produto(id) ON DELETE SET NULL
);