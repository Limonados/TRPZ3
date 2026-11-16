class AddBlendModeAndProjectToLayers < ActiveRecord::Migration[8.1]
  def change
    add_column :layers, :blend_mode, :string
    add_reference :layers, :project, null: false, foreign_key: true
  end
end
