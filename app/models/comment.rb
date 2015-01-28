class Comment < ActiveRecord::Base
  belongs_to :post
  
  validates :commenter, :body, :presence => true
  validates :commenter, length: { minimum: 3 }
  
end
