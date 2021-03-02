class ReservationCollection
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  extend ActiveModel::Translation
  include ActiveModel::AttributeMethods
  include ActiveModel::Validations
  
  attr_accessor :collection  # ここに作成したreservationモデルが格納される

  # 予約の数分だけのレコードを生成
  def initialize(information)
    close_time = information.close
    open_time = information.open
    oneday = close_time - open_time
    60.times do |i|
      oneday.times do |t|
        new_record = Reservation.new(
          information_id: information.id,
          start_time: information.open_time + (t * 3600),
          end_time: information.open_time + 3600 + (t * 3600),
          day: Date.today + i
        )
        @record = Reservation.find_by(information_id: new_record.information_id, start_time: new_record.start_time, end_time: new_record.end_time, day: new_record.day)
        new_record.save if @record.nil?
        end
      end
    end



  # レコードが存在するか確認するメソッド
  def persisted?
    false
  end
end