class Reservation < ApplicationRecord
  belongs_to :information, optional: true
  belongs_to :user, optional: true
  has_one :receipt, dependent: :destroy

  # def self_records_destroy
  #   @records = scope :start_time, -> {where('start_time <= ?', Time.now)}
  #   @records.destroy
  # end

end
