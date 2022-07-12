class ItemsController < ApplicationController
  before_action :authenticate_user!

  def new
    @item = Item.new
  end

  def create
    expense = get_expense
    temp = expense.items.create(item_params)
    if temp.amount
      expense.total += temp.amount
      expense.save
      flash[:status] = "Added"
    else
      flash[:status] = "Error"
    end
    redirect_to root_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      expense = @item.expense
      total = 0
      expense.items.each { |item| total += item.amount }
      p expense.items
      expense.update(total: total)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:expense_name, :amount)
  end
end
