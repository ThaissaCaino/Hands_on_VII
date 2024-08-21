SELECT 
    p.id_pagamento AS id_venda, 
    p.data_pagamento AS data_do_pagamento, 
    p.valor_pagamento AS valor_do_pagamento, 
    i.id_imovel AS codigo_imovel, 
    i.descricao AS descricao_imovel, 
    t.descricao AS tipo_imovel
FROM 
    pagamento p
JOIN 
    imovel i ON p.imovel_id = i.id_imovel
JOIN 
    tipo_imovel t ON i.tipo_imovel_id = t.id_tipo;