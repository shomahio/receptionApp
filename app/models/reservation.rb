class Reservation < ApplicationRecord
  belongs_to :information
  belongs_to :user, optional: true
  
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :name, presence: true, on: :update
  validates :number_of_people, presence: true, on: :update
end
