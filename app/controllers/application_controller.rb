class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    case resource
      when Admin then
        tops_path
      when User then
        messages_path
    end
  end

  def after_sign_out_path_for(resource)
    if resource == User
      messages_path
    else
      tops_path
    end
  end

end