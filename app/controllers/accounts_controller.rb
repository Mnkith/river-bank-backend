class AccountsController < ApplicationController
  # include Devise::Controllers::Helpers 
  before_action :authenticate_user!

  # respond_to :json
  def create 
    
    if Account.create account_params
      byebug
    end
  end 

  private
  def account_params
    params.require(:account).permit(:acccount_type, :number, :exp, :user_id)
  end
end
