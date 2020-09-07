class Timesheet < ApplicationRecord
  belongs_to :user
  has_many :comments,dependent: :destroy
  validates_presence_of :time_name,:time_date,:time_for
end
