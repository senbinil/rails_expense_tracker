class AddMonthlyLimitToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :monthly_limit, :integer,default:0
  end
end
