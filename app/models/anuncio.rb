class Anuncio < ApplicationRecord
    has_one_attached :image 
    delegate :filename, to: :file, allow_nil: true
    belongs_to :user
end
