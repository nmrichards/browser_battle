def sign_in_and_play
  visit "/"
  fill_in "player_1_name", :with => "Sergio"
  fill_in "player_2_name", :with => "Max"
  click_button "Play"
end

def losing_game
  sign_in_and_play
  9.times do
    click_button("Attack Max with a knife")
    click_button("OK")
    click_button("Attack Sergio with a knife")
    click_button("OK")
  end
end
