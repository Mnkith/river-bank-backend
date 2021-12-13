class AccountSerializer
  include FastJsonapi::ObjectSerializer
  # belongs_to :user
  # has_many :transactions
  # attributes :account_type
  attributes :id, :account_type, :transactions_count

  attribute :transactions do | account |
    TransactionSerializer.new(account.transactions).serializable_hash
  end
end
