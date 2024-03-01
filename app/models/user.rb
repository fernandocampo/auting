class User < ApplicationRecord
  has_many :cars
  has_many :bookings

  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :user, presence: true
  validates :name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :city, presence: true
  validates :phone, presence: true
  validates :email, presence: true, uniqueness: true
end
