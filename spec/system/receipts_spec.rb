require 'rails_helper'

RSpec.describe "仮領収書が発行できる時", type: :system do
  before do
    @reservation = FactoryBot.create(:reservation)
    @information = @reservation.information
    @store = @information.store
    @user = @reservation.user
    @receipt = FactoryBot.build(:receipt, information_id: @information.id)
  end

  context '仮の領収書が発行できる時' do
    it 'ログインした店舗ユーザーは仮領収書を発行できる' do
      # ログインする
      visit new_store_session_path
      fill_in 'email', with: @store.email
      fill_in 'password', with: @store.password
      find('input[name="commit"]').click
      expect(current_path).to eq(root_path)
      # マイページへのリンクがあることを確認する
      expect(page).to have_link 'マイページ', href: store_path(@store)
      # マイページへ遷移する
      visit store_path(@store)
      # 予約一覧ページへのリンクがあることを確認する
      expect(page).to have_link '予約一覧', href: informations_reservations_path(@information)
      # 予約一覧ページへ遷移する
      visit informations_reservations_path(@information)
      # 予約があることを確認
      expect(page).to have_content(@reservation.name)
      expect(page).to have_content(@reservation.start_time.strftime('%Y/%m/%d/%H:%M'))
      # 領収書作成ページへのリンクがあることを確認する
      expect(page).to have_link '未作成', href: new_informations_reservation_receipt_path(@reservation)
      # 領収書作成ページへ遷移する
      visit new_informations_reservation_receipt_path(@reservation)
      # フォームに情報を入力する
      fill_in 'receipt[name]', with: @receipt.name
      fill_in 'receipt[number]', with: @receipt.number
      fill_in 'receipt[price]', with: @receipt.price
      fill_in 'receipt[proviso]', with: @receipt.proviso
      # 送信するとReceiptテーブルのカウントが１上がることを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { Receipt.count }.by(1)
      # トップページへ遷移する
      visit root_path
      # マイページへ遷移する
      visit store_path(@store)
      # 領収書一覧ページへ遷移する
      visit informations_reservation_receipts_path(@information)
      # マイページの領収書一覧ページに先ほど投稿した領収書が存在することを確認する
      expect(page).to have_content(@receipt.name)
      expect(page).to have_content(@receipt.price)
      expect(page).to have_content(@receipt.created_at)
    end
  end
  context '仮の領収書が発行できない時' do
    it '一般ユーザーは領収書発行ができない' do
      # ユーザーでログインする
      visit new_user_session_path
      fill_in 'email', with: @user.email
      fill_in 'password', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq(root_path)
      # マイページへ遷移する
      expect(page).to have_link 'マイページ', href: user_path(@user)
      # 領収書作成ページへのリンクがないことを確認する
      expect(page).to have_no_link '予約一覧', href: informations_reservations_path(@store)
    end
  end
end

RSpec.describe "確定領収書が発行できる時", type: :system do
  before do
    @receipt = FactoryBot.create(:receipt)
    @information = @receipt.information
    @reservation = @receipt.reservation
    @user = @reservation.user
    @store = @information.store
  end

  context '確定領収書が発行できる時' do
    it 'ログインした店舗ユーザーは仮領収書を発行できる' do
      # ログインする
      visit new_user_session_path
      fill_in 'email', with: @user.email
      fill_in 'password', with: @user.password
      find('input[name="commit"]').click
      expect(current_path).to eq(root_path)
      # マイページへのリンクがあることを確認する
      expect(page).to have_link 'マイページ', href: user_path(@user)
      # マイページへ遷移する
      visit user_path(@user)
      # 領収書一覧ページへ遷移する
      visit users_receipts_path(id: @user.id)
      # 仮領収書がある
      expect(page).to have_content (@receipt.name)
      # 領収書作成ページへのリンクがあることを確認する
      expect(page).to have_link @receipt.name, href: edit_users_receipt_path(@receipt)
      # 領収書作成ページへ遷移する 
      visit edit_users_receipt_path(@receipt)
      # 情報があるかを確認する
      # binding.pry
      expect(page).to have_content (@receipt.name)
      expect(page).to have_content (@receipt.proviso)
      expect(page).to have_content (@receipt.price)
      expect(page).to have_content (@receipt.created_at.strftime("%Y年%m月%d日"))
      expect(page).to have_content (@receipt.number)
      # フォームに情報を入力する
      find("#receipt_consent").click
      # 送信するとReceiptテーブルのカウントが１上がることを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { Receipt.count }.by(0)
      # トップページへ遷移する
      visit root_path
      # マイページへ遷移する
      visit user_path(@user)
      # 領収書一覧ページへ遷移する
      visit users_receipts_path(id: @user.id)
      # マイページの領収書一覧ページに先ほど投稿した領収書が存在することを確認する
      expect(page).to have_content(@receipt.name)
      expect(page).to have_content(@receipt.price)
      expect(page).to have_content(@receipt.created_at.strftime("%Y/%m/%d"))
    end

  end
  context '確定領収書が発行できない時' do
    it '店舗ユーザーは領収書発行ができない' do
      # 店舗ユーザーでログインする
      visit new_store_session_path
      fill_in 'email', with: @store.email
      fill_in 'password', with: @store.password
      find('input[name="commit"]').click
      expect(current_path).to eq(root_path)
      # マイページへ遷移する
      visit store_path(@store)
      # 領収書一覧ページへ遷移する
      visit informations_reservation_receipts_path(@information)
      # 領収書作成ページへのリンクがないことを確認する
      expect(page).to have_no_link @receipt.name, href: edit_users_receipt_path(@receipt)
    end
  end
end
