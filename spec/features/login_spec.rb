# frozen_string_literal: true

require "rails_helper"

RSpec.feature "Login", type: :feature do
  let!(:user) { create(:user, password: "password") }

  scenario "User is redirect to home page after loging in" do
    visit "/"

    fill_in "Email", with: user.email
    fill_in "Password", with: "password"

    click_button "Log in"

    expect(page).to have_current_path(root_path)
  end

  scenario "User is presented with an error message when login fails" do
    visit "/"

    fill_in "Email", with: user.email
    fill_in "Password", with: "invalid-password"

    click_button "Log in"

    expect(page).to have_current_path(new_user_session_path)
    expect(page).to have_text("Invalid Email or password.")
  end
end
