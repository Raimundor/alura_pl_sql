set SERVEROUTPUT on
declare
    p_faturamento_previsto cliente.faturamento_previsto%TYPE := 800000;
    v_categoria cliente.categoria%type;
begin
    if p_faturamento_previsto < 10000 then
        v_categoria := 'PEQUENO';
    ELSIF p_faturamento_previsto < 50000 then
        v_categoria := 'M�DIO';
    ELSIF p_faturamento_previsto < 100000 then
        v_categoria := 'M�DIO GRANDE';
    ELSE
        v_categoria := 'GRANDE';
    end if;
    DBMS_OUTPUT.PUT_LINE('A categoria � ' || v_categoria );
end;