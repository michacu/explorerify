class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  def self.search(search)
  	if search
    self.where("tags like ?", "%#{search}%").order('id DESC')
  	else
    	self.order('id DESC') 
  	end
  end
end
