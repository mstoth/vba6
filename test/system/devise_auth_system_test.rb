# test/system/devise_auth_system_test.rb
require 'application_system_test_case'

class DeviseAuthSystemTest < ApplicationSystemTestCase
  test 'sign in existing user' do
    user = users(:one)
    sign_in user

    visit "/agent/index"
    assert_current_path "/agent/index"
    assert_text 'Index'
  end

  test 'create user and sign in' do
    email = Faker::Internet.email
    password = Faker::Internet.password(min_length: 10, max_length: 30)
    puts password
    puts email

    visit "/users/sign_up"
    # visit new_user_session_path

    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    click_button 'Sign up'

    # assert_current_path "/"
    assert_text 'Index'
  end
end
