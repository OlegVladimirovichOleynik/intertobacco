Rails.application.routes.draw do
  get 'tobacco_cipher/index'
  post 'tobacco_cipher/check_cipher'
  get 'welcome/index'
  get 'tastes/index'
  root 'welcome#index'
end
