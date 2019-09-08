Rails.application.routes.draw do
  devise_for :users
  root "pages#home"
  get "/home", to: "pages#home"
  get "/aboutus" => "pages#aboutus"
  get "/profile" => "pages#profile"
  get "/doctorAppointments" => "pages#doctorAppointments"
  resources :doctors
  resources :appointments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
