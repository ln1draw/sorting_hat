class PSH
  def ask
    input = gets.chomp
    until input == 'exit'
      complex = true
      if input =~ /.*\?/
        puts 'Well you are inquisitive, aren\'t you?'
        complex = false
      end
      #could have been an elsif, but I wanted the option to answer with both lines if 
      #you gave an allcaps question. This is why it isn't an elsif and why I created complex.
      if input !~ /[a-z]+/
        if input =~ /[A-Z]+/
          puts 'Well you are rather loud, aren\'t you?'
          complex = false
        end
      end
      if input !~ /\w/
        puts 'Hello?… Are you there? You are too quiet… Or perhaps you don\'t exist'
        complex = false
      end
      if complex
        puts 'Hmmmm....I don\'t know...you seem complex.'
      end
      input = gets.chomp
    end
  end
end