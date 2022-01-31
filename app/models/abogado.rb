class Abogado < ApplicationRecord
  has_one :direccion
  has_many :criticas
  has_many :clientes, through: :criticas
end
