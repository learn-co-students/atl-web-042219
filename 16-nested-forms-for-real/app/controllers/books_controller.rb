class BooksController < Sinatra::Base
  set :views, 'app/views/books'

  get '/books' do
    @books = Book.all
    erb :index
  end

  get '/books/new' do
    @authors = Author.all
    erb :new
  end

  # patch '/books/:id/edit' do
  #   @book = Book.find(params[:id])
  #   if @book.update(params)
  #    ...
  #   else
  #    ...
  #   end
  # end

  post '/books' do
    @book = Book.new(params)
    if @book.save
      # what to do if the save was successful
      redirect "/books/#{@book.id}"
    else
      # what to do if save failed
      @errors = @book.errors.full_messages
      @authors = Author.all
      erb :new
    end
  end

  get '/books/:id' do
    @book = Book.find(params[:id])
    erb :show
  end
end
