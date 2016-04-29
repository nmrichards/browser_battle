class Game


  attr_reader :player1, :player2, :current_player, :opponent, :loser_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player2
    @opponent = player1
  end

  def self.create(player1, player2)
    @game = self.new(player1, player2)
  end

  def self.instance
    @game
  end

  def attack(attack)
    if attack == "paralyzed"
      paralyze
    else
      @opponent.receive_attack(damage = Kernel.rand(1..10))
    end
    check_loser
  end

  def switch
    (@current_player, @opponent = @opponent, @current_player)
  end

  def paralyze
    Kernel.rand(50).odd? ? switch : nil
  end

  def healed
    @current_player.healed
  end

  def check_loser
    if @player1.hp <= 0
      @loser_player = @player1
    elsif @player2.hp <= 0
      @loser_player = @player2
    end
    @loser_player
  end

  def winner
    players = [@player1, @player2]
    players.reject{|x| x == @loser_player}.first
  end

end
