require 'rails_helper'

RSpec.describe Upload, type: :model do
  let(:upload) { create(:upload) }
  subject { upload }

  it { is_expected.to respond_to(:user_id) }
  it { is_expected.to respond_to(:title) }
  it { is_expected.to respond_to(:image_path) }
  it { is_expected.to respond_to(:category_id) }
  it { is_expected.to respond_to(:show_flag) }
  it { is_expected.to respond_to(:rating) }
end
