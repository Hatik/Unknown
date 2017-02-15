require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { create(:comment) }
  subject { comment }

  it { is_expected.to respond_to(:user_id) }
  it { is_expected.to respond_to(:upload_id) }
  it { is_expected.to respond_to(:note) }
end
