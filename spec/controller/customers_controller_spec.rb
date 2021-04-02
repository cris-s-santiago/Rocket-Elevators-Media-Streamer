require 'rails_helper'

RSpec.describe LeadsController, type: :controller do

    describe "Test Customer : Success scenario" do
        let!(:customer){create(:customer)}   

        context "Create user" do
            it "Should successfuly create user given valid params" do
                expect(customer.email_of_company_contact).to_not be_nil
                expect(customer.company_name).to_not be_nil
            end
        end

        context "Update user" do
            it "Should successfuly update user given valid params" do
                
                customer.update(company_name: 'CodeBoxx')
                expect(customer.company_name).to eq('CodeBoxx')                
            end
        end
    end
end