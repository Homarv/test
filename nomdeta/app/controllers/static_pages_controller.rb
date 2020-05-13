class StaticPagesController < ApplicationController
  def index
    @event=Event.all
  end

  def secret
  end
end
