get '/' do
	@product = Product.all 
	erb :index
end

post '/product/new' do 
	 Product.create({
		name: params[:name],
		description: params[:description],
		price: params[:price].to_f
		}) 
	redirect '/'
end

get '/edit/:id' do
	@product = Product.find(params[:id]) 
	erb :edit
end

post '/edit/:id' do
    @product = Product.find(params[:id])
    @product.update({
    	name: params[:name],
    	description: params[:description],
    	price: params[:price]
    	})
  redirect '/'
end

get '/indexcategory' do
	erb :indexcategory
end
