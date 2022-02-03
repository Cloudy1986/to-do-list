feature 'Delete Task' do
  scenario 'user can delete a task' do
    
    visit '/to-do'
    click_link 'Add Task'
    fill_in 'title', with: 'Buy toiletries'
    click_button 'Submit'
    click_button 'Delete'
    expect(page).to have_content 'To Do List'
    expect(page).not_to have_content 'Buy toiletries'

  end
end
