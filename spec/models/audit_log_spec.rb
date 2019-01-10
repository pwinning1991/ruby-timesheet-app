require 'rails_helper'

RSpec.describe AuditLog, type: :model do
  before do
    @audit_log = FactoryGirl.create(:audit_log)
  end
  describe 'creation' do
    it 'can be properly created' do
      expect(@audit_log).to be_valid
    end
  end

  describe 'validations' do
    it 'it should be required to have a user assoiation' do
      @audit_log.user_id = nil
      expect(@audit_log).to_not be_valid
    end
    it 'it should always have a staus' do
      @audit_log.status = nil
      expect(@audit_log).to_not be_valid
    end
    it 'it should be required to have a start date' do
      @audit_log.start_date = nil
      expect(@audit_log).to_not be_valid
    end
    it 'it should have a start date equal to 6 days prior' do
      new_audit_log = AuditLog.create!(user_id: User.last.id, status: 0 )
      expect(new_audit_log.start_date).to eq(Date.today - 6.days)
    end
  end
end
