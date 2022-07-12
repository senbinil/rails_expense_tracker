class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :expense_name
      t.integer :amount 
      t.belongs_to :expense
      t.timestamps
    end
  end
end
