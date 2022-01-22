class Critica < ApplicationRecord
  has_many :abogados
  has_many :clientes
end
