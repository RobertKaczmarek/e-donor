class MedicalEntity < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :blood_collection_facilities, dependent: :destroy
  has_many :donations, through: :blood_collection_facilities, dependent: :destroy

  def to_s
    name
  end
end
