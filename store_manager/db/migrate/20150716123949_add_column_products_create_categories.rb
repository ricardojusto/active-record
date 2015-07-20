class AddColumnProductsCreateCategories < ActiveRecord::Migration
  def change
	add_column :products, :category, :string
  	create_table :categories do |table|
  		table.string :name
  	end
  end
end
