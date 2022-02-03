feature 'Update Task' do
  scenario 'user can update a task' do
    
    visit '/to-do'
    click_link 'Add Task'
    fill_in 'title', with: 'Borrow leaf blower from Frank'
    click_button 'Submit'
    click_button 'Edit'
    fill_in 'title', with: 'Return lawn mower to Dave'
    click_button 'Submit'

    expect(page).to have_content 'To Do List'
    expect(page).not_to have_content 'Borrow leaf blower from Frank'
    expect(page).to have_content 'Return lawn mower to Dave'

  end
end
