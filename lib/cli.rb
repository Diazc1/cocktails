class CLI

    def initialize
        API.new.get_margarita_data
        binding.pry
    end

    def start
        greeting
        menu
    end

    def user_input
        gets.strip
    end

    def greeting
        puts "Welcome to the 'Make Your Own Margarita Bar'!"
        puts "To see available margaritas, enter 'margarita'"
        puts "To exit menu, enter 'exit'"
        menu
    end

    def margaritas_list
        Margarita.all.each.with_index(1) do |margarita, index|
            puts "#{index}. #{margarita}"
        end
    end

    def invalid_entry
        puts "Invalid entry, try again"
    end

    def goodbye
        puts "Don't drink and drive! Goodbye."
    end

    def margarita_instructions
        puts "Which margarita would you like the instructions for?"

        selection = user_input

        puts "#{selection}"
        Margarita.
    end


    def menu         
        selection = user_input

        if selection == "margarita"
            margaritas_list
            menu
        elsif selection == "exit"
            goodbye
        else
            invalid_entry
            menu
        end
    end

end