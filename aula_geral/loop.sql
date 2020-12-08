select * from cliente;

DECLARE
    v_segmercado_id cliente.segmercado_id%type := 3;
    v_I number(5) := 1;
begin
    LOOP
       atualizar_cli_seg_mercado(v_I, v_segmercado_id);
       v_I := v_I + 1;
    exit WHEN v_I > 6;
    end loop;
end;