class Website < ActiveRecord::Base
  has_many :issues
  validates_formatting_of :website, using: :url
end
