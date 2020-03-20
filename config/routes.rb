Rails.application.routes.draw do
  get 'welcome/index'
  post '/send_email', to 'welcome#send_email', as: 'send_email'
  root 'home#index'
end
