get '/' do
	# todos = Todo.all - comentado para a opcao 3
	#opcao 1
	# @complete_todos = Todo.where(complete: true)
	# @not_complete_todos = Todo.where(complete: false)

	#opcao 2
	# @complete_todos = todos.select do |todo|
	# 	todo.complete == true
	# end	
	# @not_complete_todos = todos.select do |todo|
	# 	todo.complete == false
	# end

	#opcao 3 - para optimizacao do codigo; diferentes abordagens que permite poupar tempo de procura e resposta do servidor
	@complete_todos = []
	@not_complete_todos = []

	todos = Todo.all
	todos.each do |todo|
		if todo.complete == true
			@complete_todos << todo
		else
			@not_complete_todos << todo
		end
	end
	erb :index
end

post '/todos/create' do
#receber dados do f(orm
#criar todo a partir dos dados
#gravar todos na db
#redireccionar para index
todo = Todo.new({
	title: params[:title]
	})
todo.save
redirect '/'
#se usarmos o Todo.create ja nao precisamos da variavel e do todo save porque ja nao precisamos da variavel
end

get '/todos/:id/toggle' do 
	todo = Todo.find(params[:id])
	todo.complete = !todo.complete #assim invertemos o valor - nao e necessario andar a especificar com ifs e etcs
	todo.save
	redirect '/'
end

get '/todos/:id/remove' do 
	todo = Todo.destroy(params[:id])
	redirect '/'
end