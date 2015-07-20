get '/' do
	@posts = Post.all

	erb :index
end	

post '/index' do
	Post.create({
		title: params[:title],
		body: params[:body],
		})
	redirect '/'
end

get '/show/:id' do 
	@post = Post.find(params[:id])	
	erb :show
end

post '/show/:id' do
	Comment.create({
		comment: params[:comment]
		})
	redirect '/show/:id'
end

get '/edit/:id' do
	@post = Post.find(params[:id])
	erb :edit
end

post '/edit/:id' do
	post = Post.find(params[:id])
	post.update({
		title: params[:title],
		body: params[:body]
		})
	redirect '/'
end