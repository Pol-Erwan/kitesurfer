class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :category
      t.string :domain
      t.string :description
      t.string :favorite
      t.string :testsize
      t.string :youtube
      t.string :link
      t.integer :price
      t.integer :year

      t.timestamps
    end
  end
end
