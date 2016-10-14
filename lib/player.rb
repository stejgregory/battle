class Player

 DEFAULT_HIT_POINTS = 60

attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

 def receive_damage
  @hit_points -= 10
 end

 def receive_punch
   @hit_points -= rand(7..13)
 end

 def receive_kick
   @hit_points -= rand(2..20)
 end

end
