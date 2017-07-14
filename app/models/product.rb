class Product < ApplicationRecord
validates :name, :description, presence: true
validates :price, numericality: true, presence: true

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
