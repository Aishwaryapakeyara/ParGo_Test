#  frozen_string_literal: true

# class Monster Game
class Test2RubyAishwarya1
  @monster_count = 1
  def self.round
    round_no = 1
    player_health = 6
    monster_health = 6
    while player_health.positive?
      puts "\nRound #{round_no}"
      round_no += 1
      monster_health = player_round(monster_health).to_i
      player_health = monster_round(player_health).to_i
    end
    puts 'GAME OVER !!!!'
  end

  def self.player_round(monster_health)
    result = Random.new.rand(1..6)
    puts "Player attacks with #{result} points"
    monster_health -= result

    if monster_health <= 0
      puts 'New Monster Arrives'
      new_monster
    else
      puts "Monster Health = #{monster_health}"
      monster_health
    end
  end

  def self.monster_round(player_health)
    result = Random.new.rand(1..6)
    puts "Monster attacks with #{result} points"
    player_health -= result
    if player_health >= 0
      puts "Player Health = #{player_health}"
    else
      puts 'Player Health = 0 '
      puts "Well done player, you slayed #{@monster_count} monsters!!!"
    end
    player_health
  end

  def self.new_monster
    @monster_count += 1
    monster_health = 6
    player_health = 6
  end

end

puts 'Welcome Player, Attack !'
puts Test2RubyAishwarya1.round
