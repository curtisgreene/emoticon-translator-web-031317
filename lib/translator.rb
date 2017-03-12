# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  # code goes here
  library = { "get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file(file_path).each do |feeling, symbols_array|
  english = symbols_array[0]
  japanese = symbols_array[1]
  library["get_emoticon"][english] = japanese
  library["get_meaning"][japanese] = feeling
  end
  library
end

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  winner = library["get_emoticon"][emoticon]
  if winner
    winner
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  library = load_library(file_path)
  winner = library["get_meaning"][emoticon]
  if winner
    winner
  else
    "Sorry, that emoticon was not found"
  end
end
