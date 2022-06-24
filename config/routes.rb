Rails.application.routes.draw do
  devise_for :candidates, skip: [:passwords], controllers: {
  registrations: "candidate/registrations",
  sessions: 'candidate/sessions'
}

  devise_for :voters, skip: [:passwords], controllers: {
  registrations: "voter/registrations",
  sessions: 'voter/sessions'
}
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
