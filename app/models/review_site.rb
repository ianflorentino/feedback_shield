class ReviewSite < ApplicationRecord
  belongs_to :company

  default_scope { order(:id) }
end
