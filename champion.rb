###########冠軍(Champion)的程式碼##########
class Champion < Hero
  def attack(enemy)
    if @sp > 0
      use_stamina
      damage = Hero.count * 50
        puts "#{@name} 攻擊!"
        puts "#{@name}使用了一點SP"
        puts "#{enemy.name} 受到 #{damage} 點傷害"
      enemy.hp -= damage
        if enemy.hp < 1
          puts "#{@name}獲勝！"
          enemy.die
        else
          puts "#{enemy.name} 剩下 #{enemy.hp} 點 HP"
          puts ""
        end
    elsif @sp < 1
      @sp = @sp + 2
      puts "#{@name}無法攻擊, 休息一回合，恢復 2 sp"
      puts ""
    end
  end
end
