feature "Attack", :type => :feature do
  scenario "Page displays confirmation of attack message" do
    sign_in_and_play
    click_button "Attack Max with a knife"
    expect(page).to have_text("Sergio knifed Max")
  end
end
