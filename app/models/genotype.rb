class Genotype < ApplicationRecord
  belongs_to :diagnosis
  belongs_to :chromosome
end
