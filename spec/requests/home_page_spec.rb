# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Home page", type: :request do

  it "renders the home page" do
    get "/"
    expect(response).to render_template(:home)
  end

end
