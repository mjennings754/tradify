require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "should create user" do
    visit new_user_url

    fill_in "Username", with: @user.username
    fill_in "Password", with: "secret"
    fill_in "Password confirmation", with: "secret"
    click_on "Create user"
    visit user_url(@user)
    assert text("Users#show")
  end
end
