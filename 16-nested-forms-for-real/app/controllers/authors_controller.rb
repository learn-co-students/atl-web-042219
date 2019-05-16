class AuthorsController < Sinatra::Base
  set :views, 'app/views/authors'

  get '/authors/new' do
    erb :new
  end

  post '/authors' do
    binding.pry
    @author = Author.find_or_create_by(full_name: params[:full_name])
    params[:books].each do |book_data|
      Book.create(book_data)
    end
    redirect "/authors/#{@author.id}"
  end

  get '/authors' do
    @authors = Author.all
    erb :index
  end

  get '/authors/:id' do
    @author = Author.find(params[:id])
    erb :show
  end
end
