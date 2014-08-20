require_relative '../pages/home'
require_relative '../pages/inner_screen'
require_relative '../../common/spec_helper'

describe 'Home Screen Navigation' do

  it 'First cell' do
    cell_title = home.first_cell.title
    home.first_cell.click
    inner_screen.has_text cell_title
  end

end
