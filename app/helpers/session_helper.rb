module SessionHelper
  def current_member
    @current_member ||= Member.find_by(id: session[:member_id])
  end
end
