class AccountSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :account_type

  # has_many :accounts
  # has_many :transactions, through: :accounts 
end
