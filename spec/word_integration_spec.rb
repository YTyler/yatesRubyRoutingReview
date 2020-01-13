require "capybara/rspec"
require "./app"
require "pry"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe ('/dictionary'), {:type => :feature} do
  it 'checks add word hyperlink' do
    visit('/dictionary')
    click_on('Add a Word')
    expect(page).to have_content('Enter New Word')
  end
end

describe ('/dictionary/new'), {:type => :feature} do
  it 'checks that a word is added' do
    visit('/dictionary/new')
    fill_in('name', :with => 'Xylophone')
    click_on('Add')
    expect(page).to have_content('Xylophone')
  end
end

describe ('/dictionary/:id'), {:type => :feature} do
  it 'checks that a word is deleted' do
    visit('/dictionary')
    # fill_in('name', :with => 'Xylophone')
    # click_on('Add')
    click_on('Xylophone')
    click_on('Delete Word')
    expect(page).to have_content('No words have been added to our Dictionary yet')
  end

  it 'checks that a word is deleted' do
    visit('/dictionary/new')
    fill_in('name', :with => 'Xylophone')
    click_on('Add')
    click_on('Xylophone')
    fill_in('new_definition', :with => 'Musical Instrument')
    click_on('Submit')
    expect(page).to have_content('Musical Instrument')
  end
end
