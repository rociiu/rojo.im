class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  belongs_to :category
  
  validates_presence_of :title, :content
  
  def to_param
    "#{id}-#{title.gsub(/[^a-z1-9]+/i, '-')}"
  end
  
  def simple
    Textilizer.new(h(self.content[0..150])).to_html + "<br/>"
  end
  
  def date
    self.created_at.strftime('%Y/%m/%d (%a) %H:%M:%S')
  end
  
  def comments_count
    self.comments.size
  end
  
  
  class << self
    def recent
      find(:all, :limit => 4, :order => "created_at DESC")
    end  
  end
  
end
