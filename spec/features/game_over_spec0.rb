feature "Displays the winner and loser", :type => :feature do
  scenario "when the game is over" do
    visit('/game_over')
    expect(page).to have_text("Game Over")
  end

  scenario "determines the winner" do
    allow(Kernel).to receive(:rand) {10}
    sign_in_and_play
    losing_game
    click_button("Attack Max with a knife")
    expect(page).to have_text("Sergio wins the game")
  end
end
