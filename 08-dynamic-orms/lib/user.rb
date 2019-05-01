class User < BasicORM
  attr_accessor :id, :bio, :avatar, :email

  def initialize(options={})
    @id = options['id']
    @bio = options['bio']
    @avatar = options['avatar']
    @email = options['email']
    self.save
  end
end
