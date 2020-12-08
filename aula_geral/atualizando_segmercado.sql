
EXECUTE incluir_cliente(1,'MERCEARIA XYZ','89231',1,10000);
EXECUTE incluir_cliente(3,'FARMACIA QWE','90000',1,80000);
EXECUTE incluir_cliente(4,'MERCADINHO JKL','89236',1,70000);
EXECUTE incluir_cliente(5,'TAVERNA SDF','45600',1,60000);
EXECUTE incluir_cliente(6,'BAR 222','76000',1,20000);

select * from cliente;

create or replace procedure atualizar_cli_seg_mercado
(p_id cliente.id%type, p_segmercado_id cliente.segmercado_id%type)
is
begin
    UPDATE cliente set segmercado_id = p_segmercado_id where id = p_id;
    commit;
end;

execute atualizar_cli_seg_mercado(3,2);