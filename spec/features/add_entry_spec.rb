# As a user
# So that I can keep a daily diary
# I want to be able to add a new Diary Entry

feature 'adding new entries' do
  scenario 'a user can add a new entry into Daily Diary' do
    visit('/diary/new')
    fill_in('entry', with: 'Hello world')
    click_button('Submit')
    expect(page).to have_content('Entry stored!')
  end
end