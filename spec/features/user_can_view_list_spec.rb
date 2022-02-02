feature 'View to do list' do
  scenario 'user can view a to do list' do
    visit '/'
    click_link 'View To Do List'
    expect(page).to have_content 'To Do List'
    expect(page).to have_content 'Take out the bins'
    expect(page).to have_content 'Wash the car'
    expect(page).to have_content 'Buy groceries'
  end
end
