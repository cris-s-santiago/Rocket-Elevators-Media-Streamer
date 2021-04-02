require 'faker'

FactoryBot.define do
    factory :elevator do

        column_id {1}
        serial_number {Faker::Alphanumeric.unique.alphanumeric(number: 15)}
        model {[:Standard, :Premium, :Excelium].sample}
        building_type {[:Residential, :Commercial, :Corporate, :Hybrid].sample}
        status {[:Active, :Inactive].sample}
        date_of_commissioning {Faker::Date.between(from: '2018-02-23', to: '2021-02-23')}
        date_of_last_inspection {Faker::Date.between(from: '2018-02-23', to: '2021-02-23')}
        certificate_of_inspection {Faker::Alphanumeric.unique.alphanumeric(number: 15)}
        information {Faker::Lorem.sentence(word_count: 3)}
        notes {Faker::Lorem.unique.paragraph}
    end
end