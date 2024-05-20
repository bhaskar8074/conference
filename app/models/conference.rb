class Conference < ApplicationRecord
    has_many :registrations
    has_many :users, through: :registrations
    has_many :feedbacks
  
    validates :title, presence: true
    validates :date, presence: true
  end
  