feature 'View to do list' do
  scenario 'user can view a to do list' do
    visit '/'
    click_link 'View To Do List'
    expect(page).to have_content 'To Do List'
  end
end
