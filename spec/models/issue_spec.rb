require 'spec_helper'

describe Issue do
  it { should belong_to :category }

  it { should_not have_valid(:title).when(nil) }
  it { should_not have_valid(:description).when(nil) }
  it { should_not have_valid(:severity).when(nil) }

  describe '.categories' do
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

  describe '.severities' do
    it 'includes Low' do
      expect(Issue.severities).to include('Low')
    end

    it 'includes Moderate' do
      expect(Issue.severities).to include('Moderate')
    end

    it 'includes High' do
      expect(Issue.severities).to include('High')
    end
  end
end
