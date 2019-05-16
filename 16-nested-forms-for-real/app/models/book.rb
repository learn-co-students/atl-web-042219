class Book < ActiveRecord::Base
  belongs_to :author

  # validates :snippet, length: { in: 140..500 }
end
