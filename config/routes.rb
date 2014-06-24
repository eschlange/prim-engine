PrimEngine::Engine.routes.draw do

  namespace :api, defaults: { format: 'json' }, path: '' do
    namespace :v1 do
      resources :api_participants
      resources :participants
    end
  end

end
