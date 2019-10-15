class Anuncio < ApplicationRecord
    has_one_attached :image
    # delegate :filename, to: :image, allow_nil: true
end
