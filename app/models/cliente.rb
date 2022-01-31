class Cliente < ApplicationRecord
  has_one :direccion
  has_many :criticas
  has_many :abogados, through: :criticas
end
