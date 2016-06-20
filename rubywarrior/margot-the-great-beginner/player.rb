class Player

  def play_turn(warrior)
    if is_enemy?(warrior)
      warrior.attack!
    else
      warrior.walk!
    end
  end

  def is_enemy?(warrior)
    warrior.feel.enemy?
  end

end
