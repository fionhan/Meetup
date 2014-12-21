class PageController < ApplicationController
  def helloworld
    @issues=Issue.all
  end
  def about

  end
end