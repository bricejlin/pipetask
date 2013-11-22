class ChangeImageToFileInImages < ActiveRecord::Migration
  def self.up
    rename_column :images, :image, :file
  end

  def self.down
    rename_column :images, :file, :image
  end
end
