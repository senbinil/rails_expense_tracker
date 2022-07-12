class Item < ApplicationRecord
    validates :expense_name , presence: true,length:{minimum:2}
    validates :amount ,presence: true,numericality:{only_integer:true,message:'Invalid amount.'}
    belongs_to :expense
end
