class Anuncio < ApplicationRecord
    has_one_attached :image 
    validates :image, presence: true
    validates_presence_of :image
end
