class UsersController < ApplicationController

    def complete1
        current_user.event1 = true
        current_user.save
    end


end
