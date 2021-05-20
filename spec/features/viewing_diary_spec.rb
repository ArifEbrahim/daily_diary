feature 'viewing diary entries' do
  scenario 'visit the index page' do
    visit('/')
    expect(page).to have_content('Daily Diary')
  end
end