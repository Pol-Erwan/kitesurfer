class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.belongs_to :product, index: true

      t.string :detail
      t.string :range
      t.string :bridle
      t.string :fin
      t.string :width
      t.string :stance
      t.string :champs
      t.string :weigh
      t.string :carene
      t.string :flex
      t.string :length
      t.string :maitrebau
      t.string :thickness
      t.string :volum
      t.string :trim
      t.string :twist
      t.string :line
      t.string :v
      t.integer :velcros
      t.string :box
      t.integer :strut
      t.string :zip
      t.string :bar

      t.timestamps
    end
  end
end
