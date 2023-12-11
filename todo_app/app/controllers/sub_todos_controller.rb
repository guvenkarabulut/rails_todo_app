class SubTodosController < ApplicationController
  def new
    @sub_todo = SubTodo.new
  end

  def create
    @todo = Todo.find(params(:todo_id))
    @sub_todos = @todo.sub_todos.create(sub_todo_params)
  end

  private

  def sub_todo_params
    params.require(:sub_todo).permit(:title, :body)
  end
end
