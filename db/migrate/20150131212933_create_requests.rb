class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :gender
      t.string :level
      t.string :time_available
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :requests, :users
  end
end
