
declare
    v_id segmercado.id%TYPE := 2;
    v_descricao segmercado.descricao%TYPE := 'Atacado';
    
begin
    insert into segmercado (id,descricao)VALUES(v_id, v_descricao);
    commit;
end;

select * from segmercado;