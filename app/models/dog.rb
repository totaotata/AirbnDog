class Dog < ApplicationRecord
has_many :strolls
has_many :dogsitters ,through: :strolls
belongs_to :cities, optional: true 
end
