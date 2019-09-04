class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]
    def index
        @tasks = Task.all.order(date: :asc)
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        @task.save
        redirect_to tasks_path, notice: '新增成功'
    end

    def show

    end

    def edit

    end

    def update
        @task.update_attributes(task_params)
        redirect_to task_path(@task), notice: "編輯成功"
    end

    def destroy
        @task.destroy
        redirect_to tasks_path, notice: "刪除成功"
    end


    private

    def task_params
        params.require(:task).permit(:name,:date,:note)
    end

    def set_task
        @task = Task.find(params[:id])
    end
end
