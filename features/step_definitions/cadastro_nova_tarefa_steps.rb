

Dado("que estou logado no site SuiteCRM") do 

  LoginPage.new.load  
  LoginPage.new.log_in('will','will')
  

 end

Quando("cadastrar uma nova tarefa {string}, {string}") do |string, string2|

  @subject = string	
  HomePage.new.bt_create.click
  HomePage.new.input_create_task.click
  CadastroPage.new.preencher_cadastro(string, string2)
 
 end

Então("valido que foi cadastrado com sucesso") do

expect(CadastroPage.new.txt_cadastro_sucesso.text).to eq (@subject.upcase)
  
 end
