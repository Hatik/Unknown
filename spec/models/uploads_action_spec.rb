require 'rails_helper'

RSpec.describe UploadsAction, type: :model do
  let(:uploads_action) { create(:uploads_action) }
  subject { uploads_action }

  it { is_expected.to respond_to(:user_id) }
  it { is_expected.to respond_to(:upload_id) }
  it { is_expected.to respond_to(:action_id) }
end
