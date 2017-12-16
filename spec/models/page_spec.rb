require 'rails_helper'

describe Page do
  it { should validate_presence_of :number }
  it { should belong_to :comic }
end
