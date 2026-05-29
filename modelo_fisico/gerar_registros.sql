USE LojaDeMateriais;

-- Registrar fornecedores
INSERT INTO fornecedor (nome, email, telefone, logradouro, bairro, cidade, estado)
VALUES 
('Construmax Materiais', 'construmax@exemplo.com.br', '1111-1111', 'Rua A, 45', 'Centro', 'São Paulo', 'SP'),
('Le Home Center', 'lehomecenter@exemplo.com.br', '2222-2222', 'Rua B', 'Jardins', 'São Paulo', 'SP'),
('RJ Construções', 'rjconstrucoes@exemplo.com.br', '3333-3333', 'Rua C', 'Centro', 'Rio de Janeiro', 'RJ'),
('Casa dos Materiais', 'casadosmateriais@exemplo.com.br', '4444-4444', 'Rua D', 'Floresta', 'Porto Alegre', 'RS'),
('Materiais São Jorge', 'materiaissaojorge@exemplo.com.br', '5555-5555', 'Rua E', 'Boa Vista', 'Recife', 'PE');

-- Registrar categorias
INSERT INTO categoria (nome, descricao)
VALUES 
('Materiais', 'Diversos tipos de materiais de construção, como cimento, areia, tijolos, etc.'),
('Tintas', 'Tintas e produtos relacionados, como esmaltes, vernizes, primers e acessórios para pintura.'),
('Ferramentas', 'Ferramentas manuais e elétricas para construção, reparos e manutenção.'),
('Elétrica', 'Produtos e materiais elétricos, como fios, tomadas, disjuntores, lâmpadas, entre outros.'),
('Hidráulica', 'Materiais para instalações hidráulicas, como tubos, conexões, registros e torneiras.');


-- Registrando produtos
-- Cada produto possui inicialmente uma 
-- quantidade disponível de 100 unidades

-- Registrar produtos da categoria "Materiais"
INSERT INTO produto (nome, descricao, valor_unidade, quantidade_disponivel, categoria_id, fornecedor_id)
VALUES 
('Cimento', 'Cimento de alta resistência para obras gerais.', 25.50, 100, 1, 1),
('Areia Grossa', 'Areia grossa para construção e alvenaria.', 50.00, 100, 1, 2),
('Tijolo Cerâmico', 'Tijolo cerâmico comum para construção de paredes.', 1.80, 100, 1, 3),
('Bloco de Concreto', 'Bloco de concreto para construção de alvenarias.', 8.50, 100, 1, 4),
('Cimento Queimado', 'Cimento queimado para acabamento e pisos.', 30.00, 100, 1, 5),
('Cal Hidratada', 'Cal hidratada para reboco e acabamento.', 15.00, 100, 1, 1),
('Gesso Acartonado', 'Placas de gesso para construção de paredes e tetos.', 12.00, 100, 1, 2),
('Argamassa Colante', 'Argamassa para assentamento de revestimentos.', 10.00, 100, 1, 3),
('Aditivo para Concreto', 'Aditivo para aumentar resistência do concreto.', 40.00, 100, 1, 4),
('Pedra Britada', 'Pedra britada para concreto e fundação.', 70.00, 100, 1, 5);

-- Registrar produtos da categoria "Tintas"
INSERT INTO produto (nome, descricao, valor_unidade, quantidade_disponivel, categoria_id, fornecedor_id)
VALUES 
('Tinta Acrílica Fosca', 'Tinta acrílica fosca para pintura de paredes internas.', 120.00, 100, 2, 1),
('Tinta Esmalte Sintético', 'Esmalte sintético para metais e madeira.', 55.00, 100, 2, 2),
('Tinta para Piso', 'Tinta especial para pintura de pisos internos e externos.', 90.00, 100, 2, 3),
('Verniz Transparente', 'Verniz para proteção de madeira e móveis.', 40.00, 100, 2, 4),
('Primer para Madeira', 'Primer para preparação de madeira antes da pintura.', 30.00, 100, 2, 5),
('Tinta PVA', 'Tinta PVA para interiores e acabamento suave.', 25.00, 100, 2, 1),
('Tinta Epóxi', 'Tinta epóxi para superfícies industriais e industriais.', 200.00, 100, 2, 2),
('Tintas Automotivas', 'Tintas específicas para reparos e pintura automotiva.', 180.00, 100, 2, 3),
('Tinta Texturizada', 'Tinta com efeito texturizado para acabamento de paredes.', 110.00, 100, 2, 4),
('Esmalte para Azulejo', 'Esmalte para renovar azulejos e revestimentos.', 95.00, 100, 2, 5);

-- Registrar produtos da categoria "Ferramentas"
INSERT INTO produto (nome, descricao, valor_unidade, quantidade_disponivel, categoria_id, fornecedor_id)
VALUES 
('Martelo de Construtor', 'Martelo de aço para construção e reparos.', 25.00, 100, 3, 1),
('Serra Elétrica', 'Serra elétrica para corte de madeira e outros materiais.', 350.00, 100, 3, 2),
('Chave de Fenda', 'Chave de fenda para apertar parafusos de diversos tamanhos.', 15.00, 100, 3, 3),
('Alicate de Pressão', 'Alicate de pressão para fixação e ajustes mecânicos.', 40.00, 100, 3, 4),
('Furadeira Elétrica', 'Furadeira elétrica para perfuração de superfícies duras.', 200.00, 100, 3, 5),
('Trena Digital', 'Trena digital para medições precisas.', 70.00, 100, 3, 1),
('Parafusadeira', 'Parafusadeira elétrica para montagem de móveis e estruturas.', 120.00, 100, 3, 2),
('Serrote', 'Serrote manual para corte de madeira e outros materiais.', 18.00, 100, 3, 3),
('Lixa Elétrica', 'Lixa elétrica para acabamento de superfícies.', 150.00, 100, 3, 4),
('Espátula de Aço', 'Espátula de aço para aplicação de massas e tintas.', 20.00, 100, 3, 5);

-- Registrar produtos da categoria "Elétrica"
INSERT INTO produto (nome, descricao, valor_unidade, quantidade_disponivel, categoria_id, fornecedor_id)
VALUES 
('Fio Elétrico', 'Fio elétrico para instalações elétricas residenciais e comerciais.', 5.00, 100, 4, 1),
('Tomada 10A', 'Tomada elétrica de 10A para uso residencial.', 10.00, 100, 4, 2),
('Disjuntor 15A', 'Disjuntor de 15A para proteção de circuitos elétricos.', 40.00, 100, 4, 3),
('Interruptor Simples', 'Interruptor simples para acionamento de luzes e dispositivos elétricos.', 12.00, 100, 4, 4),
('Lâmpada LED', 'Lâmpada LED de 15W para iluminação econômica.', 20.00, 100, 4, 5),
('Extensão Elétrica', 'Cabo de extensão elétrica de 5 metros para uso geral.', 35.00, 100, 4, 1),
('Tomada 20A', 'Tomada elétrica de 20A para equipamentos de maior potência.', 15.00, 100, 4, 2),
('Fios para Instalação', 'Fios elétricos para instalações e reparos elétricos.', 3.00, 100, 4, 3),
('Disjuntor 10A', 'Disjuntor de 10A para circuitos residenciais.', 25.00, 100, 4, 4),
('Luminária de Teto', 'Luminária de teto com suporte para lâmpadas LED.', 50.00, 100, 4, 5);

-- Registrar produtos da categoria "Hidráulica"
INSERT INTO produto (nome, descricao, valor_unidade, quantidade_disponivel, categoria_id, fornecedor_id)
VALUES 
('Tubo de PVC 40mm', 'Tubo de PVC de 40mm para instalações hidráulicas.', 7.00, 100, 5, 1),
('Registro de Pressão', 'Registro para controle de pressão em sistemas hidráulicos.', 20.00, 100, 5, 2),
('Tornena de Metal', 'Tornena de metal para sistemas hidráulicos de água fria e quente.', 50.00, 100, 5, 3),
('Conexão de PVC', 'Conexão de PVC para união de tubos em sistemas hidráulicos.', 3.00, 100, 5, 4),
('Mangueira de Jardim', 'Mangueira de jardim de 10 metros para irrigação e limpeza.', 35.00, 100, 5, 5),
('Válvula de Esfera', 'Válvula de esfera para controle de fluxo em sistemas hidráulicos.', 25.00, 100, 5, 1),
('Tubo Flexível 1/2"', 'Tubo flexível de 1/2" para instalações de água.', 15.00, 100, 5, 2),
('Chuveiro de Parede', 'Chuveiro de parede com design moderno e eficiente.', 80.00, 100, 5, 3),
('Filtro de Água', 'Filtro de água para purificação em sistemas residenciais.', 50.00, 100, 5, 4),
('Registro de Gaveta', 'Registro de gaveta para controle de fluxo de água em tubulações.', 30.00, 100, 5, 5);

-- Registrar movimentações no estoque
-- O valor_total é definido como NULL
-- pois será calculado via Trigger
INSERT INTO movimentacao(tipo_fluxo, quantidade, valor_total, motivo, produto_id, data_hora)
VALUES
('Entrada', 10, NULL, 'Reposição de estoque', 1, '2024-12-01 08:30:15'),
('Entrada', 20, NULL, 'Reposição de estoque', 1, '2024-12-02 14:45:35'),
('Entrada', 30, NULL, 'Reposição de estoque', 1, '2024-12-03 09:10:50'),
('Saída', 50, NULL, 'Venda do produto', 2, '2024-12-01 16:00:25'),
('Entrada', 8, NULL, 'Reposição de estoque', 3, '2024-12-02 12:20:40'),
('Saída', 30, NULL, 'Venda do produto', 4, '2024-12-03 18:30:50'),
('Entrada', 15, NULL, 'Reposição de estoque', 5, '2024-12-04 11:15:10'),
('Saída', 7, NULL, 'Venda do produto', 6, '2024-12-01 13:25:20'),
('Entrada', 12, NULL, 'Reposição de estoque', 7, '2024-12-05 10:30:55'),
('Saída', 4, NULL, 'Venda do produto', 8, '2024-12-02 15:50:40'),
('Entrada', 10, NULL, 'Reposição de estoque', 9, '2024-12-03 08:45:15'),
('Saída', 6, NULL, 'Venda do produto', 10, '2024-12-04 17:00:25'),
('Entrada', 5, NULL, 'Reposição de estoque', 11, '2024-12-02 13:35:10'),
('Saída', 10, NULL, 'Venda do produto', 11, '2024-12-01 10:05:50'),
('Saída', 15, NULL, 'Venda do produto', 11, '2024-12-04 19:40:30'),
('Saída', 2, NULL, 'Venda do produto', 13, '2024-12-03 14:25:00'),
('Entrada', 5, NULL, 'Reposição de estoque', 15, '2024-12-02 12:00:30'),
('Saída', 3, NULL, 'Venda do produto', 16, '2024-12-05 09:50:15'),
('Entrada', 7, NULL, 'Reposição de estoque', 17, '2024-12-01 11:15:40'),
('Saída', 4, NULL, 'Venda do produto', 18, '2024-12-02 18:25:55'),
('Entrada', 6, NULL, 'Reposição de estoque', 19, '2024-12-04 10:40:05'),
('Saída', 3, NULL, 'Venda do produto', 20, '2024-12-03 16:50:20'),
('Entrada', 10, NULL, 'Reposição de estoque', 21, '2024-12-01 09:10:35'),
('Saída', 5, NULL, 'Venda do produto', 22, '2024-12-02 14:55:25'),
('Entrada', 8, NULL, 'Reposição de estoque', 23, '2024-12-03 17:45:40'),
('Saída', 6, NULL, 'Venda do produto', 24, '2024-12-04 12:00:50'),
('Entrada', 12, NULL, 'Reposição de estoque', 25, '2024-12-02 16:35:30'),
('Saída', 7, NULL, 'Venda do produto', 26, '2024-12-01 14:20:00'),
('Entrada', 9, NULL, 'Reposição de estoque', 27, '2024-12-05 19:30:45'),
('Saída', 4, NULL, 'Venda do produto', 28, '2024-12-03 11:05:15'),
('Saída', 20, NULL, 'Venda do produto', 28, '2024-12-02 09:25:25'),
('Saída', 30, NULL, 'Venda do produto', 28, '2024-12-04 08:55:35'),
('Entrada', 11, NULL, 'Reposição de estoque', 29, '2024-12-01 07:40:55'),
('Saída', 3, NULL, 'Venda do produto', 30, '2024-12-05 10:10:45'),
('Entrada', 10, NULL, 'Reposição de estoque', 9, '2024-12-02 11:25:10'),
('Saída', 5, NULL, 'Venda do produto', 14, '2024-12-04 15:35:55'),
('Entrada', 7, NULL, 'Reposição de estoque', 20, '2024-12-03 13:45:00'),
('Saída', 6, NULL, 'Venda do produto', 5, '2024-12-01 18:15:30'),
('Entrada', 5, NULL, 'Reposição de estoque', 16, '2024-12-05 14:30:40');


