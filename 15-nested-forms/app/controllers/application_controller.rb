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


  get '/cookies' do
    "hi rose"
  end
end
