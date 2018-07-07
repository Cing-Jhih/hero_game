###########英雄(Hero)的程式碼##########
class Hero
  @@heroes = []
  attr_accessor :name, :hp, :ap, :sp

  def self.count
    return @@heroes.count
  end

  def initialize(name, hp, ap)
    @name = name
    @hp = hp
    @ap = ap
    @alive = true
    @sp = 3

    puts "英雄#{@name}誕生了！"
    puts "生命值(HP):#{@hp}"
    puts "攻擊力(AP):#{@ap}"
    puts "生命值(SP):#{@sp}"
    puts "-"*20

    @@heroes << self
  end

  def attack(enemy)
    if @sp > 0
      use_stamina
      damage = rand(@ap/2..@ap)
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

  def die
    @alive = false
    puts "#{@name}陣亡！"
  end

  def is_alive?
    return @alive
  end

  def use_stamina
    @sp -= 1
  end
end
