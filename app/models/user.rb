class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :registrations
    has_many :conferences, through: :registrations
    has_many :feedbacks
  
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
  end
  