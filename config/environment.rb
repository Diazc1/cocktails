require 'pry'
require 'httparty'




require_relative '../lib/module/cocktail.rb'
require_relative '../lib/api'
require_relative '../lib/cli'
require_relative '../lib/margarita'

Cocktail::CLI.new
