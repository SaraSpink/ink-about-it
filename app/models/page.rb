class Page < ActiveRecord::Base
  belongs_to :comic
  validates :number, :presence => true

  has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
