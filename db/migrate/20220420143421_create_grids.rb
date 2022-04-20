class CreateGrids < ActiveRecord::Migration[7.0]
  def change
    create_table :grids do |t|
      t.string :make
      t.string :model
      t.string :color

      t.timestamps
    end
  end
end
