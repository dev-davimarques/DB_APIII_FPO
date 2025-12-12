INSERT INTO animal (codigo_lote, quantidade, data_entrada, finalidade, idade_inicial, raca, tipo_animal, tipo_tratamento, cliente_fornecedor_id, galpao_id) VALUES
-- Lotes Bovinos (Engorda e Venda de Carne - Galpão 2) - Fornecedor 4 (Fazenda Vitória)
('LOTE-BOV-E01', 50, '2025-11-05', 'VENDA_CARNE', 24, 'Nelore', 'BOVINO', 'Engorda Intensiva', 4, 2),
('LOTE-BOV-E02', 65, '2025-11-06', 'VENDA_CARNE', 26, 'Angus', 'BOVINO', 'Engorda Semi-Intensiva', 4, 2),
('LOTE-BOV-E03', 45, '2025-11-07', 'VENDA_CARNE', 20, 'Brangus', 'BOVINO', 'Engorda Intensiva', 4, 2),
('LOTE-BOV-R01', 10, '2025-11-08', 'REPRODUCAO', 30, 'Girolando', 'BOVINO', 'Manejo Reprodutivo', 4, 2),
('LOTE-BOV-E04', 70, '2025-11-09', 'VENDA_CARNE', 25, 'Tabapuã', 'BOVINO', 'Engorda Intensiva', 4, 2),
('LOTE-BOV-E05', 55, '2025-11-10', 'VENDA_CARNE', 22, 'Simental', 'BOVINO', 'Engorda Semi-Intensiva', 4, 2),
('LOTE-BOV-E06', 60, '2025-11-11', 'VENDA_CARNE', 28, 'Nelore', 'BOVINO', 'Engorda Intensiva', 4, 2),
('LOTE-BOV-E07', 40, '2025-11-12', 'VENDA_CARNE', 23, 'Angus', 'BOVINO', 'Engorda Semi-Intensiva', 4, 2),
('LOTE-BOV-R02', 15, '2025-11-13', 'REPRODUCAO', 32, 'Girolando', 'BOVINO', 'Manejo Reprodutivo', 4, 2),
('LOTE-BOV-E08', 50, '2025-11-14', 'VENDA_CARNE', 21, 'Brangus', 'BOVINO', 'Engorda Intensiva', 4, 2),

-- Lotes Suínos (Crescimento e Reprodução - Galpão 2) - Fornecedor 2 (Agro Delta)
('LOTE-SUI-C01', 120, '2025-11-15', 'VENDA_CARNE', 4, 'Landrace', 'SUINO', 'Crescimento', 2, 2),
('LOTE-SUI-C02', 150, '2025-11-16', 'VENDA_CARNE', 5, 'Duroc', 'SUINO', 'Crescimento', 2, 2),
('LOTE-SUI-R01', 20, '2025-11-17', 'REPRODUCAO', 12, 'Pietrain', 'SUINO', 'Manejo Reprodutivo', 2, 2),
('LOTE-SUI-C03', 130, '2025-11-18', 'VENDA_CARNE', 4, 'Landrace', 'SUINO', 'Crescimento', 2, 2),
('LOTE-SUI-C04', 100, '2025-11-19', 'VENDA_CARNE', 6, 'Duroc', 'SUINO', 'Crescimento', 2, 2),
('LOTE-SUI-C05', 110, '2025-11-20', 'VENDA_CARNE', 5, 'Landrace', 'SUINO', 'Crescimento', 2, 2),
('LOTE-SUI-R02', 25, '2025-11-21', 'REPRODUCAO', 10, 'Pietrain', 'SUINO', 'Manejo Reprodutivo', 2, 2),

-- Lotes de Aves (Caipira e Ovos - Galpão 1) - Fornecedor 4 (Fazenda Vitória)
('LOTE-AVE-O01', 300, '2025-11-22', 'VENDA_OVOS', 6, 'Rhode Island Red', 'GALINHA', 'Caipira', 4, 1),
('LOTE-AVE-O02', 250, '2025-11-23', 'VENDA_OVOS', 7, 'Leghorn', 'GALINHA', 'Caipira', 4, 1),
('LOTE-AVE-C01', 400, '2025-11-24', 'VENDA_CARNE', 2, 'Cobb', 'FRANGO', 'Crescimento Rápido', 4, 1),
('LOTE-AVE-O03', 350, '2025-11-25', 'VENDA_OVOS', 6, 'Rhode Island Red', 'GALINHA', 'Caipira', 4, 1),
('LOTE-AVE-O04', 280, '2025-11-26', 'VENDA_OVOS', 7, 'Leghorn', 'GALINHA', 'Caipira', 4, 1),
('LOTE-AVE-C02', 380, '2025-11-27', 'VENDA_CARNE', 3, 'Cobb', 'FRANGO', 'Crescimento Rápido', 4, 1),
('LOTE-AVE-O05', 320, '2025-11-28', 'VENDA_OVOS', 5, 'Rhode Island Red', 'GALINHA', 'Caipira', 4, 1),

-- Lotes Especiais (Caprinos e Ovinos - Galpão 1) - Fornecedor 2 (Agro Delta)
('LOTE-CAP-01', 30, '2025-11-29', 'VENDA_CARNE', 12, 'Boer', 'CAPRINO', 'Tratamento Padrão', 2, 1),
('LOTE-OVI-01', 40, '2025-11-30', 'VENDA_LÃ', 18, 'Merino', 'OVINO', 'Tosa Anual', 2, 1),
('LOTE-CAP-02', 25, '2025-12-01', 'REPRODUCAO', 15, 'Saanen', 'CAPRINO', 'Manejo Reprodutivo', 2, 1),
('LOTE-OVI-02', 35, '2025-12-02', 'VENDA_CARNE', 14, 'Dorper', 'OVINO', 'Tratamento Padrão', 2, 1),
('LOTE-CAP-03', 32, '2025-12-03', 'VENDA_LEITE', 10, 'Toggenburg', 'CAPRINO', 'Produção Leiteira', 2, 1),

-- Lotes Bovinos adicionais (Venda de Carne) - Fornecedor 2 (Agro Delta)
('LOTE-BOV-F01', 55, '2025-12-04', 'VENDA_CARNE', 27, 'Nelore', 'BOVINO', 'Engorda Intensiva', 2, 2),
('LOTE-BOV-F02', 60, '2025-12-05', 'VENDA_CARNE', 29, 'Angus', 'BOVINO', 'Engorda Semi-Intensiva', 2, 2),
('LOTE-BOV-F03', 40, '2025-12-06', 'VENDA_CARNE', 25, 'Brangus', 'BOVINO', 'Engorda Intensiva', 2, 2),
('LOTE-BOV-F04', 52, '2025-12-07', 'VENDA_CARNE', 23, 'Tabapuã', 'BOVINO', 'Engorda Semi-Intensiva', 2, 2),
('LOTE-BOV-F05', 68, '2025-12-08', 'VENDA_CARNE', 20, 'Nelore', 'BOVINO', 'Engorda Intensiva', 2, 2),

-- Lotes de Aves adicionais (Caipira) - Fornecedor 2 (Agro Delta)
('LOTE-AVE-E01', 310, '2025-12-09', 'VENDA_OVOS', 6, 'Rhode Island Red', 'GALINHA', 'Caipira', 2, 1),
('LOTE-AVE-E02', 290, '2025-12-10', 'VENDA_OVOS', 7, 'Leghorn', 'GALINHA', 'Caipira', 2, 1),
('LOTE-AVE-E03', 420, '2025-12-11', 'VENDA_CARNE', 2, 'Cobb', 'FRANGO', 'Crescimento Rápido', 2, 1),
('LOTE-AVE-E04', 330, '2025-12-12', 'VENDA_OVOS', 6, 'Rhode Island Red', 'GALINHA', 'Caipira', 2, 1),

-- Lotes Suínos adicionais (Crescimento) - Fornecedor 4 (Fazenda Vitória)
('LOTE-SUI-F01', 115, '2025-12-13', 'VENDA_CARNE', 4, 'Landrace', 'SUINO', 'Crescimento', 4, 2),
('LOTE-SUI-F02', 145, '2025-12-14', 'VENDA_CARNE', 5, 'Duroc', 'SUINO', 'Crescimento', 4, 2),
('LOTE-SUI-F03', 125, '2025-12-15', 'VENDA_CARNE', 4, 'Landrace', 'SUINO', 'Crescimento', 4, 2),
('LOTE-SUI-F04', 105, '2025-12-16', 'VENDA_CARNE', 6, 'Duroc', 'SUINO', 'Crescimento', 4, 2),

-- Lotes Bovinos (Venda de Animais Especiais - Cliente 1 e 6)
('LOTE-BOV-C01', 2, '2025-12-17', 'VENDA_ANIMAL', 48, 'Wagyu', 'BOVINO', 'Tratamento Especial', 1, 2), -- Cliente 1
('LOTE-BOV-C02', 1, '2025-12-18', 'VENDA_ANIMAL', 60, 'Highland', 'BOVINO', 'Tratamento Especial', 6, 2), -- Cliente 6

-- Lotes de Caprinos/Ovinos (Venda de Carne) - Fornecedor 4 (Fazenda Vitória)
('LOTE-CAP-F01', 35, '2025-12-19', 'VENDA_CARNE', 11, 'Boer', 'CAPRINO', 'Tratamento Padrão', 4, 1),
('LOTE-OVI-F01', 42, '2025-12-20', 'VENDA_CARNE', 17, 'Dorper', 'OVINO', 'Tratamento Padrão', 4, 1),

-- Lotes mistos para completar
('LOTE-SUI-M01', 100, '2025-12-21', 'VENDA_CARNE', 5, 'Landrace', 'SUINO', 'Crescimento', 2, 2),
('LOTE-AVE-M01', 250, '2025-12-22', 'VENDA_OVOS', 6, 'Leghorn', 'GALINHA', 'Caipira', 4, 1),
('LOTE-BOV-M01', 50, '2025-12-23', 'VENDA_CARNE', 24, 'Nelore', 'BOVINO', 'Engorda Intensiva', 2, 2),
('LOTE-CAP-M01', 30, '2025-12-24', 'VENDA_CARNE', 12, 'Boer', 'CAPRINO', 'Tratamento Padrão', 4, 1),
('LOTE-BOV-M02', 45, '2025-12-25', 'VENDA_CARNE', 26, 'Angus', 'BOVINO', 'Engorda Semi-Intensiva', 4, 2),
('LOTE-SUI-M02', 130, '2025-12-26', 'VENDA_CARNE', 4, 'Duroc', 'SUINO', 'Crescimento', 2, 2),
('LOTE-AVE-M02', 300, '2025-12-27', 'VENDA_CARNE', 3, 'Cobb', 'FRANGO', 'Crescimento Rápido', 4, 1),
('LOTE-OVI-M02', 40, '2025-12-28', 'VENDA_LÃ', 18, 'Merino', 'OVINO', 'Tosa Anual', 2, 1),
('LOTE-BOV-M03', 60, '2025-12-29', 'VENDA_CARNE', 28, 'Nelore', 'BOVINO', 'Engorda Intensiva', 4, 2),
('LOTE-SUI-M03', 120, '2025-12-30', 'VENDA_CARNE', 5, 'Landrace', 'SUINO', 'Crescimento', 4, 2);