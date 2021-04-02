require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do    

    let!(:user){create(:user)}

    context "Create user" do
        it "Should successfuly create user given valid params" do

            expect(user.email).not_to be_nil
            expect(user.password).not_to be_nil
        end
    end
    context "Update user" do
        it "Should successfuly update user given valid params" do

            user.update(email: 'cristiane@cristiane.com', password: 'teste123')

            expect(user.email).to eq('cristiane@cristiane.com')
            expect(user.password).to eq('teste123')
        end
    end
end
