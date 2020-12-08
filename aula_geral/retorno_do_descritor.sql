SET SERVEROUTPUT on

DECLARE
    v_id segmercado.id%type := 2;
    v_descricao segmercado.descricao%type;
BEGIN
    SELECT descricao into v_descricao FROM segmercado where id = v_id;
    DBMS_OUTPUT.put_line(v_descricao);
end;