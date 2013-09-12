require 'spec_helper'

describe Issue do
  it { should_not have_valid(:title).when(nil) }
  it { should_not have_valid(:description).when(nil) }

  describe '#categories' do
    it 'includes Bug' do
      expect(Issue.categories).to include('Bug')
    end

    it 'includes Feature Request' do
      expect(Issue.categories).to include('Feature Request')
    end

    it 'includes Customer Service' do
      expect(Issue.categories).to include('Customer Service')
    end
  end
end
