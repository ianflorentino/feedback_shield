class Company < ApplicationRecord 
  include CompanyObserver
  belongs_to :user
  has_many :reviews
  has_many :coupons
  has_many :review_sites
  has_one :notification

  validates :name, uniqueness: true

  REVIEW_OPTIONS = %w( 1 2 3 4 5 ).freeze
end
