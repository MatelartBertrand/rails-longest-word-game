require "game"

class PlaysController < ApplicationController
  def game
    @grid = generate_grid(9)
    @start_time = Time.now
    if session[:number_of_games]
      session[:number_of_games] += 1
    else
      session[:number_of_games] = 1
    end
  end

  def score
    @attempt = params[:attempt]
    @grid = params[:grid].split("")
    start_time = Time.parse(params[:start])
    end_time = Time.now
    @result = run_game(@attempt, @grid, end_time, start_time)
  end
end
