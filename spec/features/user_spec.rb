require 'rails_helper'

describe 'user navigation' do
  describe 'creating user' do
    it 'can register with full set of user attributes' do
      visit new_user_registration_path

      within ".devise-new-user" do
        fill_in 'user[first_name]', with: "Bill"
        fill_in 'user[last_name]', with: "Gates"
        fill_in 'user[email]', with: "test@example.com"
        fill_in 'user[password]', with: "password"
        fill_in 'user[password_confirmation]', with: "password"
        click_on "Sign up"
      end

      expect(page).to have_content("Welcome! You have signed up successfully.")
      expect(User.last.first_name).to eql('Bill')
      expect(User.last.last_name).to eql('Gates')
      expect(User.last.email).to eql('test@example.com')
    end
  end
end
