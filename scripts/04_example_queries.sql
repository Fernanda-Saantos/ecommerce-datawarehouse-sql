SELECT 
    c.nome_categoria,
    SUM(f.valor_total) AS total_vendido
FROM fato_vendas f
JOIN dim_produto p ON f.id_produto = p.id_produto
JOIN dim_categoria c ON p.id_categoria = c.id_categoria
GROUP BY c.nome_categoria
ORDER BY total_vendido DESC;
