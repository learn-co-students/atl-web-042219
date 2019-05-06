class Animal < ActiveRecord::Base
  belongs_to :zoo

  # def zoo
  #  "SELECT * FROM zoos WHERE id=#{self.zoo_id}"
  # end
end
