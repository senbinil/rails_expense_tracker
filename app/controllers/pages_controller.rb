class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @expense = Item.new
    total_expenses = 0
    @expenses = current_user.expenses.all
    @expenses.each { |item| total_expenses += item.total }
    @avg_expense = total_expenses / @expenses.count unless @expenses.empty?
  end
end
