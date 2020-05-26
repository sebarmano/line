class Customer < ApplicationRecord
  has_many :vehicles

  def name
    "#{first_name} #{last_name}"
  end
end
