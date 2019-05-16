class BooksController < Sinatra::Base
  set :views, 'app/views/books'

  get '/books' do
    @books = Book.all
    erb :index
  end

  get '/books/new' do
    erb :new
  end

  post '/books' do
    @author = Author.find_or_create_by(full_name: params[:author])
    # @author.books.create(title: params[:title], snippet: params[:snippet])
    @book = Book.create(title: params[:title],
                        author_id: @author.id,
                        snippet: params[:snippet])
    redirect "/books/#{@book.id}"
  end

  get '/books/:id' do
    @book = Book.find(params[:id])
    erb :show
  end
end
