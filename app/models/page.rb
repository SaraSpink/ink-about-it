class Page < ActiveRecord::Base
  belongs_to :comic
  validates :number, :presence => true
end
