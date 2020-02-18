class CreateTechnics < ActiveRecord::Migration[5.2]
  def change
    create_table :technics do |t|
      t.integer :wave
      t.integer :bigair
      t.integer :freeride
      t.integer :freestyle
      t.integer :maniability
      t.integer :feeling
      t.integer :control
      t.integer :progression
      t.integer :courbes
      t.integer :wind
      t.integer :sideshore
      t.integer :onshore
      t.integer :strap
      t.integer :strapless
      t.integer :transitions
      t.integer :wing
      t.integer :pad
      t.timestamps
    end
  end
end
