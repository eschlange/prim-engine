PrimEngine::Engine.routes.draw do

  namespace :api, defaults: { format: 'json' }, path: '' do
    namespace :v1 do
      resources :api_participants do

      end
      resources :participants do
        resources :addresses
        resources :date_of_births
        resources :emails
        resources :health_insurance_beneficiary_numbers
        resources :ip_address_numbers
        resources :medical_records_numbers
        resources :names
        resources :phones
        resources :social_security_numbers
      end
    end
  end

end
