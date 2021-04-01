require 'rails_helper'
require 'spec_helper'
require 'faker'

RSpec.describe Intervention, type: :model do

  context "Create Intervention" do
    it "Should successfully create intervention given valid params" do
      intervention = Intervention.new(customer_id: 1, building_id: 8, report: "test123").save
      expect(intervention).to eq(true)        
    end
  end
  context "Create Intervention" do
    it "Should not create intervention given invalid parameters" do
      intervention = Intervention.new(building_id: 8, report: "test123").save
      expect{intervention}.to_not change(Intervention, :count)
    end
  end       
end