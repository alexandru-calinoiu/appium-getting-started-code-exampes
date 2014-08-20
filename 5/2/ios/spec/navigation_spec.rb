require 'appium_lib'
require_relative '../pages/home'
require_relative '../pages/inner_screen'

describe 'Home Screen Navigation' do

  before(:each) do
    appium_txt = File.join(Dir.pwd, 'appium.txt')
    caps = Appium.load_appium_txt file: appium_txt
    Appium::Driver.new(caps).start_driver
    Appium.promote_appium_methods RSpec::Core::ExampleGroup
    Appium.promote_singleton_appium_methods Pages
  end

  after(:each) do
    driver_quit
  end

  it 'First cell' do
    cell_title = home.first_cell.title
    home.first_cell.click
    inner_screen.has_text cell_title
  end

end
