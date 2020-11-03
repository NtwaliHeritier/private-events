require 'rails_helper'

RSpec.describe Invitation, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe 'Associations' do
    it { should belong_to(:event) }
    it { should belong_to(:invitor) }
    it { should belong_to(:invitee) }
  end
end
