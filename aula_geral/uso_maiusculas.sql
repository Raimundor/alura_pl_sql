
declare
    v_id segmercado.id%TYPE := 3;
    v_descricao segmercado.descricao%TYPE := 'Esportistas';
    
begin
    insert into segmercado (id,descricao)VALUES(v_id, upper(v_descricao));
    commit;
end;

select * from segmercado;
delete from segmercado where id = 2;