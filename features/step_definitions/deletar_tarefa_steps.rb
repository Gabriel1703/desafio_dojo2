
Quando("deletar a tarefa selecionada {string}") do |string|

  @subject = string
  HomePage.new.localizar_tarefa(string)
  DeletarPage.new.field_actions.click
  DeletarPage.new.btn_delete.click
  page.driver.browser.switch_to.alert.accept


end

Então("valido que foi excluida com sucesso") do

	HomePage.new.search_btn.click
	HomePage.new.input_search.set('Gabeira')
	HomePage.new.search_btn_txt.click
	expect(HomePage.new.field_task_txt_no_results.text).to eq('No results')
 
end