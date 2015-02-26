require 'rails_helper'

describe 'user registration' do 
  it 'should register user successfully' do
    visit root_path
    click_link 'register', 
    fill_in 'email', with: 'new1@new.com'
    fill_in 'user name', with: 'new1'
    fill_in 'git hub username', with: 'gitnew1'
    fill_in 'password', with: 'password'
    fill_in 'password confirmation', with 'password'
    click_button 'sign up'
    expect(page.find('#flash-notice')).to have_content('Welcome! You have successfully signed up.')
    click_link 'places'
  end

  describe 'view courses', type: :feature, js: true do
    it "should link to courses index" do
      visit root_path 
      click_link 'register'
      fill_in 'email', with: 'new1@new.com'
      fill_in 'user name', with: 'new1'
      fill_in 'github name', with: 'gitnew1'
      fill_in 'password', with: 'password'
      fill_in 'password confirmation', with: 'password'
      click_button 'sign up'
      expect(page.find('#flash-notice')).to have_content('Welcome! You have successfully signed up.')
      click_link 'courses'
    end
end








