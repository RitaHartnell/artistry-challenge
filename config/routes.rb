Rails.application.routes.draw do
    resources :playables, only: [:new, :create]
    resources :artists, only: [:index, :show, :new, :create]
    resources :instruments, only: [:index]
end
