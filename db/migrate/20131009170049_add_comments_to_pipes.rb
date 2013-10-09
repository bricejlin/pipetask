class AddCommentsToPipes < ActiveRecord::Migration
  def change
    add_column :pipes, :comments, :text
  end
end
