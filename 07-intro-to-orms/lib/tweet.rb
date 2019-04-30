class Tweet
  attr_accessor :id, :message, :username

  def self.all
    results = DB[:conn].execute("SELECT * FROM tweets")
    results.map { |hash| Tweet.new(hash) }
  end

  def initialize(options={})
    @id = options['id']
    @message = options['message']
    @username = options['username']
    self.save unless @id
  end

  def save
    # query = "INSERT INTO tweets (message, username) VALUES (\"#{@message}\", \"#{@username}\")"
    query = <<-SQL
      INSERT INTO tweets (message, username)
      VALUES ("#{@message}", "#{@username}")
    SQL
    DB[:conn].execute(query)
  end
end
