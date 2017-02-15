require 'rails_helper'

RSpec.describe CommentsReply, type: :model do
  let(:comments_reply) { create(:comments_reply) }
  subject { comments_reply }

  it { is_expected.to respond_to(:parent_comment_id) }
  it { is_expected.to respond_to(:reply_comment_id) }
end
