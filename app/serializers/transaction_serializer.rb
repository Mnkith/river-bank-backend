class TransactionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :amount 
end
