class Tweet < BasicORM
  attr_accessor :id, :message, :username

  def self.find(id)
    results = DB[:conn].execute("SELECT * FROM tweets WHERE id=?", id)
    Tweet.new(results.first)
  end

  def initialize(options={})
    @id = options['id']
    @message = options['message']
    @username = options['username']
    self.save
  end

  def save
    if @id
      query = "UPDATE tweets SET message=?, username=? WHERE id=?"
      DB[:conn].execute(query, self.message, self.username, self.id)
      # Alternately, you can do this but I don't like it because its 2 steps.
      # query_runner = db.prepare(query)
      # query_runner.execute(self.message, self.username, self.id)
    else
      query = "INSERT INTO tweets (message, username) VALUES (?, ?)"
      DB[:conn].execute(query, self.message, self.username)
      @id = DB[:conn].execute("SELECT last_insert_rowid()").first['last_insert_rowid()']
    end
  end
end
