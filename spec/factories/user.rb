# require 'faker'

# FactoryBot.define do
#     factory :user do
#         email { Faker::Internet.email}
#         password {Faker::Internet.password}

#         after(:create) do |user|
#             employee_role {true}
#         end
#     end
# end