class Agenda < ApplicationRecord
  
  belongs_to :category, class_name: 'Agenda'
end
