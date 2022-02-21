# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Home page", type: :request do
  let(:user) { User.create(email: "user@email.com", password: "password") }

  before do
    sign_in user
  end

  it "renders the home page" do
    get "/"
    expect(response).to render_template(:home)
  end

end
