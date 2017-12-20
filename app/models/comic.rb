class Comic < ActiveRecord::Base
  has_many :pages
  belongs_to :user

  validates :title, :presence => true
  validates :description, :presence => true

  has_attached_file :cover, :styles => { :medium => "500x500>", :thumb => "100x100" }, :default_url => "/img/:style/missing.png"

  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
end
