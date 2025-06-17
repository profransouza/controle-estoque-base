CREATE DATABASE IF NOT EXISTS estoque_produtos_base;
USE estoque_produtos_base;

-- Criar Tabela de categorias
CREATE TABLE IF NOT EXISTS categorias (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `nome` VARCHAR(100) NOT NULL,
    `descricao` TEXT,
    `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
    `updated_at` DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
);

-- Inserir algumas categorias de exemplo
INSERT INTO categorias (`id`, `nome`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'Eletronicos', 'Produtos Eletronicos em geral', NOW(), NOW()),
(2, 'Moveis', 'Moveis para casa e escritório', NOW(), NOW()),
(3, 'Aliementos', 'Produtos alimentícios', NOW(), NOW()),
(4, 'Limpeza', 'Produtos de limpeza e higiene pessoal', NOW(), NOW());

-- Criar Tabela de produtos
CREATE TABLE IF NOT EXISTS produtos (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `nome` VARCHAR(100) NOT NULL,
    `descricao` TEXT,
    `preco` DECIMAL(10, 2) NOT NULL,
    `quantidade` INT NOT NULL DEFAULT 0,
    `categoria_id` INT,
    `created_at` DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    -- Chave estrangeira
    FOREIGN KEY (`categoria_id`) REFERENCES categorias(`id`)
);
