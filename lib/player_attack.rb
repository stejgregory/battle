class Attack
  def initialize(player)
   @player = player
  end

  def self.run(player)
   new(player).run
   end

  def self.punch(player)
    new(player).punch
  end

  def self.kick(player)
    new(player).kick
  end

  def run
   @player.receive_damage
  end

  def punch
    @player.receive_punch
  end

  def kick
    @player.receive_kick
  end

end
