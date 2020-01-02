class Player

  attr_reader :name, :hp
  attr_accessor :hp

  DEFAULT_HIT_POINTS = 60

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hp -= random_damage_amount
  end

  def random_damage_amount
    Kernel.rand(1..10)
  end
end 