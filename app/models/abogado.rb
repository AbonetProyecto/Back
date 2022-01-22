class Abogado < ApplicationRecord
  has_one :usuario
  belongs_to :critica
end
