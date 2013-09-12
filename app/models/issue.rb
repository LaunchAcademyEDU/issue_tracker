class Issue < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description

  def self.categories
    [
      'Bug',
      'Feature Request',
      'Customer Service'
    ]
  end
end
