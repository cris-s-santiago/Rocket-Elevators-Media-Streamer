require 'faker'

FactoryBot.define do
    factory :employee do
        first_name {Faker::Name.first_name}
        last_name {Faker::Name.last_name}
        title {'CEO'}
        email {'nicolas.genest@codeboxx.biz'}
        user_id {1}
    end
end