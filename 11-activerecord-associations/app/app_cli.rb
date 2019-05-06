class AppCLI

  def run
    puts "Welcome to the zoo browser"
    puts "what would you like to do today?"

    main_menu
  end

  def main_menu
    puts "1 - List our zoos"
    puts "2 - List our animals"
    puts "3 - quit"

    choice = gets.chomp.to_i

    until choice == 3
      case choice
      when 1
        list_zoos
      when 2
        list_animals
      else
        puts "That was definitely not one of our choices. Try again."
      end
    end
  end

  def list_zoos
    zoos = Zoo.all
    zoos.each do |zoo|
      puts "The #{zoo.name} is in #{zoo.location}"
    end
  end
end
