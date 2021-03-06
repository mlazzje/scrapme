class Website < ActiveRecord::Base
  has_many :issues
  validates_formatting_of :website, using: :url
  validates_formatting_of :owner, using: :email
  validates_formatting_of :manager, using: :email
end
