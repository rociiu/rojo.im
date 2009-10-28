class Comment < ActiveRecord::Base
  belongs_to :post
  
  validates_presence_of :name, :email, :content
  def commenter
    self.customer.blank? ? "[People]" : self.customer
  end
  
  def date
    self.created_at.strftime('%Y/%m/%d (%a) %H:%M:%S')
  end
  
  def commentor_name
    if self.url
      "<a href='#{self.url}'>#{self.name}</a>"
    else
      self.name
    end
  end
  
  class << self
    def recent
      find(:all, :limit => 5)
    end  
  end
end
