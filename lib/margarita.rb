class Margarita


    @@all = []

    attr_accessor :strDrink, :strInstructions

    def initialize(margarita_hash)
        margarita_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def  self.find_margarita(margarita_strDrink)
        self.all.find do |margarita|
            margarita.strDrink == margarita_strDrink
        end
    end

end

