require "rails_helper"
require_relative "../support/devise"

RSpec.describe InterventionsController, :type => :controller do   

    let!(:user) {create(:user)}    
    let!(:customer) {create(:customer)}
    let!(:building) {create(:building, customer_id: customer.id)}
    let!(:battery) {create(:battery, building_id: building.id)}
    let!(:column) {create(:column, battery_id: battery.id)}
    let!(:elevator) {create(:elevator, column_id: column.id)}
    let!(:employee) {create(:employee, user_id: user.id)}

    describe "GET interventionGetData" do
        it "has a 200 status code" do
            get :interventionGetData
            expect(response.status).to eq(200)
        end
    end

    describe "GET interventionGetData" do
        it "has a JSON" do
            get :interventionGetData
            expect(response.content_type).to eq "application/json"
        end
    end
    
    describe "Post Create" do
        login_user
        context "Given valid params" do
            it "Creste a new intervention request" do                
                valid_params = {
                    customer: customer.id,
                    building: building.id,
                    battery: battery.id,
                    column: column.id,
                    elevator: elevator.id,
                    employee: employee.id,
                    report: "Test",
                }
                post :create, params: valid_params

                expect(Intervention.last.report).to eq(valid_params[:report])
                expect(Intervention.last.employee.id).to eq(valid_params[:employee])
                expect(Intervention.last.customer.id).to eq(valid_params[:customer])                
            end
        end
    end
end