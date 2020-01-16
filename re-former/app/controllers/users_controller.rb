class UsersController < ApplicationController
    before_action only: %i[create new]

    def index

    end

    def new
        @user
    end

    def create

    end

end
