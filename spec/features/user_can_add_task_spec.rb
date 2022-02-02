feature 'Add Task' do
  scenario 'user can add a task to the list' do

    visit '/to-do'
    click_link 'Add Task'
    fill_in 'title', with: 'Pick up gardening equipment'
    click_button 'Submit'

    expect(page).to have_content 'To Do List'
    expect(page).to have_content 'Pick up gardening equipment'
    
  end
end