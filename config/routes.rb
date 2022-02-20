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

  root "pages#home"
end
