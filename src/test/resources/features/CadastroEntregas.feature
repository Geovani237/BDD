# language: pt
Funcionalidade: Cadastro de nova entregas
  como usuário da API quero cadastrar uma
  nova entrega para o registro seja salvo
  corretamento no sistema

  Cenário: Cadastro bem-sucedido de entrega
    Dado que eu tenha os seguintes dados da entrega:
      | campo          | valor         |
      | numeroPedido   | 1             |
      | nomeEntregador | Ana Silva     |
      | statusEntrega  | EM_PREPARACAO |
      | dataEntrega    | 2025-12-01    |
    Quando eu enviar a requisição para o endpoint "/entregas" de cadastro de entregas
    Então o status code da resposta deve ser 201