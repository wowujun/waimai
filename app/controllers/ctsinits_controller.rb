class CtsinitsController < ApplicationController
  def index
    if Admin.count == 0
      Admin.create(name:"管理员",loginname:"admin",password:"admin",password_confirmation:"admin",status:"1")
    end
  end

  def new

  end

  def create

  end

end
