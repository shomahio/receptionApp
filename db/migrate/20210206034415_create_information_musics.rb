class CreateInformationMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :information_musics do |t|
      t.references :information, foreign_key: true
      t.references :music, foreign_key: true
      t.timestamps
    end
  end
end
