class CreateCompares < ActiveRecord::Migration[5.2]
  def change
    create_table :compares do |t|
      t.belongs_to :product, index: true
      t.belongs_to :user, index: true
      t.boolean :same
      t.timestamps
    end
  end
end
