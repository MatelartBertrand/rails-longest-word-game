Rails.application.routes.draw do

  get 'game', to: 'plays#game'
  get 'score', to: 'plays#score'
  root 'plays#game'

end


