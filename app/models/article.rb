class Article < ActiveRecord::Base
  
  belongs_to :user
  
  attr_accessible :description, :name, :published
    
  scope :published, where(:published => true)
  
  validates_presence_of :description, :name
  
  STATUS = %w[Draft Publish]
  
  
end
