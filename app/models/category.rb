class Category < ApplicationRecord
  belongs_to :user
  has_many :agendas
  validates :category_name, presence: true, length: { minimum: 3, maximum: 25} 
  validates_uniqueness_of :category_name

 
end
