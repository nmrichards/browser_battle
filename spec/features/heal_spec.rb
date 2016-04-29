feature "Heals", :type => :feature do
  scenario "user" do
    sign_in_and_play
    click_button "Heal potient"
    expect(page).to have_text("Sergio healed by 10HP")
  end
end
