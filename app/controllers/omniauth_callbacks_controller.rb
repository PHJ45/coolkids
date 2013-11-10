class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def all
    user = User.from_omniauth(request.env["omniauth.auth"])

    if user.persisted?
      sign_in_and_redirect user, :notice => "User signed in successfully!"
    else
      new_user_registration_url
    end

  end

  alias_method :twitter, :all

end
