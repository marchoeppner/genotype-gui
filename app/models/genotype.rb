class Genotype < ApplicationRecord
  belongs_to :diagnosis
  belongs_to :chromosome
  belongs_to :category
end
