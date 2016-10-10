module ControllerMacros
  def sign_in_user(user)
    @request.env["devise_mapping"] = Devise.mappings[:user]
    sign_in user
  end
end