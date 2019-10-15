class CreateAnuncios < ActiveRecord::Migration[5.2]
  def change
    create_table :anuncios do |t|
      t.string :title
      t.string :description
      t.float :price
      t.string :image
      
      t.timestamps
    end
  end
end
