class FreelanceProposal < ApplicationRecord
  def self.by_client
    order('client ASC')
  end
end
