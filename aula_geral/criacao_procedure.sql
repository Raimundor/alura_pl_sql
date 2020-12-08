CREATE PROCEDURE incluir_segmercado 
(p_id in number, p_descricao in VARCHAR2)
is
BEGIN
    insert into segmercado (id,descricao)VALUES(p_id, upper(p_descricao));
    commit;
end;


EXECUTE incluir_segmercado (3, 'Farmaceuticos');


begin
    incluir_segmercado(4, 'Industrial');
    
end;

select * from segmercado;