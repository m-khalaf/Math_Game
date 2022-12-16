require './player'
require './question'

class Game

  def initialize
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
    @game_over = false
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.score}/3"
    puts "--- GAME OVER ----"
    puts "Good Bye!"
    @game_over = true
    exit(0)
  end

  def check_score
    if @player_1.is_dead?
      winner(@player_2)
    elsif @player_2.is_dead?
      winner(@player_1)
    end
  end

  def print_score
    puts "P1: #{@player_1.score}/3 vs P2: #{@player_2.score}/3"
  end

  def run_game
    while @game_over == false
      @player_1.new_question
      check_score
      print_score
      puts "--- NEW TURN ---"
      @player_2.new_question
      check_score
      print_score
      puts "--- NEW TURN ---"
    end
  end


end
  