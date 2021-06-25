Rails.application.routes.draw do
  
  scope '/api' do
  get '/messages', to: 'messages#index'
  post '/messages', to: 'messages#create'
  get '/messages/:id', to: 'messages#show'
  put '/messages/:id', to: 'messages#update'
  delete '/messages/:id', to: 'messages#destroy'
  end

end
