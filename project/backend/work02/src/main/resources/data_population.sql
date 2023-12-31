-- Manufacturer
INSERT INTO manufacturer (name) VALUES
                                    ('Produtos de Limpeza S.A.'),
                                    ('Móveis e Cia Ltda.'),
                                    ('Eletrodomésticos Mega'),
                                    ('Roupas Elegantes Ltda.'),
                                    ('Supermercado BoaCompra'),
                                    ('Farmácia Saúde e Beleza'),
                                    ('Loja de Brinquedos FelizCriança'),
                                    ('Loja de Esportes Ativo Total'),
                                    ('Livraria Cultural'),
                                    ('Papelaria Criativa'),
                                    ('Ferramentas do Carpinteiro'),
                                    ('Pet Shop Amigo Fiel'),
                                    ('Autopeças Veloz'),
                                    ('Jardim Verdejante'),
                                    ('Eletrodomésticos Casa Nova'),
                                    ('Joalheria Luxo'),
                                    ('Música e Som'),
                                    ('Cinema & Filmes'),
                                    ('Moda Jovem Estilosa'),
                                    ('Restaurante Sabor & Sabor');

-- Category
INSERT INTO product_category (name) VALUES
                                        ('Limpeza'),
                                        ('Móveis'),
                                        ('Eletrodomésticos'),
                                        ('Roupas'),
                                        ('Alimentos'),
                                        ('Saúde e Beleza'),
                                        ('Brinquedos'),
                                        ('Esportes'),
                                        ('Livros'),
                                        ('Material de Escritório'),
                                        ('Ferramentas'),
                                        ('Pet Shop'),
                                        ('Autopeças'),
                                        ('Jardim'),
                                        ('Eletrodomésticos'),
                                        ('Joias'),
                                        ('Música'),
                                        ('Filmes'),
                                        ('Moda'),
                                        ('Restaurante');

-- Stock
INSERT INTO stock (name, address, cep) VALUES
                                           ('Depósito Principal', 'Rua das Flores, 123', '12345-678'),
                                           ('Depósito Central', 'Avenida dos Pássaros, 456', '23456-789'),
                                           ('Armazém de Estoque', 'Rua da Esperança, 789', '34567-890'),
                                           ('Centro de Distribuição', 'Praça do Sol, 101', '45678-901'),
                                           ('Estoque Central', 'Avenida da Lua, 202', '56789-012'),
                                           ('Depósito Sul', 'Rua do Mar, 303', '67890-123'),
                                           ('Depósito Norte', 'Avenida das Montanhas, 404', '78901-234'),
                                           ('Armazém Principal', 'Rua das Estrelas, 505', '89012-345'),
                                           ('Estoque Geral', 'Avenida do Céu, 606', '90123-456'),
                                           ('Depósito de Reservas', 'Praça das Árvores, 707', '01234-567'),
                                           ('Estoque Norte', 'Avenida do Vento, 808', '12345-678'),
                                           ('Depósito Oeste', 'Rua do Fogo, 909', '23456-789'),
                                           ('Depósito Leste', 'Avenida do Trovão, 1001', '34567-890'),
                                           ('Estoque Regional', 'Rua da Lua, 1102', '45678-901'),
                                           ('Armazém do Sol', 'Avenida das Estrelas, 1203', '56789-012'),
                                           ('Estoque do Norte', 'Rua da Aurora, 1304', '67890-123'),
                                           ('Depósito das Sombras', 'Avenida da Noite, 1405', '78901-234'),
                                           ('Armazém das Estrelas', 'Rua da Escuridão, 1506', '89012-345'),
                                           ('Depósito Celestial', 'Avenida da Imensidão, 1607', '90123-456'),
                                           ('Estoque do Sul', 'Rua do Crepúsculo, 1708', '01234-567');

-- Product
INSERT INTO product (name, price, manufacturer_id, manufacturing_date, expiration_date, category_id, amount, stock_id) VALUES
   ('Sabão em Pó Omo', 19.99, 1, '2023-01-01', '2023-12-31', 1, 50, 1),
   ('Sofá Retrátil Luxo', 999.99, 2, '2023-02-15', '2028-02-15', 2, 5, 2),
   ('Liquidificador Potente', 199.99, 3, '2023-03-20', '2024-03-20', 3, 25, 3),
   ('Camisa Social Masculina', 89.99, 4, '2023-04-10', '2024-04-10', 4, 40, 4),
   ('Arroz Integral Orgânico', 9.99, 5, '2023-05-05', '2024-05-05', 5, 20, 5),
   ('Kit de Maquiagem Completo', 129.99, 6, '2023-06-15', '2024-06-15', 6, 15, 6),
   ('Carrinho de Controle Remoto', 49.99, 7, '2023-07-25', '2024-07-25', 7, 35, 7),
   ('Esteira Elétrica Profissional', 899.99, 8, '2023-08-30', '2024-08-30', 8, 45, 8),
   ('Livro Best-Seller', 29.99, 9, '2023-09-05', '2024-09-05', 9, 22, 9),
   ('Caneta Esferográfica Azul', 1.99, 10, '2023-10-10', '2024-10-10', 10, 18, 10),
   ('Jogo de Chaves de Fenda', 19.99, 11, '2023-11-15', '2024-11-15', 11, 28, 11),
   ('Ração Premium para Cães', 39.99, 12, '2023-12-20', '2024-12-20', 12, 33, 12),
   ('Shampoo Hidratante', 9.99, 13, '2024-01-25', '2025-01-25', 13, 10, 13),
   ('Violão Acústico', 299.99, 14, '2024-02-29', '2025-02-28', 14, 60, 14),
   ('DVD Filme Clássico', 14.99, 15, '2024-03-05', '2024-12-31', 15, 40, 15),
   ('Vestido de Festa Longo', 149.99, 16, '2024-04-10', '2024-12-31', 16, 15, 16),
   ('Perfume Importado', 79.99, 17, '2024-05-15', '2025-05-15', 17, 30, 17),
   ('Máquina de Lavar 12kg', 699.99, 18, '2024-06-20', '2029-06-20', 18, 10, 18),
   ('Brinco de Diamante', 499.99, 19, '2024-07-25', '2025-07-25', 19, 5, 19),
   ('Feijoada Completa para 2', 29.99, 20, '2024-08-30', '2024-08-30', 20, 12, 20);

COMMIT;