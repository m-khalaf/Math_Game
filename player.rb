class Player
  attr_accessor :score, :name

  def initialize(name) 
    @name = name
    @score = 3
  end

  def take_life 
    @score -= 1
  end

  def is_dead?
    @score == 0
  end
  

  def new_question
    q1 = Question.new
    q1.ask_question(name)
    answer = gets.chomp.to_i

    if q1.check_answer(answer)
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      take_life
    end


  
  
  end

end
