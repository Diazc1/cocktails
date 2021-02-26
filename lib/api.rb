class Cocktail::API

    def initialize
        @url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
    end

    def get_maragrita_data   
        margarita_hash = HTTParty.get(@url)
        margarita_hash["drinks"]   #return an array of margarita hashes

    end






end
