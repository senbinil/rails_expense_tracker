class AddTotalToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :total, :integer,default:0
  end
end
