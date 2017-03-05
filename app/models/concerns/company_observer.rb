module CompanyObserver
  extend ActiveSupport::Concern

  included do
    after_create :create_review_sites
  end

  def create_review_sites
    ReviewCompany.all.each do |review_company|
      self.review_sites.create(review_company_id: review_company.id)
    end
  end
end
