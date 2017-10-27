#language: pt 
#utf-8

Funcionalidade: Tasks
Eu como usuario admin do site SuiteCRM
Quero gerenciar as informações das tarefas
Para acompanhar as atividades realizadas


Contexto: Acompanhar as tarefas
	Dado que estou logado no site SuiteCRM


@cadastrar_nova_tarefa
Esquema do Cenario: Cadastrar uma nova tarefa
	Quando cadastrar uma nova tarefa "<Subject>", "<Status>"
	Então valido que foi cadastrado com sucesso

	Exemplos:
	| Subject            | Status      |
	| Desafio Dojo 2     | Not Started |


@Editar_nova_tarefa
 Esquema do Cenario: Editar uma nova tarefa
	Quando alterar a tarefa selecionada "<Search>", "<Subject>", "<Status>", "<Contact Name>"
	Então valido que foi alterado com sucesso

	Exemplos:
	|Search            | Subject            | Status      |Contact Name| 
	|Desafio Dojo 2    | Desafio Dojo teste | In Progress |Will Westin |



@Deletar_nova_tarefa
 Esquema do Cenario: Deletar uma nova tarefa
	Quando deletar a tarefa selecionada "<Search>"
	Então valido que foi excluida com sucesso

	Exemplos:
	| Search  |
	|Desafio Dojo teste |
