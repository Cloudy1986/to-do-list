feature 'View Tasks' do
  scenario 'user can view a list of tasks' do
    connection = PG.connect(dbname: 'to_do_database_test')
    connection.exec("INSERT INTO tasks (title) VALUES ('Buy new car');")
    connection.exec("INSERT INTO tasks (title) VALUES ('Reply to emails');")
    connection.exec("INSERT INTO tasks (title) VALUES ('Phone the council');")
    
    visit '/'
    click_link 'View To Do List'
    expect(page).to have_content 'To Do List'
    expect(page).to have_content 'Buy new car'
    expect(page).to have_content 'Reply to emails'
    expect(page).to have_content 'Phone the council'
  end
end
