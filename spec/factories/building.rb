require 'faker'

FactoryBot.define do
    factory :building do
        customer_id {1}
        address_id {1}
        full_name_of_the_building_administrator {Faker::Name.unique.name}
        email_of_the_administrator_of_the_building {Faker::Internet.unique.email}
        phone_number_of_the_building_administrator {Faker::PhoneNumber.unique.cell_phone}
        full_name_of_the_technical_contact_for_the_building {Faker::Name.unique.name}
        technical_contact_email_for_the_building {Faker::Internet.unique.email}
        technical_contact_phone_for_the_building {Faker::PhoneNumber.unique.cell_phone}
    end
end