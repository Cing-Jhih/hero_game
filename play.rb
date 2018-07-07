###############執行步驟################
champion = Champion.new("Peter", 100, 30)
hero1 = Hero.new("Roger", 100, 30)
hero2 = Hero.new("Ben", 100, 30)
hero3 = Hero.new("Jack", 100, 30)
monster = Monster.new("Bigfoot", 1000, 30)


while champion.is_alive? && monster.is_alive?
  champion.attack(monster)
  if !monster.is_alive?
    break
  end

  monster.attack(champion)
end
