require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the returned frequency path', {:type => :feature}) do

  it('returns returned_frequency') do
      visit('/')
      fill_in("input_sentence", :with => "I like cats")
      fill_in("input_word", :with => "cats")
      click_button('Submit')
      expect(page).to have_content("1")
  end

  it('returns returned_frequency with 0 number') do
      visit('/')
      fill_in("input_sentence", :with => "I like cats")
      fill_in("input_word", :with => "dogs")
      click_button('Submit')
      expect(page).to have_content("0")
  end

end
