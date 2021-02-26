class Cocktail::CLI

    def call
        puts "Welcome user"
        puts "To see available margaritas, enter 'margaritas'"
        puts "To exit menu, enter 'exit'"
        menu
    end

    def menu         
        input = gets.strip

        if input == "margaritas"
            margaritas_list
            menu
        elsif input == "exit"
            goodbye
        else
            invalid_entry
            menu
        end
    end

    def margaritas_list
        puts "1. margarita 1"
        puts "2. margarita 2"
        puts "3. margarita 3"
    end

    def invalid_entry
        puts "Invalid entry, try again"
    end

    def goodbye
        puts "Don't drink and drive! Goodbye."
    end

end