class ChangeFileFormatInImages < ActiveRecord::Migration
  def self.up
    change_column :images, :file, :string
  end

  def self.down
    change_column :images, :file, :integer
  end
end
