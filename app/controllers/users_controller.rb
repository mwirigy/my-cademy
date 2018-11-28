class UsersController < ApplicationController
    def index
      if current_user
        @user = current_user
        @assignments = Assignment.by_id(@user.id)
      end
    end


end
