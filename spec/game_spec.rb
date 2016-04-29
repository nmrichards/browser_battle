require 'game'

describe Game do

let(:game) {described_class.new(player1, player2)}
let(:player1)  { double :player1, hp: 90}
let(:player2)  { double :player2, hp: 90}
let(:opponent) { double :opponent }

  context '#attack' do
    it "attacks a player" do
      expect(player1).to receive(:receive_attack)
      game.attack("knife")
    end
  end

  context '#switch' do
    it "if current player is player2, switches game to player1" do
      game.switch
      expect(game.current_player).to eq game.player1
    end

    it "if current player is player1, switches game to player2" do
      game.switch
      game.switch
      expect(game.current_player).to eq game.player2
    end

  end

  context '#paralyze' do
    it "gives a chance of skipping turn of the opponent" do
      allow(Kernel).to receive(:rand) {11}
      game.paralyze
      game.switch
      expect(game.current_player).to eq game.player2
    end
  end

  context '#check_loser' do
    let(:player1) { double :player1, hp: 0 }
    it "allows a player to lose a game" do
      game.check_loser
      expect(game.loser_player).to eq player1
    end
  end

end
