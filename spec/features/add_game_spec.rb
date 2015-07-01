require 'rails_helper'

describe 'the add new game process' do
  it "adds a new game" do
    visit games_path
    click_on 'Add game'
    fill_in 'Title', :with => 'Fallout 2'
    fill_in 'Description', :with => 'Fallout 2'
    fill_in 'Number', :with => 2
    click_on 'Create Game'
    expect(page).to have_content 'Here are all the Fallout fan favorites'
  end
end
