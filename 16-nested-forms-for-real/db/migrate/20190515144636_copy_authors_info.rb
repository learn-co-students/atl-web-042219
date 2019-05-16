class CopyAuthorsInfo < ActiveRecord::Migration[5.2]
  def change
    Book.all.each do |book|
      # Author.create(full_name: book.author)
      # Just use find or create by to avoid duplicates
      author = Author.find_or_create_by(full_name: book.author)
      book.update(author_id: author.id)
    end
  end
end
