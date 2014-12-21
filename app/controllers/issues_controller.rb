class IssuesController < ApplicationController
  def show
    @issue= Issue.find(params[:id])
  end

  def destroy
    i=Issue.find(params[:id])
    i.destroy
    redirect_to :root
  end

  def new
    @issue=Issue.new
  end

  def create
    puts "aaaaaa"
    puts params[:issue]
    Issue.create(params[:issue])
    redirect_to :root
  end

  private
  def issue_params
    puts "xxxxxxx"
    params.require(:issue).permit(:id, :title, :content)
  end

end
