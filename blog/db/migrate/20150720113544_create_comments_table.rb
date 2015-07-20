class CreateCommentsTable < ActiveRecord::Migration
  def change
  	  	create_table :comments do |table|
  		table.text :comment
  		table.timestamps
  	end
  end
end
