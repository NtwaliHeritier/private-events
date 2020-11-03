require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    let(:event) { FactoryBot.build(:event) }
    it "should have a name of event" do
      event.name = nil
      expect(event).to_not be_valid
    end
    it "should have a small description of event" do
      event.description = nil
      expect(event).to_not be_valid
    end
    it "should have a start date of event" do
      event.start_date = nil
      expect(event).to_not be_valid
    end
  end
  describe "Associations" do
    it { should belong_to(:creator) }
  end
end

