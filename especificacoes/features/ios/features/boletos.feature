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
    Dado que pulei o tutorial
    E estou na tela de Login

  Cenário: Aluno sem boletos pendentes
    Dado que realizei o processo de login usando uma matrícula "sem boletos pendentes"
    Quando navegar até a funcionalidade de boletos
    E clicar na aba de boletos pendentes
    Então devo visualizar uma mensagem sobre a falta de boletos pendentes

  @reinstall
  Cenário: Aluno sem boletos não pendentes
    Dado que realizei o processo de login usando uma matrícula "sem boletos não pendentes"
    Quando navegar até a funcionalidade de boletos
    E clicar na aba de boletos não pendentes
    Então devo visualizar uma mensagem sobre a falta de boletos não pendentes

  @reinstall
  Cenário: Aluno com boletos pendentes e não pendentes
    Dado que realizei o processo de login usando uma matrícula "com boletos dos dois tipos"
    Quando navegar até a funcionalidade de boletos
    Então devo visualizar boletos dos dois tipos

  @reinstall
  Cenário: 2ª via de boletos - Copiar código de barras
    Dado que realizei o processo de login usando uma matrícula "com boletos pendentes"
    Quando navegar até a funcionalidade de boletos
    E escolher um dos boletos pendentes e navegar até sua opção de segunda via
    E clicar no botão de código de barras
    Então devo visualizar uma mensagem de confirmação da cópia

  @reinstall
  Cenário: 2ª via de boletos - Enviar boleto apenas para email alternativo
    Dado que realizei o processo de login usando uma matrícula "sem email principal"
    Quando navegar até a funcionalidade de boletos
    E escolher um dos boletos pendentes e navegar até sua opção de segunda via
    E preencher o campo de email opcional, visto que não tenho email principal
    E clicar no botão de envio por email
    Então devo visualizar uma mensagem de confirmação de email enviado

  @reinstall
  Cenário: 2ª via de boletos - Enviar boleto apenas para email principal
    Dado que realizei o processo de login usando uma matrícula "com email principal"
    Quando navegar até a funcionalidade de boletos
    E escolher um dos boletos pendentes e navegar até sua opção de segunda via
    E não preencher o campo de email alternativo
    E clicar no botão de envio por email
    Então devo visualizar uma mensagem de confirmação de email enviado

  @reinstall
  Cenário: 2ª via de boletos - Enviar boleto para email principal e alternativo
    Dado que realizei o processo de login usando uma matrícula "com email principal"
    Quando navegar até a funcionalidade de boletos
    E escolher um dos boletos pendentes e navegar até sua opção de segunda via
    E preencher o campo de email opcional
    E clicar no botão de envio por email
    Então devo visualizar uma mensagem de confirmação de email enviado
