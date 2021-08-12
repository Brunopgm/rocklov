#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuario cadastrado no Rocklov que possui equipamentos musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibiliza-los para locação

    Contexto: Login
        * Login com "bruno.pgm@outlook.com" e "pwd123"

    Cenario: Novo equipo

        Dado que acesso o formulário de cadastro de anúncios
            E que eu tenho o seguinte equipamento:
            | thumb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Então devo ver esse item no meu Dashboard

    @temp
    Esquema do Cenario: Tentativa de cadastro de anúncios

        Dado que acesso o formulário de cadastro de anúncios
            E que eu tenho o seguinte equipamento:
            | thumb     | <foto>      |
            | nome      | <nome>      |
            | categoria | <categoria> |
            | preco     | <preco>     |
        Quando submeto o cadastro desse item
        Então deve conter a mensagem de alerta: "<saida>"

        Exemplos:
            | foto          | nome              | categoria | preco  | saida                                |
            |               | Violão de Nylon   | Cordas    | 210    | Adicione uma foto no seu anúncio!    |
            | clarinete.jpg |                   | Outros    | 200    | Informe a descrição do anúncio!      |
            | mic.jpg       | Microfone Shure   |           | 190    | Informe a categoria                  |
            | clarinete.jpg | Trompete Clássico | Outros    |        | Informe o valor da diária            |
            | conga.jpg     | Conga             | Outros    | Outros | O valor da diária deve ser numérico! |
            | conga.jpg     | Conga             | Outros    | Outros | O valor da diária deve ser numérico! |
