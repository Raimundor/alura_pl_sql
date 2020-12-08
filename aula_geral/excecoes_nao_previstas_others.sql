
EXECUTE incluir_cliente(13,'MERCADO RRR','45677',10,90000);

create or replace NONEDITIONABLE PROCEDURE incluir_cliente
(p_id in cliente.id%TYPE, p_razao_social in cliente.razao_social%type,
p_cnpj in cliente.cnpj%TYPE, p_segmercado_id in cliente.segmercado_id%TYPE,
p_faturamento_previsto in cliente.faturamento_previsto%type)
is
    v_categoria cliente.categoria%TYPE;
    v_cnpj cliente.cnpj%TYPE := p_cnpj;
    e_null EXCEPTION;
    PRAGMA EXCEPTION_INIT (e_null, -1400); --o numero do erro é um inteiro, não precisa escrever ORA-01400
begin
    formata_cnpj(v_cnpj);
    v_categoria := categoria_cliente(p_faturamento_previsto);

    insert into cliente (id,razao_social,cnpj,segmercado_id,data_inclusao,faturamento_previsto,categoria)
    values (p_id,upper(p_razao_social),v_cnpj,p_segmercado_id,sysdate,p_faturamento_previsto,v_categoria);
    commit;
EXCEPTION
    when dup_val_on_index then -- essa exceção foi pega no dicionário do oracle, no caso dup_val_on_index é para duplicação de chave primária.
        RAISE_APPLICATION_ERROR(-20010, 'CLIENTE JÁ CADASTRADO!!!');
    when e_null THEN
        RAISE_APPLICATION_ERROR(-20015, 'A coluna ID não pode receber valores nulos ou vazios');
    when OTHERS then
         RAISE_APPLICATION_ERROR(-20020, 'Erro genérico: ' || sqlerrm()); --sqlerrm() função do próprio oracle pra trazer a menssagem de erro
end;

select * from cliente;