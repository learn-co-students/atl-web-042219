class Teacher
  attr_reader :name, :grumpiness, :helpfulness

  @@teachers = []

  def initialize(name, grumpiness, helpfulness)
    @name = name
    @grumpiness = grumpiness
    @helpfulness = helpfulness
    @@teachers << self
  end

  def self.all
    @@teachers
  end

  def self.grumpiest
    self.all.max_by { |t| t.grumpiness }
  end

  # def self.grumpiest
  #   most_grumpy = nil
  #   max_grumpiness = 0
  #   self.all.each do |teacher|
  #     if teacher.grumpiness > max_grumpiness
  #       max_grumpiness = teacher.grumpiness
  #       most_grumpy = teacher
  #     end
  #   end
  #   most_grumpy
  # end

  private
  def example
    puts "hello world"
  end
end
