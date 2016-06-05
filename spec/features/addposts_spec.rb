require 'rails_helper'

RSpec.feature "Addposts", type: :feature do
  scenario "Success create post" do
    user = create(:user)
    create(:category)
    
    

    visit new_user_session_path

    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Log in'

    expect(page).to have_text 'Signed in successfully'
    
    visit new_post_path

    fill_in 'Title', :with => "Harry Potter" 
    fill_in 'Description', :with => "La camara secreta"
    fill_in 'Author', :with => "Carlos Pino"
    
    select 'Ficcion', :from => 'Category'
    
    click_button 'Create Post'

    expect(page).to have_text 'Post was successfully created.'
  end
end
