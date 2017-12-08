class AccountsController < ApplicationController
  before_action :check_logined, only: [:show]
  layout "no_sidemenu"

  def show
  end

  def login
  end

  def logout
    reset_session
    redirect_to '/'
  end
end
