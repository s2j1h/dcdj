class Event < ActiveRecord::Base
  attr_accessible :date, :name
  
  validates :name,  :presence => true
  validates :date, :presence => true
end
