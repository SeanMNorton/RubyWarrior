class Player

  @previous_health = 20

  def play_turn(warrior)
    if is_enemy?(warrior)
      warrior.attack!
    elsif is_captive?(warrior)
      warrior.rescue!
    elsif safe_to_heal?(warrior)
      warrior.rest!
    else
      warrior.walk!
    end
    set_health(warrior)
  end


  def is_enemy?(warrior)
    warrior.feel.enemy?
  end

  def is_captive?(warrior)
      warrior.feel.captive?
  end

  def safe_to_heal?(warrior)
   should_heal?(warrior) && @previous_health <= warrior.health
  end

  def should_heal?(warrior)
    warrior.health < 20
  end

  def set_health(warrior)
    @previous_health = warrior.health
  end

end
