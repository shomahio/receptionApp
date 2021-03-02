class ReservationCollection
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  extend ActiveModel::Translation
  include ActiveModel::AttributeMethods
  include ActiveModel::Validations
  
  attr_accessor :collection  # ここに作成したreservationモデルが格納される

  # 予約の数分だけのレコードを生成
  def initialize(information)
    close_time = information.close_time.to_i
    open_time = information.open_time.to_i
    oneday = close_time - open_time
    #60.times do |i|
      @todays_date = Date.today
      oneday.times do |t|
        new_record = Reservation.new(
          information_id: information.id,
          start_time: '"at_in(1i)" => "2018", "at_in(2i)" => "10", "at_in(3i)" => "15", "at_in(4i)" => "10", "at_in(5i)" => "00",',
          end_time: '"at_out(1i)" => "2018", "at_out(2i)" => "10", "at_out(3i)" => "15" ,"at_out(4i)" => "19" ,"at_out(5i)" => "30"'
        )
        new_record.save
      end
    #end
  end
  

  # レコードが存在するか確認するメソッド
  def persisted?
    false
  end
end