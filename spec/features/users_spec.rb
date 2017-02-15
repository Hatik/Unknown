require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "displays user list" do
      visit users_path
      page.should have_content 'Users'
    end
  end
end
