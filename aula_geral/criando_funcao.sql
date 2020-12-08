create or replace FUNCTION obter_descricao_segmercado
(p_id in segmercado.id%type)
RETURN segmercado.descricao%type
is
    v_descricao segmercado.descricao%type;
begin
    SELECT descricao into v_descricao FROM segmercado where id = p_id;
    RETURN v_descricao;
end;