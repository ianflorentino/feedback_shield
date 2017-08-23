module CompanyObserver
  extend ActiveSupport::Concern

  included do
    after_create :create_review_sites
  end

  def create_review_sites
    review_sites = YAML.load_file("#{Rails.root}/config/data/review_sites.yml")
    review_sites['sites'].each do |rs|
      self.review_sites.create(name: rs['name'])
    end
  end
end
