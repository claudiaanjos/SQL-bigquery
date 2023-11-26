-- Eliminando Número Negativo

SELECT 1, -1, -12,
abs(1), abs(-1), abs(-12);

-- Números Aleatórios

SELECT
    rand()     AS zero_um,
    10*rand()  AS zero_10
    100*rand() AS zero_100;

-- Raiz Quadrada

SELECT sqrt(8);

-- Potenciação 

SELECT pow(2, 2);

-- Arredondamento e média

SELECT round(1.45, 2);