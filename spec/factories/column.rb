require 'faker'

FactoryBot.define do
    factory :column do
        battery_id {1}
        building_type {[:Residential, :Commercial, :Corporate, :Hybrid].sample}
        number_of_floors_served {Faker::Number.between(from: 2, to: 60)}
        status {[:Active, :Intervention, :Inactive].sample}
        information {Faker::Lorem.sentence(word_count: 3)}
        notes {Faker::Lorem.unique.paragraph}
    end
end