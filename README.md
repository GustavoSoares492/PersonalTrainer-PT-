<div align="center">

<h1 style="color:#20B2AA;" > Sistema de Banco de dados - Personal Trainer</h1>
<h3> Projeto Academico - Faculdade Cruzeiro do Sul </h3>

##📝 Descrição do Projeto

Este projeto consiste no Modelo Lógico e Físico de um banco de dados relacional projetado para gerenciar clientes, avaliações físicas, programas de treino e o catálogo de exercícios de um Personal Trainer. O objetivo é criar uma base de dados normalizada e eficiente para rastrear o histórico e o progresso dos clientes.

### 🎯 Objetivos do Modelo

* **Gerenciar** o cadastro de clientes e o seu status (`Ativo`, `Inadimplente`).
* **Armazenar** o histórico completo de avaliações físicas (`Peso`, `PercentualGordura`).
* **Estruturar** programas de treino de forma detalhada, ligando treinos a exercícios específicos através de parâmetros (Séries e Repetições).

  ## 📝 Descrição do Projeto

Este projeto consiste no Modelo Lógico e Físico de um banco de dados relacional projetado para gerenciar clientes, avaliações físicas, programas de treino e o catálogo de exercícios de um Personal Trainer. O objetivo é criar uma base de dados normalizada e eficiente para rastrear o histórico e o progresso dos clientes.

### 🎯 Objetivos do Modelo

* **Gerenciar** o cadastro de clientes e o seu status (`Ativo`, `Inadimplente`).
* **Armazenar** o histórico completo de avaliações físicas (`Peso`, `PercentualGordura`).
* **Estruturar** programas de treino de forma detalhada, ligando treinos a exercícios específicos através de parâmetros (Séries e Repetições).

---

## 🔗 Modelo de Dados e Normalização

O banco de dados é composto por **cinco entidades** interligadas por relacionamentos **Um para Muitos (1:N)** e está em total conformidade com a **Terceira Forma Normal (3FN)**.

| Entidade | Função | Chaves |
| :--- | :--- | :--- |
| **CLIENTE** | Dados cadastrais e Status. | PK: `ID_Cliente` |
| **AVALIACAO** | Dados biométricos e objetivos. | PK: `ID_Avaliacao`, FK: `FK_ID_Cliente` |
| **TREINO** | Cabeçalho do programa de treino (Nome, Data). | PK: `ID_Treino`, FK: `FK_ID_Cliente` |
| **EXERCICIO** | Catálogo mestre de exercícios. | PK: `ID_Exercicio` |
| **ITEM\_TREINO** | Detalhes da ficha do treino. | PK: `ID_ItemTreino`, FKs: `FK_ID_Treino`, `FK_ID_Exercicio` |

---

## 🛠️ Instruções de Execução (SQLite Studio)

Siga os comandos SQL abaixo na ordem para criar as tabelas e popular o banco de dados.

### 1. Criação das Tabelas (DDL)

```sql
-- 1. Create table cliente(
    id_cliente  INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT,
    cpf TEXT(14),
    status TEXT
);

Create table avaliação(
    id_avaliação INTEGER PRIMARY KEY AUTOINCREMENT,
    data TEXT NOT NULL,
    peso_decimal REAL,
    percentual_de_gordura REAL,
    id_cliente INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);

Create table treino(
    id_treino INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_treino TEXT NOT NULL,
    Data_inicio DATE NOT NULL,
    id_cliente INTEGER,
     FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);

Create table Exercicios(
    id_exercicios INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT,
    tipo TEXT,
    equipamento TEXT
);

Create table item_treino(
    id_itemTreino INTEGER PRIMARY KEY AUTOINCREMENT,
    series INTEGER SMALLINT,
    repetições INTEGER SMALLINT,
    id_treino INTEGER,
    id_exercicios INTEGER,
    FOREIGN KEY (id_treino) REFERENCES treino (id_treino),
    FOREIGN KEY (id_exercicios) REFERENCES exercicios (id_exercicios)
);
