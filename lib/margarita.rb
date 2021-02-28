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

end

