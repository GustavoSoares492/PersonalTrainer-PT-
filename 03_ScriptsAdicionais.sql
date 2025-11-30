--------Scripts consultas--------
select 
    av.id_avaliação,
    av.data,
    c.nome AS cliente,
    c.status
FROM avaliação av
JOIN cliente c ON c.id_cliente = av.id_cliente;

select
    T.id_treino,
    T.nome_treino,
    T.Data_inicio,
    c.nome AS cliente
FROM treino T
JOIN cliente c ON c.id_cliente = T.id_cliente;

select * FROM cliente
where Status = 'Ativo'
order by nome ASC;

select * FROM cliente
where Status = 'Aguardando Início'
order by nome ASC;

UPDATE cliente
set status = 'Ativo'
where id_cliente = 2;

UPDATE CLIENTE
SET Email = 'joao@gmail.com'
WHERE Email = 'joao@email.com';

UPDATE avaliação
SET peso_decimal = peso_decimal + 0.5
WHERE peso_decimal = 72.9;  

DELETE FROM CLIENTE
WHERE Status = 'Inadimplente';

DELETE FROM avaliação
WHERE id_cliente = 2;

DELETE FROM avaliação
WHERE peso_decimal = 83.2;

















