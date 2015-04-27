require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('finding the volume and cost to ship a parcel', {:type => :feature}) do
  it('takes the height, width and length to find the volume and then the volume times the weight to find the cost') do
    visit('/')
    fill_in('height', :with => "5")
    fill_in('width', :with => "5")
    fill_in('length', :with => "10")
    fill_in('weight', :with => "10")
    click_button('Send')
    expect(page).to have_content(2500)
  end
end
