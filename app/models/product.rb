class Product < ApplicationRecord
    has_one_attached :image
    has_many_attached :images
end
