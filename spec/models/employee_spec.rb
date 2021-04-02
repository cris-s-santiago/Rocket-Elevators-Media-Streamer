require 'rails_helper'

RSpec.describe Employee, type: :model do

    let!(:employee) {create(:employee)}

    describe 'Associations' do
      it { should belong_to(:user).without_validating_presence }
    end

    it 'is valid with valid params' do
      expect(employee).to be_valid
    end

    it 'is not valid without a last name' do
      employee.last_name = nil
      expect(employee).to_not be_valid
    end

    it 'is not valid without a title' do
      employee.title = nil
      expect(employee).to_not be_valid
    end
end