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
      it "トップ画像が空では登録できない" do
        @information.image = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("トップ画像を登録してください")
      end
      it "料理画像が空では登録できない" do
        @information.image_foods = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("料理画像は3枚にしてください")
      end
      it "料理画像が３枚以下では投稿できない" do
        @information.image_foods.delete_at(1) 
        @information.valid?
        expect(@information.errors.full_messages).to include("料理画像は3枚にしてください")
      end
      it "料理画像が３枚以上では投稿できない" do
        @information.image_foods << {io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}
        @information.valid?
        expect(@information.errors.full_messages).to include("料理画像は3枚にしてください")
      end
      
      it "外観画像が空では登録できない" do
        @information.image_appearances = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("お店の外観画像は3枚にしてください")
      end
      it "外観画像が３枚以下では投稿できない" do
        @information.image_appearances.delete_at(1) 
        @information.valid?
        expect(@information.errors.full_messages).to include("お店の外観画像は3枚にしてください")
      end
      it "外観画像が３枚以上では投稿できない" do
        @information.image_appearances << {io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}
        @information.valid?
        expect(@information.errors.full_messages).to include("お店の外観画像は3枚にしてください")
      end

      it "お店の内観画像が空では登録できない" do
        @information.image_introspections = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("お店の内観画像は3枚にしてください")
      end
      it "お店の内観画像が３枚以下では投稿できない" do
        @information.image_introspections.delete_at(1) 
        @information.valid?
        expect(@information.errors.full_messages).to include("お店の内観画像は3枚にしてください")
      end
      it "お店の内観画像が３枚以上では投稿できない" do
        @information.image_introspections << {io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}
        @information.valid?
        expect(@information.errors.full_messages).to include("お店の内観画像は3枚にしてください")
      end

      it "お店の入り口からの画像が空では登録できない" do
        @information.image_entrances = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("お店の入り口からの画像は3枚にしてください")
      end
      it "お店の入り口からの画像が３枚以下では投稿できない" do
        @information.image_entrances.delete_at(1) 
        @information.valid?
        expect(@information.errors.full_messages).to include("お店の入り口からの画像は3枚にしてください")
      end
      it "お店の入り口からの画像が３枚以上では投稿できない" do
        @information.image_entrances << {io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}
        @information.valid?
        expect(@information.errors.full_messages).to include("お店の入り口からの画像は3枚にしてください")
      end
      
      it "席の画像が空では登録できない" do
        @information.image_seats = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("席の画像は3枚にしてください")
      end
      it "席の画像が３枚以下では投稿できない" do
        @information.image_seats.delete_at(1) 
        @information.valid?
        expect(@information.errors.full_messages).to include("席の画像は3枚にしてください")
      end
      it "席の画像が３枚以上では投稿できない" do
        @information.image_seats << {io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}
        @information.valid?
        expect(@information.errors.full_messages).to include("席の画像は3枚にしてください")
      end

      it "お手洗いの画像が空では登録できない" do
        @information.image_toilets = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("お手洗いの画像を登録してください")
      end

      it "お手洗いの画像が３枚以上では投稿できない" do
        @information.image_seats << {io: File.open('public/images/test_top.jpg'), filename: 'test_top.jpg'}
        @information.valid?
        expect(@information.errors.full_messages).to include("お手洗いの画像は3枚にしてください")
      end

      it "店名がなかったら登録できない" do
        @information.store_name = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("店名を登録してください")
      end 

      it "電話番号がなかったら登録できない" do
        @information.tel = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("電話番号を登録してください")
      end 

      it "郵便番号がなかったら登録できない" do
        @information.postal_code = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("郵便番号を登録してください")
      end 

      it "市町村がなかったら登録できない" do
        @information.city = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("市町村を登録してください")
      end 

      it "番地がなかったら登録できない" do
        @information.address = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("番地を登録してください")
      end 

      it "メールアドレスがなかったら登録できない" do
        @information.email = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("メールアドレスを登録してください")
      end 

      it "食べ物のジャンルがなかったら登録できない" do
        @information.genre_id = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("食べ物のジャンルを登録してください")
      end 


      it "エリアがなかったら登録できない" do
        @information.place_id = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("エリアを登録してください")
      end 


      it "商品の説明がなかったら登録できない" do
        @information.explanation = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("商品の説明を登録してください")
      end 


      it "交通手段がなかったら登録できない" do
        @information.transportation = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("交通手段を登録してください")
      end 


      it "営業開始時間がなかったら登録できない" do
        @information.opening_time = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("営業開始時間を登録してください")
      end 


      it "営業終了時間がなかったら登録できない" do
        @information.closing_time = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("営業終了時間を登録してください")
      end 


      it "席数がなかったら登録できない" do
        @information.seet = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("席数を登録してください")
      end 


      it "店内照明がなかったら登録できない" do
        @information.light_id = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("店内照明を登録してください")
      end 

      it "店内照明が1では登録できない" do
        @information.light_id = 1
        @information.valid?
        expect(@information.errors.full_messages).to include("店内照明を選択してください")
      end


      it "店内音量 がなかったら登録できない" do
        @information.volume_id = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("店内音量を登録してください")
      end 

      it "店内音量が1では登録できない" do
        @information.volume_id = 1
        @information.valid?
        expect(@information.errors.full_messages).to include("店内音量を選択してください")
      end


      it "予算がなかったら登録できない" do
        @information.budget_id = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("予算を登録してください")
      end 

      it "予算が1では登録できない" do
        @information.budget_id = 1
        @information.valid?
        expect(@information.errors.full_messages).to include("予算を選択してください")
      end

      it "喫煙についてがなかったら登録できない" do
        @information.tobacco_id = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("喫煙についてを登録してください")
      end 

      it "喫煙についてが1では登録できない" do
        @information.tobacco_id = 1
        @information.valid?
        expect(@information.errors.full_messages).to include("喫煙についてを選択してください")
      end

      it "定休日がなかったら登録できない" do
        @information.holiday_id = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("定休日 を登録してください")
      end 

      it "定休日が1では登録できない" do
        @information.holiday_id = 1
        @information.valid?
        expect(@information.errors.full_messages).to include("定休日 を選択してください")
      end

      it "予約可能かどうかがなかったら登録できない" do
        @information.booking_id = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("予約可能かどうかを登録してください")
      end 

      it "予約可能かどうかが1では登録できない" do
        @information.booking_id = 1
        @information.valid?
        expect(@information.errors.full_messages).to include("予約可能かどうかを選択してください")
      end

      it "駐車場の有無がなかったら登録できない" do
        @information.parking_id = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("駐車場の有無を登録してください")
      end 

      it "駐車場の有無が1では登録できない" do
        @information.parking_id = 1
        @information.valid?
        expect(@information.errors.full_messages).to include("駐車場の有無を選択してください")
      end

      it "利用シーンがなかったら登録できない" do
        @information.reception_id = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("利用シーンを登録してください")
      end 

      it "利用シーンが1では登録できない" do
        @information.reception_id = 1
        @information.valid?
        expect(@information.errors.full_messages).to include("利用シーンを選択してください")
      end

      it "postal_codeがハイフンを含んだ正しい形式でないと保存できないこと" do
        @information.postal_code = "1234567"
        @information.valid?
        expect(@information.errors.full_messages).to include("郵便番号にハイフンを含めてください")
      end

      it "postal_codeが全角では保存できないこと" do
        @information.postal_code = "１２３−４５６７"
        @information.valid?
        expect(@information.errors.full_messages).to include("郵便番号にハイフンを含めてください")
      end





    end
  end
end

