class Player
  @previoius_health = 0

  def play_turn(warrior)
    if is_enemy?(warrior)
      warrior.attack!
    elsif warrior.health < 20
      warrior.rest!
    else
      warrior.walk!
    end
  end

  def is_enemy?(warrior)
    warrior.feel.enemy?
  end

  def safe_to_heal?
   warrior.health < 20 && warrior.health == @previous_health
  end

end
