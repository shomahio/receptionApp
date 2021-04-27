require 'rails_helper'

require 'rails_helper'

RSpec.describe '店舗出店', type: :system do
  before do
    @store = FactoryBot.create(:store)
    @information = FactoryBot.build(:information,store_id: @store.id)
    sleep(1)
  end
  context '店舗出店ができるとき'do
    it 'ログインしたユーザーは新規出店できる' do
      # ログインする
      visit new_store_session_path
      fill_in 'email', with: @store.email
      fill_in 'password', with: @store.password
      find('input[name="commit"]').click
      expect(current_path).to eq(root_path)
      # 新規出店ページへのリンクがあることを確認する
      expect(page).to have_content('出店する')
      # 出店ページに移動する
      visit new_information_path
      # フォームに情報を入力する
      image_path = Rails.root.join('public/images/test_top.jpg')
      attach_file('information[image]', image_path, make_visible: true)
      image_food_path = [Rails.root.join('public/images/test_top.jpg'),Rails.root.join('public/images/test_top.jpg'),Rails.root.join('public/images/test_top.jpg')]
      attach_file('information[image_foods][]', image_food_path, make_visible: true)
      attach_file('information[image_appearances][]', image_food_path, make_visible: true)
      attach_file('information[image_introspections][]', image_food_path, make_visible: true)
      attach_file('information[image_entrances][]', image_food_path, make_visible: true)
      attach_file('information[image_seats][]', image_food_path, make_visible: true)
      attach_file('information[image_toilets][]', image_food_path, make_visible: true)
      fill_in 'store-name', with:@information.store_name
      fill_in 'store-info', with:@information.explanation
      fill_in 'store-food', with:@information.food
      fill_in 'store-email', with:@information.email
      fill_in 'phone-number', with:@information.tel
      fill_in 'postal-code', with:@information.postal_code
      select 'place', from: 'parent_place'
      select 'child', from: 'child_place'
      fill_in 'city', with:@information.city
      fill_in 'addresses', with:@information.address
      fill_in 'transportation', with:@information.transportation
      find("#open_hours").set(@information.opening_time)
      find("#close_hours").set(@information.closing_time)
      select '日曜日', from: 'holiday'
      select 'genre', from: 'parent_genre'
      select 'child', from: 'child_genre'
      select '予約可能', from: 'booking'
      select '駐車場あり', from: 'parking'
      select '明るい（暖色）', from: 'light'
      select '静か', from: 'volume'
      select '1000円以下', from: 'budget'
      fill_in 'seat',with: @information.seet
      select '全席禁煙', from: 'tobacco'
      select 'ご飯会などの接待向きのお店', from: 'reception'
      # 出店を押すとインフィメーションモデルのカウントが1上がることを確認する
      expect{
        find('input[name="commit"]').click
      }.to change { Information.count }.by(1)
      # トップページに遷移する
      visit root_path
      # トップページにはマイページボタンがあることを確認する
      expect(page).to have_content('マイページ')
    end
    end
    context '店舗出店ができないとき'do
    it 'ログインしていないと新規出店ページに遷移できない' do
      # トップページに遷移する
      visit root_path
      # 新規出店ページへのリンクがない
      expect(page).to have_no_content('出店する')
    end
    end
end

# RSpec.describe '店舗編集', type: :system do
#   before do
#     @information1 = FactoryBot.create(:information)
#     @information2 = FactoryBot.create(:information)
#   end
#   context '店舗編集ができるとき' do
#     it 'ログインしたユーザーは自分が出店した店舗の編集ができる' do
#       # 店舗1を出店したユーザーでログインする
#       # 店舗1に「編集」ボタンがあることを確認する
#       # 編集ページへ遷移する
#       # すでに出店済みの内容がフォームに入っていることを確認する
#       # 出店内容を編集する
#       # 編集してもInformationモデルのカウントは変わらないことを確認する
#       # 編集完了画面に遷移したことを確認する
#       # 「更新が完了しました」の文字があることを確認する
#       # トップページに遷移する
#       # トップページには先ほど変更した内容の店舗が存在することを確認する（画像）
#       # トップページには先ほど変更した内容の店舗が存在することを確認する（テキスト）
#     end
#   end
#   context '店舗編集ができないとき' do
#     it 'ログインしたユーザーは自分以外が出店した店舗の編集画面には遷移できない' do
#       # 店舗1を出店したユーザーでログインする
#       # 店舗2に「編集」ボタンがないことを確認する
#     end
#     it 'ログインしていないと店舗の編集画面には遷移できない' do
#       # トップページにいる
#       # 店舗1に「編集」ボタンがないことを確認する
#       # 店舗2に「編集」ボタンがないことを確認する
#     end
#   end
# end