class ReservationCollection
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  extend ActiveModel::Translation
  include ActiveModel::AttributeMethods
  include ActiveModel::Validations
  
  attr_accessor :collection  # ここに作成したreservationモデルが格納される

  # 予約の数分だけのレコードを生成
  def initialize(information,destroy_records)
    new_records = []
    close_time = information.close
    open_time = information.open
    oneday = close_time - open_time
    require "date"
    year = Date.today.year
    month = Date.today.month
    day = Date.today.day
    dt = DateTime.new(year, month, day, open_time, 0, 0, 0.375)
    60.times do |i|
      oneday.times do |t|
        new_record = Reservation.new(
          information_id: information.id,
          start_time: dt + Rational(t, 24)
        )
        @record = Reservation.find_by(information_id: new_record.information_id, start_time: new_record.start_time)
        new_records << new_record if @record.nil?
      end
      dt = dt + 1
    end
    Reservation.import new_records
    #destroy_records.destroy.all
  end

  def self_records_destroy
    @records.destroy
  end


  # レコードが存在するか確認するメソッド
  def persisted?
    false
  end
end