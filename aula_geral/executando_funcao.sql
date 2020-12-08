--executando a função pelo oracle sql developer
VARIABLE g_descricao VARCHAR2(100)

EXECUTE :g_descricao := obter_descricao_segmercado(1)

PRINT g_descricao

-- executando a função pelo PL\SQL Developer
set SERVEROUTPUT on
declare
    v_descricao segmercado.descricao%type;
begin
    v_descricao := obter_descricao_segmercado(2);
    DBMS_OUTPUT.PUT_LINE('A Descrição do Segmento do Segmercado é ' || v_descricao);
end;

