

declare
    v_id segmercado.id%TYPE := 2;
    v_descricao segmercado.descricao%TYPE := 'Atacadistas';
    
begin
    update segmercado set descricao = upper(v_descricao) where id = v_id;
    v_id := 1;
    v_descricao := 'Varejistas';
    update segmercado set descricao = upper(v_descricao) where id = v_id;
    commit;
end;

select * from segmercado;