require 'spec_helper'

describe Category do
  it { should have_many :issues }
  it { should_not have_valid(:name).when(nil) }
end
