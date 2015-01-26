class Post < ActiveRecord::Base
  has_many :comments
  
  validates :title, :content, :presence => true
  validates :title, length: { minimum: 3 }
  validates :title, :uniqueness => true
  
end
