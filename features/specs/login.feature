#language: pt

Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Roklov
    Para que eu possa anunciar meus equipamentos musicais

    @login
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "bruno.pgm@outlook.com" e "pwd123"
        Então sou redirecionado para o Dashboard

    @tentativa_login
    Esquema do Cenário: Tentar logar
    
        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"
        
        Exemplos:
            |email_input          |senha_input|mensagem_output                 |
            |bruno.pgm@outlook.com|123br      |Usuário e/ou senha inválidos.   |
            |bruno.pgm@hotmail.com|pwd123     |Usuário e/ou senha inválidos.   |
            |bruno.pgm@hotmail.com|123br      |Usuário e/ou senha inválidos.   |  
            |                     |pwd123     |Oops. Informe um email válido!  |
            |bruno.pgm@outlook.com|           |Oops. Informe sua senha secreta!|
           