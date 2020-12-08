CREATE OR REPLACE PROCEDURE incluir_segmercado 
(p_id in segmercado.id%type, p_descricao in segmercado.descricao%TYPE)
is
BEGIN
    insert into segmercado (id,descricao)VALUES(p_id, upper(p_descricao));
    commit;
end;