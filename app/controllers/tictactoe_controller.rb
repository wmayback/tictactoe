class  TictactoeController < ApplicationController
  def index
    respond_to do |format|
    format.js
    format.html
    format.json
    end
  end

  def query
    respond_to do |format|
    format.js
    format.html
    format.json
    end
    reset_session
  end

  def create_session
  if params["weapon"] == "The X"
  session["weapon"] = "X"
  session["shield"] = "O"
  elsif params["weapon"] == "The O"
  session["weapon"] = "O"
  session["shield"] = "X"
  else
  @need_info = true
  end
  if params["strike"] == "I'll give you the honor"
  session["turnstyle"] = "robot's advantage"
  elsif params["strike"] == "I'll deliver the first blow"
  session["turnstyle"] = "human's advantage"
  else
  @stillneedinfo = true
  end
  if @need_info || @stillneedinfo
  redirect_to query_path
  else
  redirect_to tictactoe_path
  end
  end
end
