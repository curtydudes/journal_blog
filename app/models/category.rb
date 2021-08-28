class Category < ApplicationRecord
  validates :category_name, presence: true, length: { minimum: 3, maximum: 25} 
  validates_uniqueness_of :category_name
end
