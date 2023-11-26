-- Relacionamento de tabelas: Primeiro JOIN

SELECT
    v.SKU,
    v.Quantidade_Vendida,
    p.Produto
FROM `projetosql-401620.produtos.vendas`      AS v
JOIN `projetosql-401620.produtos.cad_produto` AS p
ON v.SKU = p.SKU;


-- Relacionamento de tabelas: Fixando

SELECT
    vendas.SKU,
    vendas.ID_Vendedor,
    vendedor.vendedor
FROM `projetosql-401620.produtos.vendas`   AS vendas
JOIN `projetosql-401620.produtos.vendedor` AS vendedor
ON vendas.ID_Vendedor = vendedor.ID_Vendedor;


-- Relacionamento de várias tabelas

SELECT
    vendas.SKU,
    vendas.ID_Vendedor,
    vendedor.vendedor,
    produto.produto
FROM `projetosql-401620.produtos.vendas`      AS vendas
JOIN `projetosql-401620.produtos.vendedor`    AS vendedor
ON vendas.ID_Vendedor = vendedor.ID_Vendedor
JOIN `projetosql-401620.produtos.cad_produto` AS produto
ON vendas.SKU = produto.SKU;