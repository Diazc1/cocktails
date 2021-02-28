class API

    def initialize
        @url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
    end

    def get_margarita_data
        margarita_hash = HTTParty.get(@url)
        margarita_array = margarita_hash["drinks"]
        self.create_margarita_objects(margarita_array)
    end

    def create_margarita_objects(margarita_array)
        margarita_array.each do |margarita_hash|
            Margarita.new(margarita_hash)
        end
    end
    

end

