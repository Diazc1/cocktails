class CLI

    def initialize
        API.new.get_margarita_data
    end

    def start
        greeting
        menu
    end

    def user_input
        gets.strip
    end

    def menu         
        selection = user_input

        if selection == "margarita"
            margaritas_list
            menu
        elsif selection == "continue"
            margaritas_list
            menu
        elsif selection == "exit"
            goodbye
        else
            invalid_entry
            menu
        end
    end

    def greeting
        puts "**********************************************"
        puts "Welcome to the 'Make Your Own Margarita Bar'!"
        puts "**********************************************"
        puts " "
        puts "To see available margaritas, enter 'margarita'"
        puts " "
    end

    def margaritas_list
        puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~"
        Margarita.all.each.with_index(1) do |margarita, index|
            puts "#{index}. #{margarita.strDrink}"
        end
        margarita_instructions_selection
    end


    def margarita_instructions_selection
        puts "~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ "
        puts "Which margarita would you like the instructions for?"
        puts " "

        selection = user_input
        margarita = Margarita.find_margarita(selection)

        margarita_instructions(margarita)
    end

    def margarita_instructions(margarita)
        puts " ∨∨∨ "
        puts "Instructions: #{margarita.strInstructions}"
        puts "ENJOY! :D"
        puts " "
        puts " "
        puts "To make another selection, enter 'continue'"
        puts "or to exit menu enter 'exit'"
    end


    def invalid_entry
        puts "Invalid entry, try again"
    end

    def goodbye
        puts "Don't drink and drive! Goodbye."
    end

end