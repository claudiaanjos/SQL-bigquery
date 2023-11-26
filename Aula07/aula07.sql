-- Função *starts_with*

SELECT
    ID_vendedor,
    Vendedor
FROM `projetosql-401620.produtos.vendedor`
WHERE starts_with(Vendedor, "Ana") IS TRUE;


--  Extração de texto

SELECT
    split(Vendedor, " ") [ordinal(1)] AS nome,
    split(Vendedor, " ") [ordinal(2)] AS sobrenome
FROM `projetosql-401620.produtos.vendedor`;


-- Maiúsculo e minúsculo

SELECT
    Filial,
    lower(Filial) AS minusculo,
    upper(Filial) AS maisculo
FROM `projetosql-401620.produtos.vendas`;

-- Extração de parte do texto

SELECT TRIM("Nome: Ana Silva", "Nome: ");