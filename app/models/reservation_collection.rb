class ReservationCollection
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  extend ActiveModel::Translation
  include ActiveModel::AttributeMethods
  include ActiveModel::Validations
  
  attr_accessor :collection  

  # 予約の数分だけのレコードを生成
  def initialize(information,destroy_records)
    new_records = []
    close_time = information.closing_time.strftime("%H").to_i
    open_time = information.opening_time.strftime("%H").to_i
    oneday = close_time - open_time
    if close_time > open_time
      oneday = close_time - open_time
    else
      oneday = close_time - open_time + 24
    end
    require "date"
    year = Date.today.year
    month = Date.today.month
    day = Date.today.day
    dt = DateTime.new(year, month, day, open_time, 0, 0, 0.375)
    #現在から60日分のレコード作成
    60.times do |i|
      #1日の予約分のレコード作成
      oneday.times do |t|
        new_record = Reservation.new(
          information_id: information.id,
          start_time: dt + Rational(t, 24)
        )
        #同じレコードを作成しない為の条件分岐
        @record = Reservation.find_by(information_id: new_record.information_id, start_time: new_record.start_time)
        new_records << new_record if @record.nil?
      end
      dt = dt + 1
    end
    Reservation.import new_records
  end

  def self_records_destroy
    @records.destroy
  end


  # レコードが存在するか確認するメソッド
  def persisted?
    false
  end
end