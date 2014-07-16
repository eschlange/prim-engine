PrimEngine::Engine.routes.draw do

  namespace :api, defaults: { format: 'json' }, path: '' do
    namespace :v1 do
      resources :emails
      resources :participants
      resources :addresses
      resources :date_of_births
      resources :health_insurance_beneficiary_numbers
      resources :ip_address_numbers
      resources :medical_records_numbers
      resources :names
      resources :phones
      resources :social_security_numbers
    end
  end

end
