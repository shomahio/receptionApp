class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :title
      t.string :text,              null: false
      t.references :user,          foreign_key: true
      t.timestamps
    end
  end
end
