class Company < ApplicationRecord 
  include CompanyObserver

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, uniqueness: true
  has_many :reviews
  has_many :coupons
  has_many :review_sites
  has_one :landing_page
  has_one :message

  accepts_nested_attributes_for :landing_page, :coupons, :reviews, :message, :review_sites

  REVIEW_OPTIONS = %w( 1 2 3 4 5 ).freeze
end
