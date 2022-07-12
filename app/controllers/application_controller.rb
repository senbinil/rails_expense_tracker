class ApplicationController < ActionController::Base
  def get_expense
    current_expense = current_user.expenses.find_by("date=?", Date.current)
    if current_expense
      return current_expense
    else
      current_expense = current_user.expenses.create()
      return current_expense
    end
  end
end
