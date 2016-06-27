class Player
  @previous_health = 20

  def play_turn(warrior)
    p "previous health: #{@previous_health}"
    p "current health: #{warrior.health}"

    if is_enemy?(warrior)
      @previous_health = warrior.health
      warrior.attack!
    elsif safe_to_heal?(warrior)
      warrior.rest!
    else
      @previous_health = warrior.health
      warrior.walk!
    end
  end

  def is_enemy?(warrior)
    warrior.feel.enemy?
  end

  def safe_to_heal?(warrior)
   should_heal?(warrior) && @previous_health <= warrior.health
  end

  def should_heal?(warrior)
    warrior.health < 20
  end

end
