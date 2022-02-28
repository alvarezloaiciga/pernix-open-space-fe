# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Account page", type: :request do
  let(:user) { create(:user) }

  before do
    sign_in user
  end

  describe "show account details" do
    it "shows the account email" do
      get "/account"
      expect(response.body).to include(user.email)
    end
  end

  describe "update account details" do
    it "updates the avatar" do
      avatar = Rack::Test::UploadedFile.new("spec/images/user_avatar.jpeg", "image/jpeg")
      params = { user: { avatar: avatar } }
      patch "/account", params: params

      expect(user.reload.avatar).to be_present
    end
  end

end
