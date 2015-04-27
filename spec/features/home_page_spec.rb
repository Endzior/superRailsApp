require 'rails_helper'

feature 'home page' do
  describe 'user visits home page', type: :feature do
    it 'user sees home page' do
      visit '/'
      
      expect(page).to have_content('Privet cyka')
    end
  end
end