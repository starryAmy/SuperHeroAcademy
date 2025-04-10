class Booking < ApplicationRecord
  enum status: { pending: 0, accepted: 1, rejected: 2 }
  belongs_to :user
  belongs_to :course
end
