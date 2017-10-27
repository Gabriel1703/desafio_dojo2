
Quando("alterar a tarefa selecionada {string}, {string}, {string}, {string}") do |string, string2, string3, string4|                                    
  
  
   @subject = string2
   HomePage.new.localizar_tarefa(string)
   AlterarPage.new.alterar_task(string2, string3, string4)

 end

Então("valido que foi alterado com sucesso") do

  expect(AlterarPage.new.txt_alteracao_sucesso.text).to eq (@subject.upcase)
 
end