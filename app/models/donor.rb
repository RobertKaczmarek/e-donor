class Donor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments, dependent: :destroy

  enum blood_type: %i[A+ A- B+ B- O+ O- AB+ AB-]

  private

  # to help with ArgumentError ('0' is not a valid status) errors
  def blood_type=(value)
    value = value.to_i if value.is_a? String
    super(value)
  end
end
