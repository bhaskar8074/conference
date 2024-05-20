class Feedback < ApplicationRecord
  belongs_to :user
  belongs_to :conference

  validates :comment, presence: true
end
