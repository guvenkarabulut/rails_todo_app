class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @todo = Todo.new
    @todos = if params[:category].blank?
               Todo.all.filter { |todo| todo.user_id == current_user.id }
             else
               Todo.all.filter { |todo| todo.user_id == current_user.id && todo.category == params[:category] }
             end
    @todos = @todos.sort_by(&:created_at).reverse
  end

  def about; end
end
