# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = current_user
    @user_properties = @user.properties
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  def after_sign_in_path_for(resource)
    user_profile_path(current_user)
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  
end
