Rails.application.routes.draw do
  
  get 'homes/top'
  get 'homes/about'
  namespace :member do
    get 'homes/top'
    get 'homes/about'
  end
# 顧客用
# URL /customers/sign_in ...
devise_for :members,skip: [:passwords,], controllers: {
  registrations: "member/registrations",
  sessions: 'member/sessions'
}

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
