class AddReferencesToAnuncios < ActiveRecord::Migration[5.2]
  def change
    add_reference :anuncios, :user, foreign_key: true
  end
end
