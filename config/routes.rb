Rails.application.routes.draw do
  resources :doctors, only: [ :index, :show ] do
    resources :appointments, only: [ :new, :create ]
  end

  # get 'doctors',     to: 'doctors#index'
  # get 'doctors/:id', to: 'doctors#show', as: 'doctor'
end
