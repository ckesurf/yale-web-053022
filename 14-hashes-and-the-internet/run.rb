require "pry"
require "rest-client"
require "json"

def welcome_user
  puts "Welcome to our book searching app! Please tell me what kind of books you want to search for: "
end

def get_user_search_query
  gets.chomp
end

def get_books(search_query)
  # make a request to the google books api and get a response back
  response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{search_query}")

  # inspect the response and turn into a Ruby data structure
  ruby_data = JSON.parse(response)
end

def run
  welcome_user
  search_query = get_user_search_query
  books_data = get_books(search_query)

  titles_arr = books_data["items"].map do |book|
    book["volumeInfo"]["title"]
  end

  puts titles_arr
end

while true
  run
end

# binding.pry
