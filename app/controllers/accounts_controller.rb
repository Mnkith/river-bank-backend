class AccountsController < ApplicationController
  # include Devise::Controllers::Helpers 
  before_action :authenticate_user!

  # respond_to :json
  def create 
    
    if accnt = Account.create(account_params)
      render json: {
        status: {code: 200, message: 'Account added sucessfully.'},
        account: accnt
      }else
      render json: {
        status: {message: "account couldn't be created successfully. #{resource.errors.full_messages.to_sentence}"}
      }, status: :unprocessable_entity
    end
  end 

  private
  def account_params
    params.require(:account).permit(:acccount_type, :number, :exp, :available_balance, :user_id)
  end
end
