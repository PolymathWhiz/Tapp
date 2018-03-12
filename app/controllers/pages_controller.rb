class PagesController < ApplicationController
  before_action :prevent_index_access, only: [:home]

  def home
  end

  private
    def prevent_index_access
      redirect_to user_path(current_user) if current_user
    end
end
