class Assignment < ApplicationRecord
  belongs_to :vehicle
  has_many :tasks
end
