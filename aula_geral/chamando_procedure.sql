
create or replace NONEDITIONABLE PROCEDURE incluir_cliente
(p_id in cliente.id%TYPE, p_razao_social in cliente.razao_social%type,
p_cnpj in cliente.cnpj%TYPE, p_segmercado_id in cliente.segmercado_id%TYPE,
p_faturamento_previsto in cliente.faturamento_previsto%type)
is
    v_categoria cliente.categoria%TYPE;
    v_cnpj cliente.cnpj%TYPE := p_cnpj;
begin
    formata_cnpj(v_cnpj);
    v_categoria := categoria_cliente(p_faturamento_previsto);

    insert into cliente (id,razao_social,cnpj,segmercado_id,data_inclusao,faturamento_previsto,categoria)
    values (p_id,upper(p_razao_social),v_cnpj,p_segmercado_id,sysdate,p_faturamento_previsto,v_categoria);
    commit;
end;

EXECUTE incluir_cliente (9,'Supermercado IJK','67890',1, 90000);

SELECT * FROM cliente;
delete from cliente;