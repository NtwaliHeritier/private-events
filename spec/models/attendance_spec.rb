require 'rails_helper'

RSpec.describe Attendance, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Associations' do
    it { should belong_to(:user_attended) }
    it { should belong_to(:attended_event) }
  end
end
