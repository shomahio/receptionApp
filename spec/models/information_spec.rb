require 'rails_helper'

RSpec.describe Information, type: :model do
  before do
    @information = FactoryBot.build(:information)
  end

  describe '店舗情報の保存' do
    context "店舗情報の保存が投稿できる場合" do
      it "全ての項目があれば投稿できる" do
        expect(@information).to be_valid
      end
      
      it "があれば投稿できる" do
        @information.building = nil
        expect(@information).to be_valid
      end
    end
    context "店舗情報の保存ができない場合" do
      it "料理画像が空では登録できない" do
        @information.image = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("トップ画像を登録してください")
      end
      it "料理画像が空では登録できない" do
        @information.image_foods = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("料理画像は3枚にしてください")
      end
      it "画像が３枚以下では投稿できない" do
        @information.image_foods.delete_at(1) 
        @information.valid?
        expect(@information.errors.full_messages).to include("料理画像は3枚にしてください")
      end
      it "画像が３枚以上では投稿できない" do
        @information.image_foods << {io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}
        @information.valid?
        expect(@information.errors.full_messages).to include("料理画像は3枚にしてください")
      end
      
      it "外観画像が空では登録できない" do
        @information.image_appearances = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("外観画像は3枚にしてください")
      end
      it "画像が３枚以下では投稿できない" do
        @information.image_appearances.delete_at(1) 
        @information.valid?
        expect(@information.errors.full_messages).to include("外観画像は3枚にしてください")
      end
      it "画像が３枚以上では投稿できない" do
        @information.image_appearances << {io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}
        @information.valid?
        expect(@information.errors.full_messages).to include("外観画像は3枚にしてください")
      end
    end
  end
end

