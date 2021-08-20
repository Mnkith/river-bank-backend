class AccountsController < ApplicationController
  # include Devise::Controllers::Helpers 
  before_action :authenticate_user!

  # respond_to :json
  def create 
    
    if accnt = Account.create(account_params)
      render json: {
        status: {code: 200, message: 'Account added sucessfully.'},
        account: accnt
      }, status: :ok
      # p accnt
      # byebug
    end
  end 

  private
  def account_params
    params.require(:account).permit(:acccount_type, :number, :exp, :available_balance, :user_id)
  end
end
