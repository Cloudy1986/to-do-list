feature 'View Tasks' do
  scenario 'user can view a list of tasks' do
    connection = PG.connect(dbname: 'to_do_database_test')
    connection.exec("INSERT INTO tasks (title) VALUES ('Sell shares');")
    connection.exec("INSERT INTO tasks (title) VALUES ('Mow the lawn');")
    connection.exec("INSERT INTO tasks (title) VALUES ('Buy stationary');")
    
    visit '/'
    click_link 'View To Do List'
    expect(page).to have_content 'To Do List'
    expect(page).to have_content 'Sell shares'
    expect(page).to have_content 'Mow the lawn'
    expect(page).to have_content 'Buy stationary'
  end
end
