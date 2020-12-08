create or replace PROCEDURE incluir_cliente
(p_id in cliente.id%TYPE, p_razao_social in cliente.razao_social%type,
p_cnpj in cliente.cnpj%TYPE, p_segmercado_id in cliente.segmercado_id%TYPE,
p_faturamento_previsto in cliente.faturamento_previsto%type)
is
    v_categoria cliente.categoria%TYPE;
begin
    v_categoria := categoria_cliente(p_faturamento_previsto);
    
    insert into cliente (id,razao_social,cnpj,segmercado_id,data_inclusao,faturamento_previsto,categoria)
    values (p_id,upper(p_razao_social),p_cnpj,p_segmercado_id,sysdate,p_faturamento_previsto,v_categoria);
    commit;
end;

