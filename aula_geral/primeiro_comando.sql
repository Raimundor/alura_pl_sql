

insert into segmercado (id,descricao)VALUES(1,'Varejo');

SELECT * FROM segmercado;

delete from segmercado;

declare
    v_id number(5) := 1;
    v_descricao VARCHAR2(100) := 'Varejo';
    
begin
    insert into segmercado (id,descricao)VALUES(v_id, v_descricao);
    commit;
end;