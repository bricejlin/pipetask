class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.references :pipe, index: true

      t.timestamps
    end
  end
end
