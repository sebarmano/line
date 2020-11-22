class Vehicle < ApplicationRecord
  belongs_to :customer
  has_many :assignments

  def description
    "#{brand} #{name} #{color} (#{plate})"
  end
end
