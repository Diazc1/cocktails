class CLI

    def initialize
        API.new.get_margarita_data
    end

    def start
        greeting
        menu
    end
#puts "To exit menu, enter 'exit'"

    def greeting
        puts "Welcome to the 'Make Your Own Margarita Bar'!"
        puts "To see available margaritas, enter 'margarita'"
    end

#     def menu         
#         input = gets.strip

#         if input == "margaritas"
#             margaritas_list
#             menu
#         elsif input == "exit"
#             goodbye
#         else
#             invalid_entry
#             menu
#         end
#     end

#     def margaritas_list
#         puts "1. margarita 1"
#         puts "2. margarita 2"
#         puts "3. margarita 3"
#         puts ""
#         puts ""
#         puts "which margarita would you like the instructions for?"
#         input = gets.strip

#         margarita_instructions(input)
#     end

#     def margarita_instructions(margarita)
#         puts "#{margarita}"

#         Margarita.find_margarita(selection)
#     end

#     def invalid_entry
#         puts "Invalid entry, try again"
#     end

#     def goodbye
#         puts "Don't drink and drive! Goodbye."
#     end

end