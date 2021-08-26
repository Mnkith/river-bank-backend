class AccountSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :user
  has_many :transactions
  # attributes :account_type
  attributes :id, :account_type
end
