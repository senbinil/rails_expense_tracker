class Expense < ApplicationRecord
    before_create :add_date 
    validates :total ,presence: true,numericality:{only_integer:true}
    has_many :items,dependent: :destroy
    belongs_to :user
    def add_date
        self.date=Date.current
    end
end
