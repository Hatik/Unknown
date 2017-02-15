require 'rails_helper'

RSpec.describe Action, type: :model do
  let(:action) { create(:action) }
  subject { action }

  it { is_expected.to respond_to(:title) }
end
