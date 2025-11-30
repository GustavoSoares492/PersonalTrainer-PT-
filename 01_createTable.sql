Create table cliente(
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