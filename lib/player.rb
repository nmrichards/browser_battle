class Player

  attr_reader :name, :hp

  HP = 100

  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def receive_attack(damage = 10)
    @hp -= damage
  end

end
