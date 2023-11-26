-- Funções de Restrições 

SELECT 
    first_name,
    last_name
FROM `projetosql-401620.vendas.clientes`
WHERE first_name = 'Mariana';

SELECT 
    first_name,
    last_name
FROM `projetosql-401620.vendas.clientes`
WHERE first_name IN ('Mariana', 'Carol');

SELECT 
    first_name,
    last_name
FROM `projetosql-401620.vendas.clientes`
WHERE first_name NOT IN (
    'Mariana', 
    'Carol',
    'Ana');


-- Excluindo linhas em Branco

SELECT *
FROM `projetosql-401620.vendas.clientes`
WHERE email IS NOT NULL 
AND street  IS NOT NULL;


-- Funções Matemáticas: maior e menor

SELECT *
FROM `projetosql-401620.vendas.itens`
WHERE quantity <= 4
AND total_price > 200;


-- Função between

SELECT *
FROM `projetosql-401620.vendas.itens`
WHERE quantity <= 4
AND total_price BETWEEN 200 AND 400;


-- Criando nova coluna condicional

SELECT 
    categoria.id,
    categoria.name,
    CASE 
        WHEN categoria.name = 'Moda e Acessórios'  THEN 'Roupas'
        WHEN categoria.name = 'Brinquedos e Games' THEN 'Crianças' 
        ELSE 'Outros'
    END AS  categoria_geral
FROM `projetosql-401620.vendas.categoria` AS categoria;


-- Criando nova coluna condicional com vários critérios

SELECT 
    categoria.id,
    categoria.name,
    CASE 
        WHEN categoria.name IN ('Celulares', 'Informática')  
        THEN 'Tecnologia' 
        ELSE 'Outros'
    END AS categoria_geral
FROM `projetosql-401620.vendas.categoria` AS categoria;

SELECT DISTINCT
    cliente.state,
    CASE 
        WHEN cliente.state IN ('Paraná', 'Santa Catarina', 'Rio Grande do Sul')  
        THEN 'Sul' 
        ELSE 'Outros'
    END AS regiao
FROM `projetosql-401620.vendas.clientes` AS cliente
WHERE cliente.state IS NOT NULL;


-- Criando coluna condicional com números

SELECT 
    categoria.id,
    categoria.name,
    CASE 
        WHEN categoria.id = 0 THEN 'A' 
        ELSE 'Outros'
    END AS padrao
FROM `projetosql-401620.vendas.categoria` AS categoria;

SELECT 
    categoria.id,
    categoria.name,
    CASE 
        WHEN id > 5 THEN 'A' 
        WHEN id BETWEEN 0 AND 3 THEN 'C'
        ELSE 'B'
    END AS padrao
FROM `projetosql-401620.vendas.categoria` AS categoria;


-- Exemplo prático da função *Case*

SELECT *
    CASE 
        WHEN quantity BETWEEN 0 AND 3 
        THEN 'Premium'
        ELSE 'Gold'
    END AS tipo_cliente
FROM `projetosql-401620.vendas.itens`;