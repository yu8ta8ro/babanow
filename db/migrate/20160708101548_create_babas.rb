class CreateBabas < ActiveRecord::Migration
  def change
    create_table :babas do |t|
      t.string   :title
      t.text     :concept
      t.integer  :user_id
      t.timestamps
    end
  end
end
