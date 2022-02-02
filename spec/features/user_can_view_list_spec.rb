feature 'View Tasks' do
  scenario 'user can view a list of tasks' do
    visit '/'
    click_link 'View To Do List'
    expect(page).to have_content 'To Do List'
    expect(page).to have_content 'Take out the bins'
    expect(page).to have_content 'Wash the car'
    expect(page).to have_content 'Buy groceries'
  end
end
