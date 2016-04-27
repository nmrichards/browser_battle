
feature "Enter names" do
  scenario "Fills in form" do
    visit('/')
    fill_in('player_1', with: 'Nick')
    fill_in('player_2', with: 'Jack')
    click_button('Submit')
    expect(page).to have_content ('Nick vs. Jack')

  end
end
