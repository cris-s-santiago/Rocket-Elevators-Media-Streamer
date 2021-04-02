require 'rails_helper'
require 'spec_helper'

RSpec.describe Intervention, type: :model do

  let!(:intervention) {create(:intervention)}

  context "Create Intervention" do
    it "Should successfully create intervention given valid params" do
      expect(intervention).not_to be_nil
      expect(intervention.column).to be_nil
      expect(intervention.report).to be_a(String)     
    end
  end
end