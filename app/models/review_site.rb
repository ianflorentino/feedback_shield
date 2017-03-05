class ReviewSite < ApplicationRecord
  belongs_to :company
  belongs_to :review_company

  delegate :name, :example, to: :review_company

  default_scope { order(:id) }
end
