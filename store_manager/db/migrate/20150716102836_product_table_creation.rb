class ProductTableCreation < ActiveRecord::Migration
  def change
  	create_table :products do |table|
  		table.string :name
  		table.string :description
  		table.decimal :price, {precision: 7, scale: 2}
  	end
  end
end
