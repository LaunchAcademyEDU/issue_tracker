require 'spec_helper'

describe Issue do
  it { should_not have_valid(:title).when(nil) }
  it { should_not have_valid(:description).when(nil) }
end
