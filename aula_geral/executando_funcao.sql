--executando a fun��o pelo oracle sql developer
VARIABLE g_descricao VARCHAR2(100)

EXECUTE :g_descricao := obter_descricao_segmercado(1)

PRINT g_descricao

-- executando a fun��o pelo PL\SQL Developer
set SERVEROUTPUT on
declare
    v_descricao segmercado.descricao%type;
begin
    v_descricao := obter_descricao_segmercado(2);
    DBMS_OUTPUT.PUT_LINE('A Descri��o do Segmento do Segmercado � ' || v_descricao);
end;

