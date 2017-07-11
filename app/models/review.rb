class Review < ApplicationRecord
  belongs_to :product

  # validates :author, :content, :presence => true
end
