class CreateImages < ActiveRecord::Migration[8.1]
  def change
    create_table :images do |t|
      t.string :file_name
      t.string :file_format
      t.integer :width
      t.integer :height
      t.integer :file_size
      t.references :layer, null: false, foreign_key: true, index:{unique: true}

      t.timestamps
    end
  end
end
