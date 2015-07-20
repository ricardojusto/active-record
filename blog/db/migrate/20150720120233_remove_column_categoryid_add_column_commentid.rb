class RemoveColumnCategoryidAddColumnCommentid < ActiveRecord::Migration
  def change
  	remove_column :posts, :category_id
  	add_column :posts, :comment_id, :integer
  end
end
