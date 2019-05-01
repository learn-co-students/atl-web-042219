class BasicORM
  def self.table_name
    "#{self.name.downcase}s"
  end

  def self.all
    results = DB[:conn].execute("SELECT * FROM #{self.table_name}")
    results.map { |hash| self.new(hash) }
  end
end
