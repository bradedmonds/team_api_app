class Api::ExperiencesController < ApplicationController
  def index
    @message = "Showing some index!"
    render "index.json.jb"
  end
end
