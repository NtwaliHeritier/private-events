require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    let(:user) { FactoryBot.build(:user) }
    it "should have a username" do
      user.username = nil
      expect(user).to_not be_valid
    end
    it "should have a email" do
      user.email = nil
      expect(user).to_not be_valid
    end
  end
end
