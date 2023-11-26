-- Primeira consulta

SELECT 
    * 
FROM `projetosql-401620.vendas.clientes` 
LIMIT 10;


-- Selecionando dados distintos

SELECT DISTINCT
    first_name  
FROM `projetosql-401620.vendas.clientes`;


-- Selecionando colunas específicas

SELECT
  first_name,
  last_name
FROM `projetosql-401620.vendas.clientes`;


-- Alterando nomes de coluna 

SELECT
  first_name AS primeiro_nome,
  last_name  AS ultimo_nome,
  country    AS pais
FROM `projetosql-401620.vendas.clientes`;


-- Renomeando tabelas na consulta

SELECT
  cadastro.name         AS nome,
  cadastro.price        AS preco,
  cadastro.category_id  AS categoria
FROM `projetosql-401620.vendas.produtos` AS cadastro;