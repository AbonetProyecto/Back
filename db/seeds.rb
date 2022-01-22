require 'faker'
5.times do
  Telefono.create!({
                    movil: Faker::PhoneNumber.cell_phone,
                    convencional: Faker::PhoneNumber.phone_number
                  })
  Direccion.create!({
                     callePrincipal: Faker::Address.street_address,
                     calleSecundaria: Faker::Address.secondary_address,
                     ciudad: Faker::Address.city,
                     sector: Faker::Address.community,
                   })
  
end
