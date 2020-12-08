
declare
    v_id segmercado.id%type := 3;
BEGIN
    DELETE from segmercado where id = v_id;
    commit;

END;

select * from segmercado;