class CurrentUserController < ApplicationController
  before_action :authenticate_user!
  def index
    render json: {data: current_user.as_json(include: {accounts:{
                                                        except: [
                                                                 :id,
                                                                 :created_at, 
                                                                 :updated_at, 
                                                                 :user_id
                                                                ],
                                                      include: {
                                                        transactions: {
                                                          except: [
                                                            :id,
                                                            :created_at, 
                                                            :updated_at, 
                                                            :user_id,
                                                            :account_id
                                                           ]
                                                        }
                                                      }
    }})}

    # render json: {data: UserSerializer.new(current_user).serializable_hash[:data][:attributes]}
  end

  # render json: {
  #   status: {code: 200, message: 'Logged in sucessfully.'},
  #   data: current_user.as_json.merge({accounts: current_user.accounts})
    
  # }, status: :ok
end