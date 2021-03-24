class Reservation < ApplicationRecord
  belongs_to :information, optional: true
  belongs_to :user, optional: true
  has_one :receipt, dependent: :destroy
  
  validates :start_time, presence: true
  validates :name, presence: true, on: :update
  validates :number_of_people, presence: true, on: :update
  validates :tel, presence: true, on: :update

  def self_records_destroy
    @records = scope :start_time, -> {where('start_time <= ?', Time.now)}
    @records.destroy
  end
end
