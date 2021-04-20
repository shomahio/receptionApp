require "rails_helper"

RSpec.describe Store, type: :model do
  before do
    @store = FactoryBot.build(:store)
  end

  describe '店舗新規登録' do
    context '新規登録できるとき' do
      it '全ての情報があれば登録できる' do
        expect(@store).to be_valid
      end

    end
    context '新規登録できないとき' do
      it 'emailが空では登録できない' do
        @store.email = ""
        @store.valid?
        expect(@store.errors.full_messages).to include("メールアドレスを入力してください")
      end
      it 'emailの中に＠が含まれないと登録できない' do
        @store.email = "testtest"
        @store.valid?
        expect(@store.errors.full_messages).to include("メールアドレスは不正な値です")
      end
      it '重複したemailが存在する場合登録できない' do
        @store.save
        another_store = FactoryBot.build(:store)
        another_store.email = @store.email
        another_store.valid?
        expect(another_store.errors.full_messages).to include("メールアドレスはすでに存在します")
      end
      it 'passwordが空では登録できない' do
        @store.password = ""
        @store.valid?
        expect(@store.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @store.password_confirmation = ""
        @store.valid?
        expect(@store.errors.full_messages).to include("Password confirmationとパスワードの入力が一致しません")
      end
      it 'passwordが5文字以下では登録できない' do
        @store.password = "00000"
        @store.password_confirmation = "00000"
        @store.valid?
        expect(@store.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end
      it 'passwordが英語のみでは登録できない' do
        @store.password = "aaaaaaa"
        @store.password_confirmation = "aaaaaaa"
        @store.valid?
        expect(@store.errors.full_messages).to include("パスワード半角文字で英数どちらも最低１文字は使用してください")
      end
      it 'passwordが全角では登録できない' do
        @store.password = "００００００"
        @store.password_confirmation = "００００００"
        @store.valid?
        expect(@store.errors.full_messages).to include("パスワード半角文字で英数どちらも最低１文字は使用してください")
      end
      it 'store_nameが空では登録できない' do
        @store.store_name = ""
        @store.valid?
        expect(@store.errors.full_messages).to include("店名を登録してください")
      end
      it 'password:半角英数混合(半角英語のみ)' do
        @store.password = 'aaaaaaa'
        @store.valid?
        expect(@store.errors.full_messages).to include("パスワード半角文字で英数どちらも最低１文字は使用してください")
      end
      it "電話番号がなかったら登録できない" do
        @store.tel = nil
        @store.valid?
        expect(@store.errors.full_messages).to include("電話番号を登録してください")
      end 

      it "郵便番号がなかったら登録できない" do
        @store.postal_code = nil
        @store.valid?
        expect(@store.errors.full_messages).to include("郵便番号を登録してください")
      end 

      it "市町村がなかったら登録できない" do
        @store.city = nil
        @store.valid?
        expect(@store.errors.full_messages).to include("市町村を登録してください")
      end 

      it "番地がなかったら登録できない" do
        @store.address = nil
        @store.valid?
        expect(@store.errors.full_messages).to include("番地を登録してください")
      end 

      it "責任者のお名前がなかったら登録できない" do
        @store.director = nil
        @store.valid?
        expect(@store.errors.full_messages).to include("責任者のお名前を登録してください")
      end

      it "都道府県がなかったら登録できない" do
        @store.prefecture_id = nil
        @store.valid?
        expect(@store.errors.full_messages).to include("都道府県を登録してください")
      end 

      it "都道府県が1では登録できない" do
        @store.prefecture_id = 1
        @store.valid?
        expect(@store.errors.full_messages).to include("都道府県を選択してください")
      end
      it "postal_codeがハイフンを含んだ正しい形式でないと保存できないこと" do
        @store.postal_code = "1234567"
        @store.valid?
        expect(@store.errors.full_messages).to include("郵便番号にハイフンを含めてください")
      end

      it "postal_codeが全角では保存できないこと" do
        @store.postal_code = "１２３−４５６７"
        @store.valid?
        expect(@store.errors.full_messages).to include("郵便番号にハイフンを含めてください")
      end
    end
  end
end