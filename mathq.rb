module Game
  def Game.start
    puts "welcome to my math quizzer! what's your name?"
    t1 = Thread.new {
      sleep(5)
      puts "please type in your name and press enter"
      sleep(5)
      abort("alright. Goodbye! type 'ruby mathq.rb' to play again")
    }
    t1
    name = gets.chomp
    Thread.kill(t1)
    puts "well, hello there, " + name + "! Do you know how to play? (yes/no)"
    khtp = gets.chomp
    if khtp == "no"
      Game.instructions
    else
      puts "good. lets start."
      game

  end
  def Game.instuctions
    puts "ok. the game is really very simple. I'm going to give you a math problem and you are going to solve it, and type in the
    number of the answer."
    puts "lets start."
    game
  end
end

Game.start

def game
  puts "first question. "
end
