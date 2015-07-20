class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :posts do |table|
  		table.string :title, null: false
  		table.text :body
  		table.integer :category_id
  		table.timestamps
  	end
  end
end
