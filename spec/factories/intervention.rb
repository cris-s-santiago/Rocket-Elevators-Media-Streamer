require 'faker'

FactoryBot.define do
    factory :intervention do
        customer_id {1}
        building_id {8}
        report {Faker::Lorem.unique.paragraph}
    end
end