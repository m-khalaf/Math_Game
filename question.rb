class Question


  def initialize 
    @num1 = rand (1..20)
    @num2 = rand (1..20)
    @answer = @num1 + @num2
  end

  def question
    puts "what does #{@num1} plus #{@num2} equal ?"
  end

  def answer
    user_answer = gets.chomp.to_i
    if user_answer == @answer
      puts true
    else
      puts false
    end
  end

end

q1=Question.new
q1.question
q1.answer