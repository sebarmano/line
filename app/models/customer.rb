class Customer < ApplicationRecord
  has_many :vehicles
  validates(
    :first_name,
    :last_name,
    :phone,
    presence: true
  )

  def name
    "#{first_name} #{last_name}"
  end
end
