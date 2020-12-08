
declare
    v_segmercado_id cliente.segmercado_id%type := 3;
begin
    for v_id IN 1..6 loop
        atualizar_cli_seg_mercado(p_segmercado_id=> v_segmercado_id, p_id=> v_id);
    end loop;
end;

select * from cliente;