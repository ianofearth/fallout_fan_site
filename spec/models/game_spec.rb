require 'rails_helper'

describe Game do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :number }
  it { should have_many :reviews}
end
