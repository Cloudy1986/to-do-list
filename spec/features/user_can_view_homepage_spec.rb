feature 'Homepage' do
  
  scenario 'user can view homepage' do
    visit '/'
    expect(page).to have_content 'To Do List Manager'
  end
  
end
