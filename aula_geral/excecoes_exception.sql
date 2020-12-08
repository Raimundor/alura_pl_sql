SET SERVEROUT on
select * from cliente;

EXECUTE incluir_cliente(11,'MERCADO SSS','40000',1,120000);

EXECUTE incluir_cliente(10,'MERCADO AAA','45677',1,90000);


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
EXCEPTION
    when dup_val_on_index then
        DBMS_OUTPUT.PUT_LINE('CLIENTE J� CADASTRADO');
end;