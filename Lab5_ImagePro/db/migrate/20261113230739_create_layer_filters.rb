class CreateLayerFilters < ActiveRecord::Migration[8.1]
  def change
    create_table :layer_filters do |t|
      t.references :layer, null: false, foreign_key: true
      t.references :filter, null: false, foreign_key: true
      t.float :intensity

      t.timestamps
    end
  end
end
