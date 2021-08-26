class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :account, counter_cache: true
end
