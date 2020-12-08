
declare
    v_segmercado_id cliente.segmercado_id%type := 1;
begin
    for v_id IN 1..6 loop
        atualizar_cli_seg_mercado(v_id,v_segmercado_id);
    end loop;
end;

select * from cliente;