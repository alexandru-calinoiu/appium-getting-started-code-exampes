require 'appium_lib'

describe 'Home Screen Navigation' do

  before(:each) do
    appium_txt = File.join(Dir.pwd, 'appium.txt')
    caps = Appium.load_appium_txt file: appium_txt
    Appium::Driver.new(caps).start_driver
    Appium.promote_appium_methods RSpec::Core::ExampleGroup
  end

  after(:each) do
    driver_quit
  end

  it 'First cell' do
    cell_1 = wait { text 2 }
    cell_title = cell_1.name.split(',').first

    wait { cell_1.click }
    wait { text_exact cell_title }
  end

end
