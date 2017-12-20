class Page < ActiveRecord::Base
  belongs_to :comic
  validates :number, :presence => true

  has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100>" }, :default_url => "/img/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
