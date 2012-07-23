class Comment < ActiveRecord::Base
  attr_accessible :author, :body
  belongs_to :post
end
