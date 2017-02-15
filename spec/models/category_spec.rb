require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { create(:category) }
  subject { category }

  it { is_expected.to respond_to(:title) }

end
