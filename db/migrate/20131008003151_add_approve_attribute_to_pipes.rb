class AddApproveAttributeToPipes < ActiveRecord::Migration
  def change
    add_column :pipes, :approved, :boolean, default: false
  end
end
