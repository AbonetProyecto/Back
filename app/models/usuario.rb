class Usuario < ApplicationRecord
  belongs_to :abogado
  belongs_to :cliente
  has_one :telefono
  has_one :direccion

end
