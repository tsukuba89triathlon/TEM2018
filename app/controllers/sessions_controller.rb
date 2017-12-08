class SessionsController < ApplicationController
  def create
    member = Member.find_by(username: params[:username])
    if member == nil
      flash.alert = "ユーザーが存在しません。"
    else
      member = member.authenticate(params[:password])
      if member
        session[:member_id] = member.id
      else
        flash.alert = "ユーザー名とパスワードが一致しません。"
      end
    end
    redirect_to params[:referer]
  end

  def destroy
    session.delete(:member_id)
    redirect_to :root
  end
end
