
select * from cliente;


EXECUTE atualizar_cli_seg_mercado('15','3');


create or replace NONEDITIONABLE procedure atualizar_cli_seg_mercado
(p_id cliente.id%type, p_segmercado_id cliente.segmercado_id%type)
is
    e_cliente_id_inexistente EXCEPTION;
begin
    UPDATE cliente set segmercado_id = p_segmercado_id where id = p_id;
    if sql%notfound then
        RAISE e_cliente_id_inexistente;
    end if;
    commit;
EXCEPTION
    when e_cliente_id_inexistente then
        RAISE_APPLICATION_ERROR(-20100, 'Cliente Inexistente !!!');
end;