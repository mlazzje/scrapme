class Issue < ActiveRecord::Base
  belongs_to :website
  has_and_belongs_to_many :states
end
