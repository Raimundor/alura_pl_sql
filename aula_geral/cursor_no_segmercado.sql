set SERVEROUTPUT on

DECLARE
    CURSOR cur_cliente is select id from cliente;
    v_segmercado_id cliente.segmercado_id%type := 2;
    v_id cliente.id%type;
    
BEGIN
    OPEN cur_cliente;
    LOOP
        FETCH cur_cliente into v_id;
    EXIT WHEN cur_cliente%notfound;
        atualizar_cli_seg_mercado(p_segmercado_id=> v_segmercado_id, p_id=> v_id);
    END LOOP;
    CLOSE cur_cliente;
END;


select * from cliente;