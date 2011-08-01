class Post < ActiveRecord::Base
  has_many :comments
  
  validates :text, :presence => true, :length => { :minimum => 100 }
  validates :title, :presence => true
  
  default_scope :order => 'posts.created_at DESC'
  
  
end
