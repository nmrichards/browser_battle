
feature "Hit Points", :type => :feature do
  scenario "hit points displayed" do
    sign_in_and_play
    expect(page).to have_text("Sergio's hit points: #{Player::HP}")
    expect(page).to have_text("Max's hit points: #{Player::HP}")
  end

  scenario "attack reduces HP" do
    sign_in_and_play
    click_button("Attack Max with a knife")
    click_button("OK")
    click_button("Attack Sergio with a knife")
    expect(page).to have_text("Max knifed Sergio")
  end

  scenario "attack switches player " do
    sign_in_and_play
    click_button("Attack Max with a knife")
    click_button("OK")
    expect(page).to have_text "Sergio's hit points: #{Player::HP}"
  end
end
