class UsersController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
    @users = User.all
    @sounds = Sound.all

  end

  def destroy
  end
end
