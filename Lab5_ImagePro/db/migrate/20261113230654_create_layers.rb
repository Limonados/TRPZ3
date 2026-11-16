class CreateLayers < ActiveRecord::Migration[8.1]
  def change
    create_table :layers do |t|
      t.string :name
      t.float :opacity
      t.boolean :visible

      t.timestamps
    end
  end
end
