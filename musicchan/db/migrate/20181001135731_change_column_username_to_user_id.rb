class ChangeColumnUsernameToUserId < ActiveRecord::Migration[5.2]
  def change
    change_column :messages, :username, :string
    rename_column :messages, :username, :user_id
  end
end
