require 'rails_helper'

RSpec.feature "Addposts", type: :feature do
  scenario "Success create post" do
    user = create(:user)

    visit new_user_session_path

    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Log in'

    expect(page).to have_text 'Signed in successfully'
    
    visit new_post_path

    fill_in 'Title', :with => "Harry Potter" 
    fill_in 'Description', :with => "La camara secreta"
    fill_in 'Author', :with => "Carlos Pino"
    #fill_in 'category', :with => "Ficcion"
    #find("option[value='Ficcion']").click
    #find_field('post_category').text
    #find('post_category > option:nth-child(1)').click
    #select 'ficcion', from: "post_category"
    #ind('#post_category').select_option
    #option = first('#post_category option').text
    #select option, from: 'post_category'
    #find("post_category").find("option[value='Ficcion']").select_option
    click_button 'Create Post'

    expect(page).to have_text 'Post was successfully created.'
  end
end
