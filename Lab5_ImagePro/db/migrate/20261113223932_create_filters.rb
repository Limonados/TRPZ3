class CreateFilters < ActiveRecord::Migration[8.1]
  def change
    create_table :filters do |t|
      t.string :name
      t.string :category
      t.float :intensity
      t.boolean :enabled

      t.timestamps
    end
  end
end
