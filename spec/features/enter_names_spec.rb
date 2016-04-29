
feature "Enter names" do
  scenario "Fills in form" do
    sign_in_and_play
    expect(page).to have_content ('Nick vs. Jack')
  end
end
