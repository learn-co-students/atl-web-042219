class ApplicationController < Sinatra::Base
  set :views, "app/views"

  # self.get '/' do
  #   "Hello, llamas in pajamas"
  # end

  get '/' do
    @books = Book.all
    erb :index
  end

  get '/books/:id' do
    @book = Book.find(params[:id])
    erb :show
  end

  get '/cookies' do
    "hi rose"
  end
end
