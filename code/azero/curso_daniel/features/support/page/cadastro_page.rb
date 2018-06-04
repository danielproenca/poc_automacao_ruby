class CadastroPage < SitePrism::Page
    set_url '/cadastre-se'
    element :campo_nome, '#full-name'
    element :campo_mail, '#email'
    element :campo_senha, '#password'
    element :botao_cadastrar, '#do-sign-up'

    #Criando um objeto
    def cadastrar(usuario)
        campo_nome.set usuario[:nome]
        campo_mail.set usuario[:email]
        campo_senha.set usuario[:senha]
        botao_cadastrar.click        
    end

    # def cadastrar(nome, email, senha)
    #     campo_nome.set nome
    #     campo_mail.set email
    #     campo_senha.set senha
    #     botao_cadastrar.click        
    # end

end