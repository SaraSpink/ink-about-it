class Page < ActivRecord::Base
  belongs_to :comic
  validates :number, :presence => true
end
