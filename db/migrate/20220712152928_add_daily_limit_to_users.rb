class AddDailyLimitToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :daily_limit, :integer, default: 0
  end
end
