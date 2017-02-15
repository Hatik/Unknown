require 'rails_helper'

RSpec.describe CommentsAction, type: :model do
  let(:comments_action) { create(:comments_action) }
  subject { comments_action }

  it { is_expected.to respond_to(:user_id) }
  it { is_expected.to respond_to(:comment_id) }
  it { is_expected.to respond_to(:action_id) }
end
