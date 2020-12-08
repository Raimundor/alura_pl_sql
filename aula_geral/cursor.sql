set SERVEROUTPUT on

DECLARE
    CURSOR cur_cliente is select id, razao_social from cliente;
    v_id cliente.id%type;
    v_razao_social cliente.razao_social%type;
BEGIN
    OPEN cur_cliente;
    LOOP
        FETCH cur_cliente into v_id, v_razao_social;
    EXIT WHEN cur_cliente%notfound;
        DBMS_OUTPUT.PUT_LINE('ID = ' || v_id);
        DBMS_OUTPUT.PUT_LINE('Razão Social = ' || v_razao_social);
    END LOOP;
    CLOSE cur_cliente;
END;

