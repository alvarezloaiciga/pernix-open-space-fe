# frozen_string_literal: true

class AccountController < ApplicationController

  before_action :authenticate_user!

  def show
    @account = current_user
  end

  def edit
    @account = current_user
  end

  def update
    current_user.avatar.attach(update_params[:avatar])
  end

  private

  def update_params
    params.require(:user).permit(:avatar)
  end

end
