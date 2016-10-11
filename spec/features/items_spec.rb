require 'rails_helper'

feature 'Item management' do

  # given(:login_user) { create :user }
  #
  # background do
  #   sign_in_user login_user
  # end

  #新しいアイテムを作る
  scenario "add a new user" do
    user = create(:user)

    visit root_path
    expect(page).to have_content 'You need to sign in or sign up before continuing'

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'

    visit root_path
    expect(page).to have_content 'Listing journals'
  end

  scenario "js test", js: true do
    user = create(:user)

    visit root_path
    page.save_screenshot
    expect(page).to have_content 'You need to sign in or sign up before continuing'

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'

    visit root_path
    save_and_open_page
    expect(page).to have_content 'Listing journals'
  end
end