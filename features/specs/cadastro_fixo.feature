#language: pt

Funcionalidade: Cadastrar Novo usuario

    Como um novo usuario sem conta na Itera
    Quero cadastrar uma conta
    Para efetuar testes

    @cadastro_dados_fixos
    Cenario: Cadastrar usuario com dados validos e fixos
        Dado que acesso a pagina de login/cadastro
            E clico sobre o botao sign up
            E solicito um novo cadastro com as seguintes informações:
            | PrimeiroNome         | Sobrenome         | Email         | Celular         | Username         | Password         | ConfirmaPassword     |
            | <input_primeironome> | <input_sobrenoma> | <input_email> | <input_celular> | <input_username> | <input_passowrd> | <input_confpassword> |
        Quando confirmo o cadastro
        Entao devo ser direcionado para a pagina de minha conta

        Exemplos:
            | <input_primeironome> | <input_sobrenoma> | <input_email>           | <input_celular> | <input_username> | <input_passowrd> | <input_confpassword> |
            | Juliana              | Silva             | qajonathanpoa@gmail.com | 51996506802     | jscavalcanti26   | 857224           | 857224                    |