require 'rails_helper'

describe Review do
  it { should validate_presence_of :name }
  it { should validate_presence_of :opinion }
  it { should validate_presence_of :rating }
  it { should belong_to :game}
end
