# require "rails_helper"

# RSpec.describe Reservation, type: :model do
#   before do
#     @reservation = FactoryBot.build(:reservation)
#   end
  

#   describe '予約登録' do
#     context '予約できるとき' do
#       it '全ての情報があれば登録できる' do
#         expect(@reservation).to be_valid
#       end
#     end
#     context '予約できないとき' do
#       it 'お名前が空では登録できない' do
#         patch :edit
#         @reservation.name = ""
#         @reservation.valid?
#         binding.pry
#         expect(@reservation.errors.full_messages).to include("お名前を登録してください")
#       end

#       it '人数が空では登録できない' do
#         @reservation.number_of_people = ""
#         @reservation.valid?
#         expect(@reservation.errors.full_messages).to include("人数を登録してください")
#       end

#       it '電話番号が空では登録できない' do
#         @reservation.tel = ""
#         @reservation.valid?
#         expect(@reservation.errors.full_messages).to include("電話番号を登録してください")
#       end

#       it 'nameが空では登録できない' do
#         @reservation.start_time = ""
#         @reservation.valid?
#         expect(@reservation.errors.full_messages).to include("店名を登録してください")
#       end
#     end
#   end
# end