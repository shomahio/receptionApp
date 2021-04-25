require 'rails_helper'

RSpec.describe '店舗新規登録', type: :system do
  before do
    @store = FactoryBot.build(:store)
  end
  context '店舗新規登録ができるとき' do 
    it '正しい情報を入力すればユーザー新規登録ができてトップページに移動する' do
      # トップページに移動する
      visit root_path
      # トップページにサインアップページへ遷移するボタンがあることを確認する
      expect(page).to have_content('店舗新規登録')
      # 新規登録ページへ移動する
      visit new_store_registration_path
      # ユーザー情報を入力する
      fill_in 'email', with: @store.email
      fill_in 'password', with: @store.password
      fill_in 'password-confirmation', with: @store.password_confirmation
      fill_in 'store-name', with: @store.store_name
      fill_in 'tel', with: @store.tel
      fill_in 'postal-code', with: @store.postal_code
      find("#prefecture").find("option[value='2']").select_option
      fill_in 'city', with: @store.city
      fill_in 'address', with: @store.address
      fill_in 'director', with: @store.director
      # サインアップボタンを押すとユーザーモデルのカウントが1上がることを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { Store.count }.by(1)
      # トップページへ遷移したことを確認する]
      expect(current_path).to eq(root_path)
      # サインアップページへ遷移するボタンや、ログインページへ遷移するボタンが表示されていないことを確認する
      expect(page).to have_link 'ログアウト', href: destroy_store_session_path(@store)
    end
  end
  context 'ユーザー新規登録ができないとき' do
    it '誤った情報ではユーザー新規登録ができずに新規登録ページへ戻ってくる' do
      # トップページに移動する
      visit root_path
      # トップページにサインアップページへ遷移するボタンがあることを確認する
      expect(page).to have_content('店舗新規登録')
      # 新規登録ページへ移動する
      visit new_store_registration_path
      # ユーザー情報を入力する
      fill_in 'email', with: ''
      fill_in 'password', with: ''
      # サインアップボタンを押してもユーザーモデルのカウントは上がらないことを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { Store.count }.by(0)
      # 新規登録ページへ戻されることを確認する
      expect(current_path).to eq store_registration_path
    end
  end
end
RSpec.describe 'ログイン', type: :system do
  before do
    @store = FactoryBot.create(:store)
  end
  context 'ログインができるとき' do
    it '保存されているユーザーの情報と合致すればログインができる' do
      # トップページに移動する
      visit root_path
      # トップページにログインページへ遷移するボタンがあることを確認する
      expect(page).to have_content('ログイン')
      # ログインページへ遷移する
      visit new_store_session_path
      # 正しいユーザー情報を入力する
      fill_in 'email', with: @store.email
      fill_in 'password', with: @store.password
      # ログインボタンを押す
      find('input[name="commit"]').click
      # トップページへ遷移することを確認する
      expect(current_path).to eq(root_path)
      # サインアップページへ遷移するボタンやログインページへ遷移するボタンが表示されていないことを確認する
      expect(page).to have_no_content('新規登録')
      expect(page).to have_no_content('ログイン')
    end
  end
  context 'ログインができないとき' do
    it '保存されているユーザーの情報と合致しないとログインができない' do
      # トップページに移動する
      visit root_path
      # トップページにログインページへ遷移するボタンがあることを確認する
      expect(page).to have_content('ログイン')
      # ログインページへ遷移する
      visit new_store_session_path
      # ユーザー情報を入力する
      fill_in 'email', with: ''
      fill_in 'password', with: ''
      # ログインボタンを押す
      find('input[name="commit"]').click
      # ログインページへ戻されることを確認する
      expect(current_path).to eq(new_store_session_path)
    end
  end
end