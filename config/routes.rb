Rails.application.routes.draw do

  devise_for :users


  # Home
  root to: "rentals#index"

  resources :rentals do
    resources :pictures
  end

  # # Route a HTTP GET Request for all rentals to the
  # # RentalsController index action
  # get '/rentals', to: 'rentals#index'

  # # Route to generate a HTML form.
  # # Form will be used to create a rental.
  # # RentalsController new action
  # get '/rentals/new', to: 'rentals#new', as: 'new_rental'

  # # Route a HTTP POST Request for rentals to the
  # # RentalsController create action.
  # post '/rentals', to: 'rentals#create'

  # # Route a to generate a HTML form to edit a rental.
  # # RentalsController edit action
  # get '/rentals/:id/edit', to: 'rentals#edit', as: 'edit_rental'

  # # Route a HTTP PATCH Request for rentals to the
  # # RentalsController update action.
  # patch '/rentals/:id', to: 'rentals#update'

  # # Route a HTTP DELETE Request for rentals to the
  # # RentalsController destroy action.
  # delete '/rentals/:id', to: 'rentals#destroy'

  # # Route a HTTP GET Request for one rental to the
  # # RentalsController show action
  # get '/rentals/:id', to: 'rentals#show', as: 'rental'

end
