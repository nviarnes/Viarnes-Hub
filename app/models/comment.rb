class Comment < ActiveRecord::Base
  belongs_to :post
  
  validates :text, :presence => true
  
  default_scope :order => 'comments.created_at DESC'
  
end
