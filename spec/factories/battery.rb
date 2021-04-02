require 'faker'

FactoryBot.define do
    factory :battery do
        building_id {1}
        building_type {[:Residential, :Commercial, :Corporate, :Hybrid].sample}
        status {[:Active, :intervation, :Inactive].sample}
        employee_id {1}
        date_of_commissioning {Faker::Date.between(from: '2018-02-23', to: '2021-02-23')}
        date_of_last_inspection {Faker::Date.between(from: '2018-02-23', to: '2021-02-23')}
        certificate_of_operations {Faker::Alphanumeric.unique.alphanumeric(number: 10)}
        information {Faker::Lorem.sentence(word_count: 3)}
        notes {Faker::Lorem.unique.paragraph}
    end
end