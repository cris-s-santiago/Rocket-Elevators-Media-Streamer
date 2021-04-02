require 'faker'

FactoryBot.define do
    factory :customer do
        user_id {1}
        address_id {1}
        customers_creation_date {Faker::Date.between(from: '1976-02-23', to: '2021-02-23')}
        company_name {Faker::Company.unique.name}
        full_name_of_company_contact {Faker::Name.unique.name}
        company_contact_phone {Faker::PhoneNumber.unique.cell_phone}
        email_of_company_contact {Faker::Internet.unique.email}
        company_description {Faker::Lorem.unique.paragraph}
        full_name_of_service_technical_authority {Faker::Name.unique.name}
        technical_authority_phone_for_service_ {Faker::PhoneNumber.unique.cell_phone}
        technical_manager_email_for_service {Faker::Internet.unique.email}
    end
end