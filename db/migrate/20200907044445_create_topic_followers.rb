class CreateTopicFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :topic_followers do |t|
		t.references :user, null: false, foreign_key: true
		t.references :topic, null: false, foreign_key: true

		t.timestamps
    end
  end
end
