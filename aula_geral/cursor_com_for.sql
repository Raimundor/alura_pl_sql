
select * from cliente;

DECLARE
    CURSOR cur_cliente is select id from cliente;
    v_segmercado_id cliente.segmercado_id%type := 2;
BEGIN
    FOR cli_rec in cur_cliente LOOP
        atualizar_cli_seg_mercado(p_segmercado_id=> v_segmercado_id, p_id=> cli_rec.id);
    END LOOP;
END;