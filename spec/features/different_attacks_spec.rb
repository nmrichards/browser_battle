feature "Different attacks", :type => :feature do
  scenario "knife attack" do
    sign_in_and_play
    click_button "Attack Max with a knife"
    expect(page).to have_text("Sergio knifed Max")
  end

  scenario "gun attack" do
    sign_in_and_play
    click_button "Attack Max with a gun"
    expect(page).to have_text("Sergio shot Max")
  end

  scenario "air strike" do
    sign_in_and_play
    click_button "Attack Max with an airstrike"
    expect(page).to have_text("Sergio bombed Max")
  end

  scenario "paralyze" do
    allow(Kernel).to receive(:rand) {10}
    sign_in_and_play
    click_button "Paralyze Max"
    expect(page).to have_text("Sergio paralyzed Max")
  end

  scenario "paralyze skips a turn" do
    allow(Kernel).to receive(:rand) {11}
    sign_in_and_play
    click_button "Paralyze Max"
    click_button "OK"
    expect(page).to have_text("Sergio's turn")
  end
end
