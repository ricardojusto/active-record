get '/' do
	@product = Product.all
	@categories = Category.all
	erb :index
end

get '/index' do 
	redirect '/'
end

post '/product/new' do 
	 Product.create({
		name: params[:name],
		description: params[:description],
		price: params[:price].to_f,
		category_id: params[:category]
		}) 
	redirect '/'
end

get '/edit/:id' do
	@product = Product.find(params[:id])
	@categories = Category.all 
	erb :edit
end

post '/edit/:id' do
    @product = Product.find(params[:id])
    @product.update({
    	name: params[:name],
    	description: params[:description],
    	price: params[:price],
    	category_id: params[:category]
    	})
  redirect '/'
end

get '/indexcategory' do
	@category = Category.all
	@products = Product.all
	erb :indexcategory
end

post '/category/new' do 
	 Category.create({
		name: params[:name],
		}) 
	redirect '/indexcategory'
end

get '/edit/category/:id' do 
	@category = Category.find(params[:id])
	erb :editcategory
end

post '/edit/category/:id' do
    @category = Category.find(params[:id])
    @category.update({
    	name: params[:name],
    	})
  redirect '/indexcategory'
end

get '/remove/product/:id' do 
	Product.destroy(params[:id])
	redirect '/'
end

get '/remove/category/:id' do 
	Category.destroy(params[:id])
	redirect '/indexcategory'
end