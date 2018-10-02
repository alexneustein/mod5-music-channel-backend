class ChangeColumnUserIdToUsername < ActiveRecord::Migration[5.2]
  def change
    change_column :messages, :user_id, :string
    rename_column :messages, :user_id, :username
  end
end
