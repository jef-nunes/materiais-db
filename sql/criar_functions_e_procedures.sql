-- Procedure para listar movimentações de estoque
-- em um determinado intervalo de tempo
DELIMITER $$

CREATE PROCEDURE listar_movimentacoes_por_data_hora(
    IN data_inicio DATETIME,
    IN data_fim DATETIME
)
BEGIN
    SELECT 
        movimentacao_id, 
        tipo_fluxo, 
        quantidade, 
        valor_total, 
        motivo, 
        produto_id, 
        data_hora
    FROM movimentacao
    WHERE data_hora BETWEEN data_inicio AND data_fim
    ORDER BY data_hora;
END $$

DELIMITER ;

-- View para mostrar o nome do produto
-- com o nome da sua categoria e o nome
-- do  seu fornecedor
CREATE VIEW produtos_com_categorias_fornecedores AS
SELECT 
    p.produto_id,
    p.nome AS nome_produto,
    c.nome AS nome_categoria,
    f.nome AS nome_fornecedor
FROM 
    produto p
JOIN 
    categoria c ON p.categoria_id = c.categoria_id
JOIN 
    fornecedor f ON p.fornecedor_id = f.fornecedor_id;

-- Function que retorna todos produtos disponíveis em uma categoria
DELIMITER $$

CREATE FUNCTION produtos_disponiveis_na_categoria(categoria_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE qtd_produtos INT;
    SELECT COUNT(*)
    INTO qtd_produtos
    FROM produto
    WHERE categoria_id = categoria_id
    AND quantidade_disponivel > 0;
    RETURN qtd_produtos;
END $$

DELIMITER ;


-- Trigger para calcular o valor total de uma movimentação
-- O valor total é calculado antes da inserção na tabela 'movimentacao'
-- com base no valor unitário do produto e na quantidade informada.
DELIMITER $$

CREATE TRIGGER calcular_valor_total
BEFORE INSERT ON movimentacao
FOR EACH ROW
BEGIN
    DECLARE valor_unitario DECIMAL(10, 2);
    SELECT valor_unidade INTO valor_unitario
    FROM produto
    WHERE produto_id = NEW.produto_id;
    SET NEW.valor_total = valor_unitario * NEW.quantidade;
END $$

DELIMITER ;


-- Trigger para atualizar a quantidade disponível do produto
-- Dependendo do tipo de fluxo ("Entrada" ou "Saída") ele atualiza
-- a quantidade disponível no estoque do produto, adicionando ou
-- subtraindo a quantidade conforme necessário.
DELIMITER $$

CREATE TRIGGER atualizar_quantidade_disponivel
AFTER INSERT ON movimentacao
FOR EACH ROW
BEGIN
    IF NEW.tipo_fluxo = 'Entrada' THEN
        UPDATE produto
        SET quantidade_disponivel = quantidade_disponivel + NEW.quantidade
        WHERE produto_id = NEW.produto_id;
    ELSEIF NEW.tipo_fluxo = 'Saída' THEN
        UPDATE produto
        SET quantidade_disponivel = quantidade_disponivel - NEW.quantidade
        WHERE produto_id = NEW.produto_id;
    END IF;
END $$
