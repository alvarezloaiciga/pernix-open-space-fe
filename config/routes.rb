# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated do
      root "devise/sessions#new", as: :unauthenticated_root
    end

    authenticated :user do
      root "pages#home", as: :authenticated_root
    end
  end

  get "account", to: "account#show", as: :account
  get "account/edit", to: "account#edit", as: :edit_account
  patch "account", to: "account#update", as: :update_account

  root "pages#home"
end
