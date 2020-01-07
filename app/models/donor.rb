class Donor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :donations, dependent: :destroy

  enum gender: %i[male female]
  enum blood_type: %i[A+ A- B+ B- O+ O- AB+ AB-]

  # to help with ArgumentError ('0' is not a valid status) errors
  %i[gender blood_type].each do |attribute|
    define_method :"#{attribute}=" do |value|
      value = value.to_i if value.is_a? String
      super(value)
    end
  end

  def donation_per_year
    male? ? 6 : 4
  end
end
