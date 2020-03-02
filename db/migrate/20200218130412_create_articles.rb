class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :intro
      t.string :resume
      t.string :author
      t.string :title2
      t.string :title3
      t.string :title4
      t.string :title5
      t.string :title6
      t.string :title7
      t.string :title8
      t.string :title9
      t.string :content
      t.string :content2 
      t.string :content3
      t.string :content4
      t.string :content5
      t.string :content6
      t.string :content7
      t.string :content8
      t.string :content9
      t.string :domain
      t.string :description
      t.string :youtube
      t.string :link

      t.belongs_to :user, index: true #cette ligne rajoute la référence à la table users
      t.timestamps
    end
  end
end
