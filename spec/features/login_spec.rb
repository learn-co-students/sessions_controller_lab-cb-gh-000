require 'rails_helper'

RSpec.describe "homepage", type: :feature do
  it "if the user is not logged in, the page should show them a login link." do
    visit '/'
    expect(page).to have_link('please login', href: login_path)
  end

  it "if the user is logged in, the page should say, hi, name, and provide a logout link.." do
    visit '/login'
    fill_in 'name', with: 'kumquats'
    click_button("login")
    expect(page).to have_content("kumquats")
    expect(current_url).to eq("http://www.example.com/")
    expect(page).to have_button('logout')
  end
end