require "rails_helper"

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  
  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it '全ての情報があれば登録できる' do
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを登録してください")
      end
      it 'emailが空では登録できない' do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("メールアドレスを登録してください")
      end
      it 'emailの中に＠が含まれないと登録できない' do
        @user.email = "testtest"
        @user.valid?
        expect(@user.errors.full_messages).to include("メールアドレスは不正な値です")
      end
      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("メールアドレスはすでに存在します")
      end
      it 'passwordが空では登録できない' do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを登録してください")
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("確認用パスワードとパスワードの入力が一致しません")
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = "00000"
        @user.password_confirmation = "00000"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end
      it 'passwordが英語のみでは登録できない' do
        @user.password = "aaaaaaa"
        @user.password_confirmation = "aaaaaaa"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード半角文字で英数どちらも最低１文字は使用してください")
      end
      it 'passwordが全角では登録できない' do
        @user.password = "００００００"
        @user.password_confirmation = "００００００"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード半角文字で英数どちらも最低１文字は使用してください")
      end
      it 'last_nameが空では登録できない' do
        @user.last_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("苗字を登録してください")
      end
      it 'first_nameが空では登録できない' do
        @user.first_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("名前を登録してください")
      end
      it 'birthdayが空では登録できない' do
        @user.birthday = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("生年月日を登録してください")
      end
      it 'password:半角英数混合(半角英語のみ)' do
        @user.password = 'aaaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード半角文字で英数どちらも最低１文字は使用してください")
      end
      it "電話番号がなかったら登録できない" do
        @user.tel = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("電話番号を登録してください")
      end 

      it "郵便番号がなかったら登録できない" do
        @user.postal_code = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("郵便番号を登録してください")
      end 

      it "市町村がなかったら登録できない" do
        @user.city = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("市町村を登録してください")
      end 

      it "番地がなかったら登録できない" do
        @user.address = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("番地を登録してください")
      end
      it "都道府県がなかったら登録できない" do
        @user.prefecture_id = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("都道府県を登録してください")
      end 

      it "都道府県が1では登録できない" do
        @user.prefecture_id = 1
        @user.valid?
        expect(@user.errors.full_messages).to include("都道府県を選択してください")
      end
      it "postal_codeがハイフンを含んだ正しい形式でないと保存できないこと" do
        @user.postal_code = "1234567"
        @user.valid?
        expect(@user.errors.full_messages).to include("郵便番号にハイフンを含めてください")
      end

      it "postal_codeが全角では保存できないこと" do
        @user.postal_code = "１２３−４５６７"
        @user.valid?
        expect(@user.errors.full_messages).to include("郵便番号にハイフンを含めてください")
      end
      
    end
  end
end