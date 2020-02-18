class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :intro
      t.string :resume
      t.string :author
      t.string :title2
      t.string :title3
      t.string :content
      t.string :domain
      t.string :description
      t.string :youtube
      t.string :link
      t.timestamps
    end
  end
end
