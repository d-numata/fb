class ApplicationController < ActionController::Base
<<<<<<< HEAD
  
  before_action :current_notifications, if: :signed_in?

  def current_notifications
    @notifications_count = Notification.where(user_id: current_user.id).where(read: false).count
  end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

=======
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
>>>>>>> origin/master
  # before_actionで下で定義したメソッドを実行
  before_action :configure_permitted_parameters, if: :devise_controller?

  #変数PERMISSIBLE_ATTRIBUTESに配列[:name]を代入
<<<<<<< HEAD
  #PERMISSIBLE_ATTRIBUTES = %i(name)
=======
>>>>>>> origin/master
  PERMISSIBLE_ATTRIBUTES = %i(name avatar avatar_cache)

  protected

    #deviseのストロングパラメーターにカラム追加するメソッドを定義
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: PERMISSIBLE_ATTRIBUTES)
      devise_parameter_sanitizer.permit(:account_update, keys: PERMISSIBLE_ATTRIBUTES)
    end
<<<<<<< HEAD
end
=======
end
>>>>>>> origin/master
