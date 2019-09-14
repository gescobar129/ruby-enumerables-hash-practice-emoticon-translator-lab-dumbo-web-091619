require 'yaml'
<<<<<<< HEAD
require 'pry'
=======
>>>>>>> 2e0789e8fe6aa05cd0b997fc9a20fe847449acbe

def load_library(file_path)
  file = File.read(file_path)
  emoticons = YAML.load(file)
<<<<<<< HEAD
  
  new_hash = {"get_emoticon": {}, "get_meaning": {} }
  
  temp_hash1 = {}
  emoticons.each do |english_meaning, emoticon_array|
    emoticon_array.each do |emoticon|
      temp_hash1[emoticon] = english_meaning
    #temp_hash[emoticon_array] = english_meaning
  end
  end
  
  temp_array = []
  emoticons.each do |english_meaning, emoticon_array|
    emoticon_array.each do |emoticon|
      temp_array.push(emoticon_array)
    end
  end
  
  temp_hash2 = Hash[temp_array.map { |eng_emoticon, jap_emoticon| [eng_emoticon, jap_emoticon]}]
  
    new_hash[:get_meaning] = temp_hash1
    new_hash[:get_emoticon] = temp_hash2
    
=======
  print emoticons
  puts "!!!!!!!!!!!!!!!!!!!!!!"
  new_hash = {"get_emoticon": {}, "get_meaning": {} }
  temp_hash = {}
  emoticons.each do |english_meaning, jap_emoticon|
    temp_hash[jap_emoticon] = english_meaning
  end
    new_hash[:get_meaning] = temp_hash
  print new_hash
  puts "^^^^^^^^^^^^^^^^^^^^"
>>>>>>> 2e0789e8fe6aa05cd0b997fc9a20fe847449acbe
  return new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  emoticon_hash = load_library(file_path)
  
  if emoticon_hash[:get_emoticon][emoticon]
    return emoticon_hash[:get_emoticon][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end
  

def get_english_meaning(file_path, emoticon)
  emoticon_hash = load_library(file_path)
  
  if emoticon_hash[:get_meaning][emoticon]
    return emoticon_hash[:get_meaning][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  
end