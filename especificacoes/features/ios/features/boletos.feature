# language: pt
Funcionalidade: Boletos
  Através desta funcionalidade é possível realizar a visualização dos boletos, separados
entre "Pendentes" e "Não Pendentes", considerando pendentes os status "Em Processamento",
"Pagamento Pendente" e "Vencido" e não pendentes os status "Pago", "Negociado", "Bloqueado"
e "Cancelado". A listagem deve conter os boletos minimizados, exibindo apenas um marcador
com a cor referente a seu status, seu vencimento e o valor.
  O boleto quando maximizado deve exibir um fundo com a cor referente a seu status, o status, tipo do boleto,
competência e um botão para a segunda via de boleto

  Contexto: Login
    Dado que estou na tela de Login

  Cenário: Aluno sem boletos pendentes
    Dado que realizei o processo de login usando uma matrícula "sem boletos pendentes"
    Quando navegar até a funcionalidade de boletos
    E clicar na aba de boletos pendentes
    Então devo visualizar uma mensagem sobre a falta de boletos pendentes

  Cenário: Aluno sem boletos não pendentes
    Dado que realizei o processo de login usando uma matrícula "sem boletos não pendentes"
    Quando navegar até a funcionalidade de boletos
    E clicar na aba de boletos não pendentes
    Então devo visualizar uma mensagem sobre a falta de boletos não pendentes

  Cenário: Aluno com boleto pendentes e não pendentes
    Dado que realizei o processo de login usando uma matrícula "com boletos dos dois tipos"
    Quando navegar até a funcionalidade de boletos
    Então devo visualizar boletos dos dois tipos

  Cenário: 2ª via de boletos - Copiar código de barras
    Dado que realizei o processo de login usando uma matrícula "com boletos pendentes"
    Quando navegar até a funcionalidade de boletos
    E escolher um dos boletos pendentes e navegas até sua opção de segunda via
    E clicar no botão de código de barras
    Então devo visualizar uma mensagem de confirmação da cópia

  Cenário: 2ª via de boletos - Enviar boleto para email alternativo
    Dado que realizei o processo de login usando uma matrícula "com boletos pendentes"
    Quando navegar até a funcionalidade de boletos
    E escolher um dos boletos pendentes e navegas até sua opção de segunda via
    E preencher o campo de email opcional, visto que não tenho email principal
    E clicar no botão de envio por email
    Então devo visualizar uma mensagem de confirmação de email enviado
