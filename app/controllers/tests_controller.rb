class TestsController < ApplicationController

  before_action :authenticate_user!

  def test
    # this is temporary code
    @question = Question.first
  end

end