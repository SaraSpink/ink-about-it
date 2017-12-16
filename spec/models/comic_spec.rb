require 'rails_helper'

describe Comic do
  it { should validate_presence_of :title }
  it { should belong_to :user }
  it { should have_many :pages}
end
