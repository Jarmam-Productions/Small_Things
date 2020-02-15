class Booking < ApplicationRecord
  ALLOWED_STATUSES = %w[offered accepted completed not_completed refused].freeze
  belongs_to :user
  belongs_to :activity
  has_many :reviews, dependent: :destroy
  validates :status, inclusion: { in: ALLOWED_STATUSES }

  def offered
    self.update!(status: 'offered')
  end

  def accepted
    self.update!(status: 'accepted')
  end

  def completed
    self.update!(status: 'completed')
  end

  def not_completed
    self.update!(status: 'not_completed')
  end

  def refused
    self.update!(status: 'refused')
  end
end
