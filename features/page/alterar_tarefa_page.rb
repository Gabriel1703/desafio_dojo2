class AlterarPage <SitePrism::Page

	element :field_actions, "#tab-actions > a"
	element :btn_edit, "#edit_button"
	element :input_subject, "#name"
 	element :input_status, "#status"
 	element :input_contact_txt, "#contact_name"
 	elements :bt_save, "#SAVE"
 	element :txt_alteracao_sucesso, "#pagecontent > div.moduleTitle > h2"  
 	
 	def alterar_task(subject, status, contact_name)
 		field_actions.click
 		btn_edit.click
 		input_subject.set(subject)
 		input_status.select(status)
 		input_contact_txt.set(contact_name)
 		bt_save.last.click

 	 end
	
 end