Rails.application.routes.draw do
  get '/birds' => 'birds#index'
  get '/birds/:id', to: 'birds#show'
  get '/birds/plain', to: 'birds#plain'
end
