class Donor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  encrypts :blood_type, type: :string

  has_many :donations, dependent: :destroy

  enum gender: %i[male female]

  # to help with ArgumentError ('0' is not a valid status) errors
  def gender=(value)
    value = value.to_i if value.is_a? String
    super(value)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def donation_per_year
    male? ? 6 : 4
  end
end
