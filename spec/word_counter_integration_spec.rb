require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the word frequency path', {:type => :feature}) do
  it('processes the user entries and returns the frequency in which a word appears in a given string') do
    visit('/')
    fill_in('word_to_count', :with => 'happy')
    fill_in("sentence", :with => "I am happy happy happy")
    click_button('Search')
    expect(page).to have_content('word')
  end
end

describe('the return home path', {:type => :feature}) do
  it('allows the user to return to the index to search another word') do
    visit('/')
    fill_in('word_to_count', :with => 'happy')
    fill_in("sentence", :with => "I am happy happy happy")
    click_button('Search')
    click_link('Search for another word')
    expect(page).to have_content('Enter the word you want the frequency counter to evaluate')
  end
end
