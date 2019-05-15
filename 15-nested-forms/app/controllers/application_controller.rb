class ApplicationController < Sinatra::Base
  set :views, "app/views"

  def initialize
    super
    puts "creating a new controller to answer your request"
    puts self
  end

  # self.get '/' do
  #   "Hello, llamas in pajamas"
  # end

  get '/' do
    @books = Book.all
    erb :index
  end

  get '/books/new' do
    erb :new
  end

  post '/books' do
    @book = Book.create(title: params[:title],
                        author: params[:author],
                        snippet: params[:snippet])
    redirect "/books/#{@book.id}"
  end

  get '/books/:id' do
    @book = Book.find(params[:id])
    erb :show
  end

  get '/cookies' do
    "hi rose"
  end
end
