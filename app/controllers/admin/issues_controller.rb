class Admin::IssuesController < ApplicationController
  before_action :set_state
  before_action :set_issue, only: [:show, :edit, :update]

  def index
    @issues = @state.issues
  end

  def new
    @form = current_user.issues.build(state: @state)
  end

  def show
  end

  def edit
  end

  def create
    @form = Issue.new(issue_params)
    if @form.save
      redirect_to admin_state_issues_url(@state)
    else
      render :new
    end
  end

  def update
    if @issue.update(issue_params)
      redirect_to admin_state_issues_url(@state)
    else
      render :edit
    end
  end

  private

  def set_state
    @state = State.find(params[:state_id])
  end

  def set_issue
    @issue = Issue.find(params[:id])
  end

  def issue_params
    params.require(:issue).permit(:user_id, :state_id, :name, :memo)
  end
end
