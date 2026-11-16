class CreateProjects < ActiveRecord::Migration[8.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
