require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do    
   
    let!(:email){Faker::Internet.email}
    let!(:password){Faker::Internet.password}

    context "Create user" do
        it "Should successfuly create user given valid params" do

            user = User.create(email: email, password: password)

            expect(user.email).to eq(email)
            expect(user.password).to eq(password)
        end
    end
    context "Update user" do
        it "Should successfuly update user given valid params" do

            user = User.create(email: email, password: password)
            user.update(email: 'cristiane@cristiane.com', password: 'teste123')

            expect(user.email).to eq('cristiane@cristiane.com')
            expect(user.password).to eq('teste123')
        end
    end
end
