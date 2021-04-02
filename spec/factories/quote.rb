require 'faker'

FactoryBot.define do
    factory :quote do
        company_name {Faker::Company.unique.name}
        contact_name {Faker::Name.unique.name}
        email {Faker::Internet.unique.email}
        product_line {Faker::Number.between(from: 1, to: 3)}
        installation_fee {Faker::Number.between(from: 1, to: 6)}
        sub_total {Faker::Number.between(from: 1, to: 6)}
        total {Faker::Number.between(from: 1, to: 6)}
        building_type {"residential"}
        num_of_floors {Faker::Number.between(from: 1, to: 6)}
        num_of_apartments {Faker::Number.between(from: 1, to: 6)}
        num_of_basements {Faker::Number.between(from: 1, to: 6)}
        num_of_parking_spots {Faker::Number.between(from: 1, to: 6)}
        num_of_distinct_businesses {Faker::Number.between(from: 1, to: 6)}
        num_of_elevator_cages {Faker::Number.between(from: 1, to: 6)}
        num_of_occupants_per_Floor {Faker::Number.between(from: 1, to: 6)}
        num_of_activity_hours_per_day {Faker::Number.between(from: 1, to: 6)}
        required_columns {Faker::Number.between(from: 1, to: 6)}
        required_shafts {Faker::Number.between(from: 1, to: 6)}
        created_at {Faker::Date.between(from: '2018-02-23', to: '2021-02-23')}
    end
end