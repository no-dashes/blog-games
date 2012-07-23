class Post < ActiveRecord::Base
  attr_accessible :title, :body, :author, :published_at, :category_id
  has_many :comments, dependent: :destroy
  belongs_to :category

  validates_presence_of :title
  validates_presence_of :body

end
