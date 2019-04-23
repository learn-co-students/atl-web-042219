require 'rest-client'
require 'json'
require 'pry'

def welcome
  puts "Welcome to the Book Searcher."
end

def get_search_term
  puts "What sort of books are you looking for today?"
  gets.chomp
end

def search_for_books(query)
  response = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{query}")
  JSON.parse(response.body)["items"]
end

def display_results(books)
  puts "Search Results:\n"
  books.each do |book|
    info = book['volumeInfo']
    puts "\n\n*********\n"
    puts "Title: #{info['title']}"
    puts "Authors: #{info['authors'].join(' and ')}"
    puts "Description: #{info['description']}"
  end
end

def run
  welcome
  query = get_search_term
  data = search_for_books(query)
  display_results(data)
end

run
