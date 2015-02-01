class AddNicknameToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :nickname, :string
  end
end
