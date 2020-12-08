
select SUBSTR(cnpj,1,3) || '/' || SUBSTR(cnpj,4,2)  from cliente;

CREATE OR REPLACE PROCEDURE formata_cnpj
(p_CNPJ in out cliente.cnpj%type)
is
begin
    p_CNPJ :=  SUBSTR(p_CNPJ,1,3) || '/' || SUBSTR(p_CNPJ,4,2);
end;

VARIABLE g_CNPJ VARCHAR2(10)

VARIABLE g_CNPJ_SAIDA VARCHAR2(10)

EXECUTE :g_CNPJ := '12345'

EXECUTE formata_cnpj(:g_CNPJ);

PRINT g_CNPJ

