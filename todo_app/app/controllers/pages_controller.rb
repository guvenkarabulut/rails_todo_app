class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_time_over
  before_action :set_sub_todoid, only: %i[home]

  def home
    @todo = Todo.new
    @todos = if params[:category].blank?
               Todo.all.filter { |todo| todo.user_id == current_user.id }
             else
               Todo.all.filter { |todo| todo.user_id == current_user.id && todo.category == params[:category] }
             end
    @todos = @todos.sort_by(&:created_at)
  end

  def about; end

  private

  def set_time_over
    @todos = Todo.all.filter { |todo| todo.user_id == current_user.id && todo.status == 'active' }
    @todos.each do |todo|
      todo.status = 'time_over' if todo.due_date < Time.now
      todo.save
    end
  end

  def set_sub_todoid
    @sub_todo = SubTodo.new
  end
end
