INSERT INTO cliente(nome,email,cpf,status)
VALUES
('João da Silva', 'joao@email.com', '12345678900231', 'Ativo'),
('Carla Pereira', 'carla.p@email.com', '98765432101123', 'Inadimplente'),
('Pedro Alves', 'pedro.alves@email.com', '50060070080123', 'Aguardando Início');

select * FROM cliente;

INSERT INTO avaliação(data,peso_decimal,percentual_de_gordura,id_cliente)
VALUES
('2025-11-05', 72.9,15.8,1),
('2025-10-01', 85.5,25.4 ,2),
('2025-11-25', 83.2, 23.9,3);

select * FROM avaliação;

INSERT INTO treino(nome_treino,data_inicio,id_cliente)
VALUES
('Cardio Master', '2025-10-02', 1),
('Força Total A', '2025-11-06', 2),
('Resistência Básica', '2025-12-01', 3);

select * FROM treino;

INSERT INTO exercicios(nome,tipo,equipamento)
VALUES
('Corrida na Esteira', 'Cardio', 'Esteira'),
('Supino Reto com Halteres', 'Força', 'Halteres'),
('Agachamento Livre', 'Força', 'Peso Corporal');

select * FROM exercicios;

INSERT INTO item_treino(series,repetições,id_treino,id_exercicios)
VALUES
(1, 30, 1, 1),
(4, 12, 2, 3),
(3, 10, 3, 2);

select * FROM item_treino;




