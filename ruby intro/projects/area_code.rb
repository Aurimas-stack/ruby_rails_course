dial_book = {
    "newyork" => "212",
    "edison" => "023",
    "miami" => "304"
}

def get_city_name(somehash)
    somehash.keys
end 

def get_area_code(somehash, key)
    somehash[key]
end

loop do 
    puts "Do you want to lookup an area code based on city namy?(Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city do you want to lookup the city code for?"
    puts get_city_name(dial_book)
    puts "Enter your selection"
    prompt = gets.chomp
    if dial_book.include?(prompt)
        puts "The area code for #{prompt} is #{get_area_code(dial_book, prompt)}"
    else  
        puts "You entered an invalid city name"
    end
end 