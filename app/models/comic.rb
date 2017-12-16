class Comic < ActiveRecord::Base
  has_many :pages
  belongs_to :user

  validates :title, :presence => true
  validates :description, :presence => true
end
