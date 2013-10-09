class CreatePipes < ActiveRecord::Migration
  def change
    create_table :pipes do |t|
      t.string :name
      t.integer :sides_shot

      t.timestamps
    end
  end
end
