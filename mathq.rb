

module Game
  def Game.game



    #t3 = Thread.new {
      $stdout.flush
      pa = "yes"
      puts "problem one. you will have 10 seconds to solve it.press enter for your first question"
      vjhgwkhbkwj = gets.chomp
      t2 = Thread.new {
        sleep(10)
        puts "sorry " + $name + ", time up! play again? (yes/no)"
        pa = gets.chomp
        if pa == "yes"
          Game.game
        else
          abort("goodbye!")
        end
        Thread.stop


      }
      t2
      panswer = "140"
      puts "what is 74 + 66?"
      answer = "140"
      panswer = gets.chomp
      #$stdout.flush
      if panswer == "140"
        puts "correct!"
         Thread.kill(t2)
         exit
      else
        puts "wrong!"
        Game.game
      end

    #}
    #t3
  end

  def Game.instructions
    puts "ok. the game is really very simple. I'm going to give you a math problem and you are going to solve it, and type in the
    number of the answer. press enter to start"
    nv615723562 = gets.chomp
    puts "ok. starting..."
    Game.game

  end

  def Game.start
    for i in 0..10
      puts ""
    end
    puts "welcome to my math quizzer! what's your name?"
    t1 = Thread.new {
      sleep(5)
      puts "please type in your name and press enter"
      sleep(10)
      abort("alright.  I geuss your not playing. Goodbye! type 'ruby mathq.rb' to play again")
    }
    t1
    $name = gets.chomp
    Thread.kill(t1)
    puts "well, hello there, " + $name + "! Do you know how to play? (yes/no)"
    khtp = gets.chomp
    if khtp == "no"
      Game.instructions
    else
      puts "good. lets play"
      Game.game
    end

  end

end

Game.start
Game.game
