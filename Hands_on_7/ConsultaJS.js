const mysql = require('mysql2/promise');

// Função assíncrona para conectar e consultar o banco de dados MySQL
async function fetchData() {
    const connection = await mysql.createConnection({
        host: 'localhost',  // Coloque o host correto
        user: 'root',       // Coloque o nome de usuário correto
        password: 'litma123', // Coloque a senha correta
        database: 'HOW_VII' // Coloque o nome do banco de dados correto
    });

    try {
        // Query para selecionar todos os dados sem filtros ou agrupamentos
        const [rows] = await connection.execute(`
            SELECT 
                p.id_pagamento, 
                p.data_pagamento, 
                p.valor_pagamento, 
                i.id_imovel, 
                i.descricao AS descricao_imovel, 
                t.descricao AS tipo_imovel
            FROM 
                pagamento p
            JOIN 
                imovel i ON p.imovel_id = i.id_imovel
            JOIN 
                tipo_imovel t ON i.tipo_imovel_id = t.id_tipo;
        `);

        // Processando os dados com programação funcional
        const processedData = rows.map(row => ({
            id_venda: row.id_pagamento,
            data_pagamento: row.data_pagamento,
            valor_pagamento: row.valor_pagamento,
            cod_imovel: row.id_imovel,
            descricao_imovel: row.descricao_imovel,
            tipo_imovel: row.tipo_imovel
        }))
        .filter(row => row.valor_pagamento > 1000) // Exemplo de filtro
        .reduce((acc, row) => {
            // Exemplo de agrupamento por tipo_imovel
            if (!acc[row.tipo_imovel]) {
                acc[row.tipo_imovel] = [];
            }
            acc[row.tipo_imovel].push(row);
            return acc;
        }, {});

        // Exibindo os resultados
        console.log('Resultados Processados:', processedData);

        return processedData;
    } catch (error) {
        console.error('Erro ao executar a query:', error);
    } finally {
        // Fechando a conexão
        await connection.end();
    }
}

// Executando a função
fetchData();
