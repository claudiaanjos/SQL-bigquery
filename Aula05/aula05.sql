-- Agrupando dados da consulta com *Group by*

SELECT
    SKU
FROM `projetosql-401620.produtos.vendas`
GROUP BY SKU;

SELECT
    Produto,
    count(Quantidade_Vendida)
FROM `projetosql-401620.produtos.vendas`
GROUP BY Produto;


-- Ordenando dados da consulta com *Order by*

SELECT *
FROM `projetosql-401620.produtos.vendas`
ORDER BY Quantidade_Vendida DESC;


-- Extração de Data: *Format_timestamp*

SELECT
    format_timestamp('%Y', Data_devolucao) AS ano, 
    count(Quantidade_Devolvida)            AS devolucao 
FROM `projetosql-401620.produtos.devolucao`
GROUP BY ano
ORDER BY ano;

/* %Y = ano
   %m = mês
   %d = dia */

SELECT
    count(
        CASE
            WHEN Filial = 'Salvador' THEN Quantidade_Devolvida
        END AS dev_salvador),
    format_timestamp('%Y', Data_devolucao) AS ano, 
FROM `projetosql-401620.produtos.devolucao`
GROUP BY ano
ORDER BY ano;


-- Função *count*

SELECT
    Filial,
    Motivo
    count(Quantidade_Devolvida) AS devolucao 
FROM `projetosql-401620.produtos.devolucao`
GROUP BY Filial, Motivo;


-- Função *max*

SELECT
    Vendedor,
    max(Quantidade_Vendida)
FROM `projetosql-401620.produtos.vendas`
GROUP BY Vendedor;


-- Função *min*

SELECT
    min(Quantidade_Vendida)
FROM `projetosql-401620.produtos.vendas`;


-- Função *sum*

SELECT
    sum(total_de_vendas)
FROM `projetosql-401620.produtos.vendas`;

-- Função *avg*

SELECT
    avg(total_de_vendas)
FROM `projetosql-401620.produtos.vendas`;